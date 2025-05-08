# Buildroot Package for SINUX Boards


## Driver support
Check this file to view current driver support progress for SINUX F1: [PROGRESS-SINUX-F1](PROGRESS-SINUX-F1.md)

## Install

### Install necessary packages
``` shell
sudo apt install wget unzip build-essential git bc swig libncurses-dev libpython3-dev libssl-dev
sudo apt install python3-distutils
```

### Download BSP

```shell
git clone https://github.com/mahdi2001h/buildroot-sinux
```

## Make the first build
**Notice: Root permission is not necessery for build firmware.**

### Apply defconfig
**Caution: Apply defconfig will reset all buildroot configurations to default values.**

**Generally, you only need to apply it once.**
```shell
cd buildroot-sinux
make sisoog_sinux_f1_defconfig
```

### Regular build
```shell
make
```


## Speed up Compile
If you have a multicore CPU, you can try
```
make -j ${YOUR_CPU_COUNT}
```

## using docker environment for build
build docker image build execute below command
```shell
sudo docker build -t buildroot-ubuntu18:latest .
```
after build docker image create docker container with belo command and follow build instruction:
```shell
sudo docker run -it --rm \
  -v $PWD/buildroot-sinux/:/buildroot-sinux \
  buildroot-ubuntu18:latest



## Flashing firmware to target
### WARNING: Please be careful when running the following commands, as you might destroy essential data or disk.
```
dd if=buildroot-sinux/output/images/sysimage-sdcard.img of=/dev/sd? status=progress
```
## Helper Scripts
- rebuild-uboot.sh: Recompile U-Boot when you direct edit U-Boot sourcecode.
- rebuild-kernel.sh: Recompile Kernel when you direct edit Kernel sourcecode.
- emulate-chroot.sh: Emulate target rootfs by chroot.
