# minicheetah-perception
This repo contains packages for running the perception system on the mini-cheetah sensor suite.

## Dependencies
Please check each submodule for details.

## Installation
git clone --recursive git@github.com:UMich-CURLY/minicheetah-perception.git

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
https://github.com/IntelRealSense/librealsense/blob/development/doc/distribution_linux.md

### ROS packages
```
cd catkin_ws
catkin_make install -DCMAKE_BUILD_TYPE=Release -DOCTOMAP_DIR=${your_octomap_source_directory}/lib/cmake/octomap/
```