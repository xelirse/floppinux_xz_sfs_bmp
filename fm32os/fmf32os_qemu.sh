#!/bin/sh

qemu-system-x86_64 -drive file=bin/fmf32os.img,format=raw,if=floppy -boot a -m 2048M
