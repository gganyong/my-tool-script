#!/bin/bash
#. /opt/fsl-imx-internal-xwayland/4.9-rocko/environment-setup-aarch64-poky-linux
. /opt/fsl-imx-internal-wayland/4.9-rocko-test/environment-setup-aarch64-poky-linux
#export SDKTARGETSYSROOT=/nfsroot/ganyong/mx8
export CONFIGURE_FLAGS="${CONFIGURE_FLAGS%--with-libtool-sysroot*} --with-libtool-sysroot=$SDKTARGETSYSROOT"
#export CC="${CC%--sysroot*} --sysroot=$SDKTARGETSYSROOT"
export WAYLAND_PROTOCOLS_DATADIR=$SDKTARGETSYSROOT/usr/share/wayland-protocols
export WAYLAND_PROTOCOLS_SYSROOT_DIR=$SDKTARGETSYSROOT
export WLD=$SDKTARGETSYSROOT/usr
export LD_LIBRARY_PATH=$WLD/lib
export PKG_CONFIG_PATH=$WLD/lib/pkgconfig/:$WLD/share/pkgconfig/
#export PATH=$WLD/bin:$PATH
export ACLOCAL_PATH=$WLD/share/aclocal
export ACLOCAL="aclocal -I $ACLOCAL_PATH"
export build=/opt/weston
echo $SDKTARGETSYSROOT/usr/share/wayland-protocols
./autogen.sh $CONFIGURE_FLAGS --prefix=$build --enable-ivi-shell --enable-desktop-shell --disable-silent-rules \
             --disable-dependency-tracking --enable-setuid-install \
             --enable-xwayland --enable-simple-clients --enable-clients \
             --enable-demo-clients-install --disable-libunwind --disable-rpi-compositor \
             --disable-rdp-compositor --disable-lcms --disable-libunwind --disable-xwayland-test \
             WESTON_NATIVE_BACKEND=drm-backend.so  --enable-egl --with-cairo-glesv2\
             --enable-simple-egl-clients --enable-fbdev-compositor --disable-headless-compositor \
             --enable-drm-compositor --enable-weston-launch --disable-lcms --disable-vaapi-recorder \
             --disable-wayland-compositor --disable-x11-compositor --disable-setuid-install 

#make clean
make -j4 COMPOSITOR_LIBS="-lGLESv2 -lEGL -lGAL -lwayland-server -lxkbcommon -lpixman-1"
make install
./sync_weston_lib.sh
