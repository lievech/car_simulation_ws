# mpc-controller

this ROS package is converted from [CarBD-MPC-Project](https://github.com/prasadmahendra/mpc) 

## Important Dependencies
* Ipopt and CppAD library are required,you can run the bash files in the script folder to install them.
* For simulation, [autoSim-ivrc repo](https://github.com/bit-ivrc/autoSim-ivrc) and [autonomy_ivrc](https://github.com/bit-ivrc/autonomy_ivrc) are required.

---
## ROS topic:
* subscriber:
	- /global_path (nav_msgs/Path)  
	- /vehicle_state (anm_msgs/VehicleState)  
	- /vehicle_steering_report (dbw_mkz_msgs/SteeringReport)  
* publisher:
	- /cmd_str (std_msgs/Float32)
	- /cmd_vel (std_msgs/Float32)  
---
## Step
* 1.Run vrep and load the scene file "freespace.ttt" in the hmpl repo
* 2.Use [waypoint_collection and route_publisher](https://github.com/bit-ivrc/autonomy_ivrc) to publish a specific global path.
* 3.Run mpc_controller package
