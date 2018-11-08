# docker build -t gabrielwong159/ros-desktop-full:niryo-nvidia9.0 .
FROM gabrielwong159/ros-desktop-full:kinetic-nvidia9.0

RUN rosdep update \
    && apt-get update \
    && apt-get -y dist-upgrade

RUN apt-get install -y ros-kinetic-franka-description

RUN pip install jsonpickle

RUN apt-get install -y \
    ros-kinetic-robot-state-publisher \
    ros-kinetic-moveit \
    ros-kinetic-manipulation-msgs \
    ros-kinetic-rosbridge-suite \
    ros-kinetic-joy \
    ros-kinetic-ros-control \
    ros-kinetic-ros-controllers \
    ros-kinetic-tf2-web-republisher \
    && apt-get upgrade -y
