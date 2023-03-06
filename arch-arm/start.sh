#!/bin/bash

BOOT=/home/chili/VM/_images/ArchLinuxARM-aarch64-latest.iso
SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
DISK=$SCRIPT_DIR/arch.qcow2
RAM=8G
CORES=4
ACCELERATOR=tcg
UEFI=1
UEFI_CODE=/usr/share/edk2-ovmf/x64/OVMF_CODE.fd
UEFI_VARS_SOURCE=/usr/share/edk2-ovmf/x64/OVMF_VARS.fd
UEFI_VARS=$SCRIPT_DIR/OVMF_VARS.fd

CMD=(qemu-system-aarch64)

CMD+=(-cdrom $BOOT)
CMD+=(-boot order=d)
CMD+=(-drive file=$DISK)
CMD+=(-m $RAM)
CMD+=(-M virt)
CMD+=(-accel $ACCELERATOR)
CMD+=(-smp $CORES)

#if [ $UEFI ] ; then
#    if [ -f "$FILE" ]; then
#        echo "$FILE exists."
#    fi
#    cp $UEFI_VARS_SOURCE $UEFI_VARS
#    chmod +w $UEFI_VARS
#    CMD+=(-drive if=pflash,format=raw,readonly=on,file=$UEFI_CODE)
#    CMD+=(-drive if=pflash,format=raw,file=$UEFI_VARS)
#fi


CMD+=()
CMD+=()
CMD+=()
CMD+=()
CMD+=()
CMD+=()
CMD+=()
CMD+=()
CMD+=()


${CMD[*]}
