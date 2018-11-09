# Docker images for ROS
This repository contains the files used for running ROS Kinetic with an NVIDIA driver. It contains two images: one with a basic installation of ROS and CUDA 9.0, and the other which contains additional dependencies used in the [Niryo One robotic arm](https://github.com/NiryoRobotics/niryo_one_ros).

## Usage
```
docker pull gabrielwong159/ros-desktop-full:kinetic-nvidia9.0
docker pull gabrielwong159/ros-desktop-full:niryo-nvidia9.0
```
