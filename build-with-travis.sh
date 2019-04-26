mkdir -p omni
cd omni
add-apt-repository ppa:openjdk-r/ppa 
apt-get update 
apt-get install bison build-essential curl ccache flex lib32ncurses5-dev lib32z1-dev libesd0-dev libncurses5-dev libsdl1.2-dev libxml2 libxml2-utils lzop pngcrush schedtool squashfs-tools xsltproc zip zlib1g-dev git-core make phablet-tools gperf openjdk-8-jdk 
repo init -u git://github.com/minimal-manifest-twrp/platform_manifest_twrp_omni.git -b twrp-7.1
repo sync -f --force-broken --no-tags --no-clone-bundle
git clone https://github.com/Skyrimus/twrp_device_porridge.git device/wileyfox/porridge/
. build/envsetup.sh && lunch omni_porridge-userdebug && make recoveryimage -j5
cp /omni/out/target/product/porridge/recovery.img /sources/recovery.img
