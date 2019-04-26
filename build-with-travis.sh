mkdir build
cd /build
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-7.1
repo sync -f --force-broken --no-tags --no-clone-bundle
git clone https://github.com/Skyrimus/twrp_device_porridge.git device/wileyfox/porridge/
source build/envsetup.sh && lunch omni_porridge-userdebug && make -j5 recoveryimage
cp /build/out/target/product/porridge/recovery.img /sources/recovery.img
