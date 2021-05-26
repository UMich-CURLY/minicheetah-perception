source catkin_ws/devel/setup.bash

roslaunch realsense2_camera rs_camera.launch align_depth:=true enable_gyro:=true enable_accel:=true unite_imu_method:=linear_interpolation &
rosrun mini-cheetah lcm_to_ros_node
