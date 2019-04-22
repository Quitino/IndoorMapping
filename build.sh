cd Thirdparty/DBoW2/
mkdir build
cd build
cmake ..
make -j8

#cd ../../sophus
#mkdir build
#cd build
#cmake ..
#make -j4 

cd ../../g2o
mkdir build
cd build
cmake ..
make -j8

#cd ../../fast
#mkdir build
#cd build
#cmake ..
#make -j4

cd ../../..
mkdir build
cd build
cmake ..
make -j8
