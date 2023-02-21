#!/bin/bash

source /opt/ros/rolling/setup.bash
ros2 launch rosbridge_server rosbridge_websocket_launch.xml
