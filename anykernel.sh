### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# Global properties
properties() { '
kernel.string=ReLIFE Kernel 5.4 for fogos by ReLIFE Project
do.devicecheck=1
do.modules=0
do.systemless=1
do.cleanup=1
do.cleanuponabort=0
device.name1=fogos
supported.versions=
supported.patchlevels=
supported.vendorpatchlevels=
'; } # end properties

### AnyKernel install

## Boot shell variables
BLOCK=boot
IS_SLOT_DEVICE=1
RAMDISK_COMPRESSION=auto
PATCH_VBMETA_FLAG=auto

# Import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh

## Start boot install

split_boot # Use split_boot to skip ramdisk unpack, e.g., for devices with init_boot ramdisk

flash_boot # Use flash_boot to skip ramdisk repack, e.g., for devices with init_boot ramdisk

## End boot install