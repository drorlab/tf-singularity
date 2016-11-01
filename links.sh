#!/usr/bin/bash

dir=/usr/local/NVIDIA-Linux-x86_64-$1

cd $dir

ln -s libcuda.so.$1 libcuda.so
ln -s libEGL.so.$1 libEGL.so
ln -s libGLESv1_CM.so.$1 libGLESv1_CM.so
ln -s libGLESv2.so.$1 libGLESv2.so
ln -s libGL.so.$1 libGL.so
ln -s libglx.so.$1 libglx.so
ln -s libnvcuvid.so.$1 libnvcuvid.so
ln -s libnvidia-cfg.so.$1 libnvidia-cfg.so
ln -s libnvidia-compiler.so.$1 libnvidia-compiler.so
ln -s libnvidia-eglcore.so.$1 libnvidia-eglcore.so
ln -s libnvidia-encode.so.$1 libnvidia-encode.so
ln -s libnvidia-fbc.so.$1 libnvidia-fbc.so
ln -s libnvidia-glcore.so.$1 libnvidia-glcore.so
ln -s libnvidia-glsi.so.$1 libnvidia-glsi.so
ln -s libnvidia-gtk2.so.$1 libnvidia-gtk2.so
ln -s libnvidia-gtk3.so.$1 libnvidia-gtk3.so
ln -s libnvidia-ifr.so.$1 libnvidia-ifr.so
ln -s libnvidia-ml.so.$1 libnvidia-ml.so
ln -s libnvidia-ml.so.$1 libnvidia-ml.so.1
ln -s libnvidia-opencl.so.$1 libnvidia-opencl.so
ln -s libnvidia-tls.so.$1 libnvidia-tls.so
ln -s libnvidia-wfb.so.$1 libnvidia-wfb.so
ln -s libvdpau_nvidia.so.$1 libvdpau_nvidia.so
ln -s libvdpau.so.$1 libvdpau.so
ln -s libvdpau_trace.so.$1 libvdpau_trace.so
ln -s libcuda.so.$1 libcuda.so.1
