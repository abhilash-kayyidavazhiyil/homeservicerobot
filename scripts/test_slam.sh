#!/bin/sh

path="/home/workspace/catkin_ws"

xterm  -e  " roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=${path}/src/whereami/my_robot/worlds/my_house.world" &
sleep 5

xterm  -e  " roslaunch turtlebot_gazebo gmapping_demo.launch " & 
sleep 5

xterm -e " roslaunch turtlebot_rviz_launchers view_navigation.launch " &
sleep 5

xterm  -e  " roslaunch turtlebot_teleop keyboard_teleop.launch" 