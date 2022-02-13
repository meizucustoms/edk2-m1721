#!/bin/bash
# based on the instructions from edk2-platform
set -e
. build_common.sh
# not actually GCC5; it's GCC7 on Ubuntu 18.04.
GCC5_AARCH64_PREFIX=aarch64-linux-gnu- build -s -n 0 -a AARCH64 -t GCC5 -p M1721Pkg/Devices/m1721.dsc
gzip -c < workspace/Build/M1721Pkg/DEBUG_GCC5/FV/M1721PKG_UEFI.fd >uefi.img
[ -f m1721.dtb ] && rm m1721.dtb
dtc -I dts -O dtb -o m1721.dtb m1721.dts
cat m1721.dtb >>uefi.img
