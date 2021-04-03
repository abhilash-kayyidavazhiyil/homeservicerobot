#!/bin/sh
xterm  -e  " roslaunch turtlebot_gazebo turtlebot_world.launch world_file:=$(rospack find my_robot)/worlds/my_house.world" &
sleep 5

xterm  -e  " roslaunch turtlebot_gazebo amcl_demo.launch map_file:=$(rospack find my_robot)/../../map/my_map.yaml " & 
sleep 5

xterm -e " roslaunch turtlebot_rviz_launchers view_navigation.launch rviz_path:=$(rospack find my_robot)/../../rvizConfig/my_config.rviz" &
sleep 5


xterm -e " roslaunch add_markers add_markers.launch" &
sleep 5

xterm -e " roslaunch pick_objects pick_objects.launch" 
