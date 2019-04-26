mkdir build
cd /build
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-7.1
repo sync -f --force-broken --no-tags --no-clone-bundle
mkdir -p device/wileyfox/porridge && cp -r /sources/* device/wileyfox/porridge/
source build/envsetup.sh && lunch omni_porridge-userdebug && make -j5 recoveryimage
cp /build/out/target/product/porridge/recovery.img /sources/recovery.img
