# Use, modification, and distribution are
# subject to the Boost Software License, Version 1.0. (See accompanying
# file LICENSE.txt)
#
# Copyright Rene Rivera 2020.

# For Drone CI we use the Starlark scripting language to reduce duplication.
# As the yaml syntax for Drone CI is rather limited.
#
#
globalenv={}
linuxglobalimage="cppalliance/droneubuntu1604:1"
windowsglobalimage="cppalliance/dronevs2019"

def main(ctx):
  return [
  linux_cxx("TOOLSET=gcc COMPILER=g++ CXXSTD=03 Job 0", "g++", packages="libopenmpi-dev openmpi-bin", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'gcc', 'COMPILER': 'g++', 'CXXSTD': '03', 'DRONE_JOB_UUID': 'b6589fc6ab'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++ CXXSTD=11 Job 1", "g++", packages="libopenmpi-dev openmpi-bin", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'gcc', 'COMPILER': 'g++', 'CXXSTD': '11', 'DRONE_JOB_UUID': '356a192b79'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-4.4 CXXSTD=98 Job 2", "g++", packages="g++-4.4 libopenmpi-dev openmpi-bin", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-4.4', 'CXXSTD': '98', 'DRONE_JOB_UUID': 'da4b9237ba'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-4.4 CXXSTD=0x Job 3", "g++", packages="g++-4.4 libopenmpi-dev openmpi-bin", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-4.4', 'CXXSTD': '0x', 'DRONE_JOB_UUID': '77de68daec'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-4.6 CXXSTD=03 Job 4", "g++", packages="g++-4.6 libopenmpi-dev openmpi-bin", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-4.6', 'CXXSTD': '03', 'DRONE_JOB_UUID': '1b64538924'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-4.6 CXXSTD=0x Job 5", "g++", packages="g++-4.6 libopenmpi-dev openmpi-bin", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-4.6', 'CXXSTD': '0x', 'DRONE_JOB_UUID': 'ac3478d69a'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-5 CXXSTD=11 Job 6", "g++-5", packages="g++-5 libopenmpi-dev openmpi-bin", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-5', 'CXXSTD': '11', 'DRONE_JOB_UUID': 'c1dfd96eea'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-5 CXXSTD=14 Job 7", "g++-5", packages="g++-5 libopenmpi-dev openmpi-bin", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-5', 'CXXSTD': '14', 'DRONE_JOB_UUID': '902ba3cda1'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-6 CXXSTD=11 Job 8", "g++-6", packages="g++-6 libopenmpi-dev openmpi-bin", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-6', 'CXXSTD': '11', 'DRONE_JOB_UUID': 'fe5dbbcea5'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-6 CXXSTD=14 Job 9", "g++-6", packages="g++-6 libopenmpi-dev openmpi-bin", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-6', 'CXXSTD': '14', 'DRONE_JOB_UUID': '0ade7c2cf9'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-7 CXXSTD=14 Job 10", "g++-7", packages="g++-7 libopenmpi-dev openmpi-bin", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-7', 'CXXSTD': '14', 'DRONE_JOB_UUID': 'b1d5781111'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-7 CXXSTD=17 Job 11", "g++-7", packages="g++-7 libopenmpi-dev openmpi-bin", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-7', 'CXXSTD': '17', 'DRONE_JOB_UUID': '17ba079149'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-8 CXXSTD=14 Job 12", "g++-8", packages="g++-8 libopenmpi-dev openmpi-bin", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-8', 'CXXSTD': '14', 'DRONE_JOB_UUID': '7b52009b64'}, globalenv=globalenv),
  linux_cxx("TOOLSET=gcc COMPILER=g++-8 CXXSTD=17 Job 13", "g++-8", packages="g++-8 libopenmpi-dev openmpi-bin", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'gcc', 'COMPILER': 'g++-8', 'CXXSTD': '17', 'DRONE_JOB_UUID': 'bd307a3ec3'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang COMPILER=clang++ CXXSTD=03 Job 14", "clang++", packages="libopenmpi-dev openmpi-bin", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'clang', 'COMPILER': 'clang++', 'CXXSTD': '03', 'DRONE_JOB_UUID': 'fa35e19212'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang COMPILER=clang++ CXXSTD=11 Job 15", "clang++", packages="libopenmpi-dev openmpi-bin", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'clang', 'COMPILER': 'clang++', 'CXXSTD': '11', 'DRONE_JOB_UUID': 'f1abd67035'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang COMPILER=clang++ CXXSTD=14 Job 16", "clang++", packages="libopenmpi-dev openmpi-bin", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'clang', 'COMPILER': 'clang++', 'CXXSTD': '14', 'DRONE_JOB_UUID': '1574bddb75'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang COMPILER=clang++ CXXSTD=1z Job 17", "clang++", packages="libopenmpi-dev openmpi-bin", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'clang', 'COMPILER': 'clang++', 'CXXSTD': '1z', 'DRONE_JOB_UUID': '0716d9708d'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang COMPILER=clang++-libc++ CXXSTD= Job 18", "clang++-libc++", packages="libc++-dev libopenmpi-dev openmpi-bin", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-libc++', 'CXXSTD': '03', 'DRONE_JOB_UUID': '9e6a55b6b4'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang COMPILER=clang++-libc++ CXXSTD= Job 19", "clang++-libc++", packages="libc++-dev libopenmpi-dev openmpi-bin", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-libc++', 'CXXSTD': '11', 'DRONE_JOB_UUID': 'b3f0c7f6bb'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang COMPILER=clang++-libc++ CXXSTD= Job 20", "clang++-libc++", packages="libc++-dev libopenmpi-dev openmpi-bin", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-libc++', 'CXXSTD': '14', 'DRONE_JOB_UUID': '91032ad7bb'}, globalenv=globalenv),
  linux_cxx("TOOLSET=clang COMPILER=clang++-libc++ CXXSTD= Job 21", "clang++-libc++", packages="libc++-dev libopenmpi-dev openmpi-bin", buildtype="boost", buildscript="drone", image=linuxglobalimage, environment={'TOOLSET': 'clang', 'COMPILER': 'clang++-libc++', 'CXXSTD': '1z', 'DRONE_JOB_UUID': '472b07b9fc'}, globalenv=globalenv),
    ]

# from https://github.com/boostorg/boost-ci
load("@boost_ci//ci/drone/:functions.star", "linux_cxx","windows_cxx","osx_cxx","freebsd_cxx")
