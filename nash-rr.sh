#!/sbin/sh
#
# Copyright © 2020-2021 Nemesis Team
#
### ResurrectionRemix Build-Script for Moto Z2 Force (nash) ###
#
# Credits to @Deivid_21 :D

rm -rf packages/apps/MotCamera
rm -rf packages/apps/MotCamera-overlay
rm -rf packages/apps/MotCamera2
rm -rf packages/apps/MotCamera2-overlay
rm -rf packages/apps/MotCamera3
rm -rf packages/apps/MotCamera3-overlay
rm -rf device/motorola
rm -rf vendor/motorola
rm -rf external/motorola
rm -rf kernel/motorola

# Git Repos

git clone https://gitlab.com/NemesisDevelopers/moto-camera/motorola_camera2_primary.git -b ten-arm64 packages/apps/MotCamera2
git clone https://github.com/DoritosMotorola/doritos_vendor_motorola.git -b lineage-17.1 vendor/motorola
git clone https://github.com/Fraaxius-DeviceTrees/android_device_motorola_nash.git -b rros-ten device/motorola/nash
git clone https://github.com/Fraaxius-DeviceTrees/android_kernel_motorola_msm8998.git -b lineage-17.1 kernel/motorola/msm8998

# Time to cook!

repo sync -f --force-sync --no-clone-bundle
. build/envsetup.sh
## lunch rr_nash-userdebug
## export RR_BUILDTYPE=Official
## mka bacon
