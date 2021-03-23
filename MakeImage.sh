#!/bin/bash

# Check root user
if [[ $EUID -ne 0 ]]; then
	echo "This script must be run as root!"
	exit 1
fi

cd "./linux-5.4"
pwd
make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- CONFIG_DEBUG_KERNEL=y CONFIG_DEBUG_INFO=y -j 40 Image
