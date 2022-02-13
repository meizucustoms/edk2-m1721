Attempt to create a minimal EDK2 for Meizu M6 Note

## Status
Boots to efi shell.

## Building
Tested on Arch Linux.

First, clone EDK2.

```
cd ..
git clone https://github.com/tianocore/edk2.git --recursive
git clone https://github.com/tianocore/edk2-platforms.git
```

You should have all three directories side by side.

Next, install dependencies:

Ubuntu 18.04:

```
sudo apt install build-essential uuid-dev iasl git nasm python3-distutils gcc-aarch64-linux-gnu
```

Also see [EDK2 website](https://github.com/tianocore/tianocore.github.io/wiki/Using-EDK-II-with-Native-GCC#Install_required_software_from_apt)

Then ./firstrun.sh

Finally, ./build.sh.

Then fastboot boot uefi.img from lk2nd.

# Credits

ivoszbg for making [edk2-msm8916](https://github.com/ivoszbg/edk2-msm8916)

SimpleFbDxe screen driver is from imbushuo's [Lumia950XLPkg](https://github.com/WOA-Project/Lumia950XLPkg).

Zhuowei for making edk2-pixel3
