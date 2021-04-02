#!/bin/sh

path="/home/workspace/catkin_ws"

xterm  -e  " roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=${path}/src/homeservicerobot/whereami/my_robot/worlds/my_house.world" &
sleep 5

xterm  -e  " roslaunch turtlebot_gazebo amcl_demo.launch map_file:=${path}/src/homeservicerobot/map/my_map.yaml " & 
sleep 5

xterm -e " roslaunch turtlebot_rviz_launchers view_navigation.launch rviz_path:=${path}/src/homeservicerobot/rvizConfig/my_config.rviz" &
sleep 10

xterm -e " roslaunch add_markers add_marker_node.launch"