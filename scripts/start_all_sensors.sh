source catkin_ws/devel/setup.bash

roslaunch realsense2_camera rs_camera.launch align_depth:=true enable_sync:=true depth_width:=640 depth_height:=480 depth_fps:=30 color_width:=640 color_height:=480 color_fps:=30 enable_gyro:=true enable_accel:=true unite_imu_method:=linear_interpolation &
rosrun mini-cheetah lcm_to_ros_node
