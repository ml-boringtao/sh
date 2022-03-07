# Install opencv
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install build-essential cmake unzip pkg-config libjpeg-dev libpng-dev libtiff-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libxvidcore-dev libx264-dev libgtk-3-dev libatlas-base-dev gfortran python3-dev -y

cd opencv
rm -rf build
mkdir build
cd build

# $(which python3)
cmake -D CMAKE_BUILD_TYPE=RELEASE \
	-D CMAKE_INSTALL_PREFIX=/usr/local \
	-D INSTALL_PYTHON_EXAMPLES=OFF \
	-D INSTALL_C_EXAMPLES=OFF \
	-D OPENCV_ENABLE_NONFREE=ON \
	-D WITH_CUDA=ON \
	-D WITH_CUDNN=ON \
	-D OPENCV_DNN_CUDA=ON \
	-D ENABLE_FAST_MATH=1 \
	-D CUDA_FAST_MATH=1 \
	-D CUDA_ARCH_BIN=6.1 \
	-D WITH_CUBLAS=1 \
	-D OPENCV_EXTRA_MODULES_PATH=~/Installers/opencv_contrib/modules \
	-D HAVE_opencv_python3=ON \
	-D BUILD_EXAMPLES=OFF ..
	
make -j$(nproc)
sudo make install
python3 -c "import cv2; count = cv2.cuda.getCudaEnabledDeviceCount(); print(count)"
