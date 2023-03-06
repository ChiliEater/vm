#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )
IMAGE=$SCRIPT_DIR/arch.qcow2
SIZE=50G

rm $IMAGE
qemu-img create -f qcow2 $IMAGE $SIZE