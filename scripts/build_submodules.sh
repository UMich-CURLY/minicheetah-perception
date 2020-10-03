cd submodules/invariant-ekf/
mkdir build
cd build 
cmake .. 
make -j4

cd ../../octomap/
mkdir build
cd build
cmake ..
make -j4
