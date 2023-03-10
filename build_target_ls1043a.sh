#!/bin/bash

echo "Initialize the repo: kirkstone ls-5.15.52-2.1.0"
repo init -u https://github.com/nxp-qoriq/yocto-sdk.git -b kirkstone -m ls-5.15.52-2.1.0_distro.xml
repo sync

echo "Start Layerscape build"
echo "1. Setup environment for building target LS1043ARDB"
source ./distro-setup-env -m ls1043ardb

echo "2. Start the build for the taget LS1043ARDB"
bitbake fsl-image-networking

echo "Done....."
