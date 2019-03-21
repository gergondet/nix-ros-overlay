
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, compressed-depth-image-transport, catkin, theora-image-transport, compressed-image-transport }:
buildRosPackage {
  pname = "ros-kinetic-image-transport-plugins";
  version = "1.9.5";

  src = fetchurl {
    url = https://github.com/ros-gbp/image_transport_plugins-release/archive/release/kinetic/image_transport_plugins/1.9.5-0.tar.gz;
    sha256 = "bb8de92c84362bcdaf7974b04618a958aecdb9589d8168f79048a87b8a7725bc";
  };

  propagatedBuildInputs = [ compressed-depth-image-transport theora-image-transport compressed-image-transport ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A set of plugins for publishing and subscribing to sensor_msgs/Image topics
    in representations other than raw pixel data. For example, for viewing a
    stream of images off-robot, a video codec will give much lower bandwidth
    and latency. For low frame rate tranport of high-definition images, you
    might prefer sending them as JPEG or PNG-compressed form.'';
    #license = lib.licenses.BSD;
  };
}