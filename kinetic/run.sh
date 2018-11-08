#!/bin/bash
xhost +
docker run -it \
    --rm \
    --privileged \
    --user=$(id -u) \
    -e USER=$USER \
    -e DISPLAY=unix:0.0 \
    -v "/tmp/.X11-unix:/tmp/.X11-unix" \
    -v "/etc/group:/etc/group:ro" \
    -v "/etc/passwd:/etc/passwd:ro" \
    -v "/etc/shadow:/etc/shadow:ro" \
    -v "/home/$USER/:/home/$USER/" \
    --workdir=/home/$USER \
    --name=ros-kinetic \
    gabrielwong159/ros-desktop-full:kinetic-nvidia9.0
