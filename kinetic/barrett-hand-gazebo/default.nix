
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, gazebo-ros, barrett-hand-description, catkin, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-barrett-hand-gazebo";
  version = "0.1.2";

  src = fetchurl {
    url = https://github.com/RobotnikAutomation/barrett_hand_sim-release/archive/release/kinetic/barrett_hand_gazebo/0.1.2-0.tar.gz;
    sha256 = "4b52a48be7bfa7afcf77fc35dcea6980f408094bc4163205fa6168ff51ced16c";
  };

  propagatedBuildInputs = [ gazebo-ros barrett-hand-description roscpp ];
  nativeBuildInputs = [ gazebo-ros barrett-hand-description catkin roscpp ];

  meta = {
    description = ''The barrett_hand_gazebo package'';
    #license = lib.licenses.BSD;
  };
}