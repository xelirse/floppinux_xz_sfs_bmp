#!/bin/sh

qemu-system-x86_64 -drive file=windows1-fda/windows1-fda.img,format=raw,if=floppy -boot a -m 2048M
