// ROS Includes
#include <ros/ros.h>

// User defined includes
#include "mpc_controller/mpc_controller_core.h"

int main(int argc, char **argv)
{
  ros::init(argc, argv, "mpc_controller");
  waypoint_follower::MPC_Controller_core mpc;
  ros::spin();
  return 0;
}


