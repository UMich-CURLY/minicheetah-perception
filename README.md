# minicheetah-perception
This repo contains packages for running the perception system on the mini-cheetah sensor suite.

## Dependencies
Please check each submodule for details.

## Installation
```
git clone --recursive https://github.com/UMich-CURLY/minicheetah-perception.git
```

Use scripts to build inekf and octomap
```
./scripts/build_submodules.sh
```

Or you can build them manually
### install inekf
```
cd submodules/invariant-ekf/
mkdir build
cd build 
cmake .. 
make
```

### install semantic octomap
```
cd submodules/octomap/
mkdir build
cd build
cmake ..
make
```

### Intel Realsense SDK 2.0
We use Intel RealSense camera for data input
* https://github.com/IntelRealSense/librealsense/blob/development/doc/distribution_linux.md
* https://github.com/IntelRealSense/realsense-ros

### ROS packages
We have several packages:
* BKISemanticMapping: generates semantic mapping from segmented images
* SegmentationMapping: segmented input images
* invariant-ekf-ros: ros wrapper of the invariant ekf
* minicheetah-lcm2ros: converts lcm messages published from mini cheetah to ros messages
* octomap_msgs: dependancy for mapping
* octomap_ros: dependancy for mapping 
* ros_numpy: dependancy for mapping

Use minicheetah branch for invariant-ekf-ros
```
cd catkin_ws/src/invariant-ekf-ros/
git checkout minicheetah
```
Then build the catkin workspace, ou can use the script or manually build it
```
./scripts/catkin_make.sh
```

```
cd catkin_ws
catkin_make install -DCMAKE_BUILD_TYPE=Release -DOCTOMAP_DIR=${your_octomap_source_directory}/lib/cmake/octomap/ -Doctomap_DIR=${your_octomap_source_directory}/lib/cmake/octomap/
```
If there are errors complainning missing .h files, try to catkin_make again, because those repositories are dependicies of each other.

## Run
1. Make sure mini cheetah is running and publishing lcm messages
2. run lcm2ros by script
```
./scripts/run_lcm2ros.sh
```
3. publish RealSense images to ROS
```
./scripts/run_realsense_ros.sh
```
4. run mapping
```
./scripts/run_mapping.sh
```
5. record ros messages
```
./scripts/record_ros.sh
```
