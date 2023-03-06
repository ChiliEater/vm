#!/bin/bash

BOOT=/home/chili/VM/_images/archlinux-2023.03.01-x86_64.iso
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
DISK=$SCRIPT_DIR/arch.qcow2
RAM=8G
CORES=4
ACCELERATOR=kvm

qemu-system-x86_64 \
-cdrom $BOOT \
-boot order=d \
-drive file=$DISK \
-m $RAM \
-accel $ACCELERATOR \
-smp $CORES \
-cpu host
