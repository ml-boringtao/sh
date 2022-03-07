git clone https://github.com/Unity-Technologies/Robotics-Nav2-SLAM-Example.git
cd Robotics-Nav2-SLAM-Example/ros2_docker/colcon_ws/src/
git clone -b dev-ros2 git@github.com:Unity-Technologies/ROS-TCP-Endpoint.git
cd Robotics-Nav2-SLAM-Example/ros2_docker/
sudo chmod 666 /var/run/docker.sock
docker build -t unity-robotics:nav2-slam-example ./
