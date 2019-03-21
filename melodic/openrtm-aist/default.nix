
# Copyright 2019 Open Source Robotics Foundation
# Distributed under the terms of the BSD license

{ lib, buildRosPackage, fetchurl, python, omniorb, catkin, libtool, pkg-config, doxygen, automake, cmake, utillinux }:
buildRosPackage {
  pname = "ros-melodic-openrtm-aist";
  version = "1.1.2-r3";

  src = fetchurl {
    url = https://github.com/tork-a/openrtm_aist-release/archive/release/melodic/openrtm_aist/1.1.2-3.tar.gz;
    sha256 = "9e3839327b8c0851e91d541cbaf85d0fec16a95bd32522deeed45deb3e404320";
  };

  propagatedBuildInputs = [ omniorb catkin utillinux ];
  nativeBuildInputs = [ python automake omniorb cmake utillinux libtool pkg-config doxygen ];

  meta = {
    description = ''<p>This package represents <a href="http://openrtm.org/">OpenRTM-aist</a> that's built within ROS eco system. Although being ROS-agnostic by itself, you can use this via ROS together with the packages in <a href="http://www.ros.org/wiki/rtmros_common">rtmros_common</a> that bridge between two framework.</p>
   <p><i>OpenRTM-aist is an <a href="http://ieeexplore.ieee.org/xpl/login.jsp?tp=&amp;arnumber=1545521&amp;url=http%3A%2F%2Fieeexplore.ieee.org%2Fiel5%2F10375%2F32977%2F01545521.pdf%3Farnumber%3D1545521">RT-Middleware</a>-baseed, component-oriented software platform to robotics development that is made and maintained in AIST (National Institute of Advanced Industrial Science and Technology) in Japan </i> (<a href="http://openrtm.org/openrtm/en/content/introduction-0">excerpts from here</a>)</p>

   <p>Its development is happening at <a href="http://www.openrtm.org/pub/OpenRTM-aist/">openrtm.org/pub/OpenRTM-aist</a>. The repository listed below is where the development of its ROS wrapper happening.</p>'';
    #license = lib.licenses.EPL;
  };
}