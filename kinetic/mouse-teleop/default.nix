
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, catkin, pythonPackages, geometry-msgs, rospy }:
buildRosPackage {
  pname = "ros-kinetic-mouse-teleop";
  version = "0.3.0";

  src = fetchurl {
    url = https://github.com/ros-gbp/teleop_tools-release/archive/release/kinetic/mouse_teleop/0.3.0-0.tar.gz;
    sha256 = "6b265a935613e2d806be914cf4088be249e58f7abb5c55317111e97892e092d7";
  };

  propagatedBuildInputs = [ pythonPackages.numpy geometry-msgs rospy ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A mouse teleop tool for holonomic mobile robots.'';
    #license = lib.licenses.BSD;
  };
}