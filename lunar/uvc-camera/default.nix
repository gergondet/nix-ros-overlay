
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, camera-info-manager, image-transport, sensor-msgs, catkin, roscpp, libv4l, nodelet }:
buildRosPackage {
  pname = "ros-lunar-uvc-camera";
  version = "0.2.5";

  src = fetchurl {
    url = https://github.com/ros-drivers-gbp/camera_umd-release/archive/release/lunar/uvc_camera/0.2.5-0.tar.gz;
    sha256 = "795a9d1f7d3c51475b048de7a84f9ac594110522f168cef86afb4c28af59d26d";
  };

  buildInputs = [ libv4l camera-info-manager image-transport sensor-msgs nodelet roscpp ];
  propagatedBuildInputs = [ libv4l camera-info-manager image-transport sensor-msgs nodelet roscpp ];
  nativeBuildInputs = [ catkin ];

  meta = {
    description = ''A collection of node(let)s that stream images from USB cameras (UVC)
     and provide CameraInfo messages to consumers. Includes a
     two-camera node that provides rough synchronization
     for stereo vision.

     Currently uses the base driver from Morgan Quigley's uvc_cam package.'';
    #license = lib.licenses.GPLv2;
  };
}