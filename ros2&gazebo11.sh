sudo apt update && sudo apt install curl gnupg2 lsb-release
curl -s https://raw.githubusercontent.com/ros/rosdistro/master/ros.asc | sudo apt-key add -
sudo sh -c 'echo "deb [arch=$(dpkg --print-architecture)] http://packages.ros.org/ros2/ubuntu $(lsb_release -cs) main" > /etc/apt/sources.list.d/ros2-latest.list'
sudo apt update
sudo apt install ros-foxy-desktop
echo "source /opt/ros/foxy/setup.bash" >> ~/.bashrc
source ~/.bashrc
printenv ROS_DISTRO
sudo apt install python3-colcon-common-extensions
sudo apt install gazebo11 ros-foxy-gazebo-ros-pkgs
sudo apt install ros-foxy-ros-core ros-foxy-geometry2 ros-foxy-cartographer ros-foxy-cartographer-ros ros-foxy-navigation2 ros-foxy-nav2-bringup
sudo apt install python3-rosdep python3-rosinstall python3-rosinstall-generator python3-wstool build-essential ffmpeg freeglut3-dev xvfb
