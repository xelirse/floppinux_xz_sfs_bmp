#!/bin/sh

qemu-system-x86_64 -drive file=M6416000/M6416000.IMG,format=raw,if=floppy -cdrom ./MCD.ISO -boot a -m 640M
