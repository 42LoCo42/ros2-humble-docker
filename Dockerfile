FROM osrf/ros:humble-desktop-full@sha256:caf37ed27202fc4cc3b1acbe8a0edc1f66eb63b6acc79940683da375c0143e06
RUN apt update && \
	apt install locales && \
	locale-gen en_US.UTF-8 && \
	update-locale LC_ALL=en_US.UTF-8 LANG=en_US.UTF-8 && \
	echo "export ROS_DISTRO=humble" > /etc/profile.d/00-ros.sh && \
	cp /ros_entrypoint.sh /etc/profile.d/01-ros.sh
CMD bash -l
