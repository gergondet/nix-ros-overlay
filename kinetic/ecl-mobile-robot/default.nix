
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, ecl-formatters, catkin, ecl-geometry, ecl-build, ecl-license, ecl-errors, ecl-math, ecl-linear-algebra }:
buildRosPackage {
  pname = "ros-kinetic-ecl-mobile-robot";
  version = "0.60.3";

  src = fetchurl {
    url = https://github.com/yujinrobot-release/ecl_navigation-release/archive/release/kinetic/ecl_mobile_robot/0.60.3-0.tar.gz;
    sha256 = "740992c6f2ec18390b8dd42b269049a9ae156534291a6708e435821a1ffcf200";
  };

  propagatedBuildInputs = [ ecl-license ecl-formatters ecl-errors ecl-math ecl-linear-algebra ecl-geometry ecl-build ];
  nativeBuildInputs = [ ecl-license ecl-formatters ecl-errors ecl-math ecl-linear-algebra catkin ecl-geometry ecl-build ];

  meta = {
    description = ''Contains transforms (e.g. differential drive inverse kinematics)
    for the various types of mobile robot platforms.'';
    #license = lib.licenses.BSD;
  };
}