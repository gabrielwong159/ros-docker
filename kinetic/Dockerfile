# docker build -t gabrielwong159/ros-desktop-full:kinetic-nvidia9.0 .
FROM osrf/ros:kinetic-desktop-full

RUN apt-get update \
    && apt-get install -y mesa-utils module-init-tools

# install nvidia driver
RUN apt-get install -y binutils
ADD NVIDIA-390.run /tmp/NVIDIA-390.run
# respond to prompt: reinstall all
RUN sh -c '/bin/echo -e "2" | /tmp/NVIDIA-390.run -a -N --ui=none --no-kernel-module'
RUN rm /tmp/NVIDIA-390.run


# install other packages
RUN apt-get install -y \
    tmux \
    git \
    vim \
    wget \
    curl \
    unzip \
    python \
    python-pip \
    && apt-get upgrade -y


# install additional ros tools
RUN apt-get install -y \
    ros-kinetic-catkin \
    python-wstool \
    python-catkin-tools \
    clang-format-3.8 \
    ros-kinetic-rviz-visual-tools
