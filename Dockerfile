# vim: expandtab
FROM osrf/ros:humble-desktop-full@sha256:caf37ed27202fc4cc3b1acbe8a0edc1f66eb63b6acc79940683da375c0143e06

ENV NVIDIA_VISIBLE_DEVICES=all \
    NVIDIA_DRIVER_CAPABILITIES=graphics,utility,compute

RUN apt update && \
    apt install -y \
    locales mesa-utils gazebo ros-humble-turtlebot3* && \
    locale-gen en_US.UTF-8 && \
    update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8

COPY ros.sh /etc/profile.d/00-ros.sh
CMD ["/bin/bash", "-l"]
