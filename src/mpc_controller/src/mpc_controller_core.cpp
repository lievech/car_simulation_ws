#include "mpc_controller/mpc_controller_core.h"
namespace waypoint_follower
{
MPC_Controller_core::MPC_Controller_core()
:is_state_update_(false),
 is_path_update_(false),
 is_steering_update_(false),
 map_frame_id_("/odom"),
 vehicle_frame_id_("base_link"),
 mpc_(),
 index_min_(0)
{
	this->path_sub_ =
            this->nh_.subscribe("global_path",
                          10,
                          &MPC_Controller_core::callbackFromWayPoints,
                          this);
	this->vehicleState_sub_ =
            this->nh_.subscribe("vehicle_state",
                          10,
                          &MPC_Controller_core::callbackVehicleStaet,
                          this);
	this->sterring_sub_ =
            this->nh_.subscribe("vehicle/steering_report",
                          10,
                          &MPC_Controller_core::callbackFromSteering,
                          this);
    this->timer_ =
            this->nh_.createTimer(ros::Duration(0.04),
                                  boost::bind(&MPC_Controller_core::timerCb, this));

	this->str_pub_ = this->nh_.advertise<std_msgs::Float32>("cmd_str", 10);
	this->vel_pub_ = this->nh_.advertise<std_msgs::Float32>("cmd_vel", 10);
    this->initref_pub = this->nh_.advertise<nav_msgs::Path>("initref_path", 1, true);
    this->polyfit_pub = this->nh_.advertise<nav_msgs::Path>("polyfit_path", 1, true);
    this->predict_pub = this->nh_.advertise<nav_msgs::Path>("predict_path", 1, true);
    this->global_path_pub = this->nh_.advertise<nav_msgs::Path>("global_path_rviz", 1, true);

    this->cmd_vel_.data = 0;
    this->cmd_str_.data = 0;
}
void MPC_Controller_core::callbackFromSteering(const dbw_mkz_msgs::SteeringReport msg)
{
	vehicle_state_.steering = msg.steering_wheel_angle / 16;
	is_steering_update_ = true;
}
void MPC_Controller_core::callbackVehicleStaet(const anm_msgs::VehicleState msg)
{
	vehicle_state_.yaw = msg.orientation.z;
	vehicle_state_.pose = msg.position;
	vehicle_state_.vel = msg.velocity.linear.x;
    vehicle_state_.a = msg.acceleration.linear.x;
	is_state_update_ = true;
}
void MPC_Controller_core::callbackFromWayPoints(const nav_msgs::Path msg)
{
	if(msg.header.frame_id == map_frame_id_)
	{
		global_path = msg.poses;
		is_path_update_ = true;
    }
	else
	{
	    ROS_WARN_STREAM("The path must be published in the " << map_frame_id_
	                    << " frame! Ignoring path in " << msg.header.frame_id
	                    << " frame!");
	}
}

bool MPC_Controller_core::WaypointData2VehicleCoords(Eigen::VectorXd &local_x ,Eigen::VectorXd &local_y)
{
	double px = vehicle_state_.pose.x;
	double py = vehicle_state_.pose.y;
	double psi = vehicle_state_.yaw;
	if(this->index_min_ + 10 > global_path.size() )
        return false;
    int index_min = -1;
    double min = std::numeric_limits<double>::infinity();

    for(int i=this->index_min_; i < global_path.size(); i++)
    {
        double deltax = global_path[i].pose.position.x - px;
        double deltay = global_path[i].pose.position.y - py;
        double dist = sqrt(pow(deltax,2) + pow(deltay,2));
        if(dist < min)
        {
            min = dist;
            index_min = i;
        }
    }
    if(index_min < 0 || index_min + 10 > global_path.size())
        return  false;
    this->index_min_ = index_min;
    int count = 0;
	for(int i = index_min; i<global_path.size(); i++)
	{
		double deltax = global_path[i].pose.position.x - px;
		double deltay = global_path[i].pose.position.y - py;
		double temp_x, temp_y;
		temp_x = deltax * cos(psi) + deltay * sin(psi);
		temp_y = deltay * cos(psi) - deltax * sin(psi);
        local_x(count) = temp_x;
        local_y(count++) = temp_y;
        if(count >=  local_x.size())
            break;
	}
    return true;
}

void MPC_Controller_core::timerCb() {
    Eigen::VectorXd localPathx(20), localPathy(20);
    if(!is_path_update_ || !is_state_update_ || !is_steering_update_) {
        str_pub_.publish(cmd_str_);
        vel_pub_.publish(cmd_vel_);
        std::cout<<"no message!"<<std::endl;
        return;
    }
    if (!WaypointData2VehicleCoords(localPathx, localPathy))
    {
        cmd_vel_.data = 0 ;
        vel_pub_.publish(cmd_vel_);
        return;
    }

    mpc_.CalculatePolynomial(localPathx, localPathy);
    Eigen::VectorXd vehicle_state_vector(6);
    vehicle_state_vector(0) = vehicle_state_.pose.x;
    vehicle_state_vector(1) = vehicle_state_.pose.y;
    vehicle_state_vector(2) = vehicle_state_.yaw;
    vehicle_state_vector(3) = vehicle_state_.vel;
    vehicle_state_vector(4) = vehicle_state_.steering;
    vehicle_state_vector(5) = vehicle_state_.a;
    mpc_.CalculateErrors(vehicle_state_vector);
    mpc_.Solve(vehicle_state_vector);


    initref_path_msg = {};
    geometry_msgs::PoseStamped initref_pose;
     initref_path_msg.header.frame_id = "/odom";
    initref_path_msg.header.stamp = ros::Time::now();
    initref_pose.header = initref_path_msg.header;
    for (auto &point_itr : mpc_.initref_path_) {
        initref_pose.pose.position.x = point_itr[0];
        initref_pose.pose.position.y = point_itr[1];
        initref_pose.pose.position.z = 0;
        initref_path_msg.poses.push_back(initref_pose);
    }

    polyfit_path_msg = {};
    geometry_msgs::PoseStamped polyfit_pose;
    polyfit_path_msg.header.frame_id = "/odom";
    polyfit_path_msg.header.stamp = ros::Time::now();
    polyfit_pose.header = polyfit_path_msg.header;
    for (auto &point_itr : mpc_.polyfit_path_) {
        polyfit_pose.pose.position.x = point_itr[0];
        polyfit_pose.pose.position.y = point_itr[1];
        polyfit_pose.pose.position.z = 0;
        //rs_pose.pose.orientation = tf::createQuaternionMsgFromYaw(point_itr[2]);
        polyfit_path_msg.poses.push_back(polyfit_pose);
    }

    predict_path_msg = {};
    geometry_msgs::PoseStamped predict_pose;
    predict_path_msg.header.frame_id = "/odom";
    predict_path_msg.header.stamp = ros::Time::now();
    predict_pose.header = predict_path_msg.header;
    for (auto &point_itr : mpc_.predict_path_) {
        predict_pose.pose.position.x = point_itr[0];
        predict_pose.pose.position.y = point_itr[1];
        predict_pose.pose.position.z = 0;
        //rs_pose.pose.orientation = tf::createQuaternionMsgFromYaw(point_itr[2]);
        predict_path_msg.poses.push_back(predict_pose);
    }

    global_path_msg = {};
    geometry_msgs::PoseStamped global_path_rviz;
    global_path_msg.header.frame_id = "/odom";
    global_path_msg.header.stamp = ros::Time::now();
    global_path_rviz.header = global_path_msg.header;
    for(int i = 0; i < global_path.size() ; ++i) {
        double deltax = global_path[i].pose.position.x - vehicle_state_.pose.x;
        double deltay = global_path[i].pose.position.y - vehicle_state_.pose.y;
        double temp_x, temp_y;
        temp_x = deltax * cos(vehicle_state_.yaw) + deltay * sin(vehicle_state_.yaw);
        temp_y = deltay * cos(vehicle_state_.yaw) - deltax * sin(vehicle_state_.yaw);
        global_path_rviz.pose.position.x = temp_x;
        global_path_rviz.pose.position.y = temp_y;
        global_path_rviz.pose.position.z = 0;
        //rs_pose.pose.orientation = tf::createQuaternionMsgFromYaw(point_itr[2]);
        global_path_msg.poses.push_back(global_path_rviz);
    }

    cmd_str_.data = mpc_.steering_angle_next;
    cmd_vel_.data = 7 * 2.76; // For the Lincoln model, vmd_vel = desired_v(m/s) * 2.76
    ROS_INFO("exp_steering:%.3f ,steering:%.3f,  vehicle_vel:%.2f , exp_vel:%.2f",
             cmd_str_.data,
             vehicle_state_.steering,
             vehicle_state_.vel,
             cmd_vel_.data);
    str_pub_.publish(cmd_str_);
    vel_pub_.publish(cmd_vel_);
    initref_pub.publish(initref_path_msg);
    polyfit_pub.publish(polyfit_path_msg);
    predict_pub.publish(predict_path_msg);
    global_path_pub.publish(global_path_msg);
}

}

