git clone https://gitlab.com/ElXreno/android-5.1-src /build --depth=1
cd /build
mkdir -p device/wileyfox/porridge && cp -r /sources/* device/wileyfox/porridge/
source build/envsetup.sh && lunch omni_porridge-userdebug && make -j5 recoveryimage
cp /build/out/target/product/porridge/recovery.img /sources/recovery.img
