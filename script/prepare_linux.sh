#!/bin/bash
set -o errexit -o nounset -o pipefail

apt-get update -y
apt-get install build-essential software-properties-common -y
add-apt-repository ppa:ubuntu-toolchain-r/test -y
apt-get update -y
apt-get install build-essential software-properties-common -y
apt-get update
apt-get install gcc-9 g++-9 -y
update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-9 60 --slave /usr/bin/g++ g++ /usr/bin/g++-9
update-alternatives --config gcc 

apt-get install git python wget -y
apt-get install ninja-build fontconfig libfontconfig1-dev libfontconfig-dev libegl1-mesa-dev libglu1-mesa-dev libgl1-mesa-dev libvulkan-dev curl zip -y
#cd /tmp && git clone https://swiftshader.googlesource.com/SwiftShader swiftshader
