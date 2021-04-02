# Packages Used Explanation

Localization:- Localization is very important to know what is the position of the robot in the world for autonomous navigation. We are using AMCL ROS package to do the localization, which takes the lidar sensor data, map of world and odometry to predict the position of the robot. For this purpose, we are using AMCL ROS package.

Mapping:- Mapping is very useful to create the map of the surrounding of the world, in which we want the robot to move autonomously. For this purpose, we are using slam gmapping ros package, which takes the lidar sensor data and odometry to create the grid of map of the surroundings of the world. 

Navigation:- Navigation is used to move the robot from one place to another place. For this purpose, we are using move_base ros package, which takes the lidar data, map of the world, and odometry to create path from point A to point B and then send the velocity to the robot drive to move the robot.


Package details:

**add_markers** --> this package is used to visualize the marker box in the rviz. It will publish the markers to /visualization_marker topic. It contains two nodes, one node only publishes the marker and waits for 5 secs and then republish the marker at different position.

while other node also publishes the marker and subscribes to the odom topic to get the position of the robot and checks if the robot has reached desired position and then removes the marker for 5 secs and then republishes it to other location.

**pick_objects** --> this package is used to send multiple goals to the move_base to move the robot from one location to another location. We can use the ros action client to send the goal to the server and waits for the robot to reach to that position and after it reaches, we can send another goal to the move_base to move the robot to that location.

**slam_gmapping** --> this package is used for creating the map of the world using the lidar, and odometry. the method we used in this project is gmapping. Using this we created the map of our custom world envirnment. We can also tune the params for the better performance and to create a good map

**turtlebot_simulator** --> this package contains all the necessary things which the required for the turtlebot gazebo simulation and launch files like amcl, gmapping_demo for navigation and mapping respectively. By using this, we added the turtlebot in our custom gazebo world environment and used the gmapping demo launch file to create the map using the gmapping slam method. 

**turtlebot** --> It contains the urdf files, meshes for the turtlebot and turtlebot_teleop package to move the turtlebot around in the world using the keyboard or logitech joystick.

**turtlebot_interactions** --> this package includes the rviz config files. We used this package to visualize the robot with map and markers when moving autonomously. To visulize the marker as well, we used a custom rviz config file and passed that as the argument to the launch file.

**whereami** --> this is our custom package for this course. it contains the custom world and robot with ball chaser package. It has launch files for localization and mapping.