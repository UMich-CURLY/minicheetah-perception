# minicheetah-perception
This repo contains packages for running the perception system on the mini-cheetah sensor suite.

## Dependencies
Please check each submodule for details.

## Installation
```
git clone --recursive https://github.com/UMich-CURLY/minicheetah-perception.git
```

Use scripts or build manually
```
./scripts/build_submodules.sh
```

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
Use minicheetah branch for invariant-ekf-ros
```
cd catkin_ws/src/invariant-ekf-ros/
git checkout minicheetah
```

```
cd catkin_ws
catkin_make install -DCMAKE_BUILD_TYPE=Release -DOCTOMAP_DIR=${your_octomap_source_directory}/lib/cmake/octomap/ -Doctomap_DIR=${your_octomap_source_directory}/lib/cmake/octomap/
```
If there are errors complainning missing .h files, try to catkin_make again, because those repositories are dependicies of each other.
