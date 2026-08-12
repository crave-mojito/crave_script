# repo init -u https://github.com/LineageOS/android.git -b lineage-23.0 --git-lfs
# repo init --depth=1 -u https://github.com/ProjectMatrixx/android -b 16.2 --git-lfs
# repo init --depth=1 --no-repo-verify --git-lfs -u https://github.com/ProjectInfinity-X/manifest -b 16 -g default,-mips,-darwin,-notdefault
# repo init -u https://github.com/RisingOS-Revived/android -b sixteen --git-lfs
repo init --depth=1 -u https://github.com/VoltageOS/manifest.git -b 17 --git-lfs
# repo sync
/opt/crave/resync.sh
# git clone https://github.com/Infinity-X-Devices/android_device_xiaomi_mojito.git -b 16.0 device/xiaomi/mojito
# git clone https://github.com/Infinity-X-Devices/device_xiaomi_sm6150-common.git -b 16.0 device/xiaomi/sm6150-common
# git clone https://github.com/Infinity-X-Devices/kernel_xiaomi_mojito --depth 1 -b inline-rorn kernel/xiaomi/mojito
# git clone https://gitlab.com/mojito22/android_vendor_xiaomi_mojito.git -b qpr vendor/xiaomi/mojito
# git clone https://gitlab.com/mojito22/android_vendor_xiaomi_sm6150-common.git -b 16.0 vendor/xiaomi/sm6150-common
# git clone https://github.com/BlissRoms-Devices/android_hardware_xiaomi.git --depth 1 -b mojito-rom hardware/xiaomi
# . build/envsetup.sh
# lunch lineage-mojito-user
# bacon

# repo init --depth=1 -u https://github.com/Pixelify-AOSP/platform_manifest -b 17 --git-lfs
# /opt/crave/resync.sh

# git clone https://github.com/Infinity-X-Devices/android_device_xiaomi_mojito.git -b 17-wip device/xiaomi/mojito
# git clone https://github.com/Infinity-X-Devices/device_xiaomi_sm6150-common.git -b 17-wip device/xiaomi/sm6150-common
# git clone https://github.com/K4LCHAKRA/kernel_xiaomi_mojito.git -b bpf-5.10-working kernel/xiaomi/mojito

# git clone https://gitlab.com/mojito22/android_vendor_xiaomi_mojito.git -b qpr1 vendor/xiaomi/mojito
# git clone https://gitlab.com/mojito22/android_vendor_xiaomi_sm6150-common.git -b 16 vendor/xiaomi/sm6150-common
# git clone https://github.com/BlissRoms-Devices/android_hardware_xiaomi.git --depth 1 -b mojito hardware/xiaomi
rm -rf device/xiaomi/mojito
rm -rf device/xiaomi/sm6150-common
rm -rf kernel/xiaomi/mojito
rm -rf vendor/xiaomi/mojito
rm -rf vendor/xiaomi/sm6150-common
rm -rf mojito hardware/xiaomi

git clone https://github.com/Infinity-X-Devices/device_xiaomi_mojito.git -b 17-vos device/xiaomi/mojito
git clone https://github.com/Infinity-X-Devices/device_xiaomi_sm6150-common.git -b 17-vos device/xiaomi/sm6150-common
git clone https://github.com/Infinity-X-Devices/device_xiaomi_sm6150-common.git -b 15-QPR2-los-FN-5.4-5.10-CK kernel/xiaomi/mojito

git clone https://gitlab.com/mojito22/android_vendor_xiaomi_mojito.git -b qpr1 vendor/xiaomi/mojito
git clone https://gitlab.com/mojito22/android_vendor_xiaomi_sm6150-common.git -b 16 vendor/xiaomi/sm6150-common
rm -rf hardware/xiaomi
git clone https://github.com/BlissRoms-Devices/android_hardware_xiaomi.git --depth 1 -b mojito hardware/xiaomi

rm -rf vendor/voltage-priv/keys
git clone https://github.com/mojito-keys/vendor_voltage-priv_keys.git -b main vendor/voltage-priv/keys

# . build/envsetup.sh
# lunch custom_mojito-cp2a-userdebug
# mka bacon

# mka kernel
# mka precompiled_sepolicy

. build/envsetup.sh
brunch mojito
