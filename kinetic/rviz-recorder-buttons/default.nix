
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, std-srvs, pluginlib, class-loader, catkin, rviz, actionlib, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-rviz-recorder-buttons";
  version = "1.0.1";

  src = fetchurl {
    url = https://github.com/ipa-jfh/robot_recorder-release/archive/release/kinetic/rviz_recorder_buttons/1.0.1-0.tar.gz;
    sha256 = "f061af668eba0b24cc909015056d70db30d52de6018955dd457404d8087d1de5";
  };

  propagatedBuildInputs = [ std-srvs rviz pluginlib actionlib roscpp ];
  nativeBuildInputs = [ std-srvs catkin rviz pluginlib actionlib class-loader roscpp ];

  meta = {
    description = ''The rviz_recorder_buttons package'';
    #license = lib.licenses.BSD;
  };
}