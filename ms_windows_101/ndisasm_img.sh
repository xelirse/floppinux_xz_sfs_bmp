#!/bin/sh

n="windows1fda"
archivo="../windows1-fda/$n.img"

# Extraer los 32KB
dd if="$archivo" of="${n}_32k.bin" bs=1k count=32 2>/dev/null

# Desensamblar
ndisasm -b 16 -o 0x7C00 "${n}_32k.bin" > "$n.ndisasm.asm"

# Procesar con el formato solicitado
awk '{
    # 1. Extraer dirección (ej: 8807)
    dir = substr($1, 5, 4);
    
    # 2. Extraer opcodes (columna 2)
    opc = $2;
    
    # 3. Extraer la instrucción completa
    inst = substr($0, 29);
    sub(/[ \t]+$/, "", inst); # Limpiar espacios al final
    
    # 4. Formatear con un ancho de para la instrucción
    printf "%-41s ;%s %s\n", inst, dir, opc;
}' "$n.ndisasm.asm" > "$n.fasm.ndisasm.asm"

echo "Listo: $n.fasm.ndisasm.asm"
