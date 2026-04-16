#!/bin/sh

cat ./windows1fda.fasm.ndisasm.asm | sed -E "s/\(.+//g" > ./windows1fda.fasm.ndisasm_v0.asm
cupsfilter ./windows1fda.fasm.ndisasm_v0.asm > ./windows1fda.fasm.ndisasm_v0.asm.pdf
