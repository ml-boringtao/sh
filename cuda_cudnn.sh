# Install cuda 11 
sudo ubuntu-drivers autoinstall
sudo reboot
sudo sh cuda_11.4.2_470.57.02_linux.run

echo 'export PATH=/usr/local/cuda-11.4/bin:$PATH' >> ~/.bashrc
echo 'export LD_LIBRARY_PATH=/usr/local/cuda-11.4/lib64' >> ~/.bashrc
source ~/.bashrc

sudo apt install nvidia-cuda-toolkit
nvcc -V

# # !!! Download cudnn first https://developer.nvidia.com/rdp/cudnn-archive
sudo cp cuda/include/cudnn*.h /usr/local/cuda/include
sudo cp cuda/lib64/libcudnn* /usr/local/cuda/lib64
sudo chmod a+r /usr/local/cuda/include/cudnn*.h /usr/local/cuda/lib64/libcudnn*
cat /usr/local/cuda/include/cudnn.h | grep CUDNN_MAJOR -A 2
sudo dpkg -i libcudnn8_8.2.4.15-1+cuda11.4_amd64.deb
