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

cd ../../Cheetah-Software
mkdir build
cd build
cmake .. -DMINI_CHEETAH_BUILD=TRUE
./../scripts/make_types.sh
make -j4

