#!/bin/bash

# Copyright 2020 Rene Rivera, Sam Darwin
# Distributed under the Boost Software License, Version 1.0.
# (See accompanying file LICENSE.txt or copy at http://boost.org/LICENSE_1_0.txt)

set -e
export TRAVIS_BUILD_DIR=$(pwd)
export DRONE_BUILD_DIR=$(pwd)
export TRAVIS_BRANCH=$DRONE_BRANCH
export VCS_COMMIT_ID=$DRONE_COMMIT
export GIT_COMMIT=$DRONE_COMMIT
export REPO_NAME=$DRONE_REPO
export PATH=~/.local/bin:/usr/local/bin:$PATH

if [ "$DRONE_JOB_BUILDTYPE" == "boost" ]; then

echo '==================================> INSTALL'

BOOST_BRANCH=develop && [ "$TRAVIS_BRANCH" == "master" ] && BOOST_BRANCH=master || true
cd ..
git clone -b $BOOST_BRANCH --depth 1 https://github.com/boostorg/boost.git boost-root
cd boost-root
git submodule update --init tools/build
git submodule update --init libs/config
git submodule update --init tools/boostdep
cp -r $TRAVIS_BUILD_DIR/* libs/mpi
python tools/boostdep/depinst/depinst.py mpi
./bootstrap.sh
./b2 headers

echo '==================================> SCRIPT'

export PROC_MOUNT_LINE_LEN=2000
echo "using $TOOLSET : : $COMPILER ;" > ~/user-config.jam
echo "using mpi : mpic++.openmpi : : mpirun.openmpi --allow-run-as-root ;" >> ~/user-config.jam
mpirun.openmpi --allow-run-as-root --version
./b2 -j3 libs/mpi/test toolset=$TOOLSET cxxstd=$CXXSTD variant=release

fi
