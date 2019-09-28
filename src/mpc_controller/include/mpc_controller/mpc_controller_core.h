#ifndef MPC_CONTROLLER_SRC_MPC_CONTROLLER_CORE_H_
#define MPC_CONTROLLER_SRC_MPC_CONTROLLER_CORE_H_

#include"ros/ros.h"
#include"std_msgs/Float32.h"
#include"anm_msgs/VehicleState.h"
#include"dbw_mkz_msgs/SteeringReport.h"
#include"nav_msgs/Path.h"
#include<string>
#include<vector>
#include<iostream>
#include "mpc_controller/mpc_controller.h"

typedef struct VehicleState
{
	geometry_msgs::Point pose;
	double yaw;
	double vel;
	double steering;
    double a;
}VehicleState;

namespace waypoint_follower
{
class MPC_Controller_core
{
 public:
	MPC_Controller_core();
 private:
    int index_min_;
	ros::NodeHandle nh_;
	ros::Subscriber vehicleState_sub_, path_sub_, sterring_sub_;
	ros::Publisher vel_pub_, str_pub_, initref_pub, polyfit_pub, predict_pub, global_path_pub;
    ros::Timer timer_;
	std::string map_frame_id_;
    std::string vehicle_frame_id_;
	bool is_state_update_;
	bool is_path_update_;
	bool is_steering_update_;
	VehicleState vehicle_state_;
	MPC_Controller mpc_;
    std_msgs::Float32 cmd_vel_;
    std_msgs::Float32 cmd_str_;
	nav_msgs::Path initref_path_msg = {};
	nav_msgs::Path polyfit_path_msg = {};
	nav_msgs::Path predict_path_msg = {};
    nav_msgs::Path global_path_msg = {};

	std::vector<geometry_msgs::PoseStamped> global_path;
	void callbackFromWayPoints(const nav_msgs::Path msg);
	void callbackVehicleStaet(const anm_msgs::VehicleState msg);
	void callbackFromSteering(const dbw_mkz_msgs::SteeringReport msg);
    void timerCb();
	bool WaypointData2VehicleCoords(Eigen::VectorXd &local_x ,Eigen::VectorXd &local_y);
};
};
#endif /* MPC_CONTROLLER_SRC_MPC_CONTROLLER_CORE_H_ */
