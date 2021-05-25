cd ../../data/
mkdir "$(date +"%m-%d-%Y")"
cd "$(date +"%m-%d-%Y")"
lcm-logger &
rosbag record \
/Contacts \
/Imu \
/JointState \
/camera/align_to_color/parameter_descriptions \
/camera/align_to_color/parameter_updates \
/camera/aligned_depth_to_color/camera_info \
/camera/aligned_depth_to_color/image_raw \
/camera/color/camera_info \
/camera/color/image_raw \
/camera/depth/camera_info \
/camera/depth/image_rect_raw \
/camera/extrinsics/depth_to_color \
/camera/motion_module/parameter_descriptions \
/camera/motion_module/parameter_updates \
/camera/realsense2_camera_manager/bond \
/camera/rgb_camera/auto_exposure_roi/parameter_descriptions \
/camera/rgb_camera/auto_exposure_roi/parameter_updates \
/camera/rgb_camera/parameter_descriptions \
/camera/rgb_camera/parameter_updates \
/camera/stereo_module/auto_exposure_roi/parameter_descriptions \
/camera/stereo_module/auto_exposure_roi/parameter_updates \
/camera/stereo_module/parameter_descriptions \
/camera/stereo_module/parameter_updates \
/diagnostics \
/rosout \
/rosout_agg \
/tf \
/tf_static

