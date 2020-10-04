# cd catkin_ws/src/invariant-ekf-ros
# git checkout minicheetah
# cd ../..
cd catkin_ws
catkin_make install -DCMAKE_BUILD_TYPE=Release -DOCTOMAP_DIR=$PWD/../submodules/octomap/lib/cmake/octomap/ -Doctomap_DIR=$PWD/../submodules/octomap/lib/cmake/octomap/
