#!/bin/bash
set -e

sudo touch /etc/apt/sources.list.d/gazebo-stable.list
sudo chmod 666 /etc/apt/sources.list.d/gazebo-stable.list
sudo echo "deb http://packages.osrfoundation.org/gazebo/ubuntu-stable `lsb_release -cs` main" > /etc/apt/sources.list.d/gazebo-stable.list
sudo wget http://packages.osrfoundation.org/gazebo.key -O - | sudo apt-key add -
sudo apt-get update

sudo touch /etc/ros/rosdep/sources.list.d/00-gazebo9.list
sudo chmod 666 /etc/ros/rosdep/sources.list.d/00-gazebo9.list
sudo echo "yaml https://github.com/osrf/osrf-rosdep/raw/master/gazebo9/gazebo.yaml
yaml https://github.com/osrf/osrf-rosdep/raw/master/gazebo9/releases/indigo.yaml indigo
yaml https://github.com/osrf/osrf-rosdep/raw/master/gazebo9/releases/jade.yaml jade 
yaml https://github.com/osrf/osrf-rosdep/raw/master/gazebo9/releases/kinetic.yaml kinetic 
yaml https://github.com/osrf/osrf-rosdep/raw/master/gazebo9/releases/lunar.yaml lunar" >> /etc/ros/rosdep/sources.list.d/00-gazebo9.lis

echo "remove original Gazebo"
sudo apt-get remove ros-kinetic-gazebo*
sudo apt-get remove libgazebo*
sudo apt-get remove gazebo*

echo "Switching to Gazebo9…"
sudo apt-get install gazebo9 gazebo9-common libgazebo9

echo "Done switching…"

echo "Installing gazebo_ros_pkgs"
sudo apt-get install ros-kinetic-gazebo9-ros-pkgs ros-kinetic-gazebo9-ros-control

sudo apt-get install ros-kinetic-fake-localization 

echo "Install successfully!!!"
