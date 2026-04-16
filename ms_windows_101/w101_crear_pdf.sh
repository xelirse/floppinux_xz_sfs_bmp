#!/bin/sh

cat ./windows1fda.fasm.ndisasm.asm | sed -E "s/\(.+//g" > ./windows1fda.fasm.ndisasm_v0.asm
cat ./windows1fda.fasm.ndisasm.asm | sed -E "s/\(.+//g" | grep " SI" > ./windows1fda.fasm.ndisasm_SI.asm
cat ./w101_asm_ordenado.asm | sed -E "s/( [0-9]+\.*)+\)/)/g" > ./w101_asm_ordenado_v0.asm
cupsfilter ./windows1fda.fasm.ndisasm_v0.asm > ./windows1fda.fasm.ndisasm_v0.asm.pdf
cupsfilter ./windows1fda.fasm.ndisasm_SI.asm > ./windows1fda.fasm.ndisasm_SI.asm.pdf
cupsfilter ./w101_asm_ordenado_v0.asm > ./w101_asm_ordenado_v0.asm.pdf
