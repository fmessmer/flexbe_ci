#!/usr/bin/env bash
set -e

source ~/catkin_ws/devel/setup.bash
cd ~/catkin_ws
catkin clean --yes
catkin config --no-install
catkin build
source ~/catkin_ws/devel/setup.bash
xvfb-run rosrun flexbe_app run_app --offline --run-tests
catkin run_tests && catkin_test_results
