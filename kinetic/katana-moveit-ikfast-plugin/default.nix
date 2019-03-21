
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, pluginlib, catkin, liblapack, moveit-core, tf-conversions, roscpp }:
buildRosPackage {
  pname = "ros-kinetic-katana-moveit-ikfast-plugin";
  version = "1.1.2";

  src = fetchurl {
    url = https://github.com/uos-gbp/katana_driver-release/archive/release/kinetic/katana_moveit_ikfast_plugin/1.1.2-0.tar.gz;
    sha256 = "354967660e9f9f5fa71f10857dad8ed817846895b6cda6c22e6e5d54c256ab2c";
  };

  propagatedBuildInputs = [ liblapack moveit-core pluginlib tf-conversions roscpp ];
  nativeBuildInputs = [ liblapack moveit-core pluginlib tf-conversions catkin roscpp ];

  meta = {
    description = ''The katana_moveit_ikfast_plugin package'';
    #license = lib.licenses.BSD;
  };
}