jmp 0x7c36                                ;7C00 EB34
nop                                       ;7C02 90
dec bp                                    ;7C03 4D
push bx                                   ;7C04 53
inc sp                                    ;7C05 44
dec di                                    ;7C06 4F
push bx                                   ;7C07 53
xor bp,[0x33]                             ;7C08 332E3300
add al,[bx+di]                            ;7C0C 0201
add [bx+si],ax                            ;7C0E 0100
add ah,al                                 ;7C10 02E0
add [bx+si+0xb],al                        ;7C12 00400B
lock or [bx+si],ax                        ;7C15 F00900
adc al,[bx+si]                            ;7C18 1200
add al,[bx+si]                            ;7C1A 0200
add [bx+si],al                            ;7C1C 0000
add [bx+si],al                            ;7C1E 0000
add [bx+si],al                            ;7C20 0000
add [bx+si],al                            ;7C22 0000
add [bx+si],al                            ;7C24 0000
add [bx+si],al                            ;7C26 0000
add [bx+si],al                            ;7C28 0000
add [bx+si],al                            ;7C2A 0000
add [bx+si],al                            ;7C2C 0000
add [bp+si],dl                            ;7C2E 0012
add [bx+si],al                            ;7C30 0000
add [bx+si],al                            ;7C32 0000
add [bx+si],ax                            ;7C34 0100
cli                                       ;7C36 FA
xor ax,ax                                 ;7C37 33C0
mov ss,ax                                 ;7C39 8ED0
mov sp,0x7c00                             ;7C3B BC007C
push ss                                   ;7C3E 16
pop es                                    ;7C3F 07
mov bx,0x78                               ;7C40 BB7800
lds si,word [ss:bx]                       ;7C43 36C537
push ds                                   ;7C46 1E
push si                                   ;7C47 56
push ss                                   ;7C48 16
push bx                                   ;7C49 53
mov di,0x7c2b                             ;7C4A BF2B7C
mov cx,0xb                                ;7C4D B90B00
cld                                       ;7C50 FC
lodsb                                     ;7C51 AC
cmp byte [es:di],0x0                      ;7C52 26803D00
jz 0x7c5b                                 ;7C56 7403
mov al,[es:di]                            ;7C58 268A05
stosb                                     ;7C5B AA
mov al,ah                                 ;7C5C 8AC4
loop 0x7c51                               ;7C5E E2F1
push es                                   ;7C60 06
pop ds                                    ;7C61 1F
mov [bx+0x2],ax                           ;7C62 894702
mov word [bx],0x7c2b                      ;7C65 C7072B7C
sti                                       ;7C69 FB
int byte 0x13                             ;7C6A CD13
jc 0x7cd5                                 ;7C6C 7267
mov al,[0x7c10]                           ;7C6E A0107C
cbw                                       ;7C71 98
mul word [0x7c16]                         ;7C72 F726167C
add ax,[0x7c1c]                           ;7C76 03061C7C
add ax,[0x7c0e]                           ;7C7A 03060E7C
mov [0x7c3f],ax                           ;7C7E A33F7C
mov [0x7c37],ax                           ;7C81 A3377C
mov ax,0x20                               ;7C84 B82000
mul word [0x7c11]                         ;7C87 F726117C
mov bx,[0x7c0b]                           ;7C8B 8B1E0B7C
add ax,bx                                 ;7C8F 03C3
dec ax                                    ;7C91 48
div bx                                    ;7C92 F7F3
add [0x7c37],ax                           ;7C94 0106377C
mov bx,0x500                              ;7C98 BB0005
mov ax,[0x7c3f]                           ;7C9B A13F7C
call 0x7d40                               ;7C9E E89F00
mov ax,0x201                              ;7CA1 B80102
call 0x7d5a                               ;7CA4 E8B300
jc 0x7cc2                                 ;7CA7 7219
mov di,bx                                 ;7CA9 8BFB
mov cx,0xb                                ;7CAB B90B00
mov si,0x7dd6                             ;7CAE BED67D
repe cmpsb                                ;7CB1 F3A6
jnz 0x7cc2                                ;7CB3 750D
lea di,[bx+0x20]                          ;7CB5 8D7F20
mov si,0x7de1                             ;7CB8 BEE17D
mov cx,0xb                                ;7CBB B90B00
repe cmpsb                                ;7CBE F3A6
jz 0x7cda                                 ;7CC0 7418
mov si,0x7d77                             ;7CC2 BE777D
call 0x7d32                               ;7CC5 E86A00
xor ah,ah                                 ;7CC8 32E4
int byte 0x16                             ;7CCA CD16
pop si                                    ;7CCC 5E
pop ds                                    ;7CCD 1F
pop word [si]                             ;7CCE 8F04
pop word [si+0x2]                         ;7CD0 8F4402
int byte 0x19                             ;7CD3 CD19
mov si,0x7dc0                             ;7CD5 BEC07D
jmp 0x7cc5                                ;7CD8 EBEB
mov ax,[0x51c]                            ;7CDA A11C05
xor dx,dx                                 ;7CDD 33D2
div word [0x7c0b]                         ;7CDF F7360B7C
inc al                                    ;7CE3 FEC0
mov [0x7c3c],al                           ;7CE5 A23C7C
mov ax,[0x7c37]                           ;7CE8 A1377C
mov [0x7c3d],ax                           ;7CEB A33D7C
mov bx,0x700                              ;7CEE BB0007
mov ax,[0x7c37]                           ;7CF1 A1377C
call 0x7d40                               ;7CF4 E84900
mov ax,[0x7c18]                           ;7CF7 A1187C
sub al,[0x7c3b]                           ;7CFA 2A063B7C
inc ax                                    ;7CFE 40
cmp [0x7c3c],al                           ;7CFF 38063C7C
jnc 0x7d08                                ;7D03 7303
mov al,[0x7c3c]                           ;7D05 A03C7C
push ax                                   ;7D08 50
call 0x7d5a                               ;7D09 E84E00
pop ax                                    ;7D0C 58
jc 0x7cd5                                 ;7D0D 72C6
sub [0x7c3c],al                           ;7D0F 28063C7C
jz 0x7d21                                 ;7D13 740C
add [0x7c37],ax                           ;7D15 0106377C
mul word [0x7c0b]                         ;7D19 F7260B7C
add bx,ax                                 ;7D1D 03D8
jmp 0x7cf1                                ;7D1F EBD0
mov ch,[0x7c15]                           ;7D21 8A2E157C
mov dl,[0x7dfd]                           ;7D25 8A16FD7D
mov bx,[0x7c3d]                           ;7D29 8B1E3D7C
jmp word 0x70:word 0x0                    ;7D2D EA00007000
lodsb                                     ;7D32 AC
or al,al                                  ;7D33 0AC0
jz 0x7d59                                 ;7D35 7422
mov ah,0xe                                ;7D37 B40E
mov bx,0x7                                ;7D39 BB0700
int byte 0x10                             ;7D3C CD10
jmp 0x7d32                                ;7D3E EBF2
xor dx,dx                                 ;7D40 33D2
div word [0x7c18]                         ;7D42 F736187C
inc dl                                    ;7D46 FEC2
mov [0x7c3b],dl                           ;7D48 88163B7C
xor dx,dx                                 ;7D4C 33D2
div word [0x7c1a]                         ;7D4E F7361A7C
mov [0x7c2a],dl                           ;7D52 88162A7C
mov [0x7c39],ax                           ;7D56 A3397C
ret                                       ;7D59 C3
mov ah,0x2                                ;7D5A B402
mov dx,[0x7c39]                           ;7D5C 8B16397C
mov cl,0x6                                ;7D60 B106
shl dh,cl                                 ;7D62 D2E6
or dh,[0x7c3b]                            ;7D64 0A363B7C
mov cx,dx                                 ;7D68 8BCA
xchg ch,cl                                ;7D6A 86E9
mov dl,[0x7dfd]                           ;7D6C 8A16FD7D
mov dh,[0x7c2a]                           ;7D70 8A362A7C
int byte 0x13                             ;7D74 CD13
ret                                       ;7D76 C3
or ax,0x4e0a                              ;7D77 0D0A4E
outsw                                     ;7D7A 6F
outsb                                     ;7D7B 6E
sub ax,0x7953                             ;7D7C 2D5379
jnc 0x7df5                                ;7D7F 7374
gs insw                                   ;7D81 656D
and [si+0x69],ah                          ;7D83 206469
jnc 0x7df3                                ;7D86 736B
and [bx+0x72],ch                          ;7D88 206F72
and [si+0x69],ah                          ;7D8B 206469
jnc 0x7dfb                                ;7D8E 736B
and [di+0x72],ah                          ;7D90 206572
jc 0x7e04                                 ;7D93 726F
jc 0x7da4                                 ;7D95 720D
or dl,[bp+si+0x65]                        ;7D97 0A5265
jo 0x7e08                                 ;7D9A 706C
popa                                      ;7D9C 61
arpl [di+0x20],sp                         ;7D9D 636520
popa                                      ;7DA0 61
outsb                                     ;7DA1 6E
and [fs:bp+di+0x74],dh                    ;7DA2 64207374
jc 0x7e11                                 ;7DA6 7269
imul sp,[di+0x20],0x61                    ;7DA8 6B652061
outsb                                     ;7DAC 6E
jns 0x7dcf                                ;7DAD 7920
imul sp,[di+0x79],0x20                    ;7DAF 6B657920
ja 0x7e1d                                 ;7DB3 7768
gs outsb                                  ;7DB5 656E
and [bp+si+0x65],dh                       ;7DB7 207265
popa                                      ;7DBA 61
fs jns 0x7dcb                             ;7DBB 64790D
or al,[bx+si]                             ;7DBE 0A00
or ax,0x440a                              ;7DC0 0D0A44
imul si,[bp+di+0x6b],0x4220               ;7DC3 69736B2042
outsw                                     ;7DC8 6F
outsw                                     ;7DC9 6F
jz 0x7dec                                 ;7DCA 7420
popad                                     ;7DCC 6661
imul bp,[si+0x75],0x6572                  ;7DCE 696C757265
or ax,0xa                                 ;7DD3 0D0A00
dec cx                                    ;7DD6 49
dec di                                    ;7DD7 4F
and [bx+si],ah                            ;7DD8 2020
and [bx+si],ah                            ;7DDA 2020
and [bx+si],ah                            ;7DDC 2020
push bx                                   ;7DDE 53
pop cx                                    ;7DDF 59
push bx                                   ;7DE0 53
dec bp                                    ;7DE1 4D
push bx                                   ;7DE2 53
inc sp                                    ;7DE3 44
dec di                                    ;7DE4 4F
push bx                                   ;7DE5 53
and [bx+si],ah                            ;7DE6 2020
and [bp+di+0x59],dl                       ;7DE8 205359
push bx                                   ;7DEB 53
add [bx+si],al                            ;7DEC 0000
add [bx+si],al                            ;7DEE 0000
add [bx+si],al                            ;7DF0 0000
add [bx+si],al                            ;7DF2 0000
add [bx+si],al                            ;7DF4 0000
add [bx+si],al                            ;7DF6 0000
add [bx+si],al                            ;7DF8 0000
add [bx+si],al                            ;7DFA 0000
add [bx+si],al                            ;7DFC 0000
push bp                                   ;7DFE 55
stosb                                     ;7DFF AA
lock                                      ;7E00 F0
db 0xff                                   ;7E01 FF
inc word [bp+di]                          ;7E02 FF03
inc ax                                    ;7E04 40
add [di],al                               ;7E05 0005
pusha                                     ;7E07 60
add [bx],al                               ;7E08 0007
add byte [bx+si],0x9                      ;7E0A 800009
mov al,[0xb00]                            ;7E0D A0000B
rol byte [bx+si],byte 0xd                 ;7E10 C0000D
loopne 0x7e15                             ;7E13 E000
sldt word [bx+di]                         ;7E15 0F0001
adc [bx+si],sp                            ;7E18 1120
add [bp+di],dx                            ;7E1A 0113
inc ax                                    ;7E1C 40
add [di],dx                               ;7E1D 0115
pusha                                     ;7E1F 60
add [bx],dx                               ;7E20 0117
add byte [bx+di],0x19                     ;7E22 800119
mov al,[0x1b01]                           ;7E25 A0011B
rol byte [bx+di],byte 0x1d                ;7E28 C0011D
loopne 0x7e2e                             ;7E2B E001
pop ds                                    ;7E2D 1F
add [bp+si],al                            ;7E2E 0002
and [bx+si],sp                            ;7E30 2120
add ah,[bp+di]                            ;7E32 0223
inc ax                                    ;7E34 40
add ah,[di]                               ;7E35 0225
pusha                                     ;7E37 60
add ah,[bx]                               ;7E38 0227
add byte [bp+si],0x29                     ;7E3A 800229
mov al,[0x2b02]                           ;7E3D A0022B
rol byte [bp+si],byte 0x2d                ;7E40 C0022D
lock                                      ;7E43 F0
jmp word far [bx]                         ;7E44 FF2F
add [bp+di],al                            ;7E46 0003
xor [bx+si],sp                            ;7E48 3120
add si,[bp+di]                            ;7E4A 0333
inc ax                                    ;7E4C 40
add si,[di]                               ;7E4D 0335
pusha                                     ;7E4F 60
add si,[bx]                               ;7E50 0337
add byte [bp+di],0x39                     ;7E52 800339
mov al,[0x3b03]                           ;7E55 A0033B
rol byte [bp+di],byte 0x3d                ;7E58 C0033D
loopne 0x7e60                             ;7E5B E003
aas                                       ;7E5D 3F
add [si],al                               ;7E5E 0004
inc cx                                    ;7E60 41
and [si],al                               ;7E61 2004
inc bx                                    ;7E63 43
inc ax                                    ;7E64 40
add al,0x45                               ;7E65 0445
pusha                                     ;7E67 60
add al,0x47                               ;7E68 0447
add byte [si],0x49                        ;7E6A 800449
mov al,[0x4b04]                           ;7E6D A0044B
rol byte [si],byte 0x4d                   ;7E70 C0044D
loopne 0x7e79                             ;7E73 E004
dec di                                    ;7E75 4F
add [di],al                               ;7E76 0005
push cx                                   ;7E78 51
and [di],al                               ;7E79 2005
push bx                                   ;7E7B 53
inc ax                                    ;7E7C 40
add ax,0x6055                             ;7E7D 055560
add ax,0x8057                             ;7E80 055780
add ax,0xa059                             ;7E83 0559A0
add ax,0xc05b                             ;7E86 055BC0
add ax,0xe05d                             ;7E89 055DE0
add ax,0x5f                               ;7E8C 055F00
push es                                   ;7E8F 06
popa                                      ;7E90 61
and [0x4063],al                           ;7E91 20066340
push es                                   ;7E95 06
gs pusha                                  ;7E96 6560
push es                                   ;7E98 06
add byte [esi],0xff                       ;7E99 678006FF
db 0xff                                   ;7E9D FF
db 0xff                                   ;7E9E FF
dec di                                    ;7E9F FFCF
push es                                   ;7EA1 06
insw                                      ;7EA2 6D
loopne 0x7eab                             ;7EA3 E006
outsw                                     ;7EA5 6F
add [bx],al                               ;7EA6 0007
jno 0x7eca                                ;7EA8 7120
pop es                                    ;7EAA 07
jnc 0x7eed                                ;7EAB 7340
pop es                                    ;7EAD 07
jnz 0x7f10                                ;7EAE 7560
pop es                                    ;7EB0 07
ja 0x7e33                                 ;7EB1 7780
pop es                                    ;7EB3 07
jns 0x7e56                                ;7EB4 79A0
pop es                                    ;7EB6 07
jpo 0x7e79                                ;7EB7 7BC0
pop es                                    ;7EB9 07
jnl 0x7e9c                                ;7EBA 7DE0
pop es                                    ;7EBC 07
jg 0x7ebf                                 ;7EBD 7F00
or [bx+di+0x820],al                       ;7EBF 08812008
add word [bx+si+0x8],0xffffffffffffff85   ;7EC3 83400885
pusha                                     ;7EC7 60
or [bx+0x880],al                          ;7EC8 08878008
mov [bx+si-0x74f8],sp                     ;7ECC 89A0088B
ror byte [bx+si],byte 0x8d                ;7ED0 C0088D
loopne 0x7edd                             ;7ED3 E008
pop word [bx+si]                          ;7ED5 8F00
or [bx+di+0x920],dx                       ;7ED7 09912009
xchg ax,bx                                ;7EDB 93
inc ax                                    ;7EDC 40
or [di+0x960],dx                          ;7EDD 09956009
xchg ax,di                                ;7EE1 97
or byte [bx+di],0x99                      ;7EE2 800999
mov al,[0x9b09]                           ;7EE5 A0099B
lock                                      ;7EE8 F0
call word far [di+0x9e0]                  ;7EE9 FF9DE009
lahf                                      ;7EED 9F
add [bp+si],cl                            ;7EEE 000A
mov ax,[0xa20]                            ;7EF0 A1200A
mov [0xa40],ax                            ;7EF3 A3400A
movsw                                     ;7EF6 A5
pusha                                     ;7EF7 60
or ah,[bx+0xa80]                          ;7EF8 0AA7800A
test ax,0xaa0                             ;7EFC A9A00A
stosw                                     ;7EFF AB
ror byte [bp+si],byte 0xad                ;7F00 C00AAD
loopne 0x7f0f                             ;7F03 E00A
scasw                                     ;7F05 AF
add [bp+di],cl                            ;7F06 000B
mov cl,0x20                               ;7F08 B120
or si,[bp+di+0xb40]                       ;7F0A 0BB3400B
mov ch,0x60                               ;7F0E B560
or si,[bx+0xb80]                          ;7F10 0BB7800B
mov cx,0xba0                              ;7F14 B9A00B
mov bx,0xbc0                              ;7F17 BBC00B
mov bp,0xbe0                              ;7F1A BDE00B
mov di,0xc00                              ;7F1D BF000C
shl word [bx+si],byte 0xc                 ;7F20 C1200C
ret                                       ;7F23 C3
inc ax                                    ;7F24 40
or al,0xc5                                ;7F25 0CC5
pusha                                     ;7F27 60
or al,0xc7                                ;7F28 0CC7
or byte [si],0xc9                         ;7F2A 800CC9
mov al,[0xcb0c]                           ;7F2D A00CCB
ror byte [si],byte 0xcd                   ;7F30 C00CCD
loopne 0x7f41                             ;7F33 E00C
iret                                      ;7F35 CF
add [di],cl                               ;7F36 000D
shl word [bx+si],0x0                      ;7F38 D120
or ax,0x40d3                              ;7F3A 0DD340
or ax,0x60d5                              ;7F3D 0DD560
or ax,0x80d7                              ;7F40 0DD780
or ax,0xa0d9                              ;7F43 0DD9A0
or ax,0xc0db                              ;7F46 0DDBC0
or ax,0xe0dd                              ;7F49 0DDDE0
or ax,0xdf                                ;7F4C 0DDF00
push cs                                   ;7F4F 0E
loope 0x7f72                              ;7F50 E120
push cs                                   ;7F52 0E
jcxz 0x7f95                               ;7F53 E340
push cs                                   ;7F55 0E
jmp word far [bx+0xe]                     ;7F56 FF6F0E
out byte 0x80,ax                          ;7F59 E780
push cs                                   ;7F5B 0E
jmp 0x8dff                                ;7F5C E9A00E
jmp 0x7f21                                ;7F5F EBC0
push cs                                   ;7F61 0E
in ax,dx                                  ;7F62 ED
loopne 0x7f73                             ;7F63 E00E
out dx,ax                                 ;7F65 EF
add [bx],cl                               ;7F66 000F
int1                                      ;7F68 F1
and [bx],cl                               ;7F69 200F
rep inc ax                                ;7F6B F340
pmaddwd mm4,[bx+si+0xf]                   ;7F6D 0FF5600F
test word [bx+si-0x6f1],0xfa0             ;7F71 F7800FF9A00F
sti                                       ;7F77 FB
ror byte [bx],byte 0xfd                   ;7F78 C00FFD
loopne 0x7f8c                             ;7F7B E00F
inc word [bx+si]                          ;7F7D FF00
adc [bx+di],al                            ;7F7F 1001
and [bx+si],dx                            ;7F81 2110
add ax,[bx+di+0x10]                       ;7F83 034110
add ax,0x1061                             ;7F86 056110
pop es                                    ;7F89 07
adc word [bx+si],0xa109                   ;7F8A 811009A1
adc [bp+di],cl                            ;7F8E 100B
rcl word [bx+si],byte 0xd                 ;7F90 C1100D
loope 0x7fa5                              ;7F93 E110
lgdt word [bx+di]                         ;7F95 0F0111
adc [bx+di],sp                            ;7F98 1121
adc [bp+di],dx                            ;7F9A 1113
inc cx                                    ;7F9C 41
adc [di],dx                               ;7F9D 1115
popa                                      ;7F9F 61
adc [bx],dx                               ;7FA0 1117
adc word [bx+di],0xa119                   ;7FA2 811119A1
adc [bp+di],bx                            ;7FA6 111B
rcl word [bx+di],byte 0x1d                ;7FA8 C1111D
loope 0x7fbe                              ;7FAB E111
pop ds                                    ;7FAD 1F
add [bp+si],dx                            ;7FAE 0112
and [bx+di],sp                            ;7FB0 2121
adc ah,[bp+di]                            ;7FB2 1223
inc cx                                    ;7FB4 41
adc ah,[di]                               ;7FB5 1225
popa                                      ;7FB7 61
adc ah,[bx]                               ;7FB8 1227
adc word [bp+si],0xa129                   ;7FBA 811229A1
adc ch,[bp+di]                            ;7FBE 122B
rcl word [bp+si],byte 0xff                ;7FC0 C112FF
out dx,ax                                 ;7FC3 EF
adc ch,[bx]                               ;7FC4 122F
add [bp+di],dx                            ;7FC6 0113
xor [bx+di],sp                            ;7FC8 3121
adc si,[bp+di]                            ;7FCA 1333
inc cx                                    ;7FCC 41
adc si,[di]                               ;7FCD 1335
popa                                      ;7FCF 61
adc si,[bx]                               ;7FD0 1337
adc word [bp+di],0xa139                   ;7FD2 811339A1
adc di,[bp+di]                            ;7FD6 133B
rcl word [bp+di],byte 0x3d                ;7FD8 C1133D
loope 0x7ff0                              ;7FDB E113
aas                                       ;7FDD 3F
int1                                      ;7FDE F1
inc word [bx+di+0x21]                     ;7FDF FF4121
adc al,0x43                               ;7FE2 1443
inc cx                                    ;7FE4 41
adc al,0x45                               ;7FE5 1445
popa                                      ;7FE7 61
adc al,0x47                               ;7FE8 1447
adc word [si],0xa149                      ;7FEA 811449A1
adc al,0x4b                               ;7FEE 144B
rcl word [si],byte 0x4d                   ;7FF0 C1144D
loope 0x8009                              ;7FF3 E114
dec di                                    ;7FF5 4F
int1                                      ;7FF6 F1
call word near [bx+di+0x21]               ;7FF7 FF5121
adc ax,0x4153                             ;7FFA 155341
adc ax,0x6155                             ;7FFD 155561
adc ax,0x8157                             ;8000 155781
adc ax,0xa159                             ;8003 1559A1
adc ax,0xc15b                             ;8006 155BC1
adc ax,0xe15d                             ;8009 155DE1
adc ax,0x15f                              ;800C 155F01
push ss                                   ;800F 16
popa                                      ;8010 61
and [0x4163],dx                           ;8011 21166341
push ss                                   ;8015 16
gs popa                                   ;8016 6561
push ss                                   ;8018 16
adc word [esi],0xa169                     ;8019 67811669A1
push ss                                   ;801E 16
imul ax,cx,0x16                           ;801F 6BC116
insw                                      ;8022 6D
loope 0x803b                              ;8023 E116
outsw                                     ;8025 6F
add [bx],dx                               ;8026 0117
jno 0x804b                                ;8028 7121
pop ss                                    ;802A 17
jnc 0x806e                                ;802B 7341
pop ss                                    ;802D 17
jnz 0x8091                                ;802E 7561
pop ss                                    ;8030 17
ja 0x7fb4                                 ;8031 7781
pop ss                                    ;8033 17
jns 0x7fd7                                ;8034 79A1
pop ss                                    ;8036 17
jpo 0x7ffa                                ;8037 7BC1
pop ss                                    ;8039 17
jnl 0x801d                                ;803A 7DE1
pop ss                                    ;803C 17
jg 0x8040                                 ;803D 7F01
sbb [bx+di-0xf],al                        ;803F 1881F1FF
add word [bx+di+0x18],0xffffffffffffff85  ;8043 83411885
popa                                      ;8047 61
sbb [bx+0x1881],al                        ;8048 18878118
mov [bx+di-0x74e8],sp                     ;804C 89A1188B
rcr word [bx+si],byte 0x8d                ;8050 C1188D
loope 0x806d                              ;8053 E118
pop word [bx+di]                          ;8055 8F01
sbb [bx+di+0x1921],dx                     ;8057 19912119
xchg ax,bx                                ;805B 93
inc cx                                    ;805C 41
sbb [di+0x1961],dx                        ;805D 19956119
xchg ax,di                                ;8061 97
sbb word [bx+di],0xa199                   ;8062 811999A1
sbb [bp+di+0x19c1],bx                     ;8066 199BC119
popf                                      ;806A 9D
loope 0x8086                              ;806B E119
lahf                                      ;806D 9F
add [bp+si],bx                            ;806E 011A
mov ax,[0x1a21]                           ;8070 A1211A
mov [0x1a41],ax                           ;8073 A3411A
movsw                                     ;8076 A5
popa                                      ;8077 61
sbb ah,[bx+0x1a81]                        ;8078 1AA7811A
test ax,0x1aa1                            ;807C A9A11A
stosw                                     ;807F AB
rcr word [bp+si],byte 0xad                ;8080 C11AAD
loope 0x809f                              ;8083 E11A
scasw                                     ;8085 AF
add [bp+di],bx                            ;8086 011B
mov cl,0x21                               ;8088 B121
sbb si,[bp+di+0x1b41]                     ;808A 1BB3411B
mov ch,0x61                               ;808E B561
sbb si,[bx+0x1b81]                        ;8090 1BB7811B
mov cx,0x1ba1                             ;8094 B9A11B
mov bx,0x1bc1                             ;8097 BBC11B
mov bp,0x1be1                             ;809A BDE11B
mov di,0x1c01                             ;809D BF011C
shl word [bx+di],byte 0x1c                ;80A0 C1211C
ret                                       ;80A3 C3
inc cx                                    ;80A4 41
sbb al,0xc5                               ;80A5 1CC5
popa                                      ;80A7 61
sbb al,0xc7                               ;80A8 1CC7
sbb word [si],0xa1c9                      ;80AA 811CC9A1
sbb al,0xcb                               ;80AE 1CCB
rcr word [si],byte 0xcd                   ;80B0 C11CCD
loope 0x80d1                              ;80B3 E11C
iret                                      ;80B5 CF
add [di],bx                               ;80B6 011D
shl word [bx+di],0x0                      ;80B8 D121
sbb ax,0x41d3                             ;80BA 1DD341
sbb ax,0x61d5                             ;80BD 1DD561
sbb ax,0x81d7                             ;80C0 1DD781
sbb ax,0xa1d9                             ;80C3 1DD9A1
sbb ax,0xc1db                             ;80C6 1DDBC1
sbb ax,0xe1dd                             ;80C9 1DDDE1
sbb ax,0x1df                              ;80CC 1DDF01
push ds                                   ;80CF 1E
loope 0x80f3                              ;80D0 E121
push ds                                   ;80D2 1E
jcxz 0x8116                               ;80D3 E341
push ds                                   ;80D5 1E
in ax,byte 0x61                           ;80D6 E561
push ds                                   ;80D8 1E
out byte 0x81,ax                          ;80D9 E781
push ds                                   ;80DB 1E
jmp 0x9f80                                ;80DC E9A11E
dec di                                    ;80DF FFCF
push ds                                   ;80E1 1E
in ax,dx                                  ;80E2 ED
loope 0x8103                              ;80E3 E11E
out dx,ax                                 ;80E5 EF
add [bx],bx                               ;80E6 011F
int1                                      ;80E8 F1
and [bx],bx                               ;80E9 211F
rep inc cx                                ;80EB F341
pop ds                                    ;80ED 1F
cmc                                       ;80EE F5
popa                                      ;80EF 61
pop ds                                    ;80F0 1F
test word [bx+di-0x6e1],0x1fa1            ;80F1 F7811FF9A11F
sti                                       ;80F7 FB
rcr word [bx],byte 0xff                   ;80F8 C11FFF
out dx,ax                                 ;80FB EF
pop ds                                    ;80FC 1F
inc word [bx+di]                          ;80FD FF01
and [bx+di],al                            ;80FF 2001
and ah,[bx+si]                            ;8101 2220
add ax,[bp+si+0x20]                       ;8103 034220
add ax,0x2062                             ;8106 056220
pop es                                    ;8109 07
db 0x82                                   ;810A 82
and [bx+di],cl                            ;810B 2009
mov [0xb20],al                            ;810D A2200B
ret word 0xd20                            ;8110 C2200D
loop 0x8135                               ;8113 E220
lar sp,[bx+di]                            ;8115 0F0221
adc [bp+si],sp                            ;8118 1122
and [bp+di],dx                            ;811A 2113
inc dx                                    ;811C 42
and [di],dx                               ;811D 2115
repne                                     ;811F F2
db 0xff                                   ;8120 FF
dec word [bx+0x1921]                      ;8121 FF8F2119
mov [0x1b21],al                           ;8125 A2211B
ret word 0x1d21                           ;8128 C2211D
loop 0x814e                               ;812B E221
pop ds                                    ;812D 1F
add ah,[bp+si]                            ;812E 0222
and [bp+si],sp                            ;8130 2122
and ah,[bp+di]                            ;8132 2223
inc dx                                    ;8134 42
and ah,[di]                               ;8135 2225
bound sp,[bp+si]                          ;8137 6222
dec word [bx+0x2922]                      ;8139 FF8F2229
mov [0x2b22],al                           ;813D A2222B
ret word 0x2d22                           ;8140 C2222D
loop 0x8167                               ;8143 E222
das                                       ;8145 2F
add ah,[bp+di]                            ;8146 0223
xor [bp+si],sp                            ;8148 3122
and si,[bp+di]                            ;814A 2333
inc dx                                    ;814C 42
and si,[di]                               ;814D 2335
bound sp,[bp+di]                          ;814F 6223
aaa                                       ;8151 37
db 0x82                                   ;8152 82
and di,[bx+di]                            ;8153 2339
mov [0x3b23],al                           ;8155 A2233B
repne                                     ;8158 F2
db 0xff                                   ;8159 FF
cmp ax,0x23e2                             ;815A 3DE223
aas                                       ;815D 3F
add ah,[si]                               ;815E 0224
inc cx                                    ;8160 41
and ah,[si]                               ;8161 2224
inc bx                                    ;8163 43
inc dx                                    ;8164 42
and al,0x45                               ;8165 2445
bound sp,[si]                             ;8167 6224
inc di                                    ;8169 47
db 0x82                                   ;816A 82
and al,0x49                               ;816B 2449
mov [0xff24],al                           ;816D A224FF
iret                                      ;8170 CF
and al,0x4d                               ;8171 244D
loop 0x8199                               ;8173 E224
dec di                                    ;8175 4F
add ah,[di]                               ;8176 0225
push cx                                   ;8178 51
and ah,[di]                               ;8179 2225
push bx                                   ;817B 53
inc dx                                    ;817C 42
and ax,0x6255                             ;817D 255562
and ax,0x8257                             ;8180 255782
and ax,0xa259                             ;8183 2559A2
and ax,0xc25b                             ;8186 255BC2
and ax,0xe25d                             ;8189 255DE2
and ax,0x25f                              ;818C 255F02
es popa                                   ;818F 2661
and ah,[0x4263]                           ;8191 22266342
bound sp,[gs:0x8267]                      ;8195 266562266782
es imul si,dx,0x6bff                      ;819B 2669F2FF6B
ret word 0x6d26                           ;81A0 C2266D
loop 0x81cb                               ;81A3 E226
outsw                                     ;81A5 6F
add ah,[bx]                               ;81A6 0227
jno 0x81cc                                ;81A8 7122
daa                                       ;81AA 27
jnc 0x81ef                                ;81AB 7342
daa                                       ;81AD 27
jmp word far [bx+0x27]                    ;81AE FF6F27
ja 0x8135                                 ;81B1 7782
daa                                       ;81B3 27
jns 0x8158                                ;81B4 79A2
daa                                       ;81B6 27
jpo 0x817b                                ;81B7 7BC2
daa                                       ;81B9 27
jnl 0x819e                                ;81BA 7DE2
daa                                       ;81BC 27
jg 0x81c1                                 ;81BD 7F02
sub [bx+di+0x2822],al                     ;81BF 28812228
add word [bp+si+0x28],0xffffffffffffff85  ;81C3 83422885
bound bp,[bx+si]                          ;81C7 6228
xchg si,dx                                ;81C9 87F2
inc word [bx+si]                          ;81CB FF00
mov al,[0x8b28]                           ;81CD A0288B
ret word 0x8d28                           ;81D0 C2288D
loop 0x81fd                               ;81D3 E228
pop word [bp+si]                          ;81D5 8F02
sub [bx+di+0x2922],dx                     ;81D7 29912229
xchg ax,bx                                ;81DB 93
inc dx                                    ;81DC 42
sub di,di                                 ;81DD 29FF
outsw                                     ;81DF 6F
sub [bx+0x2982],dx                        ;81E0 29978229
cwd                                       ;81E4 99
mov [0x9b29],al                           ;81E5 A2299B
ret word 0x9d29                           ;81E8 C2299D
loop 0x8216                               ;81EB E229
lahf                                      ;81ED 9F
add ch,[bp+si]                            ;81EE 022A
mov ax,[0x2a22]                           ;81F0 A1222A
mov [0x2a42],ax                           ;81F3 A3422A
movsw                                     ;81F6 A5
bound bp,[bp+si]                          ;81F7 622A
cmpsw                                     ;81F9 A7
db 0x82                                   ;81FA 82
sub ch,[bx+di+0x2aa2]                     ;81FB 2AA9A22A
stosw                                     ;81FF AB
ret word 0xad2a                           ;8200 C22AAD
loop 0x822f                               ;8203 E22A
scasw                                     ;8205 AF
add ch,[bp+di]                            ;8206 022B
mov cl,0x22                               ;8208 B122
sub si,[bp+di+0x2b42]                     ;820A 2BB3422B
mov ch,0x62                               ;820E B562
sub si,[bx+0x2b82]                        ;8210 2BB7822B
mov cx,0xfff2                             ;8214 B9F2FF
mov bx,0x2bc2                             ;8217 BBC22B
mov bp,0x2be2                             ;821A BDE22B
mov di,0x2c02                             ;821D BF022C
shl word [bp+si],byte 0x2c                ;8220 C1222C
ret                                       ;8223 C3
inc dx                                    ;8224 42
sub al,0xc5                               ;8225 2CC5
bound bp,[si]                             ;8227 622C
mov word [bp+si-0x36d4],0x2ca2            ;8229 C7822CC9A22C
retf                                      ;822F CB
ret word 0xcd2c                           ;8230 C22CCD
loop 0x8261                               ;8233 E22C
iret                                      ;8235 CF
add ch,[di]                               ;8236 022D
shl word [bp+si],0x0                      ;8238 D122
sub ax,0x42d3                             ;823A 2DD342
sub ax,0x62d5                             ;823D 2DD562
sub ax,0x82d7                             ;8240 2DD782
sub ax,0xa2d9                             ;8243 2DD9A2
sub ax,0xc2db                             ;8246 2DDBC2
sub ax,0xe2dd                             ;8249 2DDDE2
sub ax,0x2df                              ;824C 2DDF02
loope 0x8274                              ;824F 2EE122
jcxz 0x8297                               ;8252 2EE342
cs in ax,byte 0x62                        ;8255 2EE562
cs out byte 0x82,ax                       ;8258 2EE782
cs jmp 0xb101                             ;825B 2EE9A22E
jmp 0x8223                                ;825F EBC2
cs in ax,dx                               ;8261 2EED
loop 0x8293                               ;8263 E22E
out dx,ax                                 ;8265 EF
add ch,[bx]                               ;8266 022F
int1                                      ;8268 F1
and ch,[bx]                               ;8269 222F
rep inc dx                                ;826B F342
das                                       ;826D 2F
cmc                                       ;826E F5
bound bp,[bx]                             ;826F 622F
test word [bp+si-0x6d1],0x2fa2            ;8271 F7822FF9A22F
sti                                       ;8277 FB
ret word 0xfd2f                           ;8278 C22FFD
loop 0x82ac                               ;827B E22F
inc word [bp+si]                          ;827D FF02
xor [bx+di],al                            ;827F 3001
and si,[bx+si]                            ;8281 2330
add ax,[bp+di+0x30]                       ;8283 034330
add ax,0x3063                             ;8286 056330
pop es                                    ;8289 07
xor word [bx+si],0x9                      ;828A 833009
mov [0xb30],ax                            ;828D A3300B
ret                                       ;8290 C3
xor [di],cl                               ;8291 300D
jcxz 0x82c5                               ;8293 E330
lsl si,[bx+di]                            ;8295 0F0331
adc [bp+di],sp                            ;8298 1123
xor [bp+di],dx                            ;829A 3113
inc bx                                    ;829C 43
xor [di],dx                               ;829D 3115
arpl [bx+di],si                           ;829F 6331
pop ss                                    ;82A1 17
xor word [bx+di],0x19                     ;82A2 833119
mov [0x1b31],ax                           ;82A5 A3311B
ret                                       ;82A8 C3
xor [di],bx                               ;82A9 311D
jcxz 0x82de                               ;82AB E331
pop ds                                    ;82AD 1F
add si,[bp+si]                            ;82AE 0332
and [bp+di],sp                            ;82B0 2123
xor ah,[bp+di]                            ;82B2 3223
inc bx                                    ;82B4 43
xor ah,[di]                               ;82B5 3225
arpl [bp+si],si                           ;82B7 6332
daa                                       ;82B9 27
xor word [bp+si],0x29                     ;82BA 833229
mov [0x2b32],ax                           ;82BD A3322B
ret                                       ;82C0 C3
xor ch,[di]                               ;82C1 322D
jcxz 0x82f7                               ;82C3 E332
das                                       ;82C5 2F
add si,[bp+di]                            ;82C6 0333
xor [bp+di],sp                            ;82C8 3123
xor si,[bp+di]                            ;82CA 3333
inc bx                                    ;82CC 43
xor si,[di]                               ;82CD 3335
arpl [bp+di],si                           ;82CF 6333
aaa                                       ;82D1 37
xor word [bp+di],0x39                     ;82D2 833339
mov [0x3b33],ax                           ;82D5 A3333B
ret                                       ;82D8 C3
xor di,[di]                               ;82D9 333D
jcxz 0x8310                               ;82DB E333
aas                                       ;82DD 3F
add si,[si]                               ;82DE 0334
inc cx                                    ;82E0 41
and si,[si]                               ;82E1 2334
inc bx                                    ;82E3 43
inc bx                                    ;82E4 43
xor al,0x45                               ;82E5 3445
arpl [si],si                              ;82E7 6334
inc di                                    ;82E9 47
xor word [si],0x49                        ;82EA 833449
mov [0x4b34],ax                           ;82ED A3344B
ret                                       ;82F0 C3
xor al,0x4d                               ;82F1 344D
jcxz 0x8329                               ;82F3 E334
dec di                                    ;82F5 4F
add si,[di]                               ;82F6 0335
push cx                                   ;82F8 51
and si,[di]                               ;82F9 2335
push bx                                   ;82FB 53
inc bx                                    ;82FC 43
xor ax,0x6355                             ;82FD 355563
xor ax,0x8357                             ;8300 355783
xor ax,0xa359                             ;8303 3559A3
xor ax,0xc35b                             ;8306 355BC3
xor ax,0xe35d                             ;8309 355DE3
xor ax,0x35f                              ;830C 355F03
ss popa                                   ;830F 3661
and si,[0x4363]                           ;8311 23366343
arpl [gs:0x8367],si                       ;8315 366563366783
jmp word far [ss:bx+0x6b36]               ;831B 36FFAF366B
ret                                       ;8320 C3
ss insw                                   ;8321 366D
jcxz 0x835b                               ;8323 E336
dec word [bx]                             ;8325 FF0F
aaa                                       ;8327 37
jno 0x834d                                ;8328 7123
aaa                                       ;832A 37
jnc 0x8370                                ;832B 7343
aaa                                       ;832D 37
jmp word far [bx+0x37]                    ;832E FF6F37
ja 0x82b6                                 ;8331 7783
aaa                                       ;8333 37
jns 0x82d9                                ;8334 79A3
aaa                                       ;8336 37
jpo 0x82fc                                ;8337 7BC3
aaa                                       ;8339 37
jnl 0x831f                                ;833A 7DE3
aaa                                       ;833C 37
jg 0x8342                                 ;833D 7F03
cmp [bx+di+0x3823],al                     ;833F 38812338
add word [bp+di+0x38],0xffffffffffffff85  ;8343 83433885
arpl [bx+si],di                           ;8347 6338
xchg ax,[bp+di-0x76c8]                    ;8349 87833889
mov [0x8b38],ax                           ;834D A3388B
ret                                       ;8350 C3
cmp [di+0x38e3],cl                        ;8351 388DE338
pop word [bp+di]                          ;8355 8F03
cmp [bx+di-0xd],dx                        ;8357 3991F3FF
xchg ax,bx                                ;835B 93
inc bx                                    ;835C 43
cmp [di+0x3963],dx                        ;835D 39956339
xchg ax,di                                ;8361 97
cmp word [bx+di],0xffffffffffffff99       ;8362 833999
mov [0x9b39],ax                           ;8365 A3399B
ret                                       ;8368 C3
cmp [di+0x39e3],bx                        ;8369 399DE339
lahf                                      ;836D 9F
add di,[bp+si]                            ;836E 033A
mov ax,[0x3a23]                           ;8370 A1233A
mov [0x3a43],ax                           ;8373 A3433A
movsw                                     ;8376 A5
arpl [bp+si],di                           ;8377 633A
cmpsw                                     ;8379 A7
cmp word [bp+si],0xffffffffffffffa9       ;837A 833AA9
mov [0xab3a],ax                           ;837D A33AAB
ret                                       ;8380 C3
cmp ch,[di+0x3ae3]                        ;8381 3AADE33A
scasw                                     ;8385 AF
add di,[bp+di]                            ;8386 033B
mov cl,0x23                               ;8388 B123
cmp si,[bp+di+0x3b43]                     ;838A 3BB3433B
mov ch,0x63                               ;838E B563
cmp si,[bx+0x3b83]                        ;8390 3BB7833B
mov cx,0x3ba3                             ;8394 B9A33B
mov bx,0x3bc3                             ;8397 BBC33B
mov bp,0x3be3                             ;839A BDE33B
mov di,0x3c03                             ;839D BF033C
shl word [bp+di],byte 0x3c                ;83A0 C1233C
ret                                       ;83A3 C3
inc bx                                    ;83A4 43
cmp al,0xc5                               ;83A5 3CC5
arpl [si],di                              ;83A7 633C
db 0xc7                                   ;83A9 C7
rep dec cx                                ;83AA F3FFC9
mov [0xcb3c],ax                           ;83AD A33CCB
ret                                       ;83B0 C3
cmp al,0xcd                               ;83B1 3CCD
jcxz 0x83f1                               ;83B3 E33C
iret                                      ;83B5 CF
add di,[di]                               ;83B6 033D
shl word [bp+di],0x0                      ;83B8 D123
cmp ax,0xf3d3                             ;83BA 3DD3F3
db 0xff                                   ;83BD FF
aad byte 0x63                             ;83BE D563
cmp ax,0x83d7                             ;83C0 3DD783
cmp ax,0xa3d9                             ;83C3 3DD9A3
cmp ax,0xc3db                             ;83C6 3DDBC3
cmp ax,0xe3dd                             ;83C9 3DDDE3
cmp ax,0x3df                              ;83CC 3DDF03
loope 0x83f5                              ;83CF 3EE123
jcxz 0x8418                               ;83D2 3EE343
ds in ax,byte 0x63                        ;83D5 3EE563
ds out byte 0x83,ax                       ;83D8 3EE783
ds jmp 0xc282                             ;83DB 3EE9A33E
jmp 0x83a4                                ;83DF EBC3
ds in ax,dx                               ;83E1 3EED
rep                                       ;83E3 F3
db 0xff                                   ;83E4 FF
out dx,ax                                 ;83E5 EF
add di,[bx]                               ;83E6 033F
int1                                      ;83E8 F1
and di,[bx]                               ;83E9 233F
rep inc bx                                ;83EB F343
aas                                       ;83ED 3F
cmc                                       ;83EE F5
arpl [bx],di                              ;83EF 633F
test word [bp+di-0x6c1],0x3fa3            ;83F1 F7833FF9A33F
sti                                       ;83F7 FB
ret                                       ;83F8 C3
aas                                       ;83F9 3F
std                                       ;83FA FD
jcxz 0x843c                               ;83FB E33F
inc word [bp+di]                          ;83FD FF03
inc ax                                    ;83FF 40
add [si],sp                               ;8400 0124
inc ax                                    ;8402 40
add ax,[si+0x40]                          ;8403 034440
add ax,0x4064                             ;8406 056440
pop es                                    ;8409 07
test [bx+si+0x9],al                       ;840A 844009
movsb                                     ;840D A4
inc ax                                    ;840E 40
or ax,sp                                  ;840F 0BC4
inc ax                                    ;8411 40
or ax,0x40e4                              ;8412 0DE440
db 0x0f                                   ;8415 0F
add al,0x41                               ;8416 0441
adc [si],sp                               ;8418 1124
inc cx                                    ;841A 41
adc ax,[si+0x41]                          ;841B 134441
adc ax,0x4164                             ;841E 156441
pop ss                                    ;8421 17
test [bx+di+0x19],al                      ;8422 844119
movsb                                     ;8425 A4
inc cx                                    ;8426 41
sbb ax,sp                                 ;8427 1BC4
inc cx                                    ;8429 41
sbb ax,0x41e4                             ;842A 1DE441
pop ds                                    ;842D 1F
add al,0x42                               ;842E 0442
and [si],sp                               ;8430 2124
inc dx                                    ;8432 42
and ax,[si+0x42]                          ;8433 234442
and ax,0x4264                             ;8436 256442
daa                                       ;8439 27
test [bp+si+0x29],al                      ;843A 844229
movsb                                     ;843D A4
inc dx                                    ;843E 42
sub ax,sp                                 ;843F 2BC4
inc dx                                    ;8441 42
sub ax,0x42e4                             ;8442 2DE442
das                                       ;8445 2F
add al,0x43                               ;8446 0443
xor [si],sp                               ;8448 3124
inc bx                                    ;844A 43
xor ax,[si+0x43]                          ;844B 334443
xor ax,0x4364                             ;844E 356443
aaa                                       ;8451 37
test [bp+di+0x39],al                      ;8452 844339
movsb                                     ;8455 A4
inc bx                                    ;8456 43
cmp ax,sp                                 ;8457 3BC4
inc bx                                    ;8459 43
cmp ax,0x43e4                             ;845A 3DE443
aas                                       ;845D 3F
add al,0x44                               ;845E 0444
inc cx                                    ;8460 41
and al,0x44                               ;8461 2444
inc bx                                    ;8463 43
hlt                                       ;8464 F4
inc word [di+0x64]                        ;8465 FF4564
inc sp                                    ;8468 44
inc di                                    ;8469 47
test [si+0x49],al                         ;846A 844449
movsb                                     ;846D A4
inc sp                                    ;846E 44
dec bx                                    ;846F 4B
les ax,word [si+0x4d]                     ;8470 C4444D
in al,byte 0x44                           ;8473 E444
dec di                                    ;8475 4F
add al,0x45                               ;8476 0445
push cx                                   ;8478 51
and al,0x45                               ;8479 2445
push bx                                   ;847B 53
inc sp                                    ;847C 44
inc bp                                    ;847D 45
jmp word far [bx+0x45]                    ;847E FF6F45
push di                                   ;8481 57
test [di+0x59],al                         ;8482 844559
movsb                                     ;8485 A4
inc bp                                    ;8486 45
pop bx                                    ;8487 5B
les ax,word [di+0x5d]                     ;8488 C4455D
in al,byte 0x45                           ;848B E445
pop di                                    ;848D 5F
add al,0x46                               ;848E 0446
popa                                      ;8490 61
and al,0x46                               ;8491 2446
arpl [si+0x46],ax                         ;8493 634446
fs inc si                                 ;8496 656446
test [esi+0x69],al                        ;8499 67844669
movsb                                     ;849D A4
inc si                                    ;849E 46
dec di                                    ;849F FFCF
inc si                                    ;84A1 46
insw                                      ;84A2 6D
in al,byte 0x46                           ;84A3 E446
dec word [bx]                             ;84A5 FF0F
inc di                                    ;84A7 47
jno 0x84ce                                ;84A8 7124
inc di                                    ;84AA 47
jnc 0x84f1                                ;84AB 7344
inc di                                    ;84AD 47
jnz 0x8514                                ;84AE 7564
inc di                                    ;84B0 47
ja 0x8437                                 ;84B1 7784
inc di                                    ;84B3 47
jmp word far [bx+0x7b47]                  ;84B4 FFAF477B
les ax,word [bx+0x7d]                     ;84B8 C4477D
hlt                                       ;84BB F4
inc word [bx+si]                          ;84BC FF00
add [bx+si],al                            ;84BE 0000
and word [si],0x8348                      ;84C0 81244883
inc sp                                    ;84C4 44
dec ax                                    ;84C5 48
test [si+0x48],sp                         ;84C6 856448
xchg ax,[si-0x76b8]                       ;84C9 87844889
movsb                                     ;84CD A4
dec ax                                    ;84CE 48
mov ax,sp                                 ;84CF 8BC4
dec ax                                    ;84D1 48
db 0x8d                                   ;84D2 8D
in al,byte 0x48                           ;84D3 E448
pop word [si]                             ;84D5 8F04
dec cx                                    ;84D7 49
xchg ax,cx                                ;84D8 91
and al,0x49                               ;84D9 2449
xchg ax,bx                                ;84DB 93
inc sp                                    ;84DC 44
dec cx                                    ;84DD 49
xchg ax,bp                                ;84DE 95
fs dec cx                                 ;84DF 6449
xchg ax,di                                ;84E1 97
test [bx+di-0x67],cl                      ;84E2 844999
movsb                                     ;84E5 A4
dec cx                                    ;84E6 49
wait les cx,word [bx+di-0x63]             ;84E7 9BC4499D
in al,byte 0x49                           ;84EB E449
lahf                                      ;84ED 9F
add al,0x4a                               ;84EE 044A
mov ax,[0x4a24]                           ;84F0 A1244A
mov [0x4a44],ax                           ;84F3 A3444A
movsw                                     ;84F6 A5
fs dec dx                                 ;84F7 644A
cmpsw                                     ;84F9 A7
test [bp+si-0x57],cl                      ;84FA 844AA9
movsb                                     ;84FD A4
dec dx                                    ;84FE 4A
stosw                                     ;84FF AB
les cx,word [bp+si-0x53]                  ;8500 C44AAD
in al,byte 0x4a                           ;8503 E44A
scasw                                     ;8505 AF
add al,0x4b                               ;8506 044B
mov cl,0x24                               ;8508 B124
dec bx                                    ;850A 4B
mov bl,0x44                               ;850B B344
dec bx                                    ;850D 4B
mov ch,0x64                               ;850E B564
dec bx                                    ;8510 4B
mov bh,0x84                               ;8511 B784
dec bx                                    ;8513 4B
mov cx,0x4ba4                             ;8514 B9A44B
mov bx,0x4bc4                             ;8517 BBC44B
mov bp,0x4be4                             ;851A BDE44B
mov di,0x4c04                             ;851D BF044C
shl word [si],byte 0x4c                   ;8520 C1244C
ret                                       ;8523 C3
inc sp                                    ;8524 44
dec sp                                    ;8525 4C
lds sp,word [si+0x4c]                     ;8526 C5644C
mov word [si-0x36b4],0x4ca4               ;8529 C7844CC9A44C
retf                                      ;852F CB
les cx,word [si-0x33]                     ;8530 C44CCD
in al,byte 0x4c                           ;8533 E44C
iret                                      ;8535 CF
add al,0x4d                               ;8536 044D
shl word [si],0x0                         ;8538 D124
dec bp                                    ;853A 4D
rol word [si+0x4d],cl                     ;853B D3444D
aad byte 0x64                             ;853E D564
dec bp                                    ;8540 4D
xlatb                                     ;8541 D7
test [di-0x27],cl                         ;8542 844DD9
movsb                                     ;8545 A4
dec bp                                    ;8546 4D
fcmovnb st4                               ;8547 DBC4
dec bp                                    ;8549 4D
fucom st4                                 ;854A DDE4
dec bp                                    ;854C 4D
fild word [si]                            ;854D DF04
dec si                                    ;854F 4E
loope 0x8576                              ;8550 E124
dec si                                    ;8552 4E
jcxz 0x8599                               ;8553 E344
dec si                                    ;8555 4E
in ax,byte 0x64                           ;8556 E564
dec si                                    ;8558 4E
out byte 0x84,ax                          ;8559 E784
dec si                                    ;855B 4E
jmp 0xd403                                ;855C E9A44E
jmp 0x8525                                ;855F EBC4
dec si                                    ;8561 4E
in ax,dx                                  ;8562 ED
in al,byte 0x4e                           ;8563 E44E
out dx,ax                                 ;8565 EF
add al,0x4f                               ;8566 044F
int1                                      ;8568 F1
and al,0x4f                               ;8569 244F
rep inc sp                                ;856B F344
dec di                                    ;856D 4F
cmc                                       ;856E F5
fs dec di                                 ;856F 644F
test word [si-0x6b1],0x4fa4               ;8571 F7844FF9A44F
sti                                       ;8577 FB
les cx,word [bx-0x3]                      ;8578 C44FFD
in al,byte 0x4f                           ;857B E44F
inc word [si]                             ;857D FF04
push ax                                   ;857F 50
add [di],sp                               ;8580 0125
push ax                                   ;8582 50
add ax,[di+0x50]                          ;8583 034550
add ax,0x5065                             ;8586 056550
pop es                                    ;8589 07
test [bx+si+0x9],dx                       ;858A 855009
movsw                                     ;858D A5
push ax                                   ;858E 50
or ax,bp                                  ;858F 0BC5
push ax                                   ;8591 50
or ax,0x50e5                              ;8592 0DE550
syscall                                   ;8595 0F05
push cx                                   ;8597 51
adc [di],sp                               ;8598 1125
push cx                                   ;859A 51
adc ax,[di+0x51]                          ;859B 134551
adc ax,0x5165                             ;859E 156551
pop ss                                    ;85A1 17
test [bx+di+0x19],dx                      ;85A2 855119
movsw                                     ;85A5 A5
push cx                                   ;85A6 51
sbb ax,bp                                 ;85A7 1BC5
push cx                                   ;85A9 51
sbb ax,0x51e5                             ;85AA 1DE551
pop ds                                    ;85AD 1F
add ax,0x2152                             ;85AE 055221
and ax,0x2352                             ;85B1 255223
inc bp                                    ;85B4 45
push dx                                   ;85B5 52
and ax,0x5265                             ;85B6 256552
daa                                       ;85B9 27
test [bp+si+0x29],dx                      ;85BA 855229
movsw                                     ;85BD A5
push dx                                   ;85BE 52
sub ax,bp                                 ;85BF 2BC5
push dx                                   ;85C1 52
sub ax,0x52e5                             ;85C2 2DE552
das                                       ;85C5 2F
add ax,0x3153                             ;85C6 055331
and ax,0x3353                             ;85C9 255333
inc bp                                    ;85CC 45
push bx                                   ;85CD 53
xor ax,0x5365                             ;85CE 356553
aaa                                       ;85D1 37
test [bp+di+0x39],dx                      ;85D2 855339
movsw                                     ;85D5 A5
push bx                                   ;85D6 53
cmp ax,bp                                 ;85D7 3BC5
push bx                                   ;85D9 53
cmp ax,0x53e5                             ;85DA 3DE553
aas                                       ;85DD 3F
add ax,0x4154                             ;85DE 055441
and ax,0x4354                             ;85E1 255443
inc bp                                    ;85E4 45
push sp                                   ;85E5 54
inc bp                                    ;85E6 45
gs push sp                                ;85E7 6554
inc di                                    ;85E9 47
test [si+0x49],dx                         ;85EA 855449
movsw                                     ;85ED A5
push sp                                   ;85EE 54
dec bx                                    ;85EF 4B
lds dx,word [si+0x4d]                     ;85F0 C5544D
in ax,byte 0x54                           ;85F3 E554
dec di                                    ;85F5 4F
add ax,0x5155                             ;85F6 055551
and ax,0x5355                             ;85F9 255553
inc bp                                    ;85FC 45
push bp                                   ;85FD 55
push bp                                   ;85FE 55
gs push bp                                ;85FF 6555
push di                                   ;8601 57
test [di+0x59],dx                         ;8602 855559
movsw                                     ;8605 A5
push bp                                   ;8606 55
pop bx                                    ;8607 5B
lds dx,word [di+0x5d]                     ;8608 C5555D
in ax,byte 0x55                           ;860B E555
pop di                                    ;860D 5F
add ax,0x6156                             ;860E 055661
and ax,0x6356                             ;8611 255663
inc bp                                    ;8614 45
push si                                   ;8615 56
gs push si                                ;8616 656556
test [esi+0x69],dx                        ;8619 67855669
movsw                                     ;861D A5
push si                                   ;861E 56
imul ax,bp,0x56                           ;861F 6BC556
insw                                      ;8622 6D
in ax,byte 0x56                           ;8623 E556
outsw                                     ;8625 6F
add ax,0x7157                             ;8626 055771
and ax,0x7357                             ;8629 255773
inc bp                                    ;862C 45
push di                                   ;862D 57
jnz 0x8695                                ;862E 7565
push di                                   ;8630 57
ja 0x85b8                                 ;8631 7785
push di                                   ;8633 57
jns 0x85db                                ;8634 79A5
push di                                   ;8636 57
jpo 0x85fe                                ;8637 7BC5
push di                                   ;8639 57
jnl 0x8621                                ;863A 7DE5
push di                                   ;863C 57
jg 0x8644                                 ;863D 7F05
pop ax                                    ;863F 58
and word [di],0x8358                      ;8640 81255883
inc bp                                    ;8644 45
pop ax                                    ;8645 58
test [di+0x58],sp                         ;8646 856558
xchg ax,[di-0x76a8]                       ;8649 87855889
movsw                                     ;864D A5
pop ax                                    ;864E 58
mov ax,bp                                 ;864F 8BC5
pop ax                                    ;8651 58
db 0x8d                                   ;8652 8D
in ax,byte 0x58                           ;8653 E558
pop word [di]                             ;8655 8F05
pop cx                                    ;8657 59
xchg ax,cx                                ;8658 91
and ax,0x9359                             ;8659 255993
inc bp                                    ;865C 45
pop cx                                    ;865D 59
xchg ax,bp                                ;865E 95
gs pop cx                                 ;865F 6559
xchg ax,di                                ;8661 97
test [bx+di-0x67],bx                      ;8662 855999
movsw                                     ;8665 A5
pop cx                                    ;8666 59
wait lds bx,word [bx+di-0x63]             ;8667 9BC5599D
in ax,byte 0x59                           ;866B E559
lahf                                      ;866D 9F
add ax,0xa15a                             ;866E 055AA1
and ax,0xa35a                             ;8671 255AA3
inc bp                                    ;8674 45
pop dx                                    ;8675 5A
movsw                                     ;8676 A5
gs pop dx                                 ;8677 655A
cmpsw                                     ;8679 A7
test [bp+si-0x57],bx                      ;867A 855AA9
movsw                                     ;867D A5
pop dx                                    ;867E 5A
stosw                                     ;867F AB
lds bx,word [bp+si-0x53]                  ;8680 C55AAD
in ax,byte 0x5a                           ;8683 E55A
scasw                                     ;8685 AF
add ax,0xb15b                             ;8686 055BB1
and ax,0xb35b                             ;8689 255BB3
inc bp                                    ;868C 45
pop bx                                    ;868D 5B
mov ch,0x65                               ;868E B565
pop bx                                    ;8690 5B
mov bh,0x85                               ;8691 B785
pop bx                                    ;8693 5B
mov cx,0x5ba5                             ;8694 B9A55B
mov bx,0x5bc5                             ;8697 BBC55B
mov bp,0x5be5                             ;869A BDE55B
mov di,0x5c05                             ;869D BF055C
shl word [di],byte 0x5c                   ;86A0 C1255C
ret                                       ;86A3 C3
inc bp                                    ;86A4 45
pop sp                                    ;86A5 5C
lds sp,word [di+0x5c]                     ;86A6 C5655C
mov word [di-0x36a4],0x5ca5               ;86A9 C7855CC9A55C
retf                                      ;86AF CB
lds bx,word [si-0x33]                     ;86B0 C55CCD
in ax,byte 0x5c                           ;86B3 E55C
iret                                      ;86B5 CF
add ax,0xd15d                             ;86B6 055DD1
and ax,0xd35d                             ;86B9 255DD3
inc bp                                    ;86BC 45
pop bp                                    ;86BD 5D
aad byte 0x65                             ;86BE D565
pop bp                                    ;86C0 5D
xlatb                                     ;86C1 D7
test [di-0x27],bx                         ;86C2 855DD9
movsw                                     ;86C5 A5
pop bp                                    ;86C6 5D
fcmovnb st5                               ;86C7 DBC5
pop bp                                    ;86C9 5D
fucom st5                                 ;86CA DDE5
pop bp                                    ;86CC 5D
fild word [di]                            ;86CD DF05
pop si                                    ;86CF 5E
loope 0x86f7                              ;86D0 E125
pop si                                    ;86D2 5E
jcxz 0x871a                               ;86D3 E345
pop si                                    ;86D5 5E
in ax,byte 0x65                           ;86D6 E565
pop si                                    ;86D8 5E
out byte 0xf5,ax                          ;86D9 E7F5
db 0xff                                   ;86DB FF
jmp 0xe584                                ;86DC E9A55E
jmp 0x86a6                                ;86DF EBC5
pop si                                    ;86E1 5E
in ax,dx                                  ;86E2 ED
in ax,byte 0x5e                           ;86E3 E55E
out dx,ax                                 ;86E5 EF
add ax,0xf15f                             ;86E6 055FF1
and ax,0xf35f                             ;86E9 255FF3
inc bp                                    ;86EC 45
pop di                                    ;86ED 5F
cmc                                       ;86EE F5
gs pop di                                 ;86EF 655F
test word [di-0x6a1],0x5fa5               ;86F1 F7855FF9A55F
sti                                       ;86F7 FB
lds bx,word [bx-0x3]                      ;86F8 C55FFD
in ax,byte 0x5f                           ;86FB E55F
inc word [di]                             ;86FD FF05
pusha                                     ;86FF 60
add [0x360],sp                            ;8700 01266003
inc si                                    ;8704 46
pusha                                     ;8705 60
add ax,0x6066                             ;8706 056660
pop es                                    ;8709 07
xchg ah,[bx+si+0x9]                       ;870A 866009
cmpsb                                     ;870D A6
pusha                                     ;870E 60
or ax,si                                  ;870F 0BC6
pusha                                     ;8711 60
or ax,0x60e6                              ;8712 0DE660
clts                                      ;8715 0F06
popa                                      ;8717 61
adc [0x1361],sp                           ;8718 11266113
inc si                                    ;871C 46
popa                                      ;871D 61
adc ax,0x6166                             ;871E 156661
pop ss                                    ;8721 17
xchg ah,[bx+di+0x19]                      ;8722 866119
cmpsb                                     ;8725 A6
popa                                      ;8726 61
sbb ax,si                                 ;8727 1BC6
popa                                      ;8729 61
sbb ax,0x61e6                             ;872A 1DE661
pop ds                                    ;872D 1F
push es                                   ;872E 06
bound sp,[bx+di]                          ;872F 6221
bound sp,[es:bp+di]                       ;8731 266223
inc si                                    ;8734 46
bound sp,[di]                             ;8735 6225
bound esp,[bx]                            ;8737 666227
xchg ah,[bp+si+0x29]                      ;873A 866229
cmpsb                                     ;873D A6
bound bp,[bp+di]                          ;873E 622B
db 0xc6                                   ;8740 C6
bound bp,[di]                             ;8741 622D
out byte 0x62,al                          ;8743 E662
das                                       ;8745 2F
push es                                   ;8746 06
arpl [bx+di],si                           ;8747 6331
arpl [es:bp+di],si                        ;8749 266333
inc si                                    ;874C 46
arpl [di],si                              ;874D 6335
arpl word [bx],esi                        ;874F 666337
xchg ah,[bp+di+0x39]                      ;8752 866339
cmpsb                                     ;8755 A6
arpl [bp+di],di                           ;8756 633B
db 0xc6                                   ;8758 C6
arpl [di],di                              ;8759 633D
out byte 0x63,al                          ;875B E663
aas                                       ;875D 3F
push es                                   ;875E 06
fs inc cx                                 ;875F 6441
fs inc bx                                 ;8761 266443
inc si                                    ;8764 46
fs inc bp                                 ;8765 6445
fs inc edi                                ;8767 666447
xchg ah,[si+0x49]                         ;876A 866449
cmpsb                                     ;876D A6
fs dec bx                                 ;876E 644B
db 0xc6                                   ;8770 C6
fs dec bp                                 ;8771 644D
out byte 0x64,al                          ;8773 E664
dec di                                    ;8775 4F
push es                                   ;8776 06
gs push cx                                ;8777 6551
gs push bx                                ;8779 266553
inc si                                    ;877C 46
gs push bp                                ;877D 6555
gs push edi                               ;877F 666557
xchg ah,[di+0x59]                         ;8782 866559
cmpsb                                     ;8785 A6
gs pop bx                                 ;8786 655B
db 0xc6                                   ;8788 C6
gs pop bp                                 ;8789 655D
out byte 0x65,al                          ;878B E665
pop di                                    ;878D 5F
push es                                   ;878E 06
popad                                     ;878F 6661
arpl word [es:bp+0x66],eax                ;8791 2666634666
o32 xchg ah,[gs:esi+0x69]                 ;8796 65666667866669
cmpsb                                     ;879D A6
imul eax,esi,0x66                         ;879E 666BC666
insw                                      ;87A2 6D
out byte 0x66,al                          ;87A3 E666
outsw                                     ;87A5 6F
push es                                   ;87A6 06
a32 jno 0x87d0                            ;87A7 677126
a32 jnc 0x87f3                            ;87AA 677346
a32 jnz 0x8816                            ;87AD 677566
a32 ja 0x8739                             ;87B0 677786
a32 jns 0x875c                            ;87B3 6779A6
a32 jpo 0x877f                            ;87B6 677BC6
a32 jnl 0x87a2                            ;87B9 677DE6
a32 jg 0x87c5                             ;87BC 677F06
push word 0x2681                          ;87BF 688126
push word 0x4683                          ;87C2 688346
push word 0x6685                          ;87C5 688566
push word 0x8687                          ;87C8 688786
push word 0xa689                          ;87CB 6889A6
push word 0xc68b                          ;87CE 688BC6
push word 0xe68d                          ;87D1 688DE6
push word 0x68f                           ;87D4 688F06
imul dx,[bx+di+0x6926],0x4693             ;87D7 699126699346
imul dx,[di+0x6966],0x8697                ;87DD 699566699786
imul bx,[bx+di+0x69a6],0xc69b             ;87E3 6999A6699BC6
imul bx,[di+0x69e6],0x69f                 ;87E9 699DE6699F06
push word 0xffffffffffffffa1              ;87EF 6AA1
es push word 0xffffffffffffffa3           ;87F1 266AA3
inc si                                    ;87F4 46
push word 0xffffffffffffffa5              ;87F5 6AA5
push dword 0xffffffffffffffa7             ;87F7 666AA7
xchg ch,[bp+si-0x57]                      ;87FA 866AA9
cmpsb                                     ;87FD A6
push word 0xffffffffffffffab              ;87FE 6AAB
db 0xc6                                   ;8800 C6
push word 0xffffffffffffffad              ;8801 6AAD
out byte 0x6a,al                          ;8803 E66A
scasw                                     ;8805 AF
push es                                   ;8806 06
imul si,[bx+di+0x6b26],0xffffffffffffffb3 ;8807 6BB1266BB3
inc si                                    ;880C 46
imul si,[di+0x6b66],0xffffffffffffffb7    ;880D 6BB5666BB7
xchg ch,[bp+di-0x47]                      ;8812 866BB9
cmpsb                                     ;8815 A6
imul di,[bp+di+0x6bc6],0xffffffffffffffbd ;8816 6BBBC66BBD
out byte 0x6b,al                          ;881B E66B
mov di,0x6c06                             ;881D BF066C
shl word [0xc36c],byte 0x46               ;8820 C1266CC346
insb                                      ;8825 6C
lds sp,word [bp+0x6c]                     ;8826 C5666C
mov word [bp-0x3694],0x6ca6               ;8829 C7866CC9A66C
retf                                      ;882F CB
db 0xc6                                   ;8830 C6
insb                                      ;8831 6C
int byte 0xe6                             ;8832 CDE6
insb                                      ;8834 6C
iret                                      ;8835 CF
push es                                   ;8836 06
insw                                      ;8837 6D
shl word [0xd36d],0x0                     ;8838 D1266DD3
inc si                                    ;883C 46
insw                                      ;883D 6D
aad byte 0x66                             ;883E D566
insw                                      ;8840 6D
xlatb                                     ;8841 D7
xchg ch,[di-0x27]                         ;8842 866DD9
cmpsb                                     ;8845 A6
insw                                      ;8846 6D
fcmovnb st6                               ;8847 DBC6
insw                                      ;8849 6D
fucom st6                                 ;884A DDE6
insw                                      ;884C 6D
fild word [0xe16e]                        ;884D DF066EE1
es outsb                                  ;8851 266E
jcxz 0x889b                               ;8853 E346
outsb                                     ;8855 6E
in ax,byte 0x66                           ;8856 E566
outsb                                     ;8858 6E
out byte 0x86,ax                          ;8859 E786
outsb                                     ;885B 6E
jmp 0xf705                                ;885C E9A66E
jmp 0x8827                                ;885F EBC6
outsb                                     ;8861 6E
in ax,dx                                  ;8862 ED
out byte 0x6e,al                          ;8863 E66E
out dx,ax                                 ;8865 EF
push es                                   ;8866 06
outsw                                     ;8867 6F
int1                                      ;8868 F1
es outsw                                  ;8869 266F
rep inc si                                ;886B F346
outsw                                     ;886D 6F
cmc                                       ;886E F5
outsd                                     ;886F 666F
test word [bp-0x691],0x6fa6               ;8871 F7866FF9A66F
sti                                       ;8877 FB
db 0xc6                                   ;8878 C6
outsw                                     ;8879 6F
std                                       ;887A FD
out byte 0x6f,al                          ;887B E66F
inc word [0x170]                          ;887D FF067001
daa                                       ;8881 27
jo 0x8887                                 ;8882 7003
inc di                                    ;8884 47
jo 0x888c                                 ;8885 7005
a32 jo 0x8891                             ;8887 677007
xchg si,[bx+si+0x9]                       ;888A 877009
cmpsw                                     ;888D A7
jo 0x889b                                 ;888E 700B
db 0xc7                                   ;8890 C7
jo 0x88a0                                 ;8891 700D
out byte 0x70,ax                          ;8893 E770
sysret                                    ;8895 0F07
jno 0x88aa                                ;8897 7111
daa                                       ;8899 27
jno 0x88af                                ;889A 7113
inc di                                    ;889C 47
jno 0x88b4                                ;889D 7115
a32 jno 0x88b9                            ;889F 677117
xchg si,[bx+di+0x19]                      ;88A2 877119
cmpsw                                     ;88A5 A7
jno 0x88c3                                ;88A6 711B
db 0xc7                                   ;88A8 C7
jno 0x88c8                                ;88A9 711D
out byte 0x71,ax                          ;88AB E771
pop ds                                    ;88AD 1F
pop es                                    ;88AE 07
jc 0x88d2                                 ;88AF 7221
daa                                       ;88B1 27
jc 0x88d7                                 ;88B2 7223
inc di                                    ;88B4 47
jc 0x88dc                                 ;88B5 7225
a32 jc 0x88e1                             ;88B7 677227
xchg si,[bp+si+0x29]                      ;88BA 877229
cmpsw                                     ;88BD A7
jc 0x88eb                                 ;88BE 722B
db 0xc7                                   ;88C0 C7
jc 0x88f0                                 ;88C1 722D
out byte 0x72,ax                          ;88C3 E772
das                                       ;88C5 2F
pop es                                    ;88C6 07
jnc 0x88fa                                ;88C7 7331
daa                                       ;88C9 27
jnc 0x88ff                                ;88CA 7333
inc di                                    ;88CC 47
jnc 0x8904                                ;88CD 7335
a32 jnc 0x8909                            ;88CF 677337
xchg si,[bp+di+0x39]                      ;88D2 877339
cmpsw                                     ;88D5 A7
jnc 0x8913                                ;88D6 733B
db 0xc7                                   ;88D8 C7
jnc 0x8918                                ;88D9 733D
out byte 0x73,ax                          ;88DB E773
aas                                       ;88DD 3F
pop es                                    ;88DE 07
jz 0x8922                                 ;88DF 7441
daa                                       ;88E1 27
jz 0x8927                                 ;88E2 7443
inc di                                    ;88E4 47
jz 0x892c                                 ;88E5 7445
a32 jz 0x8931                             ;88E7 677447
xchg si,[si+0x49]                         ;88EA 877449
cmpsw                                     ;88ED A7
jz 0x893b                                 ;88EE 744B
db 0xc7                                   ;88F0 C7
jz 0x8940                                 ;88F1 744D
out byte 0x74,ax                          ;88F3 E774
dec di                                    ;88F5 4F
pop es                                    ;88F6 07
jnz 0x894a                                ;88F7 7551
daa                                       ;88F9 27
jnz 0x894f                                ;88FA 7553
inc di                                    ;88FC 47
jnz 0x8954                                ;88FD 7555
a32 jnz 0x8959                            ;88FF 677557
xchg si,[di+0x59]                         ;8902 877559
cmpsw                                     ;8905 A7
jnz 0x8963                                ;8906 755B
db 0xc7                                   ;8908 C7
jnz 0x8968                                ;8909 755D
out byte 0x75,ax                          ;890B E775
pop di                                    ;890D 5F
pop es                                    ;890E 07
jna 0x8972                                ;890F 7661
daa                                       ;8911 27
jna 0x8977                                ;8912 7663
inc di                                    ;8914 47
jna 0x897c                                ;8915 7665
a32 jna 0x8981                            ;8917 677667
xchg si,[bp+0x69]                         ;891A 877669
cmpsw                                     ;891D A7
jna 0x898b                                ;891E 766B
db 0xc7                                   ;8920 C7
jna 0x8990                                ;8921 766D
out byte 0x76,ax                          ;8923 E776
outsw                                     ;8925 6F
pop es                                    ;8926 07
ja 0x899a                                 ;8927 7771
daa                                       ;8929 27
ja 0x899f                                 ;892A 7773
inc di                                    ;892C 47
ja 0x89a4                                 ;892D 7775
a32 ja 0x89a9                             ;892F 677777
xchg si,[bx+0x79]                         ;8932 877779
cmpsw                                     ;8935 A7
ja 0x89b3                                 ;8936 777B
db 0xc7                                   ;8938 C7
ja 0x89b8                                 ;8939 777D
out byte 0x77,ax                          ;893B E777
jg 0x8946                                 ;893D 7F07
js 0x88c2                                 ;893F 7881
daa                                       ;8941 27
js 0x88c7                                 ;8942 7883
inc di                                    ;8944 47
js 0x88cc                                 ;8945 7885
a32 js 0x88d1                             ;8947 677887
xchg di,[bx+si-0x77]                      ;894A 877889
cmpsw                                     ;894D A7
js 0x88db                                 ;894E 788B
db 0xc7                                   ;8950 C7
js 0x88e0                                 ;8951 788D
out byte 0x78,ax                          ;8953 E778
pop word [bx]                             ;8955 8F07
jns 0x88ea                                ;8957 7991
daa                                       ;8959 27
jns 0x88ef                                ;895A 7993
inc di                                    ;895C 47
jns 0x88f4                                ;895D 7995
idiv di                                   ;895F F7FF
xchg ax,di                                ;8961 97
xchg di,[bx+di-0x1]                       ;8962 8779FF
scasw                                     ;8965 AF
jns 0x8903                                ;8966 799B
db 0xc7                                   ;8968 C7
jns 0x8908                                ;8969 799D
out byte 0x79,ax                          ;896B E779
lahf                                      ;896D 9F
pop es                                    ;896E 07
jpe 0x8912                                ;896F 7AA1
daa                                       ;8971 27
jpe 0x8917                                ;8972 7AA3
inc di                                    ;8974 47
jpe 0x891c                                ;8975 7AA5
a32 jpe 0x8921                            ;8977 677AA7
xchg di,[bp+si-0x57]                      ;897A 877AA9
cmpsw                                     ;897D A7
jpe 0x892b                                ;897E 7AAB
db 0xc7                                   ;8980 C7
jpe 0x8930                                ;8981 7AAD
out byte 0x7a,ax                          ;8983 E77A
scasw                                     ;8985 AF
pop es                                    ;8986 07
jpo 0x893a                                ;8987 7BB1
daa                                       ;8989 27
jpo 0x893f                                ;898A 7BB3
inc di                                    ;898C 47
jpo 0x8944                                ;898D 7BB5
a32 jpo 0x8949                            ;898F 677BB7
xchg di,[bp+di-0x47]                      ;8992 877BB9
cmpsw                                     ;8995 A7
jpo 0x8953                                ;8996 7BBB
db 0xc7                                   ;8998 C7
jpo 0x8958                                ;8999 7BBD
out byte 0x7b,ax                          ;899B E77B
db 0xff                                   ;899D FF
db 0xff                                   ;899E FF
inc cx                                    ;899F FFC1
daa                                       ;89A1 27
jl 0x8967                                 ;89A2 7CC3
inc di                                    ;89A4 47
jl 0x896c                                 ;89A5 7CC5
a32 jl 0x8971                             ;89A7 677CC7
xchg di,[si-0x37]                         ;89AA 877CC9
cmpsw                                     ;89AD A7
jl 0x897b                                 ;89AE 7CCB
db 0xc7                                   ;89B0 C7
jl 0x8980                                 ;89B1 7CCD
out byte 0x7c,ax                          ;89B3 E77C
iret                                      ;89B5 CF
pop es                                    ;89B6 07
jnl 0x898a                                ;89B7 7DD1
daa                                       ;89B9 27
jnl 0x898f                                ;89BA 7DD3
inc di                                    ;89BC 47
jnl 0x8994                                ;89BD 7DD5
a32 jnl 0x8999                            ;89BF 677DD7
xchg di,[di-0x27]                         ;89C2 877DD9
cmpsw                                     ;89C5 A7
jnl 0x89a3                                ;89C6 7DDB
db 0xc7                                   ;89C8 C7
jnl 0x89a8                                ;89C9 7DDD
out byte 0x7d,ax                          ;89CB E77D
fild word [bx]                            ;89CD DF07
jng 0x89b2                                ;89CF 7EE1
daa                                       ;89D1 27
jng 0x89b7                                ;89D2 7EE3
inc di                                    ;89D4 47
jng 0x89bc                                ;89D5 7EE5
a32 jng 0x89c1                            ;89D7 677EE7
xchg di,[bp-0x17]                         ;89DA 877EE9
cmpsw                                     ;89DD A7
jng 0x89cb                                ;89DE 7EEB
db 0xc7                                   ;89E0 C7
jng 0x89d0                                ;89E1 7EED
out byte 0x7e,ax                          ;89E3 E77E
out dx,ax                                 ;89E5 EF
pop es                                    ;89E6 07
jg 0x89da                                 ;89E7 7FF1
daa                                       ;89E9 27
jg 0x89df                                 ;89EA 7FF3
inc di                                    ;89EC 47
jg 0x89e4                                 ;89ED 7FF5
a32 jg 0x89e9                             ;89EF 677FF7
xchg di,[bx-0x7]                          ;89F2 877FF9
cmpsw                                     ;89F5 A7
jg 0x89f3                                 ;89F6 7FFB
db 0xc7                                   ;89F8 C7
jg 0x89f8                                 ;89F9 7FFD
out byte 0x7f,ax                          ;89FB E77F
inc word [bx]                             ;89FD FF07
add byte [bx+di],0x28                     ;89FF 800128
add byte [bp+di],0x48                     ;8A02 800348
add byte [di],0x68                        ;8A05 800568
add byte [bx],0x88                        ;8A08 800788
or byte [bx+di],0xa8                      ;8A0B 8009A8
or byte [bp+di],0xc8                      ;8A0E 800BC8
or byte [di],0xe8                         ;8A11 800DE8
or byte [bx],0x8                          ;8A14 800F08
adc word [bx+di],0x8128                   ;8A17 81112881
adc cx,[bx+si-0x7f]                       ;8A1B 134881
adc ax,0x8168                             ;8A1E 156881
pop ss                                    ;8A21 17
mov [bx+di-0x57e7],al                     ;8A22 888119A8
sbb word [bp+di],0x81c8                   ;8A26 811BC881
sbb ax,0x81e8                             ;8A2A 1DE881
pop ds                                    ;8A2D 1F
or [bp+si+0x2821],al                      ;8A2E 08822128
db 0x82                                   ;8A32 82
and cx,[bx+si-0x7e]                       ;8A33 234882
and ax,0x8268                             ;8A36 256882
daa                                       ;8A39 27
mov [bp+si-0x57d7],al                     ;8A3A 888229A8
db 0x82                                   ;8A3E 82
sub cx,ax                                 ;8A3F 2BC8
db 0x82                                   ;8A41 82
sub ax,0x82e8                             ;8A42 2DE882
das                                       ;8A45 2F
or [bp+di+0x2831],al                      ;8A46 08833128
xor word [bp+di],0x48                     ;8A4A 833348
xor word [di],0x68                        ;8A4D 833568
xor word [bx],0xffffffffffffff88          ;8A50 833788
cmp word [bx+di],0xffffffffffffffa8       ;8A53 8339A8
cmp word [bp+di],0xffffffffffffffc8       ;8A56 833BC8
cmp word [di],0xffffffffffffffe8          ;8A59 833DE8
cmp word [bx],0x8                         ;8A5C 833F08
test [bx+di+0x28],al                      ;8A5F 844128
test [bp+di+0x48],al                      ;8A62 844348
test [di+0x68],al                         ;8A65 844568
test [bx-0x78],al                         ;8A68 844788
test [bx+di-0x58],cl                      ;8A6B 8449A8
test [bp+di-0x38],cl                      ;8A6E 844BC8
test [di-0x18],cl                         ;8A71 844DE8
test [bx+0x8],cl                          ;8A74 844F08
test [bx+di+0x28],dx                      ;8A77 855128
test [bp+di+0x48],dx                      ;8A7A 855348
test [di+0x68],dx                         ;8A7D 855568
test [bx-0x78],dx                         ;8A80 855788
test [bx+di-0x58],bx                      ;8A83 8559A8
test [bp+di-0x38],bx                      ;8A86 855BC8
test [di-0x18],bx                         ;8A89 855DE8
test [bx+0x8],bx                          ;8A8C 855F08
xchg ah,[bx+di+0x28]                      ;8A8F 866128
xchg ah,[bp+di+0x48]                      ;8A92 866348
xchg ah,[di+0x68]                         ;8A95 866568
xchg ah,[bx-0x78]                         ;8A98 866788
xchg ch,[bx+di-0x58]                      ;8A9B 8669A8
xchg ch,[bp+di-0x38]                      ;8A9E 866BC8
xchg ch,[di-0x18]                         ;8AA1 866DE8
xchg ch,[bx+0x8]                          ;8AA4 866F08
xchg si,[bx+di+0x28]                      ;8AA7 877128
xchg si,[bp+di+0x48]                      ;8AAA 877348
xchg si,[di+0x68]                         ;8AAD 877568
xchg si,[bx-0x78]                         ;8AB0 877788
xchg di,[bx+di-0x58]                      ;8AB3 8779A8
xchg di,[bp+di-0x38]                      ;8AB6 877BC8
xchg di,[di-0x18]                         ;8AB9 877DE8
xchg di,[bx+0x8]                          ;8ABC 877F08
mov [bx+di-0x77d8],al                     ;8ABF 88812888
or word [bx+si-0x78],0xffffffffffffff85   ;8AC3 83488885
push word 0x8788                          ;8AC7 688887
mov [bx+si-0x5777],cl                     ;8ACA 888889A8
mov [bp+di-0x7738],cl                     ;8ACE 888BC888
db 0x8d                                   ;8AD2 8D
call 0x1a5e                               ;8AD3 E8888F
or [bx+di+0x2891],cl                      ;8AD6 08899128
mov [bp+di-0x76b8],dx                     ;8ADA 89934889
xchg ax,bp                                ;8ADE 95
push word 0x9789                          ;8ADF 688997
mov [bx+di-0x5767],cl                     ;8AE2 888999A8
mov [bp+di-0x7638],bx                     ;8AE6 899BC889
popf                                      ;8AEA 9D
call 0x2a77                               ;8AEB E8899F
or [bp+si+0x28a1],cl                      ;8AEE 088AA128
mov ah,[bp+di-0x75b8]                     ;8AF2 8AA3488A
movsw                                     ;8AF6 A5
push word 0xa78a                          ;8AF7 688AA7
mov [bp+si-0x5757],cl                     ;8AFA 888AA9A8
mov ch,[bp+di-0x7538]                     ;8AFE 8AABC88A
lodsw                                     ;8B02 AD
call 0x3a90                               ;8B03 E88AAF
or [bp+di+0x28b1],cl                      ;8B06 088BB128
mov si,[bp+di-0x74b8]                     ;8B0A 8BB3488B
mov ch,0x68                               ;8B0E B568
mov si,[bx-0x7478]                        ;8B10 8BB7888B
mov cx,0x8ba8                             ;8B14 B9A88B
mov bx,0x8bc8                             ;8B17 BBC88B
mov bp,0x8be8                             ;8B1A BDE88B
mov di,0x8c08                             ;8B1D BF088C
shr word [bx+si],byte 0x8c                ;8B20 C1288C
ret                                       ;8B23 C3
dec ax                                    ;8B24 48
mov bp,es                                 ;8B25 8CC5
push word 0xc78c                          ;8B27 688CC7
mov [si-0x5737],cl                        ;8B2A 888CC9A8
mov bx,cs                                 ;8B2E 8CCB
enter word 0xcd8c,byte 0xe8               ;8B30 C88CCDE8
mov di,cs                                 ;8B34 8CCF
or [di+0x28d1],cl                         ;8B36 088DD128
db 0x8d                                   ;8B3A 8D
ror word [bx+si-0x73],cl                  ;8B3B D3488D
aad byte 0x68                             ;8B3E D568
db 0x8d                                   ;8B40 8D
xlatb                                     ;8B41 D7
mov [di-0x5727],cl                        ;8B42 888DD9A8
db 0x8d                                   ;8B46 8D
fcmovne st0                               ;8B47 DBC8
db 0x8d                                   ;8B49 8D
fucomp st0                                ;8B4A DDE8
db 0x8d                                   ;8B4C 8D
fisttp word [bx+si]                       ;8B4D DF08
mov fs,cx                                 ;8B4F 8EE1
sub [bp+0x48e3],cl                        ;8B51 288EE348
mov fs,bp                                 ;8B55 8EE5
push word 0xe78e                          ;8B57 688EE7
mov [bp-0x5717],cl                        ;8B5A 888EE9A8
mov gs,bx                                 ;8B5E 8EEB
enter word 0xed8e,byte 0xe8               ;8B60 C88EEDE8
mov gs,di                                 ;8B64 8EEF
or [bx+0x28f1],cl                         ;8B66 088FF128
db 0x8f                                   ;8B6A 8F
rep dec ax                                ;8B6B F348
db 0x8f                                   ;8B6D 8F
cmc                                       ;8B6E F5
push word 0xf78f                          ;8B6F 688FF7
mov [bx-0x5707],cl                        ;8B72 888FF9A8
db 0x8f                                   ;8B76 8F
sti                                       ;8B77 FB
enter word 0xfd8f,byte 0xe8               ;8B78 C88FFDE8
db 0x8f                                   ;8B7C 8F
dec word [bx+si]                          ;8B7D FF08
nop                                       ;8B7F 90
add [bx+di],bp                            ;8B80 0129
nop                                       ;8B82 90
add cx,[bx+di-0x70]                       ;8B83 034990
add ax,0x9069                             ;8B86 056990
pop es                                    ;8B89 07
mov [bx+si-0x56f7],dx                     ;8B8A 899009A9
nop                                       ;8B8E 90
or cx,cx                                  ;8B8F 0BC9
nop                                       ;8B91 90
or ax,0x90e9                              ;8B92 0DE990
wbinvd                                    ;8B95 0F09
xchg ax,cx                                ;8B97 91
adc [bx+di],bp                            ;8B98 1129
xchg ax,cx                                ;8B9A 91
adc cx,[bx+di-0x6f]                       ;8B9B 134991
adc ax,0x9169                             ;8B9E 156991
pop ss                                    ;8BA1 17
mov [bx+di-0x56e7],dx                     ;8BA2 899119A9
xchg ax,cx                                ;8BA6 91
sbb cx,cx                                 ;8BA7 1BC9
xchg ax,cx                                ;8BA9 91
sbb ax,0x91e9                             ;8BAA 1DE991
pop ds                                    ;8BAD 1F
or [bp+si+0x2921],dx                      ;8BAE 09922129
xchg ax,dx                                ;8BB2 92
and cx,[bx+di-0x6e]                       ;8BB3 234992
and ax,0x9269                             ;8BB6 256992
daa                                       ;8BB9 27
mov [bp+si-0x56d7],dx                     ;8BBA 899229A9
xchg ax,dx                                ;8BBE 92
sub cx,cx                                 ;8BBF 2BC9
xchg ax,dx                                ;8BC1 92
sub ax,0x92e9                             ;8BC2 2DE992
das                                       ;8BC5 2F
or [bp+di+0xfff],dx                       ;8BC6 0993FF0F
add [bx+si],al                            ;8BCA 0000
add [bx+si],al                            ;8BCC 0000
add [bx+si],al                            ;8BCE 0000
add [bx+si],al                            ;8BD0 0000
add [bx+si],al                            ;8BD2 0000
add [bx+si],al                            ;8BD4 0000
add [bx+si],al                            ;8BD6 0000
add [bx+si],al                            ;8BD8 0000
add [bx+si],al                            ;8BDA 0000
add [bx+si],al                            ;8BDC 0000
add [bx+si],al                            ;8BDE 0000
add [bx+si],al                            ;8BE0 0000
add [bx+si],al                            ;8BE2 0000
add [bx+si],al                            ;8BE4 0000
add [bx+si],al                            ;8BE6 0000
add [bx+si],al                            ;8BE8 0000
add [bx+si],al                            ;8BEA 0000
add [bx+si],al                            ;8BEC 0000
add [bx+si],al                            ;8BEE 0000
add [bx+si],al                            ;8BF0 0000
add [bx+si],al                            ;8BF2 0000
add [bx+si],al                            ;8BF4 0000
add [bx+si],al                            ;8BF6 0000
add [bx+si],al                            ;8BF8 0000
add [bx+si],al                            ;8BFA 0000
add [bx+si],al                            ;8BFC 0000
add [bx+si],al                            ;8BFE 0000
add [bx+si],al                            ;8C00 0000
add [bx+si],al                            ;8C02 0000
add [bx+si],al                            ;8C04 0000
add [bx+si],al                            ;8C06 0000
add [bx+si],al                            ;8C08 0000
add [bx+si],al                            ;8C0A 0000
add [bx+si],al                            ;8C0C 0000
add [bx+si],al                            ;8C0E 0000
add [bx+si],al                            ;8C10 0000
add [bx+si],al                            ;8C12 0000
add [bx+si],al                            ;8C14 0000
add [bx+si],al                            ;8C16 0000
add [bx+si],al                            ;8C18 0000
add [bx+si],al                            ;8C1A 0000
add [bx+si],al                            ;8C1C 0000
add [bx+si],al                            ;8C1E 0000
add [bx+si],al                            ;8C20 0000
add [bx+si],al                            ;8C22 0000
add [bx+si],al                            ;8C24 0000
add [bx+si],al                            ;8C26 0000
add [bx+si],al                            ;8C28 0000
add [bx+si],al                            ;8C2A 0000
add [bx+si],al                            ;8C2C 0000
add [bx+si],al                            ;8C2E 0000
add [bx+si],al                            ;8C30 0000
add [bx+si],al                            ;8C32 0000
add [bx+si],al                            ;8C34 0000
add [bx+si],al                            ;8C36 0000
add [bx+si],al                            ;8C38 0000
add [bx+si],al                            ;8C3A 0000
add [bx+si],al                            ;8C3C 0000
add [bx+si],al                            ;8C3E 0000
add [bx+si],al                            ;8C40 0000
add [bx+si],al                            ;8C42 0000
add [bx+si],al                            ;8C44 0000
add [bx+si],al                            ;8C46 0000
add [bx+si],al                            ;8C48 0000
add [bx+si],al                            ;8C4A 0000
add [bx+si],al                            ;8C4C 0000
add [bx+si],al                            ;8C4E 0000
add [bx+si],al                            ;8C50 0000
add [bx+si],al                            ;8C52 0000
add [bx+si],al                            ;8C54 0000
add [bx+si],al                            ;8C56 0000
add [bx+si],al                            ;8C58 0000
add [bx+si],al                            ;8C5A 0000
add [bx+si],al                            ;8C5C 0000
add [bx+si],al                            ;8C5E 0000
add [bx+si],al                            ;8C60 0000
add [bx+si],al                            ;8C62 0000
add [bx+si],al                            ;8C64 0000
add [bx+si],al                            ;8C66 0000
add [bx+si],al                            ;8C68 0000
add [bx+si],al                            ;8C6A 0000
add [bx+si],al                            ;8C6C 0000
add [bx+si],al                            ;8C6E 0000
add [bx+si],al                            ;8C70 0000
add [bx+si],al                            ;8C72 0000
add [bx+si],al                            ;8C74 0000
add [bx+si],al                            ;8C76 0000
add [bx+si],al                            ;8C78 0000
add [bx+si],al                            ;8C7A 0000
add [bx+si],al                            ;8C7C 0000
add [bx+si],al                            ;8C7E 0000
add [bx+si],al                            ;8C80 0000
add [bx+si],al                            ;8C82 0000
add [bx+si],al                            ;8C84 0000
add [bx+si],al                            ;8C86 0000
add [bx+si],al                            ;8C88 0000
add [bx+si],al                            ;8C8A 0000
add [bx+si],al                            ;8C8C 0000
add [bx+si],al                            ;8C8E 0000
add [bx+si],al                            ;8C90 0000
add [bx+si],al                            ;8C92 0000
add [bx+si],al                            ;8C94 0000
add [bx+si],al                            ;8C96 0000
add [bx+si],al                            ;8C98 0000
add [bx+si],al                            ;8C9A 0000
add [bx+si],al                            ;8C9C 0000
add [bx+si],al                            ;8C9E 0000
add [bx+si],al                            ;8CA0 0000
add [bx+si],al                            ;8CA2 0000
add [bx+si],al                            ;8CA4 0000
add [bx+si],al                            ;8CA6 0000
add [bx+si],al                            ;8CA8 0000
add [bx+si],al                            ;8CAA 0000
add [bx+si],al                            ;8CAC 0000
add [bx+si],al                            ;8CAE 0000
add [bx+si],al                            ;8CB0 0000
add [bx+si],al                            ;8CB2 0000
add [bx+si],al                            ;8CB4 0000
add [bx+si],al                            ;8CB6 0000
add [bx+si],al                            ;8CB8 0000
add [bx+si],al                            ;8CBA 0000
add [bx+si],al                            ;8CBC 0000
add [bx+si],al                            ;8CBE 0000
add [bx+si],al                            ;8CC0 0000
add [bx+si],al                            ;8CC2 0000
add [bx+si],al                            ;8CC4 0000
add [bx+si],al                            ;8CC6 0000
add [bx+si],al                            ;8CC8 0000
add [bx+si],al                            ;8CCA 0000
add [bx+si],al                            ;8CCC 0000
add [bx+si],al                            ;8CCE 0000
add [bx+si],al                            ;8CD0 0000
add [bx+si],al                            ;8CD2 0000
add [bx+si],al                            ;8CD4 0000
add [bx+si],al                            ;8CD6 0000
add [bx+si],al                            ;8CD8 0000
add [bx+si],al                            ;8CDA 0000
add [bx+si],al                            ;8CDC 0000
add [bx+si],al                            ;8CDE 0000
add [bx+si],al                            ;8CE0 0000
add [bx+si],al                            ;8CE2 0000
add [bx+si],al                            ;8CE4 0000
add [bx+si],al                            ;8CE6 0000
add [bx+si],al                            ;8CE8 0000
add [bx+si],al                            ;8CEA 0000
add [bx+si],al                            ;8CEC 0000
add [bx+si],al                            ;8CEE 0000
add [bx+si],al                            ;8CF0 0000
add [bx+si],al                            ;8CF2 0000
add [bx+si],al                            ;8CF4 0000
add [bx+si],al                            ;8CF6 0000
add [bx+si],al                            ;8CF8 0000
add [bx+si],al                            ;8CFA 0000
add [bx+si],al                            ;8CFC 0000
add [bx+si],al                            ;8CFE 0000
add [bx+si],al                            ;8D00 0000
add [bx+si],al                            ;8D02 0000
add [bx+si],al                            ;8D04 0000
add [bx+si],al                            ;8D06 0000
add [bx+si],al                            ;8D08 0000
add [bx+si],al                            ;8D0A 0000
add [bx+si],al                            ;8D0C 0000
add [bx+si],al                            ;8D0E 0000
add [bx+si],al                            ;8D10 0000
add [bx+si],al                            ;8D12 0000
add [bx+si],al                            ;8D14 0000
add [bx+si],al                            ;8D16 0000
add [bx+si],al                            ;8D18 0000
add [bx+si],al                            ;8D1A 0000
add [bx+si],al                            ;8D1C 0000
add [bx+si],al                            ;8D1E 0000
add [bx+si],al                            ;8D20 0000
add [bx+si],al                            ;8D22 0000
add [bx+si],al                            ;8D24 0000
add [bx+si],al                            ;8D26 0000
add [bx+si],al                            ;8D28 0000
add [bx+si],al                            ;8D2A 0000
add [bx+si],al                            ;8D2C 0000
add [bx+si],al                            ;8D2E 0000
add [bx+si],al                            ;8D30 0000
add [bx+si],al                            ;8D32 0000
add [bx+si],al                            ;8D34 0000
add [bx+si],al                            ;8D36 0000
add [bx+si],al                            ;8D38 0000
add [bx+si],al                            ;8D3A 0000
add [bx+si],al                            ;8D3C 0000
add [bx+si],al                            ;8D3E 0000
add [bx+si],al                            ;8D40 0000
add [bx+si],al                            ;8D42 0000
add [bx+si],al                            ;8D44 0000
add [bx+si],al                            ;8D46 0000
add [bx+si],al                            ;8D48 0000
add [bx+si],al                            ;8D4A 0000
add [bx+si],al                            ;8D4C 0000
add [bx+si],al                            ;8D4E 0000
add [bx+si],al                            ;8D50 0000
add [bx+si],al                            ;8D52 0000
add [bx+si],al                            ;8D54 0000
add [bx+si],al                            ;8D56 0000
add [bx+si],al                            ;8D58 0000
add [bx+si],al                            ;8D5A 0000
add [bx+si],al                            ;8D5C 0000
add [bx+si],al                            ;8D5E 0000
add [bx+si],al                            ;8D60 0000
add [bx+si],al                            ;8D62 0000
add [bx+si],al                            ;8D64 0000
add [bx+si],al                            ;8D66 0000
add [bx+si],al                            ;8D68 0000
add [bx+si],al                            ;8D6A 0000
add [bx+si],al                            ;8D6C 0000
add [bx+si],al                            ;8D6E 0000
add [bx+si],al                            ;8D70 0000
add [bx+si],al                            ;8D72 0000
add [bx+si],al                            ;8D74 0000
add [bx+si],al                            ;8D76 0000
add [bx+si],al                            ;8D78 0000
add [bx+si],al                            ;8D7A 0000
add [bx+si],al                            ;8D7C 0000
add [bx+si],al                            ;8D7E 0000
add [bx+si],al                            ;8D80 0000
add [bx+si],al                            ;8D82 0000
add [bx+si],al                            ;8D84 0000
add [bx+si],al                            ;8D86 0000
add [bx+si],al                            ;8D88 0000
add [bx+si],al                            ;8D8A 0000
add [bx+si],al                            ;8D8C 0000
add [bx+si],al                            ;8D8E 0000
add [bx+si],al                            ;8D90 0000
add [bx+si],al                            ;8D92 0000
add [bx+si],al                            ;8D94 0000
add [bx+si],al                            ;8D96 0000
add [bx+si],al                            ;8D98 0000
add [bx+si],al                            ;8D9A 0000
add [bx+si],al                            ;8D9C 0000
add [bx+si],al                            ;8D9E 0000
add [bx+si],al                            ;8DA0 0000
add [bx+si],al                            ;8DA2 0000
add [bx+si],al                            ;8DA4 0000
add [bx+si],al                            ;8DA6 0000
add [bx+si],al                            ;8DA8 0000
add [bx+si],al                            ;8DAA 0000
add [bx+si],al                            ;8DAC 0000
add [bx+si],al                            ;8DAE 0000
add [bx+si],al                            ;8DB0 0000
add [bx+si],al                            ;8DB2 0000
add [bx+si],al                            ;8DB4 0000
add [bx+si],al                            ;8DB6 0000
add [bx+si],al                            ;8DB8 0000
add [bx+si],al                            ;8DBA 0000
add [bx+si],al                            ;8DBC 0000
add [bx+si],al                            ;8DBE 0000
add [bx+si],al                            ;8DC0 0000
add [bx+si],al                            ;8DC2 0000
add [bx+si],al                            ;8DC4 0000
add [bx+si],al                            ;8DC6 0000
add [bx+si],al                            ;8DC8 0000
add [bx+si],al                            ;8DCA 0000
add [bx+si],al                            ;8DCC 0000
add [bx+si],al                            ;8DCE 0000
add [bx+si],al                            ;8DD0 0000
add [bx+si],al                            ;8DD2 0000
add [bx+si],al                            ;8DD4 0000
add [bx+si],al                            ;8DD6 0000
add [bx+si],al                            ;8DD8 0000
add [bx+si],al                            ;8DDA 0000
add [bx+si],al                            ;8DDC 0000
add [bx+si],al                            ;8DDE 0000
add [bx+si],al                            ;8DE0 0000
add [bx+si],al                            ;8DE2 0000
add [bx+si],al                            ;8DE4 0000
add [bx+si],al                            ;8DE6 0000
add [bx+si],al                            ;8DE8 0000
add [bx+si],al                            ;8DEA 0000
add [bx+si],al                            ;8DEC 0000
add [bx+si],al                            ;8DEE 0000
add [bx+si],al                            ;8DF0 0000
add [bx+si],al                            ;8DF2 0000
add [bx+si],al                            ;8DF4 0000
add [bx+si],al                            ;8DF6 0000
add [bx+si],al                            ;8DF8 0000
add [bx+si],al                            ;8DFA 0000
add [bx+si],al                            ;8DFC 0000
add [bx+si],al                            ;8DFE 0000
add [bx+si],al                            ;8E00 0000
add [bx+si],al                            ;8E02 0000
add [bx+si],al                            ;8E04 0000
add [bx+si],al                            ;8E06 0000
add [bx+si],al                            ;8E08 0000
add [bx+si],al                            ;8E0A 0000
add [bx+si],al                            ;8E0C 0000
add [bx+si],al                            ;8E0E 0000
add [bx+si],al                            ;8E10 0000
add [bx+si],al                            ;8E12 0000
add [bx+si],al                            ;8E14 0000
add [bx+si],al                            ;8E16 0000
add [bx+si],al                            ;8E18 0000
add [bx+si],al                            ;8E1A 0000
add [bx+si],al                            ;8E1C 0000
add [bx+si],al                            ;8E1E 0000
add [bx+si],al                            ;8E20 0000
add [bx+si],al                            ;8E22 0000
add [bx+si],al                            ;8E24 0000
add [bx+si],al                            ;8E26 0000
add [bx+si],al                            ;8E28 0000
add [bx+si],al                            ;8E2A 0000
add [bx+si],al                            ;8E2C 0000
add [bx+si],al                            ;8E2E 0000
add [bx+si],al                            ;8E30 0000
add [bx+si],al                            ;8E32 0000
add [bx+si],al                            ;8E34 0000
add [bx+si],al                            ;8E36 0000
add [bx+si],al                            ;8E38 0000
add [bx+si],al                            ;8E3A 0000
add [bx+si],al                            ;8E3C 0000
add [bx+si],al                            ;8E3E 0000
add [bx+si],al                            ;8E40 0000
add [bx+si],al                            ;8E42 0000
add [bx+si],al                            ;8E44 0000
add [bx+si],al                            ;8E46 0000
add [bx+si],al                            ;8E48 0000
add [bx+si],al                            ;8E4A 0000
add [bx+si],al                            ;8E4C 0000
add [bx+si],al                            ;8E4E 0000
add [bx+si],al                            ;8E50 0000
add [bx+si],al                            ;8E52 0000
add [bx+si],al                            ;8E54 0000
add [bx+si],al                            ;8E56 0000
add [bx+si],al                            ;8E58 0000
add [bx+si],al                            ;8E5A 0000
add [bx+si],al                            ;8E5C 0000
add [bx+si],al                            ;8E5E 0000
add [bx+si],al                            ;8E60 0000
add [bx+si],al                            ;8E62 0000
add [bx+si],al                            ;8E64 0000
add [bx+si],al                            ;8E66 0000
add [bx+si],al                            ;8E68 0000
add [bx+si],al                            ;8E6A 0000
add [bx+si],al                            ;8E6C 0000
add [bx+si],al                            ;8E6E 0000
add [bx+si],al                            ;8E70 0000
add [bx+si],al                            ;8E72 0000
add [bx+si],al                            ;8E74 0000
add [bx+si],al                            ;8E76 0000
add [bx+si],al                            ;8E78 0000
add [bx+si],al                            ;8E7A 0000
add [bx+si],al                            ;8E7C 0000
add [bx+si],al                            ;8E7E 0000
add [bx+si],al                            ;8E80 0000
add [bx+si],al                            ;8E82 0000
add [bx+si],al                            ;8E84 0000
add [bx+si],al                            ;8E86 0000
add [bx+si],al                            ;8E88 0000
add [bx+si],al                            ;8E8A 0000
add [bx+si],al                            ;8E8C 0000
add [bx+si],al                            ;8E8E 0000
add [bx+si],al                            ;8E90 0000
add [bx+si],al                            ;8E92 0000
add [bx+si],al                            ;8E94 0000
add [bx+si],al                            ;8E96 0000
add [bx+si],al                            ;8E98 0000
add [bx+si],al                            ;8E9A 0000
add [bx+si],al                            ;8E9C 0000
add [bx+si],al                            ;8E9E 0000
add [bx+si],al                            ;8EA0 0000
add [bx+si],al                            ;8EA2 0000
add [bx+si],al                            ;8EA4 0000
add [bx+si],al                            ;8EA6 0000
add [bx+si],al                            ;8EA8 0000
add [bx+si],al                            ;8EAA 0000
add [bx+si],al                            ;8EAC 0000
add [bx+si],al                            ;8EAE 0000
add [bx+si],al                            ;8EB0 0000
add [bx+si],al                            ;8EB2 0000
add [bx+si],al                            ;8EB4 0000
add [bx+si],al                            ;8EB6 0000
add [bx+si],al                            ;8EB8 0000
add [bx+si],al                            ;8EBA 0000
add [bx+si],al                            ;8EBC 0000
add [bx+si],al                            ;8EBE 0000
add [bx+si],al                            ;8EC0 0000
add [bx+si],al                            ;8EC2 0000
add [bx+si],al                            ;8EC4 0000
add [bx+si],al                            ;8EC6 0000
add [bx+si],al                            ;8EC8 0000
add [bx+si],al                            ;8ECA 0000
add [bx+si],al                            ;8ECC 0000
add [bx+si],al                            ;8ECE 0000
add [bx+si],al                            ;8ED0 0000
add [bx+si],al                            ;8ED2 0000
add [bx+si],al                            ;8ED4 0000
add [bx+si],al                            ;8ED6 0000
add [bx+si],al                            ;8ED8 0000
add [bx+si],al                            ;8EDA 0000
add [bx+si],al                            ;8EDC 0000
add [bx+si],al                            ;8EDE 0000
add [bx+si],al                            ;8EE0 0000
add [bx+si],al                            ;8EE2 0000
add [bx+si],al                            ;8EE4 0000
add [bx+si],al                            ;8EE6 0000
add [bx+si],al                            ;8EE8 0000
add [bx+si],al                            ;8EEA 0000
add [bx+si],al                            ;8EEC 0000
add [bx+si],al                            ;8EEE 0000
add [bx+si],al                            ;8EF0 0000
add [bx+si],al                            ;8EF2 0000
add [bx+si],al                            ;8EF4 0000
add [bx+si],al                            ;8EF6 0000
add [bx+si],al                            ;8EF8 0000
add [bx+si],al                            ;8EFA 0000
add [bx+si],al                            ;8EFC 0000
add [bx+si],al                            ;8EFE 0000
add [bx+si],al                            ;8F00 0000
add [bx+si],al                            ;8F02 0000
add [bx+si],al                            ;8F04 0000
add [bx+si],al                            ;8F06 0000
add [bx+si],al                            ;8F08 0000
add [bx+si],al                            ;8F0A 0000
add [bx+si],al                            ;8F0C 0000
add [bx+si],al                            ;8F0E 0000
add [bx+si],al                            ;8F10 0000
add [bx+si],al                            ;8F12 0000
add [bx+si],al                            ;8F14 0000
add [bx+si],al                            ;8F16 0000
add [bx+si],al                            ;8F18 0000
add [bx+si],al                            ;8F1A 0000
add [bx+si],al                            ;8F1C 0000
add [bx+si],al                            ;8F1E 0000
add [bx+si],al                            ;8F20 0000
add [bx+si],al                            ;8F22 0000
add [bx+si],al                            ;8F24 0000
add [bx+si],al                            ;8F26 0000
add [bx+si],al                            ;8F28 0000
add [bx+si],al                            ;8F2A 0000
add [bx+si],al                            ;8F2C 0000
add [bx+si],al                            ;8F2E 0000
add [bx+si],al                            ;8F30 0000
add [bx+si],al                            ;8F32 0000
add [bx+si],al                            ;8F34 0000
add [bx+si],al                            ;8F36 0000
add [bx+si],al                            ;8F38 0000
add [bx+si],al                            ;8F3A 0000
add [bx+si],al                            ;8F3C 0000
add [bx+si],al                            ;8F3E 0000
add [bx+si],al                            ;8F40 0000
add [bx+si],al                            ;8F42 0000
add [bx+si],al                            ;8F44 0000
add [bx+si],al                            ;8F46 0000
add [bx+si],al                            ;8F48 0000
add [bx+si],al                            ;8F4A 0000
add [bx+si],al                            ;8F4C 0000
add [bx+si],al                            ;8F4E 0000
add [bx+si],al                            ;8F50 0000
add [bx+si],al                            ;8F52 0000
add [bx+si],al                            ;8F54 0000
add [bx+si],al                            ;8F56 0000
add [bx+si],al                            ;8F58 0000
add [bx+si],al                            ;8F5A 0000
add [bx+si],al                            ;8F5C 0000
add [bx+si],al                            ;8F5E 0000
add [bx+si],al                            ;8F60 0000
add [bx+si],al                            ;8F62 0000
add [bx+si],al                            ;8F64 0000
add [bx+si],al                            ;8F66 0000
add [bx+si],al                            ;8F68 0000
add [bx+si],al                            ;8F6A 0000
add [bx+si],al                            ;8F6C 0000
add [bx+si],al                            ;8F6E 0000
add [bx+si],al                            ;8F70 0000
add [bx+si],al                            ;8F72 0000
add [bx+si],al                            ;8F74 0000
add [bx+si],al                            ;8F76 0000
add [bx+si],al                            ;8F78 0000
add [bx+si],al                            ;8F7A 0000
add [bx+si],al                            ;8F7C 0000
add [bx+si],al                            ;8F7E 0000
add [bx+si],al                            ;8F80 0000
add [bx+si],al                            ;8F82 0000
add [bx+si],al                            ;8F84 0000
add [bx+si],al                            ;8F86 0000
add [bx+si],al                            ;8F88 0000
add [bx+si],al                            ;8F8A 0000
add [bx+si],al                            ;8F8C 0000
add [bx+si],al                            ;8F8E 0000
add [bx+si],al                            ;8F90 0000
add [bx+si],al                            ;8F92 0000
add [bx+si],al                            ;8F94 0000
add [bx+si],al                            ;8F96 0000
add [bx+si],al                            ;8F98 0000
add [bx+si],al                            ;8F9A 0000
add [bx+si],al                            ;8F9C 0000
add [bx+si],al                            ;8F9E 0000
add [bx+si],al                            ;8FA0 0000
add [bx+si],al                            ;8FA2 0000
add [bx+si],al                            ;8FA4 0000
add [bx+si],al                            ;8FA6 0000
add [bx+si],al                            ;8FA8 0000
add [bx+si],al                            ;8FAA 0000
add [bx+si],al                            ;8FAC 0000
add [bx+si],al                            ;8FAE 0000
add [bx+si],al                            ;8FB0 0000
add [bx+si],al                            ;8FB2 0000
add [bx+si],al                            ;8FB4 0000
add [bx+si],al                            ;8FB6 0000
add [bx+si],al                            ;8FB8 0000
add [bx+si],al                            ;8FBA 0000
add [bx+si],al                            ;8FBC 0000
add [bx+si],al                            ;8FBE 0000
add [bx+si],al                            ;8FC0 0000
add [bx+si],al                            ;8FC2 0000
add [bx+si],al                            ;8FC4 0000
add [bx+si],al                            ;8FC6 0000
add [bx+si],al                            ;8FC8 0000
add [bx+si],al                            ;8FCA 0000
add [bx+si],al                            ;8FCC 0000
add [bx+si],al                            ;8FCE 0000
add [bx+si],al                            ;8FD0 0000
add [bx+si],al                            ;8FD2 0000
add [bx+si],al                            ;8FD4 0000
add [bx+si],al                            ;8FD6 0000
add [bx+si],al                            ;8FD8 0000
add [bx+si],al                            ;8FDA 0000
add [bx+si],al                            ;8FDC 0000
add [bx+si],al                            ;8FDE 0000
add [bx+si],al                            ;8FE0 0000
add [bx+si],al                            ;8FE2 0000
add [bx+si],al                            ;8FE4 0000
add [bx+si],al                            ;8FE6 0000
add [bx+si],al                            ;8FE8 0000
add [bx+si],al                            ;8FEA 0000
add [bx+si],al                            ;8FEC 0000
add [bx+si],al                            ;8FEE 0000
add [bx+si],al                            ;8FF0 0000
add [bx+si],al                            ;8FF2 0000
add [bx+si],al                            ;8FF4 0000
add [bx+si],al                            ;8FF6 0000
add [bx+si],al                            ;8FF8 0000
add [bx+si],al                            ;8FFA 0000
add [bx+si],al                            ;8FFC 0000
add [bx+si],al                            ;8FFE 0000
lock                                      ;9000 F0
db 0xff                                   ;9001 FF
inc word [bp+di]                          ;9002 FF03
inc ax                                    ;9004 40
add [di],al                               ;9005 0005
pusha                                     ;9007 60
add [bx],al                               ;9008 0007
add byte [bx+si],0x9                      ;900A 800009
mov al,[0xb00]                            ;900D A0000B
rol byte [bx+si],byte 0xd                 ;9010 C0000D
loopne 0x9015                             ;9013 E000
sldt word [bx+di]                         ;9015 0F0001
adc [bx+si],sp                            ;9018 1120
add [bp+di],dx                            ;901A 0113
inc ax                                    ;901C 40
add [di],dx                               ;901D 0115
pusha                                     ;901F 60
add [bx],dx                               ;9020 0117
add byte [bx+di],0x19                     ;9022 800119
mov al,[0x1b01]                           ;9025 A0011B
rol byte [bx+di],byte 0x1d                ;9028 C0011D
loopne 0x902e                             ;902B E001
pop ds                                    ;902D 1F
add [bp+si],al                            ;902E 0002
and [bx+si],sp                            ;9030 2120
add ah,[bp+di]                            ;9032 0223
inc ax                                    ;9034 40
add ah,[di]                               ;9035 0225
pusha                                     ;9037 60
add ah,[bx]                               ;9038 0227
add byte [bp+si],0x29                     ;903A 800229
mov al,[0x2b02]                           ;903D A0022B
rol byte [bp+si],byte 0x2d                ;9040 C0022D
lock                                      ;9043 F0
jmp word far [bx]                         ;9044 FF2F
add [bp+di],al                            ;9046 0003
xor [bx+si],sp                            ;9048 3120
add si,[bp+di]                            ;904A 0333
inc ax                                    ;904C 40
add si,[di]                               ;904D 0335
pusha                                     ;904F 60
add si,[bx]                               ;9050 0337
add byte [bp+di],0x39                     ;9052 800339
mov al,[0x3b03]                           ;9055 A0033B
rol byte [bp+di],byte 0x3d                ;9058 C0033D
loopne 0x9060                             ;905B E003
aas                                       ;905D 3F
add [si],al                               ;905E 0004
inc cx                                    ;9060 41
and [si],al                               ;9061 2004
inc bx                                    ;9063 43
inc ax                                    ;9064 40
add al,0x45                               ;9065 0445
pusha                                     ;9067 60
add al,0x47                               ;9068 0447
add byte [si],0x49                        ;906A 800449
mov al,[0x4b04]                           ;906D A0044B
rol byte [si],byte 0x4d                   ;9070 C0044D
loopne 0x9079                             ;9073 E004
dec di                                    ;9075 4F
add [di],al                               ;9076 0005
push cx                                   ;9078 51
and [di],al                               ;9079 2005
push bx                                   ;907B 53
inc ax                                    ;907C 40
add ax,0x6055                             ;907D 055560
add ax,0x8057                             ;9080 055780
add ax,0xa059                             ;9083 0559A0
add ax,0xc05b                             ;9086 055BC0
add ax,0xe05d                             ;9089 055DE0
add ax,0x5f                               ;908C 055F00
push es                                   ;908F 06
popa                                      ;9090 61
and [0x4063],al                           ;9091 20066340
push es                                   ;9095 06
gs pusha                                  ;9096 6560
push es                                   ;9098 06
add byte [esi],0xff                       ;9099 678006FF
db 0xff                                   ;909D FF
db 0xff                                   ;909E FF
dec di                                    ;909F FFCF
push es                                   ;90A1 06
insw                                      ;90A2 6D
loopne 0x90ab                             ;90A3 E006
outsw                                     ;90A5 6F
add [bx],al                               ;90A6 0007
jno 0x90ca                                ;90A8 7120
pop es                                    ;90AA 07
jnc 0x90ed                                ;90AB 7340
pop es                                    ;90AD 07
jnz 0x9110                                ;90AE 7560
pop es                                    ;90B0 07
ja 0x9033                                 ;90B1 7780
pop es                                    ;90B3 07
jns 0x9056                                ;90B4 79A0
pop es                                    ;90B6 07
jpo 0x9079                                ;90B7 7BC0
pop es                                    ;90B9 07
jnl 0x909c                                ;90BA 7DE0
pop es                                    ;90BC 07
jg 0x90bf                                 ;90BD 7F00
or [bx+di+0x820],al                       ;90BF 08812008
add word [bx+si+0x8],0xffffffffffffff85   ;90C3 83400885
pusha                                     ;90C7 60
or [bx+0x880],al                          ;90C8 08878008
mov [bx+si-0x74f8],sp                     ;90CC 89A0088B
ror byte [bx+si],byte 0x8d                ;90D0 C0088D
loopne 0x90dd                             ;90D3 E008
pop word [bx+si]                          ;90D5 8F00
or [bx+di+0x920],dx                       ;90D7 09912009
xchg ax,bx                                ;90DB 93
inc ax                                    ;90DC 40
or [di+0x960],dx                          ;90DD 09956009
xchg ax,di                                ;90E1 97
or byte [bx+di],0x99                      ;90E2 800999
mov al,[0x9b09]                           ;90E5 A0099B
lock                                      ;90E8 F0
call word far [di+0x9e0]                  ;90E9 FF9DE009
lahf                                      ;90ED 9F
add [bp+si],cl                            ;90EE 000A
mov ax,[0xa20]                            ;90F0 A1200A
mov [0xa40],ax                            ;90F3 A3400A
movsw                                     ;90F6 A5
pusha                                     ;90F7 60
or ah,[bx+0xa80]                          ;90F8 0AA7800A
test ax,0xaa0                             ;90FC A9A00A
stosw                                     ;90FF AB
ror byte [bp+si],byte 0xad                ;9100 C00AAD
loopne 0x910f                             ;9103 E00A
scasw                                     ;9105 AF
add [bp+di],cl                            ;9106 000B
mov cl,0x20                               ;9108 B120
or si,[bp+di+0xb40]                       ;910A 0BB3400B
mov ch,0x60                               ;910E B560
or si,[bx+0xb80]                          ;9110 0BB7800B
mov cx,0xba0                              ;9114 B9A00B
mov bx,0xbc0                              ;9117 BBC00B
mov bp,0xbe0                              ;911A BDE00B
mov di,0xc00                              ;911D BF000C
shl word [bx+si],byte 0xc                 ;9120 C1200C
ret                                       ;9123 C3
inc ax                                    ;9124 40
or al,0xc5                                ;9125 0CC5
pusha                                     ;9127 60
or al,0xc7                                ;9128 0CC7
or byte [si],0xc9                         ;912A 800CC9
mov al,[0xcb0c]                           ;912D A00CCB
ror byte [si],byte 0xcd                   ;9130 C00CCD
loopne 0x9141                             ;9133 E00C
iret                                      ;9135 CF
add [di],cl                               ;9136 000D
shl word [bx+si],0x0                      ;9138 D120
or ax,0x40d3                              ;913A 0DD340
or ax,0x60d5                              ;913D 0DD560
or ax,0x80d7                              ;9140 0DD780
or ax,0xa0d9                              ;9143 0DD9A0
or ax,0xc0db                              ;9146 0DDBC0
or ax,0xe0dd                              ;9149 0DDDE0
or ax,0xdf                                ;914C 0DDF00
push cs                                   ;914F 0E
loope 0x9172                              ;9150 E120
push cs                                   ;9152 0E
jcxz 0x9195                               ;9153 E340
push cs                                   ;9155 0E
jmp word far [bx+0xe]                     ;9156 FF6F0E
out byte 0x80,ax                          ;9159 E780
push cs                                   ;915B 0E
jmp 0x9fff                                ;915C E9A00E
jmp 0x9121                                ;915F EBC0
push cs                                   ;9161 0E
in ax,dx                                  ;9162 ED
loopne 0x9173                             ;9163 E00E
out dx,ax                                 ;9165 EF
add [bx],cl                               ;9166 000F
int1                                      ;9168 F1
and [bx],cl                               ;9169 200F
rep inc ax                                ;916B F340
pmaddwd mm4,[bx+si+0xf]                   ;916D 0FF5600F
test word [bx+si-0x6f1],0xfa0             ;9171 F7800FF9A00F
sti                                       ;9177 FB
ror byte [bx],byte 0xfd                   ;9178 C00FFD
loopne 0x918c                             ;917B E00F
inc word [bx+si]                          ;917D FF00
adc [bx+di],al                            ;917F 1001
and [bx+si],dx                            ;9181 2110
add ax,[bx+di+0x10]                       ;9183 034110
add ax,0x1061                             ;9186 056110
pop es                                    ;9189 07
adc word [bx+si],0xa109                   ;918A 811009A1
adc [bp+di],cl                            ;918E 100B
rcl word [bx+si],byte 0xd                 ;9190 C1100D
loope 0x91a5                              ;9193 E110
lgdt word [bx+di]                         ;9195 0F0111
adc [bx+di],sp                            ;9198 1121
adc [bp+di],dx                            ;919A 1113
inc cx                                    ;919C 41
adc [di],dx                               ;919D 1115
popa                                      ;919F 61
adc [bx],dx                               ;91A0 1117
adc word [bx+di],0xa119                   ;91A2 811119A1
adc [bp+di],bx                            ;91A6 111B
rcl word [bx+di],byte 0x1d                ;91A8 C1111D
loope 0x91be                              ;91AB E111
pop ds                                    ;91AD 1F
add [bp+si],dx                            ;91AE 0112
and [bx+di],sp                            ;91B0 2121
adc ah,[bp+di]                            ;91B2 1223
inc cx                                    ;91B4 41
adc ah,[di]                               ;91B5 1225
popa                                      ;91B7 61
adc ah,[bx]                               ;91B8 1227
adc word [bp+si],0xa129                   ;91BA 811229A1
adc ch,[bp+di]                            ;91BE 122B
rcl word [bp+si],byte 0xff                ;91C0 C112FF
out dx,ax                                 ;91C3 EF
adc ch,[bx]                               ;91C4 122F
add [bp+di],dx                            ;91C6 0113
xor [bx+di],sp                            ;91C8 3121
adc si,[bp+di]                            ;91CA 1333
inc cx                                    ;91CC 41
adc si,[di]                               ;91CD 1335
popa                                      ;91CF 61
adc si,[bx]                               ;91D0 1337
adc word [bp+di],0xa139                   ;91D2 811339A1
adc di,[bp+di]                            ;91D6 133B
rcl word [bp+di],byte 0x3d                ;91D8 C1133D
loope 0x91f0                              ;91DB E113
aas                                       ;91DD 3F
int1                                      ;91DE F1
inc word [bx+di+0x21]                     ;91DF FF4121
adc al,0x43                               ;91E2 1443
inc cx                                    ;91E4 41
adc al,0x45                               ;91E5 1445
popa                                      ;91E7 61
adc al,0x47                               ;91E8 1447
adc word [si],0xa149                      ;91EA 811449A1
adc al,0x4b                               ;91EE 144B
rcl word [si],byte 0x4d                   ;91F0 C1144D
loope 0x9209                              ;91F3 E114
dec di                                    ;91F5 4F
int1                                      ;91F6 F1
call word near [bx+di+0x21]               ;91F7 FF5121
adc ax,0x4153                             ;91FA 155341
adc ax,0x6155                             ;91FD 155561
adc ax,0x8157                             ;9200 155781
adc ax,0xa159                             ;9203 1559A1
adc ax,0xc15b                             ;9206 155BC1
adc ax,0xe15d                             ;9209 155DE1
adc ax,0x15f                              ;920C 155F01
push ss                                   ;920F 16
popa                                      ;9210 61
and [0x4163],dx                           ;9211 21166341
push ss                                   ;9215 16
gs popa                                   ;9216 6561
push ss                                   ;9218 16
adc word [esi],0xa169                     ;9219 67811669A1
push ss                                   ;921E 16
imul ax,cx,0x16                           ;921F 6BC116
insw                                      ;9222 6D
loope 0x923b                              ;9223 E116
outsw                                     ;9225 6F
add [bx],dx                               ;9226 0117
jno 0x924b                                ;9228 7121
pop ss                                    ;922A 17
jnc 0x926e                                ;922B 7341
pop ss                                    ;922D 17
jnz 0x9291                                ;922E 7561
pop ss                                    ;9230 17
ja 0x91b4                                 ;9231 7781
pop ss                                    ;9233 17
jns 0x91d7                                ;9234 79A1
pop ss                                    ;9236 17
jpo 0x91fa                                ;9237 7BC1
pop ss                                    ;9239 17
jnl 0x921d                                ;923A 7DE1
pop ss                                    ;923C 17
jg 0x9240                                 ;923D 7F01
sbb [bx+di-0xf],al                        ;923F 1881F1FF
add word [bx+di+0x18],0xffffffffffffff85  ;9243 83411885
popa                                      ;9247 61
sbb [bx+0x1881],al                        ;9248 18878118
mov [bx+di-0x74e8],sp                     ;924C 89A1188B
rcr word [bx+si],byte 0x8d                ;9250 C1188D
loope 0x926d                              ;9253 E118
pop word [bx+di]                          ;9255 8F01
sbb [bx+di+0x1921],dx                     ;9257 19912119
xchg ax,bx                                ;925B 93
inc cx                                    ;925C 41
sbb [di+0x1961],dx                        ;925D 19956119
xchg ax,di                                ;9261 97
sbb word [bx+di],0xa199                   ;9262 811999A1
sbb [bp+di+0x19c1],bx                     ;9266 199BC119
popf                                      ;926A 9D
loope 0x9286                              ;926B E119
lahf                                      ;926D 9F
add [bp+si],bx                            ;926E 011A
mov ax,[0x1a21]                           ;9270 A1211A
mov [0x1a41],ax                           ;9273 A3411A
movsw                                     ;9276 A5
popa                                      ;9277 61
sbb ah,[bx+0x1a81]                        ;9278 1AA7811A
test ax,0x1aa1                            ;927C A9A11A
stosw                                     ;927F AB
rcr word [bp+si],byte 0xad                ;9280 C11AAD
loope 0x929f                              ;9283 E11A
scasw                                     ;9285 AF
add [bp+di],bx                            ;9286 011B
mov cl,0x21                               ;9288 B121
sbb si,[bp+di+0x1b41]                     ;928A 1BB3411B
mov ch,0x61                               ;928E B561
sbb si,[bx+0x1b81]                        ;9290 1BB7811B
mov cx,0x1ba1                             ;9294 B9A11B
mov bx,0x1bc1                             ;9297 BBC11B
mov bp,0x1be1                             ;929A BDE11B
mov di,0x1c01                             ;929D BF011C
shl word [bx+di],byte 0x1c                ;92A0 C1211C
ret                                       ;92A3 C3
inc cx                                    ;92A4 41
sbb al,0xc5                               ;92A5 1CC5
popa                                      ;92A7 61
sbb al,0xc7                               ;92A8 1CC7
sbb word [si],0xa1c9                      ;92AA 811CC9A1
sbb al,0xcb                               ;92AE 1CCB
rcr word [si],byte 0xcd                   ;92B0 C11CCD
loope 0x92d1                              ;92B3 E11C
iret                                      ;92B5 CF
add [di],bx                               ;92B6 011D
shl word [bx+di],0x0                      ;92B8 D121
sbb ax,0x41d3                             ;92BA 1DD341
sbb ax,0x61d5                             ;92BD 1DD561
sbb ax,0x81d7                             ;92C0 1DD781
sbb ax,0xa1d9                             ;92C3 1DD9A1
sbb ax,0xc1db                             ;92C6 1DDBC1
sbb ax,0xe1dd                             ;92C9 1DDDE1
sbb ax,0x1df                              ;92CC 1DDF01
push ds                                   ;92CF 1E
loope 0x92f3                              ;92D0 E121
push ds                                   ;92D2 1E
jcxz 0x9316                               ;92D3 E341
push ds                                   ;92D5 1E
in ax,byte 0x61                           ;92D6 E561
push ds                                   ;92D8 1E
out byte 0x81,ax                          ;92D9 E781
push ds                                   ;92DB 1E
jmp 0xb180                                ;92DC E9A11E
dec di                                    ;92DF FFCF
push ds                                   ;92E1 1E
in ax,dx                                  ;92E2 ED
loope 0x9303                              ;92E3 E11E
out dx,ax                                 ;92E5 EF
add [bx],bx                               ;92E6 011F
int1                                      ;92E8 F1
and [bx],bx                               ;92E9 211F
rep inc cx                                ;92EB F341
pop ds                                    ;92ED 1F
cmc                                       ;92EE F5
popa                                      ;92EF 61
pop ds                                    ;92F0 1F
test word [bx+di-0x6e1],0x1fa1            ;92F1 F7811FF9A11F
sti                                       ;92F7 FB
rcr word [bx],byte 0xff                   ;92F8 C11FFF
out dx,ax                                 ;92FB EF
pop ds                                    ;92FC 1F
inc word [bx+di]                          ;92FD FF01
and [bx+di],al                            ;92FF 2001
and ah,[bx+si]                            ;9301 2220
add ax,[bp+si+0x20]                       ;9303 034220
add ax,0x2062                             ;9306 056220
pop es                                    ;9309 07
db 0x82                                   ;930A 82
and [bx+di],cl                            ;930B 2009
mov [0xb20],al                            ;930D A2200B
ret word 0xd20                            ;9310 C2200D
loop 0x9335                               ;9313 E220
lar sp,[bx+di]                            ;9315 0F0221
adc [bp+si],sp                            ;9318 1122
and [bp+di],dx                            ;931A 2113
inc dx                                    ;931C 42
and [di],dx                               ;931D 2115
repne                                     ;931F F2
db 0xff                                   ;9320 FF
dec word [bx+0x1921]                      ;9321 FF8F2119
mov [0x1b21],al                           ;9325 A2211B
ret word 0x1d21                           ;9328 C2211D
loop 0x934e                               ;932B E221
pop ds                                    ;932D 1F
add ah,[bp+si]                            ;932E 0222
and [bp+si],sp                            ;9330 2122
and ah,[bp+di]                            ;9332 2223
inc dx                                    ;9334 42
and ah,[di]                               ;9335 2225
bound sp,[bp+si]                          ;9337 6222
dec word [bx+0x2922]                      ;9339 FF8F2229
mov [0x2b22],al                           ;933D A2222B
ret word 0x2d22                           ;9340 C2222D
loop 0x9367                               ;9343 E222
das                                       ;9345 2F
add ah,[bp+di]                            ;9346 0223
xor [bp+si],sp                            ;9348 3122
and si,[bp+di]                            ;934A 2333
inc dx                                    ;934C 42
and si,[di]                               ;934D 2335
bound sp,[bp+di]                          ;934F 6223
aaa                                       ;9351 37
db 0x82                                   ;9352 82
and di,[bx+di]                            ;9353 2339
mov [0x3b23],al                           ;9355 A2233B
repne                                     ;9358 F2
db 0xff                                   ;9359 FF
cmp ax,0x23e2                             ;935A 3DE223
aas                                       ;935D 3F
add ah,[si]                               ;935E 0224
inc cx                                    ;9360 41
and ah,[si]                               ;9361 2224
inc bx                                    ;9363 43
inc dx                                    ;9364 42
and al,0x45                               ;9365 2445
bound sp,[si]                             ;9367 6224
inc di                                    ;9369 47
db 0x82                                   ;936A 82
and al,0x49                               ;936B 2449
mov [0xff24],al                           ;936D A224FF
iret                                      ;9370 CF
and al,0x4d                               ;9371 244D
loop 0x9399                               ;9373 E224
dec di                                    ;9375 4F
add ah,[di]                               ;9376 0225
push cx                                   ;9378 51
and ah,[di]                               ;9379 2225
push bx                                   ;937B 53
inc dx                                    ;937C 42
and ax,0x6255                             ;937D 255562
and ax,0x8257                             ;9380 255782
and ax,0xa259                             ;9383 2559A2
and ax,0xc25b                             ;9386 255BC2
and ax,0xe25d                             ;9389 255DE2
and ax,0x25f                              ;938C 255F02
es popa                                   ;938F 2661
and ah,[0x4263]                           ;9391 22266342
bound sp,[gs:0x8267]                      ;9395 266562266782
es imul si,dx,0x6bff                      ;939B 2669F2FF6B
ret word 0x6d26                           ;93A0 C2266D
loop 0x93cb                               ;93A3 E226
outsw                                     ;93A5 6F
add ah,[bx]                               ;93A6 0227
jno 0x93cc                                ;93A8 7122
daa                                       ;93AA 27
jnc 0x93ef                                ;93AB 7342
daa                                       ;93AD 27
jmp word far [bx+0x27]                    ;93AE FF6F27
ja 0x9335                                 ;93B1 7782
daa                                       ;93B3 27
jns 0x9358                                ;93B4 79A2
daa                                       ;93B6 27
jpo 0x937b                                ;93B7 7BC2
daa                                       ;93B9 27
jnl 0x939e                                ;93BA 7DE2
daa                                       ;93BC 27
jg 0x93c1                                 ;93BD 7F02
sub [bx+di+0x2822],al                     ;93BF 28812228
add word [bp+si+0x28],0xffffffffffffff85  ;93C3 83422885
bound bp,[bx+si]                          ;93C7 6228
xchg si,dx                                ;93C9 87F2
inc word [bx+si]                          ;93CB FF00
mov al,[0x8b28]                           ;93CD A0288B
ret word 0x8d28                           ;93D0 C2288D
loop 0x93fd                               ;93D3 E228
pop word [bp+si]                          ;93D5 8F02
sub [bx+di+0x2922],dx                     ;93D7 29912229
xchg ax,bx                                ;93DB 93
inc dx                                    ;93DC 42
sub di,di                                 ;93DD 29FF
outsw                                     ;93DF 6F
sub [bx+0x2982],dx                        ;93E0 29978229
cwd                                       ;93E4 99
mov [0x9b29],al                           ;93E5 A2299B
ret word 0x9d29                           ;93E8 C2299D
loop 0x9416                               ;93EB E229
lahf                                      ;93ED 9F
add ch,[bp+si]                            ;93EE 022A
mov ax,[0x2a22]                           ;93F0 A1222A
mov [0x2a42],ax                           ;93F3 A3422A
movsw                                     ;93F6 A5
bound bp,[bp+si]                          ;93F7 622A
cmpsw                                     ;93F9 A7
db 0x82                                   ;93FA 82
sub ch,[bx+di+0x2aa2]                     ;93FB 2AA9A22A
stosw                                     ;93FF AB
ret word 0xad2a                           ;9400 C22AAD
loop 0x942f                               ;9403 E22A
scasw                                     ;9405 AF
add ch,[bp+di]                            ;9406 022B
mov cl,0x22                               ;9408 B122
sub si,[bp+di+0x2b42]                     ;940A 2BB3422B
mov ch,0x62                               ;940E B562
sub si,[bx+0x2b82]                        ;9410 2BB7822B
mov cx,0xfff2                             ;9414 B9F2FF
mov bx,0x2bc2                             ;9417 BBC22B
mov bp,0x2be2                             ;941A BDE22B
mov di,0x2c02                             ;941D BF022C
shl word [bp+si],byte 0x2c                ;9420 C1222C
ret                                       ;9423 C3
inc dx                                    ;9424 42
sub al,0xc5                               ;9425 2CC5
bound bp,[si]                             ;9427 622C
mov word [bp+si-0x36d4],0x2ca2            ;9429 C7822CC9A22C
retf                                      ;942F CB
ret word 0xcd2c                           ;9430 C22CCD
loop 0x9461                               ;9433 E22C
iret                                      ;9435 CF
add ch,[di]                               ;9436 022D
shl word [bp+si],0x0                      ;9438 D122
sub ax,0x42d3                             ;943A 2DD342
sub ax,0x62d5                             ;943D 2DD562
sub ax,0x82d7                             ;9440 2DD782
sub ax,0xa2d9                             ;9443 2DD9A2
sub ax,0xc2db                             ;9446 2DDBC2
sub ax,0xe2dd                             ;9449 2DDDE2
sub ax,0x2df                              ;944C 2DDF02
loope 0x9474                              ;944F 2EE122
jcxz 0x9497                               ;9452 2EE342
cs in ax,byte 0x62                        ;9455 2EE562
cs out byte 0x82,ax                       ;9458 2EE782
cs jmp 0xc301                             ;945B 2EE9A22E
jmp 0x9423                                ;945F EBC2
cs in ax,dx                               ;9461 2EED
loop 0x9493                               ;9463 E22E
out dx,ax                                 ;9465 EF
add ch,[bx]                               ;9466 022F
int1                                      ;9468 F1
and ch,[bx]                               ;9469 222F
rep inc dx                                ;946B F342
das                                       ;946D 2F
cmc                                       ;946E F5
bound bp,[bx]                             ;946F 622F
test word [bp+si-0x6d1],0x2fa2            ;9471 F7822FF9A22F
sti                                       ;9477 FB
ret word 0xfd2f                           ;9478 C22FFD
loop 0x94ac                               ;947B E22F
inc word [bp+si]                          ;947D FF02
xor [bx+di],al                            ;947F 3001
and si,[bx+si]                            ;9481 2330
add ax,[bp+di+0x30]                       ;9483 034330
add ax,0x3063                             ;9486 056330
pop es                                    ;9489 07
xor word [bx+si],0x9                      ;948A 833009
mov [0xb30],ax                            ;948D A3300B
ret                                       ;9490 C3
xor [di],cl                               ;9491 300D
jcxz 0x94c5                               ;9493 E330
lsl si,[bx+di]                            ;9495 0F0331
adc [bp+di],sp                            ;9498 1123
xor [bp+di],dx                            ;949A 3113
inc bx                                    ;949C 43
xor [di],dx                               ;949D 3115
arpl [bx+di],si                           ;949F 6331
pop ss                                    ;94A1 17
xor word [bx+di],0x19                     ;94A2 833119
mov [0x1b31],ax                           ;94A5 A3311B
ret                                       ;94A8 C3
xor [di],bx                               ;94A9 311D
jcxz 0x94de                               ;94AB E331
pop ds                                    ;94AD 1F
add si,[bp+si]                            ;94AE 0332
and [bp+di],sp                            ;94B0 2123
xor ah,[bp+di]                            ;94B2 3223
inc bx                                    ;94B4 43
xor ah,[di]                               ;94B5 3225
arpl [bp+si],si                           ;94B7 6332
daa                                       ;94B9 27
xor word [bp+si],0x29                     ;94BA 833229
mov [0x2b32],ax                           ;94BD A3322B
ret                                       ;94C0 C3
xor ch,[di]                               ;94C1 322D
jcxz 0x94f7                               ;94C3 E332
das                                       ;94C5 2F
add si,[bp+di]                            ;94C6 0333
xor [bp+di],sp                            ;94C8 3123
xor si,[bp+di]                            ;94CA 3333
inc bx                                    ;94CC 43
xor si,[di]                               ;94CD 3335
arpl [bp+di],si                           ;94CF 6333
aaa                                       ;94D1 37
xor word [bp+di],0x39                     ;94D2 833339
mov [0x3b33],ax                           ;94D5 A3333B
ret                                       ;94D8 C3
xor di,[di]                               ;94D9 333D
jcxz 0x9510                               ;94DB E333
aas                                       ;94DD 3F
add si,[si]                               ;94DE 0334
inc cx                                    ;94E0 41
and si,[si]                               ;94E1 2334
inc bx                                    ;94E3 43
inc bx                                    ;94E4 43
xor al,0x45                               ;94E5 3445
arpl [si],si                              ;94E7 6334
inc di                                    ;94E9 47
xor word [si],0x49                        ;94EA 833449
mov [0x4b34],ax                           ;94ED A3344B
ret                                       ;94F0 C3
xor al,0x4d                               ;94F1 344D
jcxz 0x9529                               ;94F3 E334
dec di                                    ;94F5 4F
add si,[di]                               ;94F6 0335
push cx                                   ;94F8 51
and si,[di]                               ;94F9 2335
push bx                                   ;94FB 53
inc bx                                    ;94FC 43
xor ax,0x6355                             ;94FD 355563
xor ax,0x8357                             ;9500 355783
xor ax,0xa359                             ;9503 3559A3
xor ax,0xc35b                             ;9506 355BC3
xor ax,0xe35d                             ;9509 355DE3
xor ax,0x35f                              ;950C 355F03
ss popa                                   ;950F 3661
and si,[0x4363]                           ;9511 23366343
arpl [gs:0x8367],si                       ;9515 366563366783
jmp word far [ss:bx+0x6b36]               ;951B 36FFAF366B
ret                                       ;9520 C3
ss insw                                   ;9521 366D
jcxz 0x955b                               ;9523 E336
dec word [bx]                             ;9525 FF0F
aaa                                       ;9527 37
jno 0x954d                                ;9528 7123
aaa                                       ;952A 37
jnc 0x9570                                ;952B 7343
aaa                                       ;952D 37
jmp word far [bx+0x37]                    ;952E FF6F37
ja 0x94b6                                 ;9531 7783
aaa                                       ;9533 37
jns 0x94d9                                ;9534 79A3
aaa                                       ;9536 37
jpo 0x94fc                                ;9537 7BC3
aaa                                       ;9539 37
jnl 0x951f                                ;953A 7DE3
aaa                                       ;953C 37
jg 0x9542                                 ;953D 7F03
cmp [bx+di+0x3823],al                     ;953F 38812338
add word [bp+di+0x38],0xffffffffffffff85  ;9543 83433885
arpl [bx+si],di                           ;9547 6338
xchg ax,[bp+di-0x76c8]                    ;9549 87833889
mov [0x8b38],ax                           ;954D A3388B
ret                                       ;9550 C3
cmp [di+0x38e3],cl                        ;9551 388DE338
pop word [bp+di]                          ;9555 8F03
cmp [bx+di-0xd],dx                        ;9557 3991F3FF
xchg ax,bx                                ;955B 93
inc bx                                    ;955C 43
cmp [di+0x3963],dx                        ;955D 39956339
xchg ax,di                                ;9561 97
cmp word [bx+di],0xffffffffffffff99       ;9562 833999
mov [0x9b39],ax                           ;9565 A3399B
ret                                       ;9568 C3
cmp [di+0x39e3],bx                        ;9569 399DE339
lahf                                      ;956D 9F
add di,[bp+si]                            ;956E 033A
mov ax,[0x3a23]                           ;9570 A1233A
mov [0x3a43],ax                           ;9573 A3433A
movsw                                     ;9576 A5
arpl [bp+si],di                           ;9577 633A
cmpsw                                     ;9579 A7
cmp word [bp+si],0xffffffffffffffa9       ;957A 833AA9
mov [0xab3a],ax                           ;957D A33AAB
ret                                       ;9580 C3
cmp ch,[di+0x3ae3]                        ;9581 3AADE33A
scasw                                     ;9585 AF
add di,[bp+di]                            ;9586 033B
mov cl,0x23                               ;9588 B123
cmp si,[bp+di+0x3b43]                     ;958A 3BB3433B
mov ch,0x63                               ;958E B563
cmp si,[bx+0x3b83]                        ;9590 3BB7833B
mov cx,0x3ba3                             ;9594 B9A33B
mov bx,0x3bc3                             ;9597 BBC33B
mov bp,0x3be3                             ;959A BDE33B
mov di,0x3c03                             ;959D BF033C
shl word [bp+di],byte 0x3c                ;95A0 C1233C
ret                                       ;95A3 C3
inc bx                                    ;95A4 43
cmp al,0xc5                               ;95A5 3CC5
arpl [si],di                              ;95A7 633C
db 0xc7                                   ;95A9 C7
rep dec cx                                ;95AA F3FFC9
mov [0xcb3c],ax                           ;95AD A33CCB
ret                                       ;95B0 C3
cmp al,0xcd                               ;95B1 3CCD
jcxz 0x95f1                               ;95B3 E33C
iret                                      ;95B5 CF
add di,[di]                               ;95B6 033D
shl word [bp+di],0x0                      ;95B8 D123
cmp ax,0xf3d3                             ;95BA 3DD3F3
db 0xff                                   ;95BD FF
aad byte 0x63                             ;95BE D563
cmp ax,0x83d7                             ;95C0 3DD783
cmp ax,0xa3d9                             ;95C3 3DD9A3
cmp ax,0xc3db                             ;95C6 3DDBC3
cmp ax,0xe3dd                             ;95C9 3DDDE3
cmp ax,0x3df                              ;95CC 3DDF03
loope 0x95f5                              ;95CF 3EE123
jcxz 0x9618                               ;95D2 3EE343
ds in ax,byte 0x63                        ;95D5 3EE563
ds out byte 0x83,ax                       ;95D8 3EE783
ds jmp 0xd482                             ;95DB 3EE9A33E
jmp 0x95a4                                ;95DF EBC3
ds in ax,dx                               ;95E1 3EED
rep                                       ;95E3 F3
db 0xff                                   ;95E4 FF
out dx,ax                                 ;95E5 EF
add di,[bx]                               ;95E6 033F
int1                                      ;95E8 F1
and di,[bx]                               ;95E9 233F
rep inc bx                                ;95EB F343
aas                                       ;95ED 3F
cmc                                       ;95EE F5
arpl [bx],di                              ;95EF 633F
test word [bp+di-0x6c1],0x3fa3            ;95F1 F7833FF9A33F
sti                                       ;95F7 FB
ret                                       ;95F8 C3
aas                                       ;95F9 3F
std                                       ;95FA FD
jcxz 0x963c                               ;95FB E33F
inc word [bp+di]                          ;95FD FF03
inc ax                                    ;95FF 40
add [si],sp                               ;9600 0124
inc ax                                    ;9602 40
add ax,[si+0x40]                          ;9603 034440
add ax,0x4064                             ;9606 056440
pop es                                    ;9609 07
test [bx+si+0x9],al                       ;960A 844009
movsb                                     ;960D A4
inc ax                                    ;960E 40
or ax,sp                                  ;960F 0BC4
inc ax                                    ;9611 40
or ax,0x40e4                              ;9612 0DE440
db 0x0f                                   ;9615 0F
add al,0x41                               ;9616 0441
adc [si],sp                               ;9618 1124
inc cx                                    ;961A 41
adc ax,[si+0x41]                          ;961B 134441
adc ax,0x4164                             ;961E 156441
pop ss                                    ;9621 17
test [bx+di+0x19],al                      ;9622 844119
movsb                                     ;9625 A4
inc cx                                    ;9626 41
sbb ax,sp                                 ;9627 1BC4
inc cx                                    ;9629 41
sbb ax,0x41e4                             ;962A 1DE441
pop ds                                    ;962D 1F
add al,0x42                               ;962E 0442
and [si],sp                               ;9630 2124
inc dx                                    ;9632 42
and ax,[si+0x42]                          ;9633 234442
and ax,0x4264                             ;9636 256442
daa                                       ;9639 27
test [bp+si+0x29],al                      ;963A 844229
movsb                                     ;963D A4
inc dx                                    ;963E 42
sub ax,sp                                 ;963F 2BC4
inc dx                                    ;9641 42
sub ax,0x42e4                             ;9642 2DE442
das                                       ;9645 2F
add al,0x43                               ;9646 0443
xor [si],sp                               ;9648 3124
inc bx                                    ;964A 43
xor ax,[si+0x43]                          ;964B 334443
xor ax,0x4364                             ;964E 356443
aaa                                       ;9651 37
test [bp+di+0x39],al                      ;9652 844339
movsb                                     ;9655 A4
inc bx                                    ;9656 43
cmp ax,sp                                 ;9657 3BC4
inc bx                                    ;9659 43
cmp ax,0x43e4                             ;965A 3DE443
aas                                       ;965D 3F
add al,0x44                               ;965E 0444
inc cx                                    ;9660 41
and al,0x44                               ;9661 2444
inc bx                                    ;9663 43
hlt                                       ;9664 F4
inc word [di+0x64]                        ;9665 FF4564
inc sp                                    ;9668 44
inc di                                    ;9669 47
test [si+0x49],al                         ;966A 844449
movsb                                     ;966D A4
inc sp                                    ;966E 44
dec bx                                    ;966F 4B
les ax,word [si+0x4d]                     ;9670 C4444D
in al,byte 0x44                           ;9673 E444
dec di                                    ;9675 4F
add al,0x45                               ;9676 0445
push cx                                   ;9678 51
and al,0x45                               ;9679 2445
push bx                                   ;967B 53
inc sp                                    ;967C 44
inc bp                                    ;967D 45
jmp word far [bx+0x45]                    ;967E FF6F45
push di                                   ;9681 57
test [di+0x59],al                         ;9682 844559
movsb                                     ;9685 A4
inc bp                                    ;9686 45
pop bx                                    ;9687 5B
les ax,word [di+0x5d]                     ;9688 C4455D
in al,byte 0x45                           ;968B E445
pop di                                    ;968D 5F
add al,0x46                               ;968E 0446
popa                                      ;9690 61
and al,0x46                               ;9691 2446
arpl [si+0x46],ax                         ;9693 634446
fs inc si                                 ;9696 656446
test [esi+0x69],al                        ;9699 67844669
movsb                                     ;969D A4
inc si                                    ;969E 46
dec di                                    ;969F FFCF
inc si                                    ;96A1 46
insw                                      ;96A2 6D
in al,byte 0x46                           ;96A3 E446
dec word [bx]                             ;96A5 FF0F
inc di                                    ;96A7 47
jno 0x96ce                                ;96A8 7124
inc di                                    ;96AA 47
jnc 0x96f1                                ;96AB 7344
inc di                                    ;96AD 47
jnz 0x9714                                ;96AE 7564
inc di                                    ;96B0 47
ja 0x9637                                 ;96B1 7784
inc di                                    ;96B3 47
jmp word far [bx+0x7b47]                  ;96B4 FFAF477B
les ax,word [bx+0x7d]                     ;96B8 C4477D
hlt                                       ;96BB F4
inc word [bx+si]                          ;96BC FF00
add [bx+si],al                            ;96BE 0000
and word [si],0x8348                      ;96C0 81244883
inc sp                                    ;96C4 44
dec ax                                    ;96C5 48
test [si+0x48],sp                         ;96C6 856448
xchg ax,[si-0x76b8]                       ;96C9 87844889
movsb                                     ;96CD A4
dec ax                                    ;96CE 48
mov ax,sp                                 ;96CF 8BC4
dec ax                                    ;96D1 48
db 0x8d                                   ;96D2 8D
in al,byte 0x48                           ;96D3 E448
pop word [si]                             ;96D5 8F04
dec cx                                    ;96D7 49
xchg ax,cx                                ;96D8 91
and al,0x49                               ;96D9 2449
xchg ax,bx                                ;96DB 93
inc sp                                    ;96DC 44
dec cx                                    ;96DD 49
xchg ax,bp                                ;96DE 95
fs dec cx                                 ;96DF 6449
xchg ax,di                                ;96E1 97
test [bx+di-0x67],cl                      ;96E2 844999
movsb                                     ;96E5 A4
dec cx                                    ;96E6 49
wait les cx,word [bx+di-0x63]             ;96E7 9BC4499D
in al,byte 0x49                           ;96EB E449
lahf                                      ;96ED 9F
add al,0x4a                               ;96EE 044A
mov ax,[0x4a24]                           ;96F0 A1244A
mov [0x4a44],ax                           ;96F3 A3444A
movsw                                     ;96F6 A5
fs dec dx                                 ;96F7 644A
cmpsw                                     ;96F9 A7
test [bp+si-0x57],cl                      ;96FA 844AA9
movsb                                     ;96FD A4
dec dx                                    ;96FE 4A
stosw                                     ;96FF AB
les cx,word [bp+si-0x53]                  ;9700 C44AAD
in al,byte 0x4a                           ;9703 E44A
scasw                                     ;9705 AF
add al,0x4b                               ;9706 044B
mov cl,0x24                               ;9708 B124
dec bx                                    ;970A 4B
mov bl,0x44                               ;970B B344
dec bx                                    ;970D 4B
mov ch,0x64                               ;970E B564
dec bx                                    ;9710 4B
mov bh,0x84                               ;9711 B784
dec bx                                    ;9713 4B
mov cx,0x4ba4                             ;9714 B9A44B
mov bx,0x4bc4                             ;9717 BBC44B
mov bp,0x4be4                             ;971A BDE44B
mov di,0x4c04                             ;971D BF044C
shl word [si],byte 0x4c                   ;9720 C1244C
ret                                       ;9723 C3
inc sp                                    ;9724 44
dec sp                                    ;9725 4C
lds sp,word [si+0x4c]                     ;9726 C5644C
mov word [si-0x36b4],0x4ca4               ;9729 C7844CC9A44C
retf                                      ;972F CB
les cx,word [si-0x33]                     ;9730 C44CCD
in al,byte 0x4c                           ;9733 E44C
iret                                      ;9735 CF
add al,0x4d                               ;9736 044D
shl word [si],0x0                         ;9738 D124
dec bp                                    ;973A 4D
rol word [si+0x4d],cl                     ;973B D3444D
aad byte 0x64                             ;973E D564
dec bp                                    ;9740 4D
xlatb                                     ;9741 D7
test [di-0x27],cl                         ;9742 844DD9
movsb                                     ;9745 A4
dec bp                                    ;9746 4D
fcmovnb st4                               ;9747 DBC4
dec bp                                    ;9749 4D
fucom st4                                 ;974A DDE4
dec bp                                    ;974C 4D
fild word [si]                            ;974D DF04
dec si                                    ;974F 4E
loope 0x9776                              ;9750 E124
dec si                                    ;9752 4E
jcxz 0x9799                               ;9753 E344
dec si                                    ;9755 4E
in ax,byte 0x64                           ;9756 E564
dec si                                    ;9758 4E
out byte 0x84,ax                          ;9759 E784
dec si                                    ;975B 4E
jmp 0xe603                                ;975C E9A44E
jmp 0x9725                                ;975F EBC4
dec si                                    ;9761 4E
in ax,dx                                  ;9762 ED
in al,byte 0x4e                           ;9763 E44E
out dx,ax                                 ;9765 EF
add al,0x4f                               ;9766 044F
int1                                      ;9768 F1
and al,0x4f                               ;9769 244F
rep inc sp                                ;976B F344
dec di                                    ;976D 4F
cmc                                       ;976E F5
fs dec di                                 ;976F 644F
test word [si-0x6b1],0x4fa4               ;9771 F7844FF9A44F
sti                                       ;9777 FB
les cx,word [bx-0x3]                      ;9778 C44FFD
in al,byte 0x4f                           ;977B E44F
inc word [si]                             ;977D FF04
push ax                                   ;977F 50
add [di],sp                               ;9780 0125
push ax                                   ;9782 50
add ax,[di+0x50]                          ;9783 034550
add ax,0x5065                             ;9786 056550
pop es                                    ;9789 07
test [bx+si+0x9],dx                       ;978A 855009
movsw                                     ;978D A5
push ax                                   ;978E 50
or ax,bp                                  ;978F 0BC5
push ax                                   ;9791 50
or ax,0x50e5                              ;9792 0DE550
syscall                                   ;9795 0F05
push cx                                   ;9797 51
adc [di],sp                               ;9798 1125
push cx                                   ;979A 51
adc ax,[di+0x51]                          ;979B 134551
adc ax,0x5165                             ;979E 156551
pop ss                                    ;97A1 17
test [bx+di+0x19],dx                      ;97A2 855119
movsw                                     ;97A5 A5
push cx                                   ;97A6 51
sbb ax,bp                                 ;97A7 1BC5
push cx                                   ;97A9 51
sbb ax,0x51e5                             ;97AA 1DE551
pop ds                                    ;97AD 1F
add ax,0x2152                             ;97AE 055221
and ax,0x2352                             ;97B1 255223
inc bp                                    ;97B4 45
push dx                                   ;97B5 52
and ax,0x5265                             ;97B6 256552
daa                                       ;97B9 27
test [bp+si+0x29],dx                      ;97BA 855229
movsw                                     ;97BD A5
push dx                                   ;97BE 52
sub ax,bp                                 ;97BF 2BC5
push dx                                   ;97C1 52
sub ax,0x52e5                             ;97C2 2DE552
das                                       ;97C5 2F
add ax,0x3153                             ;97C6 055331
and ax,0x3353                             ;97C9 255333
inc bp                                    ;97CC 45
push bx                                   ;97CD 53
xor ax,0x5365                             ;97CE 356553
aaa                                       ;97D1 37
test [bp+di+0x39],dx                      ;97D2 855339
movsw                                     ;97D5 A5
push bx                                   ;97D6 53
cmp ax,bp                                 ;97D7 3BC5
push bx                                   ;97D9 53
cmp ax,0x53e5                             ;97DA 3DE553
aas                                       ;97DD 3F
add ax,0x4154                             ;97DE 055441
and ax,0x4354                             ;97E1 255443
inc bp                                    ;97E4 45
push sp                                   ;97E5 54
inc bp                                    ;97E6 45
gs push sp                                ;97E7 6554
inc di                                    ;97E9 47
test [si+0x49],dx                         ;97EA 855449
movsw                                     ;97ED A5
push sp                                   ;97EE 54
dec bx                                    ;97EF 4B
lds dx,word [si+0x4d]                     ;97F0 C5544D
in ax,byte 0x54                           ;97F3 E554
dec di                                    ;97F5 4F
add ax,0x5155                             ;97F6 055551
and ax,0x5355                             ;97F9 255553
inc bp                                    ;97FC 45
push bp                                   ;97FD 55
push bp                                   ;97FE 55
gs push bp                                ;97FF 6555
push di                                   ;9801 57
test [di+0x59],dx                         ;9802 855559
movsw                                     ;9805 A5
push bp                                   ;9806 55
pop bx                                    ;9807 5B
lds dx,word [di+0x5d]                     ;9808 C5555D
in ax,byte 0x55                           ;980B E555
pop di                                    ;980D 5F
add ax,0x6156                             ;980E 055661
and ax,0x6356                             ;9811 255663
inc bp                                    ;9814 45
push si                                   ;9815 56
gs push si                                ;9816 656556
test [esi+0x69],dx                        ;9819 67855669
movsw                                     ;981D A5
push si                                   ;981E 56
imul ax,bp,0x56                           ;981F 6BC556
insw                                      ;9822 6D
in ax,byte 0x56                           ;9823 E556
outsw                                     ;9825 6F
add ax,0x7157                             ;9826 055771
and ax,0x7357                             ;9829 255773
inc bp                                    ;982C 45
push di                                   ;982D 57
jnz 0x9895                                ;982E 7565
push di                                   ;9830 57
ja 0x97b8                                 ;9831 7785
push di                                   ;9833 57
jns 0x97db                                ;9834 79A5
push di                                   ;9836 57
jpo 0x97fe                                ;9837 7BC5
push di                                   ;9839 57
jnl 0x9821                                ;983A 7DE5
push di                                   ;983C 57
jg 0x9844                                 ;983D 7F05
pop ax                                    ;983F 58
and word [di],0x8358                      ;9840 81255883
inc bp                                    ;9844 45
pop ax                                    ;9845 58
test [di+0x58],sp                         ;9846 856558
xchg ax,[di-0x76a8]                       ;9849 87855889
movsw                                     ;984D A5
pop ax                                    ;984E 58
mov ax,bp                                 ;984F 8BC5
pop ax                                    ;9851 58
db 0x8d                                   ;9852 8D
in ax,byte 0x58                           ;9853 E558
pop word [di]                             ;9855 8F05
pop cx                                    ;9857 59
xchg ax,cx                                ;9858 91
and ax,0x9359                             ;9859 255993
inc bp                                    ;985C 45
pop cx                                    ;985D 59
xchg ax,bp                                ;985E 95
gs pop cx                                 ;985F 6559
xchg ax,di                                ;9861 97
test [bx+di-0x67],bx                      ;9862 855999
movsw                                     ;9865 A5
pop cx                                    ;9866 59
wait lds bx,word [bx+di-0x63]             ;9867 9BC5599D
in ax,byte 0x59                           ;986B E559
lahf                                      ;986D 9F
add ax,0xa15a                             ;986E 055AA1
and ax,0xa35a                             ;9871 255AA3
inc bp                                    ;9874 45
pop dx                                    ;9875 5A
movsw                                     ;9876 A5
gs pop dx                                 ;9877 655A
cmpsw                                     ;9879 A7
test [bp+si-0x57],bx                      ;987A 855AA9
movsw                                     ;987D A5
pop dx                                    ;987E 5A
stosw                                     ;987F AB
lds bx,word [bp+si-0x53]                  ;9880 C55AAD
in ax,byte 0x5a                           ;9883 E55A
scasw                                     ;9885 AF
add ax,0xb15b                             ;9886 055BB1
and ax,0xb35b                             ;9889 255BB3
inc bp                                    ;988C 45
pop bx                                    ;988D 5B
mov ch,0x65                               ;988E B565
pop bx                                    ;9890 5B
mov bh,0x85                               ;9891 B785
pop bx                                    ;9893 5B
mov cx,0x5ba5                             ;9894 B9A55B
mov bx,0x5bc5                             ;9897 BBC55B
mov bp,0x5be5                             ;989A BDE55B
mov di,0x5c05                             ;989D BF055C
shl word [di],byte 0x5c                   ;98A0 C1255C
ret                                       ;98A3 C3
inc bp                                    ;98A4 45
pop sp                                    ;98A5 5C
lds sp,word [di+0x5c]                     ;98A6 C5655C
mov word [di-0x36a4],0x5ca5               ;98A9 C7855CC9A55C
retf                                      ;98AF CB
lds bx,word [si-0x33]                     ;98B0 C55CCD
in ax,byte 0x5c                           ;98B3 E55C
iret                                      ;98B5 CF
add ax,0xd15d                             ;98B6 055DD1
and ax,0xd35d                             ;98B9 255DD3
inc bp                                    ;98BC 45
pop bp                                    ;98BD 5D
aad byte 0x65                             ;98BE D565
pop bp                                    ;98C0 5D
xlatb                                     ;98C1 D7
test [di-0x27],bx                         ;98C2 855DD9
movsw                                     ;98C5 A5
pop bp                                    ;98C6 5D
fcmovnb st5                               ;98C7 DBC5
pop bp                                    ;98C9 5D
fucom st5                                 ;98CA DDE5
pop bp                                    ;98CC 5D
fild word [di]                            ;98CD DF05
pop si                                    ;98CF 5E
loope 0x98f7                              ;98D0 E125
pop si                                    ;98D2 5E
jcxz 0x991a                               ;98D3 E345
pop si                                    ;98D5 5E
in ax,byte 0x65                           ;98D6 E565
pop si                                    ;98D8 5E
out byte 0xf5,ax                          ;98D9 E7F5
db 0xff                                   ;98DB FF
jmp 0xf784                                ;98DC E9A55E
jmp 0x98a6                                ;98DF EBC5
pop si                                    ;98E1 5E
in ax,dx                                  ;98E2 ED
in ax,byte 0x5e                           ;98E3 E55E
out dx,ax                                 ;98E5 EF
add ax,0xf15f                             ;98E6 055FF1
and ax,0xf35f                             ;98E9 255FF3
inc bp                                    ;98EC 45
pop di                                    ;98ED 5F
cmc                                       ;98EE F5
gs pop di                                 ;98EF 655F
test word [di-0x6a1],0x5fa5               ;98F1 F7855FF9A55F
sti                                       ;98F7 FB
lds bx,word [bx-0x3]                      ;98F8 C55FFD
in ax,byte 0x5f                           ;98FB E55F
inc word [di]                             ;98FD FF05
pusha                                     ;98FF 60
add [0x360],sp                            ;9900 01266003
inc si                                    ;9904 46
pusha                                     ;9905 60
add ax,0x6066                             ;9906 056660
pop es                                    ;9909 07
xchg ah,[bx+si+0x9]                       ;990A 866009
cmpsb                                     ;990D A6
pusha                                     ;990E 60
or ax,si                                  ;990F 0BC6
pusha                                     ;9911 60
or ax,0x60e6                              ;9912 0DE660
clts                                      ;9915 0F06
popa                                      ;9917 61
adc [0x1361],sp                           ;9918 11266113
inc si                                    ;991C 46
popa                                      ;991D 61
adc ax,0x6166                             ;991E 156661
pop ss                                    ;9921 17
xchg ah,[bx+di+0x19]                      ;9922 866119
cmpsb                                     ;9925 A6
popa                                      ;9926 61
sbb ax,si                                 ;9927 1BC6
popa                                      ;9929 61
sbb ax,0x61e6                             ;992A 1DE661
pop ds                                    ;992D 1F
push es                                   ;992E 06
bound sp,[bx+di]                          ;992F 6221
bound sp,[es:bp+di]                       ;9931 266223
inc si                                    ;9934 46
bound sp,[di]                             ;9935 6225
bound esp,[bx]                            ;9937 666227
xchg ah,[bp+si+0x29]                      ;993A 866229
cmpsb                                     ;993D A6
bound bp,[bp+di]                          ;993E 622B
db 0xc6                                   ;9940 C6
bound bp,[di]                             ;9941 622D
out byte 0x62,al                          ;9943 E662
das                                       ;9945 2F
push es                                   ;9946 06
arpl [bx+di],si                           ;9947 6331
arpl [es:bp+di],si                        ;9949 266333
inc si                                    ;994C 46
arpl [di],si                              ;994D 6335
arpl word [bx],esi                        ;994F 666337
xchg ah,[bp+di+0x39]                      ;9952 866339
cmpsb                                     ;9955 A6
arpl [bp+di],di                           ;9956 633B
db 0xc6                                   ;9958 C6
arpl [di],di                              ;9959 633D
out byte 0x63,al                          ;995B E663
aas                                       ;995D 3F
push es                                   ;995E 06
fs inc cx                                 ;995F 6441
fs inc bx                                 ;9961 266443
inc si                                    ;9964 46
fs inc bp                                 ;9965 6445
fs inc edi                                ;9967 666447
xchg ah,[si+0x49]                         ;996A 866449
cmpsb                                     ;996D A6
fs dec bx                                 ;996E 644B
db 0xc6                                   ;9970 C6
fs dec bp                                 ;9971 644D
out byte 0x64,al                          ;9973 E664
dec di                                    ;9975 4F
push es                                   ;9976 06
gs push cx                                ;9977 6551
gs push bx                                ;9979 266553
inc si                                    ;997C 46
gs push bp                                ;997D 6555
gs push edi                               ;997F 666557
xchg ah,[di+0x59]                         ;9982 866559
cmpsb                                     ;9985 A6
gs pop bx                                 ;9986 655B
db 0xc6                                   ;9988 C6
gs pop bp                                 ;9989 655D
out byte 0x65,al                          ;998B E665
pop di                                    ;998D 5F
push es                                   ;998E 06
popad                                     ;998F 6661
arpl word [es:bp+0x66],eax                ;9991 2666634666
o32 xchg ah,[gs:esi+0x69]                 ;9996 65666667866669
cmpsb                                     ;999D A6
imul eax,esi,0x66                         ;999E 666BC666
insw                                      ;99A2 6D
out byte 0x66,al                          ;99A3 E666
outsw                                     ;99A5 6F
push es                                   ;99A6 06
a32 jno 0x99d0                            ;99A7 677126
a32 jnc 0x99f3                            ;99AA 677346
a32 jnz 0x9a16                            ;99AD 677566
a32 ja 0x9939                             ;99B0 677786
a32 jns 0x995c                            ;99B3 6779A6
a32 jpo 0x997f                            ;99B6 677BC6
a32 jnl 0x99a2                            ;99B9 677DE6
a32 jg 0x99c5                             ;99BC 677F06
push word 0x2681                          ;99BF 688126
push word 0x4683                          ;99C2 688346
push word 0x6685                          ;99C5 688566
push word 0x8687                          ;99C8 688786
push word 0xa689                          ;99CB 6889A6
push word 0xc68b                          ;99CE 688BC6
push word 0xe68d                          ;99D1 688DE6
push word 0x68f                           ;99D4 688F06
imul dx,[bx+di+0x6926],0x4693             ;99D7 699126699346
imul dx,[di+0x6966],0x8697                ;99DD 699566699786
imul bx,[bx+di+0x69a6],0xc69b             ;99E3 6999A6699BC6
imul bx,[di+0x69e6],0x69f                 ;99E9 699DE6699F06
push word 0xffffffffffffffa1              ;99EF 6AA1
es push word 0xffffffffffffffa3           ;99F1 266AA3
inc si                                    ;99F4 46
push word 0xffffffffffffffa5              ;99F5 6AA5
push dword 0xffffffffffffffa7             ;99F7 666AA7
xchg ch,[bp+si-0x57]                      ;99FA 866AA9
cmpsb                                     ;99FD A6
push word 0xffffffffffffffab              ;99FE 6AAB
db 0xc6                                   ;9A00 C6
push word 0xffffffffffffffad              ;9A01 6AAD
out byte 0x6a,al                          ;9A03 E66A
scasw                                     ;9A05 AF
push es                                   ;9A06 06
imul si,[bx+di+0x6b26],0xffffffffffffffb3 ;9A07 6BB1266BB3
inc si                                    ;9A0C 46
imul si,[di+0x6b66],0xffffffffffffffb7    ;9A0D 6BB5666BB7
xchg ch,[bp+di-0x47]                      ;9A12 866BB9
cmpsb                                     ;9A15 A6
imul di,[bp+di+0x6bc6],0xffffffffffffffbd ;9A16 6BBBC66BBD
out byte 0x6b,al                          ;9A1B E66B
mov di,0x6c06                             ;9A1D BF066C
shl word [0xc36c],byte 0x46               ;9A20 C1266CC346
insb                                      ;9A25 6C
lds sp,word [bp+0x6c]                     ;9A26 C5666C
mov word [bp-0x3694],0x6ca6               ;9A29 C7866CC9A66C
retf                                      ;9A2F CB
db 0xc6                                   ;9A30 C6
insb                                      ;9A31 6C
int byte 0xe6                             ;9A32 CDE6
insb                                      ;9A34 6C
iret                                      ;9A35 CF
push es                                   ;9A36 06
insw                                      ;9A37 6D
shl word [0xd36d],0x0                     ;9A38 D1266DD3
inc si                                    ;9A3C 46
insw                                      ;9A3D 6D
aad byte 0x66                             ;9A3E D566
insw                                      ;9A40 6D
xlatb                                     ;9A41 D7
xchg ch,[di-0x27]                         ;9A42 866DD9
cmpsb                                     ;9A45 A6
insw                                      ;9A46 6D
fcmovnb st6                               ;9A47 DBC6
insw                                      ;9A49 6D
fucom st6                                 ;9A4A DDE6
insw                                      ;9A4C 6D
fild word [0xe16e]                        ;9A4D DF066EE1
es outsb                                  ;9A51 266E
jcxz 0x9a9b                               ;9A53 E346
outsb                                     ;9A55 6E
in ax,byte 0x66                           ;9A56 E566
outsb                                     ;9A58 6E
out byte 0x86,ax                          ;9A59 E786
outsb                                     ;9A5B 6E
jmp 0x905                                 ;9A5C E9A66E
jmp 0x9a27                                ;9A5F EBC6
outsb                                     ;9A61 6E
in ax,dx                                  ;9A62 ED
out byte 0x6e,al                          ;9A63 E66E
out dx,ax                                 ;9A65 EF
push es                                   ;9A66 06
outsw                                     ;9A67 6F
int1                                      ;9A68 F1
es outsw                                  ;9A69 266F
rep inc si                                ;9A6B F346
outsw                                     ;9A6D 6F
cmc                                       ;9A6E F5
outsd                                     ;9A6F 666F
test word [bp-0x691],0x6fa6               ;9A71 F7866FF9A66F
sti                                       ;9A77 FB
db 0xc6                                   ;9A78 C6
outsw                                     ;9A79 6F
std                                       ;9A7A FD
out byte 0x6f,al                          ;9A7B E66F
inc word [0x170]                          ;9A7D FF067001
daa                                       ;9A81 27
jo 0x9a87                                 ;9A82 7003
inc di                                    ;9A84 47
jo 0x9a8c                                 ;9A85 7005
a32 jo 0x9a91                             ;9A87 677007
xchg si,[bx+si+0x9]                       ;9A8A 877009
cmpsw                                     ;9A8D A7
jo 0x9a9b                                 ;9A8E 700B
db 0xc7                                   ;9A90 C7
jo 0x9aa0                                 ;9A91 700D
out byte 0x70,ax                          ;9A93 E770
sysret                                    ;9A95 0F07
jno 0x9aaa                                ;9A97 7111
daa                                       ;9A99 27
jno 0x9aaf                                ;9A9A 7113
inc di                                    ;9A9C 47
jno 0x9ab4                                ;9A9D 7115
a32 jno 0x9ab9                            ;9A9F 677117
xchg si,[bx+di+0x19]                      ;9AA2 877119
cmpsw                                     ;9AA5 A7
jno 0x9ac3                                ;9AA6 711B
db 0xc7                                   ;9AA8 C7
jno 0x9ac8                                ;9AA9 711D
out byte 0x71,ax                          ;9AAB E771
pop ds                                    ;9AAD 1F
pop es                                    ;9AAE 07
jc 0x9ad2                                 ;9AAF 7221
daa                                       ;9AB1 27
jc 0x9ad7                                 ;9AB2 7223
inc di                                    ;9AB4 47
jc 0x9adc                                 ;9AB5 7225
a32 jc 0x9ae1                             ;9AB7 677227
xchg si,[bp+si+0x29]                      ;9ABA 877229
cmpsw                                     ;9ABD A7
jc 0x9aeb                                 ;9ABE 722B
db 0xc7                                   ;9AC0 C7
jc 0x9af0                                 ;9AC1 722D
out byte 0x72,ax                          ;9AC3 E772
das                                       ;9AC5 2F
pop es                                    ;9AC6 07
jnc 0x9afa                                ;9AC7 7331
daa                                       ;9AC9 27
jnc 0x9aff                                ;9ACA 7333
inc di                                    ;9ACC 47
jnc 0x9b04                                ;9ACD 7335
a32 jnc 0x9b09                            ;9ACF 677337
xchg si,[bp+di+0x39]                      ;9AD2 877339
cmpsw                                     ;9AD5 A7
jnc 0x9b13                                ;9AD6 733B
db 0xc7                                   ;9AD8 C7
jnc 0x9b18                                ;9AD9 733D
out byte 0x73,ax                          ;9ADB E773
aas                                       ;9ADD 3F
pop es                                    ;9ADE 07
jz 0x9b22                                 ;9ADF 7441
daa                                       ;9AE1 27
jz 0x9b27                                 ;9AE2 7443
inc di                                    ;9AE4 47
jz 0x9b2c                                 ;9AE5 7445
a32 jz 0x9b31                             ;9AE7 677447
xchg si,[si+0x49]                         ;9AEA 877449
cmpsw                                     ;9AED A7
jz 0x9b3b                                 ;9AEE 744B
db 0xc7                                   ;9AF0 C7
jz 0x9b40                                 ;9AF1 744D
out byte 0x74,ax                          ;9AF3 E774
dec di                                    ;9AF5 4F
pop es                                    ;9AF6 07
jnz 0x9b4a                                ;9AF7 7551
daa                                       ;9AF9 27
jnz 0x9b4f                                ;9AFA 7553
inc di                                    ;9AFC 47
jnz 0x9b54                                ;9AFD 7555
a32 jnz 0x9b59                            ;9AFF 677557
xchg si,[di+0x59]                         ;9B02 877559
cmpsw                                     ;9B05 A7
jnz 0x9b63                                ;9B06 755B
db 0xc7                                   ;9B08 C7
jnz 0x9b68                                ;9B09 755D
out byte 0x75,ax                          ;9B0B E775
pop di                                    ;9B0D 5F
pop es                                    ;9B0E 07
jna 0x9b72                                ;9B0F 7661
daa                                       ;9B11 27
jna 0x9b77                                ;9B12 7663
inc di                                    ;9B14 47
jna 0x9b7c                                ;9B15 7665
a32 jna 0x9b81                            ;9B17 677667
xchg si,[bp+0x69]                         ;9B1A 877669
cmpsw                                     ;9B1D A7
jna 0x9b8b                                ;9B1E 766B
db 0xc7                                   ;9B20 C7
jna 0x9b90                                ;9B21 766D
out byte 0x76,ax                          ;9B23 E776
outsw                                     ;9B25 6F
pop es                                    ;9B26 07
ja 0x9b9a                                 ;9B27 7771
daa                                       ;9B29 27
ja 0x9b9f                                 ;9B2A 7773
inc di                                    ;9B2C 47
ja 0x9ba4                                 ;9B2D 7775
a32 ja 0x9ba9                             ;9B2F 677777
xchg si,[bx+0x79]                         ;9B32 877779
cmpsw                                     ;9B35 A7
ja 0x9bb3                                 ;9B36 777B
db 0xc7                                   ;9B38 C7
ja 0x9bb8                                 ;9B39 777D
out byte 0x77,ax                          ;9B3B E777
jg 0x9b46                                 ;9B3D 7F07
js 0x9ac2                                 ;9B3F 7881
daa                                       ;9B41 27
js 0x9ac7                                 ;9B42 7883
inc di                                    ;9B44 47
js 0x9acc                                 ;9B45 7885
a32 js 0x9ad1                             ;9B47 677887
xchg di,[bx+si-0x77]                      ;9B4A 877889
cmpsw                                     ;9B4D A7
js 0x9adb                                 ;9B4E 788B
db 0xc7                                   ;9B50 C7
js 0x9ae0                                 ;9B51 788D
out byte 0x78,ax                          ;9B53 E778
pop word [bx]                             ;9B55 8F07
jns 0x9aea                                ;9B57 7991
daa                                       ;9B59 27
jns 0x9aef                                ;9B5A 7993
inc di                                    ;9B5C 47
jns 0x9af4                                ;9B5D 7995
idiv di                                   ;9B5F F7FF
xchg ax,di                                ;9B61 97
xchg di,[bx+di-0x1]                       ;9B62 8779FF
scasw                                     ;9B65 AF
jns 0x9b03                                ;9B66 799B
db 0xc7                                   ;9B68 C7
jns 0x9b08                                ;9B69 799D
out byte 0x79,ax                          ;9B6B E779
lahf                                      ;9B6D 9F
pop es                                    ;9B6E 07
jpe 0x9b12                                ;9B6F 7AA1
daa                                       ;9B71 27
jpe 0x9b17                                ;9B72 7AA3
inc di                                    ;9B74 47
jpe 0x9b1c                                ;9B75 7AA5
a32 jpe 0x9b21                            ;9B77 677AA7
xchg di,[bp+si-0x57]                      ;9B7A 877AA9
cmpsw                                     ;9B7D A7
jpe 0x9b2b                                ;9B7E 7AAB
db 0xc7                                   ;9B80 C7
jpe 0x9b30                                ;9B81 7AAD
out byte 0x7a,ax                          ;9B83 E77A
scasw                                     ;9B85 AF
pop es                                    ;9B86 07
jpo 0x9b3a                                ;9B87 7BB1
daa                                       ;9B89 27
jpo 0x9b3f                                ;9B8A 7BB3
inc di                                    ;9B8C 47
jpo 0x9b44                                ;9B8D 7BB5
a32 jpo 0x9b49                            ;9B8F 677BB7
xchg di,[bp+di-0x47]                      ;9B92 877BB9
cmpsw                                     ;9B95 A7
jpo 0x9b53                                ;9B96 7BBB
db 0xc7                                   ;9B98 C7
jpo 0x9b58                                ;9B99 7BBD
out byte 0x7b,ax                          ;9B9B E77B
db 0xff                                   ;9B9D FF
db 0xff                                   ;9B9E FF
inc cx                                    ;9B9F FFC1
daa                                       ;9BA1 27
jl 0x9b67                                 ;9BA2 7CC3
inc di                                    ;9BA4 47
jl 0x9b6c                                 ;9BA5 7CC5
a32 jl 0x9b71                             ;9BA7 677CC7
xchg di,[si-0x37]                         ;9BAA 877CC9
cmpsw                                     ;9BAD A7
jl 0x9b7b                                 ;9BAE 7CCB
db 0xc7                                   ;9BB0 C7
jl 0x9b80                                 ;9BB1 7CCD
out byte 0x7c,ax                          ;9BB3 E77C
iret                                      ;9BB5 CF
pop es                                    ;9BB6 07
jnl 0x9b8a                                ;9BB7 7DD1
daa                                       ;9BB9 27
jnl 0x9b8f                                ;9BBA 7DD3
inc di                                    ;9BBC 47
jnl 0x9b94                                ;9BBD 7DD5
a32 jnl 0x9b99                            ;9BBF 677DD7
xchg di,[di-0x27]                         ;9BC2 877DD9
cmpsw                                     ;9BC5 A7
jnl 0x9ba3                                ;9BC6 7DDB
db 0xc7                                   ;9BC8 C7
jnl 0x9ba8                                ;9BC9 7DDD
out byte 0x7d,ax                          ;9BCB E77D
fild word [bx]                            ;9BCD DF07
jng 0x9bb2                                ;9BCF 7EE1
daa                                       ;9BD1 27
jng 0x9bb7                                ;9BD2 7EE3
inc di                                    ;9BD4 47
jng 0x9bbc                                ;9BD5 7EE5
a32 jng 0x9bc1                            ;9BD7 677EE7
xchg di,[bp-0x17]                         ;9BDA 877EE9
cmpsw                                     ;9BDD A7
jng 0x9bcb                                ;9BDE 7EEB
db 0xc7                                   ;9BE0 C7
jng 0x9bd0                                ;9BE1 7EED
out byte 0x7e,ax                          ;9BE3 E77E
out dx,ax                                 ;9BE5 EF
pop es                                    ;9BE6 07
jg 0x9bda                                 ;9BE7 7FF1
daa                                       ;9BE9 27
jg 0x9bdf                                 ;9BEA 7FF3
inc di                                    ;9BEC 47
jg 0x9be4                                 ;9BED 7FF5
a32 jg 0x9be9                             ;9BEF 677FF7
xchg di,[bx-0x7]                          ;9BF2 877FF9
cmpsw                                     ;9BF5 A7
jg 0x9bf3                                 ;9BF6 7FFB
db 0xc7                                   ;9BF8 C7
jg 0x9bf8                                 ;9BF9 7FFD
out byte 0x7f,ax                          ;9BFB E77F
inc word [bx]                             ;9BFD FF07
add byte [bx+di],0x28                     ;9BFF 800128
add byte [bp+di],0x48                     ;9C02 800348
add byte [di],0x68                        ;9C05 800568
add byte [bx],0x88                        ;9C08 800788
or byte [bx+di],0xa8                      ;9C0B 8009A8
or byte [bp+di],0xc8                      ;9C0E 800BC8
or byte [di],0xe8                         ;9C11 800DE8
or byte [bx],0x8                          ;9C14 800F08
adc word [bx+di],0x8128                   ;9C17 81112881
adc cx,[bx+si-0x7f]                       ;9C1B 134881
adc ax,0x8168                             ;9C1E 156881
pop ss                                    ;9C21 17
mov [bx+di-0x57e7],al                     ;9C22 888119A8
sbb word [bp+di],0x81c8                   ;9C26 811BC881
sbb ax,0x81e8                             ;9C2A 1DE881
pop ds                                    ;9C2D 1F
or [bp+si+0x2821],al                      ;9C2E 08822128
db 0x82                                   ;9C32 82
and cx,[bx+si-0x7e]                       ;9C33 234882
and ax,0x8268                             ;9C36 256882
daa                                       ;9C39 27
mov [bp+si-0x57d7],al                     ;9C3A 888229A8
db 0x82                                   ;9C3E 82
sub cx,ax                                 ;9C3F 2BC8
db 0x82                                   ;9C41 82
sub ax,0x82e8                             ;9C42 2DE882
das                                       ;9C45 2F
or [bp+di+0x2831],al                      ;9C46 08833128
xor word [bp+di],0x48                     ;9C4A 833348
xor word [di],0x68                        ;9C4D 833568
xor word [bx],0xffffffffffffff88          ;9C50 833788
cmp word [bx+di],0xffffffffffffffa8       ;9C53 8339A8
cmp word [bp+di],0xffffffffffffffc8       ;9C56 833BC8
cmp word [di],0xffffffffffffffe8          ;9C59 833DE8
cmp word [bx],0x8                         ;9C5C 833F08
test [bx+di+0x28],al                      ;9C5F 844128
test [bp+di+0x48],al                      ;9C62 844348
test [di+0x68],al                         ;9C65 844568
test [bx-0x78],al                         ;9C68 844788
test [bx+di-0x58],cl                      ;9C6B 8449A8
test [bp+di-0x38],cl                      ;9C6E 844BC8
test [di-0x18],cl                         ;9C71 844DE8
test [bx+0x8],cl                          ;9C74 844F08
test [bx+di+0x28],dx                      ;9C77 855128
test [bp+di+0x48],dx                      ;9C7A 855348
test [di+0x68],dx                         ;9C7D 855568
test [bx-0x78],dx                         ;9C80 855788
test [bx+di-0x58],bx                      ;9C83 8559A8
test [bp+di-0x38],bx                      ;9C86 855BC8
test [di-0x18],bx                         ;9C89 855DE8
test [bx+0x8],bx                          ;9C8C 855F08
xchg ah,[bx+di+0x28]                      ;9C8F 866128
xchg ah,[bp+di+0x48]                      ;9C92 866348
xchg ah,[di+0x68]                         ;9C95 866568
xchg ah,[bx-0x78]                         ;9C98 866788
xchg ch,[bx+di-0x58]                      ;9C9B 8669A8
xchg ch,[bp+di-0x38]                      ;9C9E 866BC8
xchg ch,[di-0x18]                         ;9CA1 866DE8
xchg ch,[bx+0x8]                          ;9CA4 866F08
xchg si,[bx+di+0x28]                      ;9CA7 877128
xchg si,[bp+di+0x48]                      ;9CAA 877348
xchg si,[di+0x68]                         ;9CAD 877568
xchg si,[bx-0x78]                         ;9CB0 877788
xchg di,[bx+di-0x58]                      ;9CB3 8779A8
xchg di,[bp+di-0x38]                      ;9CB6 877BC8
xchg di,[di-0x18]                         ;9CB9 877DE8
xchg di,[bx+0x8]                          ;9CBC 877F08
mov [bx+di-0x77d8],al                     ;9CBF 88812888
or word [bx+si-0x78],0xffffffffffffff85   ;9CC3 83488885
push word 0x8788                          ;9CC7 688887
mov [bx+si-0x5777],cl                     ;9CCA 888889A8
mov [bp+di-0x7738],cl                     ;9CCE 888BC888
db 0x8d                                   ;9CD2 8D
call 0x2c5e                               ;9CD3 E8888F
or [bx+di+0x2891],cl                      ;9CD6 08899128
mov [bp+di-0x76b8],dx                     ;9CDA 89934889
xchg ax,bp                                ;9CDE 95
push word 0x9789                          ;9CDF 688997
mov [bx+di-0x5767],cl                     ;9CE2 888999A8
mov [bp+di-0x7638],bx                     ;9CE6 899BC889
popf                                      ;9CEA 9D
call 0x3c77                               ;9CEB E8899F
or [bp+si+0x28a1],cl                      ;9CEE 088AA128
mov ah,[bp+di-0x75b8]                     ;9CF2 8AA3488A
movsw                                     ;9CF6 A5
push word 0xa78a                          ;9CF7 688AA7
mov [bp+si-0x5757],cl                     ;9CFA 888AA9A8
mov ch,[bp+di-0x7538]                     ;9CFE 8AABC88A
lodsw                                     ;9D02 AD
call 0x4c90                               ;9D03 E88AAF
or [bp+di+0x28b1],cl                      ;9D06 088BB128
mov si,[bp+di-0x74b8]                     ;9D0A 8BB3488B
mov ch,0x68                               ;9D0E B568
mov si,[bx-0x7478]                        ;9D10 8BB7888B
mov cx,0x8ba8                             ;9D14 B9A88B
mov bx,0x8bc8                             ;9D17 BBC88B
mov bp,0x8be8                             ;9D1A BDE88B
mov di,0x8c08                             ;9D1D BF088C
shr word [bx+si],byte 0x8c                ;9D20 C1288C
ret                                       ;9D23 C3
dec ax                                    ;9D24 48
mov bp,es                                 ;9D25 8CC5
push word 0xc78c                          ;9D27 688CC7
mov [si-0x5737],cl                        ;9D2A 888CC9A8
mov bx,cs                                 ;9D2E 8CCB
enter word 0xcd8c,byte 0xe8               ;9D30 C88CCDE8
mov di,cs                                 ;9D34 8CCF
or [di+0x28d1],cl                         ;9D36 088DD128
db 0x8d                                   ;9D3A 8D
ror word [bx+si-0x73],cl                  ;9D3B D3488D
aad byte 0x68                             ;9D3E D568
db 0x8d                                   ;9D40 8D
xlatb                                     ;9D41 D7
mov [di-0x5727],cl                        ;9D42 888DD9A8
db 0x8d                                   ;9D46 8D
fcmovne st0                               ;9D47 DBC8
db 0x8d                                   ;9D49 8D
fucomp st0                                ;9D4A DDE8
db 0x8d                                   ;9D4C 8D
fisttp word [bx+si]                       ;9D4D DF08
mov fs,cx                                 ;9D4F 8EE1
sub [bp+0x48e3],cl                        ;9D51 288EE348
mov fs,bp                                 ;9D55 8EE5
push word 0xe78e                          ;9D57 688EE7
mov [bp-0x5717],cl                        ;9D5A 888EE9A8
mov gs,bx                                 ;9D5E 8EEB
enter word 0xed8e,byte 0xe8               ;9D60 C88EEDE8
mov gs,di                                 ;9D64 8EEF
or [bx+0x28f1],cl                         ;9D66 088FF128
db 0x8f                                   ;9D6A 8F
rep dec ax                                ;9D6B F348
db 0x8f                                   ;9D6D 8F
cmc                                       ;9D6E F5
push word 0xf78f                          ;9D6F 688FF7
mov [bx-0x5707],cl                        ;9D72 888FF9A8
db 0x8f                                   ;9D76 8F
sti                                       ;9D77 FB
enter word 0xfd8f,byte 0xe8               ;9D78 C88FFDE8
db 0x8f                                   ;9D7C 8F
dec word [bx+si]                          ;9D7D FF08
nop                                       ;9D7F 90
add [bx+di],bp                            ;9D80 0129
nop                                       ;9D82 90
add cx,[bx+di-0x70]                       ;9D83 034990
add ax,0x9069                             ;9D86 056990
pop es                                    ;9D89 07
mov [bx+si-0x56f7],dx                     ;9D8A 899009A9
nop                                       ;9D8E 90
or cx,cx                                  ;9D8F 0BC9
nop                                       ;9D91 90
or ax,0x90e9                              ;9D92 0DE990
wbinvd                                    ;9D95 0F09
xchg ax,cx                                ;9D97 91
adc [bx+di],bp                            ;9D98 1129
xchg ax,cx                                ;9D9A 91
adc cx,[bx+di-0x6f]                       ;9D9B 134991
adc ax,0x9169                             ;9D9E 156991
pop ss                                    ;9DA1 17
mov [bx+di-0x56e7],dx                     ;9DA2 899119A9
xchg ax,cx                                ;9DA6 91
sbb cx,cx                                 ;9DA7 1BC9
xchg ax,cx                                ;9DA9 91
sbb ax,0x91e9                             ;9DAA 1DE991
pop ds                                    ;9DAD 1F
or [bp+si+0x2921],dx                      ;9DAE 09922129
xchg ax,dx                                ;9DB2 92
and cx,[bx+di-0x6e]                       ;9DB3 234992
and ax,0x9269                             ;9DB6 256992
daa                                       ;9DB9 27
mov [bp+si-0x56d7],dx                     ;9DBA 899229A9
xchg ax,dx                                ;9DBE 92
sub cx,cx                                 ;9DBF 2BC9
xchg ax,dx                                ;9DC1 92
sub ax,0x92e9                             ;9DC2 2DE992
das                                       ;9DC5 2F
or [bp+di+0xfff],dx                       ;9DC6 0993FF0F
add [bx+si],al                            ;9DCA 0000
add [bx+si],al                            ;9DCC 0000
add [bx+si],al                            ;9DCE 0000
add [bx+si],al                            ;9DD0 0000
add [bx+si],al                            ;9DD2 0000
add [bx+si],al                            ;9DD4 0000
add [bx+si],al                            ;9DD6 0000
add [bx+si],al                            ;9DD8 0000
add [bx+si],al                            ;9DDA 0000
add [bx+si],al                            ;9DDC 0000
add [bx+si],al                            ;9DDE 0000
add [bx+si],al                            ;9DE0 0000
add [bx+si],al                            ;9DE2 0000
add [bx+si],al                            ;9DE4 0000
add [bx+si],al                            ;9DE6 0000
add [bx+si],al                            ;9DE8 0000
add [bx+si],al                            ;9DEA 0000
add [bx+si],al                            ;9DEC 0000
add [bx+si],al                            ;9DEE 0000
add [bx+si],al                            ;9DF0 0000
add [bx+si],al                            ;9DF2 0000
add [bx+si],al                            ;9DF4 0000
add [bx+si],al                            ;9DF6 0000
add [bx+si],al                            ;9DF8 0000
add [bx+si],al                            ;9DFA 0000
add [bx+si],al                            ;9DFC 0000
add [bx+si],al                            ;9DFE 0000
add [bx+si],al                            ;9E00 0000
add [bx+si],al                            ;9E02 0000
add [bx+si],al                            ;9E04 0000
add [bx+si],al                            ;9E06 0000
add [bx+si],al                            ;9E08 0000
add [bx+si],al                            ;9E0A 0000
add [bx+si],al                            ;9E0C 0000
add [bx+si],al                            ;9E0E 0000
add [bx+si],al                            ;9E10 0000
add [bx+si],al                            ;9E12 0000
add [bx+si],al                            ;9E14 0000
add [bx+si],al                            ;9E16 0000
add [bx+si],al                            ;9E18 0000
add [bx+si],al                            ;9E1A 0000
add [bx+si],al                            ;9E1C 0000
add [bx+si],al                            ;9E1E 0000
add [bx+si],al                            ;9E20 0000
add [bx+si],al                            ;9E22 0000
add [bx+si],al                            ;9E24 0000
add [bx+si],al                            ;9E26 0000
add [bx+si],al                            ;9E28 0000
add [bx+si],al                            ;9E2A 0000
add [bx+si],al                            ;9E2C 0000
add [bx+si],al                            ;9E2E 0000
add [bx+si],al                            ;9E30 0000
add [bx+si],al                            ;9E32 0000
add [bx+si],al                            ;9E34 0000
add [bx+si],al                            ;9E36 0000
add [bx+si],al                            ;9E38 0000
add [bx+si],al                            ;9E3A 0000
add [bx+si],al                            ;9E3C 0000
add [bx+si],al                            ;9E3E 0000
add [bx+si],al                            ;9E40 0000
add [bx+si],al                            ;9E42 0000
add [bx+si],al                            ;9E44 0000
add [bx+si],al                            ;9E46 0000
add [bx+si],al                            ;9E48 0000
add [bx+si],al                            ;9E4A 0000
add [bx+si],al                            ;9E4C 0000
add [bx+si],al                            ;9E4E 0000
add [bx+si],al                            ;9E50 0000
add [bx+si],al                            ;9E52 0000
add [bx+si],al                            ;9E54 0000
add [bx+si],al                            ;9E56 0000
add [bx+si],al                            ;9E58 0000
add [bx+si],al                            ;9E5A 0000
add [bx+si],al                            ;9E5C 0000
add [bx+si],al                            ;9E5E 0000
add [bx+si],al                            ;9E60 0000
add [bx+si],al                            ;9E62 0000
add [bx+si],al                            ;9E64 0000
add [bx+si],al                            ;9E66 0000
add [bx+si],al                            ;9E68 0000
add [bx+si],al                            ;9E6A 0000
add [bx+si],al                            ;9E6C 0000
add [bx+si],al                            ;9E6E 0000
add [bx+si],al                            ;9E70 0000
add [bx+si],al                            ;9E72 0000
add [bx+si],al                            ;9E74 0000
add [bx+si],al                            ;9E76 0000
add [bx+si],al                            ;9E78 0000
add [bx+si],al                            ;9E7A 0000
add [bx+si],al                            ;9E7C 0000
add [bx+si],al                            ;9E7E 0000
add [bx+si],al                            ;9E80 0000
add [bx+si],al                            ;9E82 0000
add [bx+si],al                            ;9E84 0000
add [bx+si],al                            ;9E86 0000
add [bx+si],al                            ;9E88 0000
add [bx+si],al                            ;9E8A 0000
add [bx+si],al                            ;9E8C 0000
add [bx+si],al                            ;9E8E 0000
add [bx+si],al                            ;9E90 0000
add [bx+si],al                            ;9E92 0000
add [bx+si],al                            ;9E94 0000
add [bx+si],al                            ;9E96 0000
add [bx+si],al                            ;9E98 0000
add [bx+si],al                            ;9E9A 0000
add [bx+si],al                            ;9E9C 0000
add [bx+si],al                            ;9E9E 0000
add [bx+si],al                            ;9EA0 0000
add [bx+si],al                            ;9EA2 0000
add [bx+si],al                            ;9EA4 0000
add [bx+si],al                            ;9EA6 0000
add [bx+si],al                            ;9EA8 0000
add [bx+si],al                            ;9EAA 0000
add [bx+si],al                            ;9EAC 0000
add [bx+si],al                            ;9EAE 0000
add [bx+si],al                            ;9EB0 0000
add [bx+si],al                            ;9EB2 0000
add [bx+si],al                            ;9EB4 0000
add [bx+si],al                            ;9EB6 0000
add [bx+si],al                            ;9EB8 0000
add [bx+si],al                            ;9EBA 0000
add [bx+si],al                            ;9EBC 0000
add [bx+si],al                            ;9EBE 0000
add [bx+si],al                            ;9EC0 0000
add [bx+si],al                            ;9EC2 0000
add [bx+si],al                            ;9EC4 0000
add [bx+si],al                            ;9EC6 0000
add [bx+si],al                            ;9EC8 0000
add [bx+si],al                            ;9ECA 0000
add [bx+si],al                            ;9ECC 0000
add [bx+si],al                            ;9ECE 0000
add [bx+si],al                            ;9ED0 0000
add [bx+si],al                            ;9ED2 0000
add [bx+si],al                            ;9ED4 0000
add [bx+si],al                            ;9ED6 0000
add [bx+si],al                            ;9ED8 0000
add [bx+si],al                            ;9EDA 0000
add [bx+si],al                            ;9EDC 0000
add [bx+si],al                            ;9EDE 0000
add [bx+si],al                            ;9EE0 0000
add [bx+si],al                            ;9EE2 0000
add [bx+si],al                            ;9EE4 0000
add [bx+si],al                            ;9EE6 0000
add [bx+si],al                            ;9EE8 0000
add [bx+si],al                            ;9EEA 0000
add [bx+si],al                            ;9EEC 0000
add [bx+si],al                            ;9EEE 0000
add [bx+si],al                            ;9EF0 0000
add [bx+si],al                            ;9EF2 0000
add [bx+si],al                            ;9EF4 0000
add [bx+si],al                            ;9EF6 0000
add [bx+si],al                            ;9EF8 0000
add [bx+si],al                            ;9EFA 0000
add [bx+si],al                            ;9EFC 0000
add [bx+si],al                            ;9EFE 0000
add [bx+si],al                            ;9F00 0000
add [bx+si],al                            ;9F02 0000
add [bx+si],al                            ;9F04 0000
add [bx+si],al                            ;9F06 0000
add [bx+si],al                            ;9F08 0000
add [bx+si],al                            ;9F0A 0000
add [bx+si],al                            ;9F0C 0000
add [bx+si],al                            ;9F0E 0000
add [bx+si],al                            ;9F10 0000
add [bx+si],al                            ;9F12 0000
add [bx+si],al                            ;9F14 0000
add [bx+si],al                            ;9F16 0000
add [bx+si],al                            ;9F18 0000
add [bx+si],al                            ;9F1A 0000
add [bx+si],al                            ;9F1C 0000
add [bx+si],al                            ;9F1E 0000
add [bx+si],al                            ;9F20 0000
add [bx+si],al                            ;9F22 0000
add [bx+si],al                            ;9F24 0000
add [bx+si],al                            ;9F26 0000
add [bx+si],al                            ;9F28 0000
add [bx+si],al                            ;9F2A 0000
add [bx+si],al                            ;9F2C 0000
add [bx+si],al                            ;9F2E 0000
add [bx+si],al                            ;9F30 0000
add [bx+si],al                            ;9F32 0000
add [bx+si],al                            ;9F34 0000
add [bx+si],al                            ;9F36 0000
add [bx+si],al                            ;9F38 0000
add [bx+si],al                            ;9F3A 0000
add [bx+si],al                            ;9F3C 0000
add [bx+si],al                            ;9F3E 0000
add [bx+si],al                            ;9F40 0000
add [bx+si],al                            ;9F42 0000
add [bx+si],al                            ;9F44 0000
add [bx+si],al                            ;9F46 0000
add [bx+si],al                            ;9F48 0000
add [bx+si],al                            ;9F4A 0000
add [bx+si],al                            ;9F4C 0000
add [bx+si],al                            ;9F4E 0000
add [bx+si],al                            ;9F50 0000
add [bx+si],al                            ;9F52 0000
add [bx+si],al                            ;9F54 0000
add [bx+si],al                            ;9F56 0000
add [bx+si],al                            ;9F58 0000
add [bx+si],al                            ;9F5A 0000
add [bx+si],al                            ;9F5C 0000
add [bx+si],al                            ;9F5E 0000
add [bx+si],al                            ;9F60 0000
add [bx+si],al                            ;9F62 0000
add [bx+si],al                            ;9F64 0000
add [bx+si],al                            ;9F66 0000
add [bx+si],al                            ;9F68 0000
add [bx+si],al                            ;9F6A 0000
add [bx+si],al                            ;9F6C 0000
add [bx+si],al                            ;9F6E 0000
add [bx+si],al                            ;9F70 0000
add [bx+si],al                            ;9F72 0000
add [bx+si],al                            ;9F74 0000
add [bx+si],al                            ;9F76 0000
add [bx+si],al                            ;9F78 0000
add [bx+si],al                            ;9F7A 0000
add [bx+si],al                            ;9F7C 0000
add [bx+si],al                            ;9F7E 0000
add [bx+si],al                            ;9F80 0000
add [bx+si],al                            ;9F82 0000
add [bx+si],al                            ;9F84 0000
add [bx+si],al                            ;9F86 0000
add [bx+si],al                            ;9F88 0000
add [bx+si],al                            ;9F8A 0000
add [bx+si],al                            ;9F8C 0000
add [bx+si],al                            ;9F8E 0000
add [bx+si],al                            ;9F90 0000
add [bx+si],al                            ;9F92 0000
add [bx+si],al                            ;9F94 0000
add [bx+si],al                            ;9F96 0000
add [bx+si],al                            ;9F98 0000
add [bx+si],al                            ;9F9A 0000
add [bx+si],al                            ;9F9C 0000
add [bx+si],al                            ;9F9E 0000
add [bx+si],al                            ;9FA0 0000
add [bx+si],al                            ;9FA2 0000
add [bx+si],al                            ;9FA4 0000
add [bx+si],al                            ;9FA6 0000
add [bx+si],al                            ;9FA8 0000
add [bx+si],al                            ;9FAA 0000
add [bx+si],al                            ;9FAC 0000
add [bx+si],al                            ;9FAE 0000
add [bx+si],al                            ;9FB0 0000
add [bx+si],al                            ;9FB2 0000
add [bx+si],al                            ;9FB4 0000
add [bx+si],al                            ;9FB6 0000
add [bx+si],al                            ;9FB8 0000
add [bx+si],al                            ;9FBA 0000
add [bx+si],al                            ;9FBC 0000
add [bx+si],al                            ;9FBE 0000
add [bx+si],al                            ;9FC0 0000
add [bx+si],al                            ;9FC2 0000
add [bx+si],al                            ;9FC4 0000
add [bx+si],al                            ;9FC6 0000
add [bx+si],al                            ;9FC8 0000
add [bx+si],al                            ;9FCA 0000
add [bx+si],al                            ;9FCC 0000
add [bx+si],al                            ;9FCE 0000
add [bx+si],al                            ;9FD0 0000
add [bx+si],al                            ;9FD2 0000
add [bx+si],al                            ;9FD4 0000
add [bx+si],al                            ;9FD6 0000
add [bx+si],al                            ;9FD8 0000
add [bx+si],al                            ;9FDA 0000
add [bx+si],al                            ;9FDC 0000
add [bx+si],al                            ;9FDE 0000
add [bx+si],al                            ;9FE0 0000
add [bx+si],al                            ;9FE2 0000
add [bx+si],al                            ;9FE4 0000
add [bx+si],al                            ;9FE6 0000
add [bx+si],al                            ;9FE8 0000
add [bx+si],al                            ;9FEA 0000
add [bx+si],al                            ;9FEC 0000
add [bx+si],al                            ;9FEE 0000
add [bx+si],al                            ;9FF0 0000
add [bx+si],al                            ;9FF2 0000
add [bx+si],al                            ;9FF4 0000
add [bx+si],al                            ;9FF6 0000
add [bx+si],al                            ;9FF8 0000
add [bx+si],al                            ;9FFA 0000
add [bx+si],al                            ;9FFC 0000
add [bx+si],al                            ;9FFE 0000
add [bx+si],al                            ;A000 0000
add [bx+si],al                            ;A002 0000
add [bx+si],al                            ;A004 0000
add [bx+si],al                            ;A006 0000
add [bx+si],al                            ;A008 0000
add [bx+si],al                            ;A00A 0000
add [bx+si],al                            ;A00C 0000
add [bx+si],al                            ;A00E 0000
add [bx+si],al                            ;A010 0000
add [bx+si],al                            ;A012 0000
add [bx+si],al                            ;A014 0000
add [bx+si],al                            ;A016 0000
add [bx+si],al                            ;A018 0000
add [bx+si],al                            ;A01A 0000
add [bx+si],al                            ;A01C 0000
add [bx+si],al                            ;A01E 0000
add [bx+si],al                            ;A020 0000
add [bx+si],al                            ;A022 0000
add [bx+si],al                            ;A024 0000
add [bx+si],al                            ;A026 0000
add [bx+si],al                            ;A028 0000
add [bx+si],al                            ;A02A 0000
add [bx+si],al                            ;A02C 0000
add [bx+si],al                            ;A02E 0000
add [bx+si],al                            ;A030 0000
add [bx+si],al                            ;A032 0000
add [bx+si],al                            ;A034 0000
add [bx+si],al                            ;A036 0000
add [bx+si],al                            ;A038 0000
add [bx+si],al                            ;A03A 0000
add [bx+si],al                            ;A03C 0000
add [bx+si],al                            ;A03E 0000
add [bx+si],al                            ;A040 0000
add [bx+si],al                            ;A042 0000
add [bx+si],al                            ;A044 0000
add [bx+si],al                            ;A046 0000
add [bx+si],al                            ;A048 0000
add [bx+si],al                            ;A04A 0000
add [bx+si],al                            ;A04C 0000
add [bx+si],al                            ;A04E 0000
add [bx+si],al                            ;A050 0000
add [bx+si],al                            ;A052 0000
add [bx+si],al                            ;A054 0000
add [bx+si],al                            ;A056 0000
add [bx+si],al                            ;A058 0000
add [bx+si],al                            ;A05A 0000
add [bx+si],al                            ;A05C 0000
add [bx+si],al                            ;A05E 0000
add [bx+si],al                            ;A060 0000
add [bx+si],al                            ;A062 0000
add [bx+si],al                            ;A064 0000
add [bx+si],al                            ;A066 0000
add [bx+si],al                            ;A068 0000
add [bx+si],al                            ;A06A 0000
add [bx+si],al                            ;A06C 0000
add [bx+si],al                            ;A06E 0000
add [bx+si],al                            ;A070 0000
add [bx+si],al                            ;A072 0000
add [bx+si],al                            ;A074 0000
add [bx+si],al                            ;A076 0000
add [bx+si],al                            ;A078 0000
add [bx+si],al                            ;A07A 0000
add [bx+si],al                            ;A07C 0000
add [bx+si],al                            ;A07E 0000
add [bx+si],al                            ;A080 0000
add [bx+si],al                            ;A082 0000
add [bx+si],al                            ;A084 0000
add [bx+si],al                            ;A086 0000
add [bx+si],al                            ;A088 0000
add [bx+si],al                            ;A08A 0000
add [bx+si],al                            ;A08C 0000
add [bx+si],al                            ;A08E 0000
add [bx+si],al                            ;A090 0000
add [bx+si],al                            ;A092 0000
add [bx+si],al                            ;A094 0000
add [bx+si],al                            ;A096 0000
add [bx+si],al                            ;A098 0000
add [bx+si],al                            ;A09A 0000
add [bx+si],al                            ;A09C 0000
add [bx+si],al                            ;A09E 0000
add [bx+si],al                            ;A0A0 0000
add [bx+si],al                            ;A0A2 0000
add [bx+si],al                            ;A0A4 0000
add [bx+si],al                            ;A0A6 0000
add [bx+si],al                            ;A0A8 0000
add [bx+si],al                            ;A0AA 0000
add [bx+si],al                            ;A0AC 0000
add [bx+si],al                            ;A0AE 0000
add [bx+si],al                            ;A0B0 0000
add [bx+si],al                            ;A0B2 0000
add [bx+si],al                            ;A0B4 0000
add [bx+si],al                            ;A0B6 0000
add [bx+si],al                            ;A0B8 0000
add [bx+si],al                            ;A0BA 0000
add [bx+si],al                            ;A0BC 0000
add [bx+si],al                            ;A0BE 0000
add [bx+si],al                            ;A0C0 0000
add [bx+si],al                            ;A0C2 0000
add [bx+si],al                            ;A0C4 0000
add [bx+si],al                            ;A0C6 0000
add [bx+si],al                            ;A0C8 0000
add [bx+si],al                            ;A0CA 0000
add [bx+si],al                            ;A0CC 0000
add [bx+si],al                            ;A0CE 0000
add [bx+si],al                            ;A0D0 0000
add [bx+si],al                            ;A0D2 0000
add [bx+si],al                            ;A0D4 0000
add [bx+si],al                            ;A0D6 0000
add [bx+si],al                            ;A0D8 0000
add [bx+si],al                            ;A0DA 0000
add [bx+si],al                            ;A0DC 0000
add [bx+si],al                            ;A0DE 0000
add [bx+si],al                            ;A0E0 0000
add [bx+si],al                            ;A0E2 0000
add [bx+si],al                            ;A0E4 0000
add [bx+si],al                            ;A0E6 0000
add [bx+si],al                            ;A0E8 0000
add [bx+si],al                            ;A0EA 0000
add [bx+si],al                            ;A0EC 0000
add [bx+si],al                            ;A0EE 0000
add [bx+si],al                            ;A0F0 0000
add [bx+si],al                            ;A0F2 0000
add [bx+si],al                            ;A0F4 0000
add [bx+si],al                            ;A0F6 0000
add [bx+si],al                            ;A0F8 0000
add [bx+si],al                            ;A0FA 0000
add [bx+si],al                            ;A0FC 0000
add [bx+si],al                            ;A0FE 0000
add [bx+si],al                            ;A100 0000
add [bx+si],al                            ;A102 0000
add [bx+si],al                            ;A104 0000
add [bx+si],al                            ;A106 0000
add [bx+si],al                            ;A108 0000
add [bx+si],al                            ;A10A 0000
add [bx+si],al                            ;A10C 0000
add [bx+si],al                            ;A10E 0000
add [bx+si],al                            ;A110 0000
add [bx+si],al                            ;A112 0000
add [bx+si],al                            ;A114 0000
add [bx+si],al                            ;A116 0000
add [bx+si],al                            ;A118 0000
add [bx+si],al                            ;A11A 0000
add [bx+si],al                            ;A11C 0000
add [bx+si],al                            ;A11E 0000
add [bx+si],al                            ;A120 0000
add [bx+si],al                            ;A122 0000
add [bx+si],al                            ;A124 0000
add [bx+si],al                            ;A126 0000
add [bx+si],al                            ;A128 0000
add [bx+si],al                            ;A12A 0000
add [bx+si],al                            ;A12C 0000
add [bx+si],al                            ;A12E 0000
add [bx+si],al                            ;A130 0000
add [bx+si],al                            ;A132 0000
add [bx+si],al                            ;A134 0000
add [bx+si],al                            ;A136 0000
add [bx+si],al                            ;A138 0000
add [bx+si],al                            ;A13A 0000
add [bx+si],al                            ;A13C 0000
add [bx+si],al                            ;A13E 0000
add [bx+si],al                            ;A140 0000
add [bx+si],al                            ;A142 0000
add [bx+si],al                            ;A144 0000
add [bx+si],al                            ;A146 0000
add [bx+si],al                            ;A148 0000
add [bx+si],al                            ;A14A 0000
add [bx+si],al                            ;A14C 0000
add [bx+si],al                            ;A14E 0000
add [bx+si],al                            ;A150 0000
add [bx+si],al                            ;A152 0000
add [bx+si],al                            ;A154 0000
add [bx+si],al                            ;A156 0000
add [bx+si],al                            ;A158 0000
add [bx+si],al                            ;A15A 0000
add [bx+si],al                            ;A15C 0000
add [bx+si],al                            ;A15E 0000
add [bx+si],al                            ;A160 0000
add [bx+si],al                            ;A162 0000
add [bx+si],al                            ;A164 0000
add [bx+si],al                            ;A166 0000
add [bx+si],al                            ;A168 0000
add [bx+si],al                            ;A16A 0000
add [bx+si],al                            ;A16C 0000
add [bx+si],al                            ;A16E 0000
add [bx+si],al                            ;A170 0000
add [bx+si],al                            ;A172 0000
add [bx+si],al                            ;A174 0000
add [bx+si],al                            ;A176 0000
add [bx+si],al                            ;A178 0000
add [bx+si],al                            ;A17A 0000
add [bx+si],al                            ;A17C 0000
add [bx+si],al                            ;A17E 0000
add [bx+si],al                            ;A180 0000
add [bx+si],al                            ;A182 0000
add [bx+si],al                            ;A184 0000
add [bx+si],al                            ;A186 0000
add [bx+si],al                            ;A188 0000
add [bx+si],al                            ;A18A 0000
add [bx+si],al                            ;A18C 0000
add [bx+si],al                            ;A18E 0000
add [bx+si],al                            ;A190 0000
add [bx+si],al                            ;A192 0000
add [bx+si],al                            ;A194 0000
add [bx+si],al                            ;A196 0000
add [bx+si],al                            ;A198 0000
add [bx+si],al                            ;A19A 0000
add [bx+si],al                            ;A19C 0000
add [bx+si],al                            ;A19E 0000
add [bx+si],al                            ;A1A0 0000
add [bx+si],al                            ;A1A2 0000
add [bx+si],al                            ;A1A4 0000
add [bx+si],al                            ;A1A6 0000
add [bx+si],al                            ;A1A8 0000
add [bx+si],al                            ;A1AA 0000
add [bx+si],al                            ;A1AC 0000
add [bx+si],al                            ;A1AE 0000
add [bx+si],al                            ;A1B0 0000
add [bx+si],al                            ;A1B2 0000
add [bx+si],al                            ;A1B4 0000
add [bx+si],al                            ;A1B6 0000
add [bx+si],al                            ;A1B8 0000
add [bx+si],al                            ;A1BA 0000
add [bx+si],al                            ;A1BC 0000
add [bx+si],al                            ;A1BE 0000
add [bx+si],al                            ;A1C0 0000
add [bx+si],al                            ;A1C2 0000
add [bx+si],al                            ;A1C4 0000
add [bx+si],al                            ;A1C6 0000
add [bx+si],al                            ;A1C8 0000
add [bx+si],al                            ;A1CA 0000
add [bx+si],al                            ;A1CC 0000
add [bx+si],al                            ;A1CE 0000
add [bx+si],al                            ;A1D0 0000
add [bx+si],al                            ;A1D2 0000
add [bx+si],al                            ;A1D4 0000
add [bx+si],al                            ;A1D6 0000
add [bx+si],al                            ;A1D8 0000
add [bx+si],al                            ;A1DA 0000
add [bx+si],al                            ;A1DC 0000
add [bx+si],al                            ;A1DE 0000
add [bx+si],al                            ;A1E0 0000
add [bx+si],al                            ;A1E2 0000
add [bx+si],al                            ;A1E4 0000
add [bx+si],al                            ;A1E6 0000
add [bx+si],al                            ;A1E8 0000
add [bx+si],al                            ;A1EA 0000
add [bx+si],al                            ;A1EC 0000
add [bx+si],al                            ;A1EE 0000
add [bx+si],al                            ;A1F0 0000
add [bx+si],al                            ;A1F2 0000
add [bx+si],al                            ;A1F4 0000
add [bx+si],al                            ;A1F6 0000
add [bx+si],al                            ;A1F8 0000
add [bx+si],al                            ;A1FA 0000
add [bx+si],al                            ;A1FC 0000
add [bx+si],al                            ;A1FE 0000
dec cx                                    ;A200 49
dec di                                    ;A201 4F
and [bx+si],ah                            ;A202 2020
and [bx+si],ah                            ;A204 2020
and [bx+si],ah                            ;A206 2020
push bx                                   ;A208 53
pop cx                                    ;A209 59
push bx                                   ;A20A 53
and [bx+si],al                            ;A20B 2000
sub si,sp                                 ;A20D 29E6
bound sp,[di]                             ;A20F 6225
cs and ax,0x2e                            ;A211 2E252E00
add [bx+si],ch                            ;A215 0028
push bx                                   ;A217 53
cbw                                       ;A218 98
adc ax,0x2                                ;A219 150200
push bp                                   ;A21C 55
push di                                   ;A21D 57
add [bx+si],al                            ;A21E 0000
dec bp                                    ;A220 4D
push bx                                   ;A221 53
inc sp                                    ;A222 44
dec di                                    ;A223 4F
push bx                                   ;A224 53
and [bx+si],ah                            ;A225 2020
and [bp+di+0x59],dl                       ;A227 205359
push bx                                   ;A22A 53
and [bx+si],al                            ;A22B 2000
outsb                                     ;A22D 6E
jmp 0xc793                                ;A22E E96225
cs and ax,0x2e                            ;A231 2E252E00
add [bx+di],al                            ;A235 0001
add al,bh                                 ;A237 00F8
push cs                                   ;A239 0E
add [cs:bx+si+0x75],dh                    ;A23A 2E00B07500
add [bx+di+0x42],al                       ;A23F 004142
inc bx                                    ;A242 43
and [bx+si],ah                            ;A243 2020
and [bx+si],ah                            ;A245 2020
and [si+0x58],dl                          ;A247 205458
push sp                                   ;A24A 54
and [bx+si],al                            ;A24B 2000
add al,[si]                               ;A24D 0204
arpl [di],sp                              ;A24F 6325
cs and ax,0x2e                            ;A251 2E252E00
add [bp+di+0x2d],bl                       ;A255 005B2D
outsw                                     ;A258 6F
or bp,[bx+di+0x0]                         ;A259 0B6900
sub al,[bx+si]                            ;A25C 2A00
add [bx+si],al                            ;A25E 0000
inc cx                                    ;A260 41
push bp                                   ;A261 55
push sp                                   ;A262 54
dec di                                    ;A263 4F
inc bp                                    ;A264 45
pop ax                                    ;A265 58
inc bp                                    ;A266 45
inc bx                                    ;A267 43
inc dx                                    ;A268 42
inc cx                                    ;A269 41
push sp                                   ;A26A 54
and [bx+si],al                            ;A26B 2000
add ax,0x6305                             ;A26D 050563
and ax,0x252e                             ;A270 252E25
add [cs:bx+si],al                         ;A273 2E0000
cmpsb                                     ;A276 A6
jnz 0xa29d                                ;A277 7524
cs push word 0x0                          ;A279 2E6A00
push cs                                   ;A27C 0E
add [bx+si],al                            ;A27D 0000
add [bp+di+0x41],al                       ;A27F 004341
dec sp                                    ;A282 4C
inc bx                                    ;A283 43
and [bx+si],ah                            ;A284 2020
and [bx+si],ah                            ;A286 2020
inc bp                                    ;A288 45
pop ax                                    ;A289 58
inc bp                                    ;A28A 45
and [bx+si],al                            ;A28B 2000
push si                                   ;A28D 56
add ax,0x2563                             ;A28E 056325
cs and ax,0x2e                            ;A291 2E252E00
add [si+0x2d],bl                          ;A295 005C2D
outsw                                     ;A298 6F
or bp,[bp+di+0x0]                         ;A299 0B6B00
mov al,[0x61]                             ;A29C A06100
add [bp+di+0x41],al                       ;A29F 004341
dec sp                                    ;A2A2 4C
inc bp                                    ;A2A3 45
dec si                                    ;A2A4 4E
inc sp                                    ;A2A5 44
inc cx                                    ;A2A6 41
push dx                                   ;A2A7 52
inc bp                                    ;A2A8 45
pop ax                                    ;A2A9 58
inc bp                                    ;A2AA 45
and [bx+si],al                            ;A2AB 2000
cmp ax,0x6306                             ;A2AD 3D0663
and ax,0x252e                             ;A2B0 252E25
add [cs:bx+si],al                         ;A2B3 2E0000
pop sp                                    ;A2B6 5C
sub ax,0xb6f                              ;A2B7 2D6F0B
pushf                                     ;A2BA 9C
add al,dh                                 ;A2BB 00F0
xchg ax,cx                                ;A2BD 91
add [bx+si],al                            ;A2BE 0000
inc bx                                    ;A2C0 43
inc cx                                    ;A2C1 41
push dx                                   ;A2C2 52
inc sp                                    ;A2C3 44
inc si                                    ;A2C4 46
dec cx                                    ;A2C5 49
dec sp                                    ;A2C6 4C
inc bp                                    ;A2C7 45
inc bp                                    ;A2C8 45
pop ax                                    ;A2C9 58
inc bp                                    ;A2CA 45
and [bx+si],al                            ;A2CB 2000
push cx                                   ;A2CD 51
pop es                                    ;A2CE 07
arpl [di],sp                              ;A2CF 6325
cs and ax,0x2e                            ;A2D1 2E252E00
add [si+0x2d],bl                          ;A2D5 005C2D
outsw                                     ;A2D8 6F
or sp,bp                                  ;A2D9 0BE5
add [bx+si+0x8e],dh                       ;A2DB 00B08E00
add [bp+di+0x4c],al                       ;A2DF 00434C
dec cx                                    ;A2E2 49
push ax                                   ;A2E3 50
inc dx                                    ;A2E4 42
push dx                                   ;A2E5 52
inc sp                                    ;A2E6 44
and [di+0x58],al                          ;A2E7 204558
inc bp                                    ;A2EA 45
and [bx+si],al                            ;A2EB 2000
arpl [bx+si],cx                           ;A2ED 6308
arpl [di],sp                              ;A2EF 6325
cs and ax,0x2e                            ;A2F1 2E252E00
add [si+0x2d],bl                          ;A2F5 005C2D
outsw                                     ;A2F8 6F
or bp,[di]                                ;A2F9 0B2D
add ax,sp                                 ;A2FB 01E0
and ax,0x0                                ;A2FD 250000
inc bx                                    ;A300 43
dec sp                                    ;A301 4C
dec di                                    ;A302 4F
inc bx                                    ;A303 43
dec bx                                    ;A304 4B
and [bx+si],ah                            ;A305 2020
and [di+0x58],al                          ;A307 204558
inc bp                                    ;A30A 45
and [bx+si],al                            ;A30B 2000
add [bx+di],cl                            ;A30D 0009
arpl [di],sp                              ;A30F 6325
cs and ax,0x2e                            ;A311 2E252E00
add [si+0x2d],bl                          ;A315 005C2D
outsw                                     ;A318 6F
or ax,[bx+si+0x1]                         ;A319 0B4001
lock                                      ;A31C F0
push ds                                   ;A31D 1E
add [bx+si],al                            ;A31E 0000
inc bx                                    ;A320 43
dec di                                    ;A321 4F
dec bp                                    ;A322 4D
dec bp                                    ;A323 4D
inc cx                                    ;A324 41
dec si                                    ;A325 4E
inc sp                                    ;A326 44
and [bp+di+0x4f],al                       ;A327 20434F
dec bp                                    ;A32A 4D
and [bx+si],al                            ;A32B 2000
jnz 0xa338                                ;A32D 7509
arpl [di],sp                              ;A32F 6325
cs and ax,0x2e                            ;A331 2E252E00
add [bp+di-0x688c],bh                     ;A335 00BB7497
adc ax,0x150                              ;A339 155001
mov sp,0x62                               ;A33C BC6200
add [bp+di+0x4f],al                       ;A33F 00434F
dec si                                    ;A342 4E
push sp                                   ;A343 54
push dx                                   ;A344 52
dec di                                    ;A345 4F
dec sp                                    ;A346 4C
and [di+0x58],al                          ;A347 204558
inc bp                                    ;A34A 45
and [bx+si],al                            ;A34B 2000
dec ax                                    ;A34D 48
or ah,[bp+di+0x25]                        ;A34E 0A6325
cs and ax,0x2e                            ;A351 2E252E00
add [si+0x2d],bl                          ;A355 005C2D
outsw                                     ;A358 6F
or ax,[bp+si+0x7001]                      ;A359 0B820170
rol byte [bx+si],0x0                      ;A35D D000
add [bp+di+0x4f],al                       ;A35F 00434F
push bp                                   ;A362 55
push dx                                   ;A363 52
inc cx                                    ;A364 41
and [bx+si],ah                            ;A365 2020
and [bp+0x4f],al                          ;A367 20464F
dec si                                    ;A36A 4E
and [bx+si],al                            ;A36B 2000
xchg ax,bx                                ;A36D 93
or sp,[bp+di+0x25]                        ;A36E 0B6325
cs and ax,0x2e                            ;A371 2E252E00
add [si+0x2d],dl                          ;A375 00542D
outsw                                     ;A378 6F
or bp,bx                                  ;A379 0BEB
add [bx+si],dx                            ;A37B 0110
and al,[bx+si]                            ;A37D 2200
add [bp+di+0x4f],al                       ;A37F 00434F
push bp                                   ;A382 55
push dx                                   ;A383 52
inc dx                                    ;A384 42
and [bx+si],ah                            ;A385 2020
and [bp+0x4f],al                          ;A387 20464F
dec si                                    ;A38A 4E
and [bx+si],al                            ;A38B 2000
inc dx                                    ;A38D 42
or al,0x63                                ;A38E 0C63
and ax,0x252e                             ;A390 252E25
add [cs:bx+si],al                         ;A393 2E0000
push bp                                   ;A396 55
sub ax,0xb6f                              ;A397 2D6F0B
std                                       ;A39A FD
add [bx+si],dx                            ;A39B 0110
xor [bx+si],al                            ;A39D 3000
add [si+0x4f],al                          ;A39F 00444F
push sp                                   ;A3A2 54
dec ax                                    ;A3A3 48
dec cx                                    ;A3A4 49
push bx                                   ;A3A5 53
and [bx+si],ah                            ;A3A6 2020
push sp                                   ;A3A8 54
pop ax                                    ;A3A9 58
push sp                                   ;A3AA 54
and [bx+si],al                            ;A3AB 2000
ret word 0x630c                           ;A3AD C20C63
and ax,0x252e                             ;A3B0 252E25
add [cs:bx+si],al                         ;A3B3 2E0000
pop sp                                    ;A3B6 5C
sub ax,0xb6f                              ;A3B7 2D6F0B
push ss                                   ;A3BA 16
add ch,ch                                 ;A3BB 02ED
add [bx+si],ax                            ;A3BD 0100
add [bx+si+0x45],cl                       ;A3BF 004845
dec sp                                    ;A3C2 4C
push si                                   ;A3C3 56
inc cx                                    ;A3C4 41
and [bx+si],ah                            ;A3C5 2020
and [bp+0x4f],al                          ;A3C7 20464F
dec si                                    ;A3CA 4E
and [bx+si],al                            ;A3CB 2000
dec bx                                    ;A3CD 4B
or ax,0x2563                              ;A3CE 0D6325
cs and ax,0x2e                            ;A3D1 2E252E00
add [di+0x2d],dl                          ;A3D5 00552D
outsw                                     ;A3D8 6F
or dx,[bx]                                ;A3D9 0B17
add ah,[bx+si+0x1f]                       ;A3DB 02601F
add [bx+si],al                            ;A3DE 0000
dec ax                                    ;A3E0 48
inc bp                                    ;A3E1 45
dec sp                                    ;A3E2 4C
push si                                   ;A3E3 56
inc dx                                    ;A3E4 42
and [bx+si],ah                            ;A3E5 2020
and [bp+0x4f],al                          ;A3E7 20464F
dec si                                    ;A3EA 4E
and [bx+si],al                            ;A3EB 2000
or al,0xe                                 ;A3ED 0C0E
arpl [di],sp                              ;A3EF 6325
cs and ax,0x2e                            ;A3F1 2E252E00
add [di+0x2d],dl                          ;A3F5 00552D
outsw                                     ;A3F8 6F
or sp,[bx]                                ;A3F9 0B27
add dh,al                                 ;A3FB 02F0
sub [bx+si],al                            ;A3FD 2800
add [bx+si+0x49],cl                       ;A3FF 004849
inc si                                    ;A402 46
dec di                                    ;A403 4F
dec si                                    ;A404 4E
push sp                                   ;A405 54
push bx                                   ;A406 53
and [bp+0x4f],al                          ;A407 20464F
dec si                                    ;A40A 4E
and [bx+si],al                            ;A40B 2000
jnc 0xa41d                                ;A40D 730E
arpl [di],sp                              ;A40F 6325
cs and ax,0x2e                            ;A411 2E252E00
add [bx+si+0x2d],al                       ;A415 00402D
outsw                                     ;A418 6F
or di,[si]                                ;A419 0B3C
add dh,[bx+si]                            ;A41B 0230
sbb ax,0x0                                ;A41D 1D0000
dec ax                                    ;A420 48
push ax                                   ;A421 50
dec sp                                    ;A422 4C
inc cx                                    ;A423 41
push bx                                   ;A424 53
inc bp                                    ;A425 45
push dx                                   ;A426 52
and [si+0x52],al                          ;A427 204452
push si                                   ;A42A 56
and [bx+si],al                            ;A42B 2000
xor cx,[bx]                               ;A42D 330F
arpl [di],sp                              ;A42F 6325
cs and ax,0x2e                            ;A431 2E252E00
add [di+0x2d],dl                          ;A435 00552D
outsw                                     ;A438 6F
or cx,[bp+di+0x2]                         ;A439 0B4B02
lock                                      ;A43C F0
cmp al,0x0                                ;A43D 3C00
add [si+0x4f],cl                          ;A43F 004C4F
inc si                                    ;A442 46
dec di                                    ;A443 4F
dec si                                    ;A444 4E
push sp                                   ;A445 54
push bx                                   ;A446 53
and [bp+0x4f],al                          ;A447 20464F
dec si                                    ;A44A 4E
and [bx+si],al                            ;A44B 2000
add ax,0x6310                             ;A44D 051063
and ax,0x252e                             ;A450 252E25
add [cs:bx+si],al                         ;A453 2E0000
inc cx                                    ;A456 41
sub ax,0xb6f                              ;A457 2D6F0B
push word 0x2                             ;A45A 6A02
mov al,0x15                               ;A45C B015
add [bx+si],al                            ;A45E 0000
dec bp                                    ;A460 4D
dec di                                    ;A461 4F
inc sp                                    ;A462 44
inc bp                                    ;A463 45
push dx                                   ;A464 52
dec si                                    ;A465 4E
and [bx+si],ah                            ;A466 2020
inc si                                    ;A468 46
dec di                                    ;A469 4F
dec si                                    ;A46A 4E
and [bx+si],al                            ;A46B 2000
jz 0xa47f                                 ;A46D 7410
arpl [di],sp                              ;A46F 6325
cs and ax,0x2e                            ;A471 2E252E00
add [bp+0x2d],dl                          ;A475 00562D
outsw                                     ;A478 6F
or si,[di+0x2]                            ;A479 0B7502
shl byte [di],0x0                         ;A47C D025
add [bx+si],al                            ;A47E 0000
in ax,byte 0x44                           ;A480 E544
dec di                                    ;A482 4F
inc bx                                    ;A483 43
xor si,[si]                               ;A484 3334
xor [bp+di+0x54],ax                       ;A486 314354
dec bp                                    ;A489 4D
push ax                                   ;A48A 50
and [bx+si],al                            ;A48B 2000
add [bx+si],al                            ;A48D 0000
add [bx+si],al                            ;A48F 0000
add [bx+si],al                            ;A491 0000
add [bx+si],al                            ;A493 0000
add [bp+si],bl                            ;A495 001A
add [bx+0x5c],cl                          ;A497 008F5C00
add [bx+si],al                            ;A49B 0000
add [bx+si],al                            ;A49D 0000
add [di+0x53],cl                          ;A49F 004D53
inc sp                                    ;A4A2 44
dec di                                    ;A4A3 4F
push bx                                   ;A4A4 53
inc sp                                    ;A4A5 44
and [bx+si],ah                            ;A4A6 2020
inc bp                                    ;A4A8 45
pop ax                                    ;A4A9 58
inc bp                                    ;A4AA 45
and [bx+si],al                            ;A4AB 2000
mov dl,[bx+di]                            ;A4AD 8A11
arpl [di],sp                              ;A4AF 6325
cs and ax,0x2e                            ;A4B1 2E252E00
add [bx+0x2d],cl                          ;A4B5 004F2D
outsw                                     ;A4B8 6F
or cx,[bx+di+0x2e02]                      ;A4B9 0B89022E
pop ss                                    ;A4BD 17
add [bx+si],al                            ;A4BE 0000
dec si                                    ;A4C0 4E
dec di                                    ;A4C1 4F
push sp                                   ;A4C2 54
inc bp                                    ;A4C3 45
push ax                                   ;A4C4 50
inc cx                                    ;A4C5 41
inc sp                                    ;A4C6 44
and [di+0x58],al                          ;A4C7 204558
inc bp                                    ;A4CA 45
and [bx+si],al                            ;A4CB 2000
inc di                                    ;A4CD 47
adc ah,[bp+di+0x25]                       ;A4CE 126325
cs and ax,0x2e                            ;A4D1 2E252E00
add [si+0x2d],bl                          ;A4D5 005C2D
outsw                                     ;A4D8 6F
or dx,[di+0x7002]                         ;A4D9 0B950270
dec ax                                    ;A4DD 48
add [bx+si],al                            ;A4DE 0000
push ax                                   ;A4E0 50
inc cx                                    ;A4E1 41
dec cx                                    ;A4E2 49
dec si                                    ;A4E3 4E
push sp                                   ;A4E4 54
and [bx+si],ah                            ;A4E5 2020
and [di+0x58],al                          ;A4E7 204558
inc bp                                    ;A4EA 45
and [bx+si],al                            ;A4EB 2000
xor dx,[bp+di]                            ;A4ED 3313
arpl [di],sp                              ;A4EF 6325
cs and ax,0x2e                            ;A4F1 2E252E00
add [si+0x2d],bl                          ;A4F5 005C2D
outsw                                     ;A4F8 6F
or di,[bp+si-0xffe]                       ;A4F9 0BBA02F0
pop bp                                    ;A4FD 5D
add [bx+si],ax                            ;A4FE 0100
push ax                                   ;A500 50
push dx                                   ;A501 52
inc cx                                    ;A502 41
inc bx                                    ;A503 43
push sp                                   ;A504 54
dec cx                                    ;A505 49
inc bx                                    ;A506 43
inc bp                                    ;A507 45
inc sp                                    ;A508 44
dec di                                    ;A509 4F
inc bx                                    ;A50A 43
and [bx+si],al                            ;A50B 2000
push bx                                   ;A50D 53
adc ax,0x2563                             ;A50E 156325
cs and ax,0x2e                            ;A511 2E252E00
add [di+0x6f2d],al                        ;A515 00852D6F
or bp,[bx+di+0x3]                         ;A519 0B6903
or byte [bp+di],0x0                       ;A51C 800B00
add [bp+si+0x45],dl                       ;A51F 005245
inc cx                                    ;A522 41
inc sp                                    ;A523 44
dec bp                                    ;A524 4D
inc bp                                    ;A525 45
and [bx+si],ah                            ;A526 2020
inc sp                                    ;A528 44
dec di                                    ;A529 4F
inc bx                                    ;A52A 43
and [bx+si],al                            ;A52B 2000
or [0x2563],dx                            ;A52D 09166325
cs and ax,0x2e                            ;A531 2E252E00
add [di+0x6f2d],al                        ;A535 00852D6F
or bp,[bx+0x3]                            ;A539 0B6F03
push word 0xb                             ;A53C 6A0B
add [bx+si],al                            ;A53E 0000
push dx                                   ;A540 52
inc bp                                    ;A541 45
push si                                   ;A542 56
inc bp                                    ;A543 45
push dx                                   ;A544 52
push bx                                   ;A545 53
dec cx                                    ;A546 49
and [di+0x58],al                          ;A547 204558
inc bp                                    ;A54A 45
and [bx+si],al                            ;A54B 2000
mov [0x2563],dl                           ;A54D 88166325
cs and ax,0x2e                            ;A551 2E252E00
add [si+0x2d],bl                          ;A555 005C2D
outsw                                     ;A558 6F
or si,[di+0x3]                            ;A559 0B7503
loopne 0xa597                             ;A55C E039
add [bx+si],al                            ;A55E 0000
push dx                                   ;A560 52
dec di                                    ;A561 4F
dec bp                                    ;A562 4D
inc cx                                    ;A563 41
dec si                                    ;A564 4E
and [bx+si],ah                            ;A565 2020
and [bp+0x4f],al                          ;A567 20464F
dec si                                    ;A56A 4E
and [bx+si],al                            ;A56B 2000
push di                                   ;A56D 57
pop ss                                    ;A56E 17
arpl [di],sp                              ;A56F 6325
cs and ax,0x2e                            ;A571 2E252E00
add [bp+0x2d],dl                          ;A575 00562D
outsw                                     ;A578 6F
or dx,[bp+si-0x7ffd]                      ;A579 0B920380
push word 0x0                             ;A57D 6A00
add [bp+di+0x43],dl                       ;A57F 005343
push dx                                   ;A582 52
dec cx                                    ;A583 49
push ax                                   ;A584 50
push sp                                   ;A585 54
and [bx+si],ah                            ;A586 2020
inc si                                    ;A588 46
dec di                                    ;A589 4F
dec si                                    ;A58A 4E
and [bx+si],al                            ;A58B 2000
push si                                   ;A58D 56
sbb [bp+di+0x25],ah                       ;A58E 186325
cs and ax,0x2e                            ;A591 2E252E00
add [bp+0x2d],dl                          ;A595 00562D
outsw                                     ;A598 6F
or cx,ax                                  ;A599 0BC8
add si,[bx+si+0x16]                       ;A59B 037016
add [bx+si],al                            ;A59E 0000
push bx                                   ;A5A0 53
push ax                                   ;A5A1 50
dec di                                    ;A5A2 4F
dec di                                    ;A5A3 4F
dec sp                                    ;A5A4 4C
inc bp                                    ;A5A5 45
push dx                                   ;A5A6 52
and [di+0x58],al                          ;A5A7 204558
inc bp                                    ;A5AA 45
and [bx+si],al                            ;A5AB 2000
sub [bx+di],bl                            ;A5AD 2819
arpl [di],sp                              ;A5AF 6325
cs and ax,0x2e                            ;A5B1 2E252E00
add [bx+si+0x2d],dl                       ;A5B5 00502D
outsw                                     ;A5B8 6F
or dx,sp                                  ;A5B9 0BD4
add sp,[bx+si+0x33]                       ;A5BB 03A03300
add [si+0x45],dl                          ;A5BF 005445
push dx                                   ;A5C2 52
dec bp                                    ;A5C3 4D
dec cx                                    ;A5C4 49
dec si                                    ;A5C5 4E
inc cx                                    ;A5C6 41
dec sp                                    ;A5C7 4C
inc bp                                    ;A5C8 45
pop ax                                    ;A5C9 58
inc bp                                    ;A5CA 45
and [bx+si],al                            ;A5CB 2000
mov sp,0x6319                             ;A5CD BC1963
and ax,0x252e                             ;A5D0 252E25
add [cs:bx+si],al                         ;A5D3 2E0000
pop bp                                    ;A5D6 5D
sub ax,0xb6f                              ;A5D7 2D6F0B
out dx,al                                 ;A5DA EE
add ax,ax                                 ;A5DB 03C0
stosw                                     ;A5DD AB
add [bx+si],al                            ;A5DE 0000
push sp                                   ;A5E0 54
dec bp                                    ;A5E1 4D
push bx                                   ;A5E2 53
push dx                                   ;A5E3 52
inc cx                                    ;A5E4 41
and [bx+si],ah                            ;A5E5 2020
and [bp+0x4f],al                          ;A5E7 20464F
dec si                                    ;A5EA 4E
and [bx+si],al                            ;A5EB 2000
push dx                                   ;A5ED 52
sbb sp,[bp+di+0x25]                       ;A5EE 1B6325
cs and ax,0x2e                            ;A5F1 2E252E00
add [bx+0x2d],dl                          ;A5F5 00572D
outsw                                     ;A5F8 6F
or ax,[si+0x4]                            ;A5F9 0B4404
adc [bx+si],ah                            ;A5FC 1020
add [bx+si],al                            ;A5FE 0000
push sp                                   ;A600 54
dec bp                                    ;A601 4D
push bx                                   ;A602 53
push dx                                   ;A603 52
inc dx                                    ;A604 42
and [bx+si],ah                            ;A605 2020
and [bp+0x4f],al                          ;A607 20464F
dec si                                    ;A60A 4E
and [bx+si],al                            ;A60B 2000
adc ax,0x631c                             ;A60D 151C63
and ax,0x252e                             ;A610 252E25
add [cs:bx+si],al                         ;A613 2E0000
push di                                   ;A616 57
sub ax,0xb6f                              ;A617 2D6F0B
push bp                                   ;A61A 55
add al,0x20                               ;A61B 0420
sub al,[bx+si]                            ;A61D 2A00
add [bx+0x49],dl                          ;A61F 005749
dec si                                    ;A622 4E
and [bx+si],ah                            ;A623 2020
and [bx+si],ah                            ;A625 2020
and [bp+di+0x4e],al                       ;A627 20434E
inc si                                    ;A62A 46
and [bx+si],al                            ;A62B 2000
mov ax,0x631c                             ;A62D B81C63
and ax,0x252e                             ;A630 252E25
add [cs:bx+si],al                         ;A633 2E0000
push ax                                   ;A636 50
sub ax,0xb6f                              ;A637 2D6F0B
imul ax,[si],0xffffffffffffff90           ;A63A 6B0490
pop es                                    ;A63D 07
add [bx+si],al                            ;A63E 0000
push di                                   ;A640 57
dec cx                                    ;A641 49
dec si                                    ;A642 4E
and [bx+si],ah                            ;A643 2020
and [bx+si],ah                            ;A645 2020
and [bp+di+0x4f],al                       ;A647 20434F
dec bp                                    ;A64A 4D
and [bx+si],al                            ;A64B 2000
insb                                      ;A64D 6C
sbb ax,0x2563                             ;A64E 1D6325
cs and ax,0x2e                            ;A651 2E252E00
add [bx+di+0x2d],al                       ;A655 00412D
outsw                                     ;A658 6F
or bp,[bx+0x4]                            ;A659 0B6F04
add dx,[bp+di]                            ;A65C 0313
add [bx+si],al                            ;A65E 0000
push di                                   ;A660 57
dec cx                                    ;A661 49
dec si                                    ;A662 4E
and [bx+si],ah                            ;A663 2020
and [bx+si],ah                            ;A665 2020
and [bx+di+0x4e],cl                       ;A667 20494E
dec cx                                    ;A66A 49
and [bx+si],al                            ;A66B 2000
and [es:bp+di+0x25],ah                    ;A66D 26206325
cs and ax,0x2e                            ;A671 2E252E00
add [bp+si+0x61],bh                       ;A675 007A61
and ax,0x792e                             ;A678 252E79
add al,0xf4                               ;A67B 04F4
or [bx+si],al                             ;A67D 0800
add ch,ah                                 ;A67F 00E5
dec bp                                    ;A681 4D
push bx                                   ;A682 53
push ax                                   ;A683 50
xor [bx+di],si                            ;A684 3131
xor al,0x42                               ;A686 3442
push sp                                   ;A688 54
dec bp                                    ;A689 4D
push ax                                   ;A68A 50
and [bx+si],al                            ;A68B 2000
add [bx+si],al                            ;A68D 0000
add [bx+si],al                            ;A68F 0000
add [bx+si],al                            ;A691 0000
add [bx+si],al                            ;A693 0000
add [di-0x70ad],ch                        ;A695 00AD538F
pop sp                                    ;A699 5C
jng 0xa6a0                                ;A69A 7E04
and dh,bl                                 ;A69C 20DE
add [bx+si],al                            ;A69E 0000
push di                                   ;A6A0 57
dec cx                                    ;A6A1 49
dec si                                    ;A6A2 4E
xor [bx+si],si                            ;A6A3 3130
xor [bx+si],ah                            ;A6A5 3020
and [bp+si+0x49],al                       ;A6A7 204249
dec si                                    ;A6AA 4E
and [bx+si],al                            ;A6AB 2000
push bp                                   ;A6AD 55
and [bp+di+0x25],sp                       ;A6AE 216325
cs and ax,0x2e                            ;A6B1 2E252E00
add [bx+di+0x2d],al                       ;A6B5 00412D
outsw                                     ;A6B8 6F
or ax,[bx+si-0x7ffc]                      ;A6B9 0B800480
into                                      ;A6BD CE
add al,[bx+si]                            ;A6BE 0200
push di                                   ;A6C0 57
dec cx                                    ;A6C1 49
dec si                                    ;A6C2 4E
xor [bx+si],si                            ;A6C3 3130
xor [bx+si],ah                            ;A6C5 3020
and [bx+0x56],cl                          ;A6C7 204F56
dec sp                                    ;A6CA 4C
and [bx+si],al                            ;A6CB 2000
gs and ax,0x2563                          ;A6CD 65256325
cs and ax,0x2e                            ;A6D1 2E252E00
add [bx+di+0x2d],al                       ;A6D5 00412D
outsw                                     ;A6D8 6F
or bp,ax                                  ;A6D9 0BE8
add ax,0x5c00                             ;A6DB 05005C
add ax,[bx+si]                            ;A6DE 0300
push di                                   ;A6E0 57
dec cx                                    ;A6E1 49
dec si                                    ;A6E2 4E
dec di                                    ;A6E3 4F
dec sp                                    ;A6E4 4C
inc sp                                    ;A6E5 44
inc cx                                    ;A6E6 41
push ax                                   ;A6E7 50
inc di                                    ;A6E8 47
push dx                                   ;A6E9 52
inc dx                                    ;A6EA 42
and [bx+si],al                            ;A6EB 2000
dec dx                                    ;A6ED 4A
sub ah,[bp+di+0x25]                       ;A6EE 2A6325
cs and ax,0x2e                            ;A6F1 2E252E00
add [bx+0x2d],cl                          ;A6F5 004F2D
outsw                                     ;A6F8 6F
or dx,[bp-0x42f9]                         ;A6F9 0B9607BD
add al,0x0                                ;A6FD 0400
add [bx+0x49],dl                          ;A6FF 005749
dec si                                    ;A702 4E
dec di                                    ;A703 4F
dec sp                                    ;A704 4C
inc sp                                    ;A705 44
inc cx                                    ;A706 41
push ax                                   ;A707 50
dec bp                                    ;A708 4D
dec di                                    ;A709 4F
inc sp                                    ;A70A 44
and [bx+si],al                            ;A70B 2000
adc [bp+di],bp                            ;A70D 112B
arpl [di],sp                              ;A70F 6325
cs and ax,0x2e                            ;A711 2E252E00
add [bx+si+0x2d],dl                       ;A715 00502D
outsw                                     ;A718 6F
or bx,[bx+di-0x3ff9]                      ;A719 0B9907C0
dec bx                                    ;A71D 4B
add [bx+si],al                            ;A71E 0000
push di                                   ;A720 57
push dx                                   ;A721 52
dec cx                                    ;A722 49
push sp                                   ;A723 54
inc bp                                    ;A724 45
and [bx+si],ah                            ;A725 2020
and [si+0x41],al                          ;A727 204441
push sp                                   ;A72A 54
and [bx+si],al                            ;A72B 2000
db 0xc6                                   ;A72D C6
sub sp,[bp+di+0x25]                       ;A72E 2B6325
cs and ax,0x2e                            ;A731 2E252E00
add [bp+si+0x2d],al                       ;A735 00422D
outsw                                     ;A738 6F
or di,[bx+0x2b07]                         ;A739 0BBF072B
add [bx+si],al                            ;A73D 0000
add [bx+0x52],dl                          ;A73F 005752
dec cx                                    ;A742 49
push sp                                   ;A743 54
inc bp                                    ;A744 45
and [bx+si],ah                            ;A745 2020
and [di+0x58],al                          ;A747 204558
inc bp                                    ;A74A 45
and [bx+si],al                            ;A74B 2000
ja 0xa77b                                 ;A74D 772C
arpl [di],sp                              ;A74F 6325
cs and ax,0x2e                            ;A751 2E252E00
add [di+0x6f2d],al                        ;A755 00852D6F
or ax,ax                                  ;A759 0BC0
pop es                                    ;A75B 07
xor al,ah                                 ;A75C 30E0
add al,[bx+si]                            ;A75E 0200
push di                                   ;A760 57
dec cx                                    ;A761 49
dec si                                    ;A762 4E
xor [bx+si],si                            ;A763 3130
xor [bx+si],sp                            ;A765 3120
and [bx+si],ah                            ;A767 2020
and [bx+si],ah                            ;A769 2020
sub [bx+si],al                            ;A76B 2800
ds lodsw                                  ;A76D 3EAD
arpl [di],sp                              ;A76F 6325
cs and ax,0x2e                            ;A771 2E252E00
add [bp+0x2563],ch                        ;A775 00AE6325
add [cs:bx+si],al                         ;A779 2E0000
add [bx+si],al                            ;A77C 0000
add [bx+si],al                            ;A77E 0000
in ax,byte 0x44                           ;A780 E544
dec di                                    ;A782 4F
inc bx                                    ;A783 43
xor [bp+si],dh                            ;A784 3032
xor [bp+di],dh                            ;A786 3033
push sp                                   ;A788 54
dec bp                                    ;A789 4D
push ax                                   ;A78A 50
and [bx+si],al                            ;A78B 2000
add [bx+si],al                            ;A78D 0000
add [bx+si],al                            ;A78F 0000
add [bx+si],al                            ;A791 0000
add [bx+si],al                            ;A793 0000
add [si],al                               ;A795 0004
push sp                                   ;A797 54
db 0x8f                                   ;A798 8F
pop sp                                    ;A799 5C
add [bx+si],al                            ;A79A 0000
add [bx+si],al                            ;A79C 0000
add [bx+si],al                            ;A79E 0000
add [bx+si],al                            ;A7A0 0000
add [bx+si],al                            ;A7A2 0000
add [bx+si],al                            ;A7A4 0000
add [bx+si],al                            ;A7A6 0000
add [bx+si],al                            ;A7A8 0000
add [bx+si],al                            ;A7AA 0000
add [bx+si],al                            ;A7AC 0000
add [bx+si],al                            ;A7AE 0000
add [bx+si],al                            ;A7B0 0000
add [bx+si],al                            ;A7B2 0000
add [bx+si],al                            ;A7B4 0000
add [bx+si],al                            ;A7B6 0000
add [bx+si],al                            ;A7B8 0000
add [bx+si],al                            ;A7BA 0000
add [bx+si],al                            ;A7BC 0000
add [bx+si],al                            ;A7BE 0000
add [bx+si],al                            ;A7C0 0000
add [bx+si],al                            ;A7C2 0000
add [bx+si],al                            ;A7C4 0000
add [bx+si],al                            ;A7C6 0000
add [bx+si],al                            ;A7C8 0000
add [bx+si],al                            ;A7CA 0000
add [bx+si],al                            ;A7CC 0000
add [bx+si],al                            ;A7CE 0000
add [bx+si],al                            ;A7D0 0000
add [bx+si],al                            ;A7D2 0000
add [bx+si],al                            ;A7D4 0000
add [bx+si],al                            ;A7D6 0000
add [bx+si],al                            ;A7D8 0000
add [bx+si],al                            ;A7DA 0000
add [bx+si],al                            ;A7DC 0000
add [bx+si],al                            ;A7DE 0000
add [bx+si],al                            ;A7E0 0000
add [bx+si],al                            ;A7E2 0000
add [bx+si],al                            ;A7E4 0000
add [bx+si],al                            ;A7E6 0000
add [bx+si],al                            ;A7E8 0000
add [bx+si],al                            ;A7EA 0000
add [bx+si],al                            ;A7EC 0000
add [bx+si],al                            ;A7EE 0000
add [bx+si],al                            ;A7F0 0000
add [bx+si],al                            ;A7F2 0000
add [bx+si],al                            ;A7F4 0000
add [bx+si],al                            ;A7F6 0000
add [bx+si],al                            ;A7F8 0000
add [bx+si],al                            ;A7FA 0000
add [bx+si],al                            ;A7FC 0000
add [bx+si],al                            ;A7FE 0000
add [bx+si],al                            ;A800 0000
add [bx+si],al                            ;A802 0000
add [bx+si],al                            ;A804 0000
add [bx+si],al                            ;A806 0000
add [bx+si],al                            ;A808 0000
add [bx+si],al                            ;A80A 0000
add [bx+si],al                            ;A80C 0000
add [bx+si],al                            ;A80E 0000
add [bx+si],al                            ;A810 0000
add [bx+si],al                            ;A812 0000
add [bx+si],al                            ;A814 0000
add [bx+si],al                            ;A816 0000
add [bx+si],al                            ;A818 0000
add [bx+si],al                            ;A81A 0000
add [bx+si],al                            ;A81C 0000
add [bx+si],al                            ;A81E 0000
add [bx+si],al                            ;A820 0000
add [bx+si],al                            ;A822 0000
add [bx+si],al                            ;A824 0000
add [bx+si],al                            ;A826 0000
add [bx+si],al                            ;A828 0000
add [bx+si],al                            ;A82A 0000
add [bx+si],al                            ;A82C 0000
add [bx+si],al                            ;A82E 0000
add [bx+si],al                            ;A830 0000
add [bx+si],al                            ;A832 0000
add [bx+si],al                            ;A834 0000
add [bx+si],al                            ;A836 0000
add [bx+si],al                            ;A838 0000
add [bx+si],al                            ;A83A 0000
add [bx+si],al                            ;A83C 0000
add [bx+si],al                            ;A83E 0000
add [bx+si],al                            ;A840 0000
add [bx+si],al                            ;A842 0000
add [bx+si],al                            ;A844 0000
add [bx+si],al                            ;A846 0000
add [bx+si],al                            ;A848 0000
add [bx+si],al                            ;A84A 0000
add [bx+si],al                            ;A84C 0000
add [bx+si],al                            ;A84E 0000
add [bx+si],al                            ;A850 0000
add [bx+si],al                            ;A852 0000
add [bx+si],al                            ;A854 0000
add [bx+si],al                            ;A856 0000
add [bx+si],al                            ;A858 0000
add [bx+si],al                            ;A85A 0000
add [bx+si],al                            ;A85C 0000
add [bx+si],al                            ;A85E 0000
add [bx+si],al                            ;A860 0000
add [bx+si],al                            ;A862 0000
add [bx+si],al                            ;A864 0000
add [bx+si],al                            ;A866 0000
add [bx+si],al                            ;A868 0000
add [bx+si],al                            ;A86A 0000
add [bx+si],al                            ;A86C 0000
add [bx+si],al                            ;A86E 0000
add [bx+si],al                            ;A870 0000
add [bx+si],al                            ;A872 0000
add [bx+si],al                            ;A874 0000
add [bx+si],al                            ;A876 0000
add [bx+si],al                            ;A878 0000
add [bx+si],al                            ;A87A 0000
add [bx+si],al                            ;A87C 0000
add [bx+si],al                            ;A87E 0000
add [bx+si],al                            ;A880 0000
add [bx+si],al                            ;A882 0000
add [bx+si],al                            ;A884 0000
add [bx+si],al                            ;A886 0000
add [bx+si],al                            ;A888 0000
add [bx+si],al                            ;A88A 0000
add [bx+si],al                            ;A88C 0000
add [bx+si],al                            ;A88E 0000
add [bx+si],al                            ;A890 0000
add [bx+si],al                            ;A892 0000
add [bx+si],al                            ;A894 0000
add [bx+si],al                            ;A896 0000
add [bx+si],al                            ;A898 0000
add [bx+si],al                            ;A89A 0000
add [bx+si],al                            ;A89C 0000
add [bx+si],al                            ;A89E 0000
add [bx+si],al                            ;A8A0 0000
add [bx+si],al                            ;A8A2 0000
add [bx+si],al                            ;A8A4 0000
add [bx+si],al                            ;A8A6 0000
add [bx+si],al                            ;A8A8 0000
add [bx+si],al                            ;A8AA 0000
add [bx+si],al                            ;A8AC 0000
add [bx+si],al                            ;A8AE 0000
add [bx+si],al                            ;A8B0 0000
add [bx+si],al                            ;A8B2 0000
add [bx+si],al                            ;A8B4 0000
add [bx+si],al                            ;A8B6 0000
add [bx+si],al                            ;A8B8 0000
add [bx+si],al                            ;A8BA 0000
add [bx+si],al                            ;A8BC 0000
add [bx+si],al                            ;A8BE 0000
add [bx+si],al                            ;A8C0 0000
add [bx+si],al                            ;A8C2 0000
add [bx+si],al                            ;A8C4 0000
add [bx+si],al                            ;A8C6 0000
add [bx+si],al                            ;A8C8 0000
add [bx+si],al                            ;A8CA 0000
add [bx+si],al                            ;A8CC 0000
add [bx+si],al                            ;A8CE 0000
add [bx+si],al                            ;A8D0 0000
add [bx+si],al                            ;A8D2 0000
add [bx+si],al                            ;A8D4 0000
add [bx+si],al                            ;A8D6 0000
add [bx+si],al                            ;A8D8 0000
add [bx+si],al                            ;A8DA 0000
add [bx+si],al                            ;A8DC 0000
add [bx+si],al                            ;A8DE 0000
add [bx+si],al                            ;A8E0 0000
add [bx+si],al                            ;A8E2 0000
add [bx+si],al                            ;A8E4 0000
add [bx+si],al                            ;A8E6 0000
add [bx+si],al                            ;A8E8 0000
add [bx+si],al                            ;A8EA 0000
add [bx+si],al                            ;A8EC 0000
add [bx+si],al                            ;A8EE 0000
add [bx+si],al                            ;A8F0 0000
add [bx+si],al                            ;A8F2 0000
add [bx+si],al                            ;A8F4 0000
add [bx+si],al                            ;A8F6 0000
add [bx+si],al                            ;A8F8 0000
add [bx+si],al                            ;A8FA 0000
add [bx+si],al                            ;A8FC 0000
add [bx+si],al                            ;A8FE 0000
add [bx+si],al                            ;A900 0000
add [bx+si],al                            ;A902 0000
add [bx+si],al                            ;A904 0000
add [bx+si],al                            ;A906 0000
add [bx+si],al                            ;A908 0000
add [bx+si],al                            ;A90A 0000
add [bx+si],al                            ;A90C 0000
add [bx+si],al                            ;A90E 0000
add [bx+si],al                            ;A910 0000
add [bx+si],al                            ;A912 0000
add [bx+si],al                            ;A914 0000
add [bx+si],al                            ;A916 0000
add [bx+si],al                            ;A918 0000
add [bx+si],al                            ;A91A 0000
add [bx+si],al                            ;A91C 0000
add [bx+si],al                            ;A91E 0000
add [bx+si],al                            ;A920 0000
add [bx+si],al                            ;A922 0000
add [bx+si],al                            ;A924 0000
add [bx+si],al                            ;A926 0000
add [bx+si],al                            ;A928 0000
add [bx+si],al                            ;A92A 0000
add [bx+si],al                            ;A92C 0000
add [bx+si],al                            ;A92E 0000
add [bx+si],al                            ;A930 0000
add [bx+si],al                            ;A932 0000
add [bx+si],al                            ;A934 0000
add [bx+si],al                            ;A936 0000
add [bx+si],al                            ;A938 0000
add [bx+si],al                            ;A93A 0000
add [bx+si],al                            ;A93C 0000
add [bx+si],al                            ;A93E 0000
add [bx+si],al                            ;A940 0000
add [bx+si],al                            ;A942 0000
add [bx+si],al                            ;A944 0000
add [bx+si],al                            ;A946 0000
add [bx+si],al                            ;A948 0000
add [bx+si],al                            ;A94A 0000
add [bx+si],al                            ;A94C 0000
add [bx+si],al                            ;A94E 0000
add [bx+si],al                            ;A950 0000
add [bx+si],al                            ;A952 0000
add [bx+si],al                            ;A954 0000
add [bx+si],al                            ;A956 0000
add [bx+si],al                            ;A958 0000
add [bx+si],al                            ;A95A 0000
add [bx+si],al                            ;A95C 0000
add [bx+si],al                            ;A95E 0000
add [bx+si],al                            ;A960 0000
add [bx+si],al                            ;A962 0000
add [bx+si],al                            ;A964 0000
add [bx+si],al                            ;A966 0000
add [bx+si],al                            ;A968 0000
add [bx+si],al                            ;A96A 0000
add [bx+si],al                            ;A96C 0000
add [bx+si],al                            ;A96E 0000
add [bx+si],al                            ;A970 0000
add [bx+si],al                            ;A972 0000
add [bx+si],al                            ;A974 0000
add [bx+si],al                            ;A976 0000
add [bx+si],al                            ;A978 0000
add [bx+si],al                            ;A97A 0000
add [bx+si],al                            ;A97C 0000
add [bx+si],al                            ;A97E 0000
add [bx+si],al                            ;A980 0000
add [bx+si],al                            ;A982 0000
add [bx+si],al                            ;A984 0000
add [bx+si],al                            ;A986 0000
add [bx+si],al                            ;A988 0000
add [bx+si],al                            ;A98A 0000
add [bx+si],al                            ;A98C 0000
add [bx+si],al                            ;A98E 0000
add [bx+si],al                            ;A990 0000
add [bx+si],al                            ;A992 0000
add [bx+si],al                            ;A994 0000
add [bx+si],al                            ;A996 0000
add [bx+si],al                            ;A998 0000
add [bx+si],al                            ;A99A 0000
add [bx+si],al                            ;A99C 0000
add [bx+si],al                            ;A99E 0000
add [bx+si],al                            ;A9A0 0000
add [bx+si],al                            ;A9A2 0000
add [bx+si],al                            ;A9A4 0000
add [bx+si],al                            ;A9A6 0000
add [bx+si],al                            ;A9A8 0000
add [bx+si],al                            ;A9AA 0000
add [bx+si],al                            ;A9AC 0000
add [bx+si],al                            ;A9AE 0000
add [bx+si],al                            ;A9B0 0000
add [bx+si],al                            ;A9B2 0000
add [bx+si],al                            ;A9B4 0000
add [bx+si],al                            ;A9B6 0000
add [bx+si],al                            ;A9B8 0000
add [bx+si],al                            ;A9BA 0000
add [bx+si],al                            ;A9BC 0000
add [bx+si],al                            ;A9BE 0000
add [bx+si],al                            ;A9C0 0000
add [bx+si],al                            ;A9C2 0000
add [bx+si],al                            ;A9C4 0000
add [bx+si],al                            ;A9C6 0000
add [bx+si],al                            ;A9C8 0000
add [bx+si],al                            ;A9CA 0000
add [bx+si],al                            ;A9CC 0000
add [bx+si],al                            ;A9CE 0000
add [bx+si],al                            ;A9D0 0000
add [bx+si],al                            ;A9D2 0000
add [bx+si],al                            ;A9D4 0000
add [bx+si],al                            ;A9D6 0000
add [bx+si],al                            ;A9D8 0000
add [bx+si],al                            ;A9DA 0000
add [bx+si],al                            ;A9DC 0000
add [bx+si],al                            ;A9DE 0000
add [bx+si],al                            ;A9E0 0000
add [bx+si],al                            ;A9E2 0000
add [bx+si],al                            ;A9E4 0000
add [bx+si],al                            ;A9E6 0000
add [bx+si],al                            ;A9E8 0000
add [bx+si],al                            ;A9EA 0000
add [bx+si],al                            ;A9EC 0000
add [bx+si],al                            ;A9EE 0000
add [bx+si],al                            ;A9F0 0000
add [bx+si],al                            ;A9F2 0000
add [bx+si],al                            ;A9F4 0000
add [bx+si],al                            ;A9F6 0000
add [bx+si],al                            ;A9F8 0000
add [bx+si],al                            ;A9FA 0000
add [bx+si],al                            ;A9FC 0000
add [bx+si],al                            ;A9FE 0000
add [bx+si],al                            ;AA00 0000
add [bx+si],al                            ;AA02 0000
add [bx+si],al                            ;AA04 0000
add [bx+si],al                            ;AA06 0000
add [bx+si],al                            ;AA08 0000
add [bx+si],al                            ;AA0A 0000
add [bx+si],al                            ;AA0C 0000
add [bx+si],al                            ;AA0E 0000
add [bx+si],al                            ;AA10 0000
add [bx+si],al                            ;AA12 0000
add [bx+si],al                            ;AA14 0000
add [bx+si],al                            ;AA16 0000
add [bx+si],al                            ;AA18 0000
add [bx+si],al                            ;AA1A 0000
add [bx+si],al                            ;AA1C 0000
add [bx+si],al                            ;AA1E 0000
add [bx+si],al                            ;AA20 0000
add [bx+si],al                            ;AA22 0000
add [bx+si],al                            ;AA24 0000
add [bx+si],al                            ;AA26 0000
add [bx+si],al                            ;AA28 0000
add [bx+si],al                            ;AA2A 0000
add [bx+si],al                            ;AA2C 0000
add [bx+si],al                            ;AA2E 0000
add [bx+si],al                            ;AA30 0000
add [bx+si],al                            ;AA32 0000
add [bx+si],al                            ;AA34 0000
add [bx+si],al                            ;AA36 0000
add [bx+si],al                            ;AA38 0000
add [bx+si],al                            ;AA3A 0000
add [bx+si],al                            ;AA3C 0000
add [bx+si],al                            ;AA3E 0000
add [bx+si],al                            ;AA40 0000
add [bx+si],al                            ;AA42 0000
add [bx+si],al                            ;AA44 0000
add [bx+si],al                            ;AA46 0000
add [bx+si],al                            ;AA48 0000
add [bx+si],al                            ;AA4A 0000
add [bx+si],al                            ;AA4C 0000
add [bx+si],al                            ;AA4E 0000
add [bx+si],al                            ;AA50 0000
add [bx+si],al                            ;AA52 0000
add [bx+si],al                            ;AA54 0000
add [bx+si],al                            ;AA56 0000
add [bx+si],al                            ;AA58 0000
add [bx+si],al                            ;AA5A 0000
add [bx+si],al                            ;AA5C 0000
add [bx+si],al                            ;AA5E 0000
add [bx+si],al                            ;AA60 0000
add [bx+si],al                            ;AA62 0000
add [bx+si],al                            ;AA64 0000
add [bx+si],al                            ;AA66 0000
add [bx+si],al                            ;AA68 0000
add [bx+si],al                            ;AA6A 0000
add [bx+si],al                            ;AA6C 0000
add [bx+si],al                            ;AA6E 0000
add [bx+si],al                            ;AA70 0000
add [bx+si],al                            ;AA72 0000
add [bx+si],al                            ;AA74 0000
add [bx+si],al                            ;AA76 0000
add [bx+si],al                            ;AA78 0000
add [bx+si],al                            ;AA7A 0000
add [bx+si],al                            ;AA7C 0000
add [bx+si],al                            ;AA7E 0000
add [bx+si],al                            ;AA80 0000
add [bx+si],al                            ;AA82 0000
add [bx+si],al                            ;AA84 0000
add [bx+si],al                            ;AA86 0000
add [bx+si],al                            ;AA88 0000
add [bx+si],al                            ;AA8A 0000
add [bx+si],al                            ;AA8C 0000
add [bx+si],al                            ;AA8E 0000
add [bx+si],al                            ;AA90 0000
add [bx+si],al                            ;AA92 0000
add [bx+si],al                            ;AA94 0000
add [bx+si],al                            ;AA96 0000
add [bx+si],al                            ;AA98 0000
add [bx+si],al                            ;AA9A 0000
add [bx+si],al                            ;AA9C 0000
add [bx+si],al                            ;AA9E 0000
add [bx+si],al                            ;AAA0 0000
add [bx+si],al                            ;AAA2 0000
add [bx+si],al                            ;AAA4 0000
add [bx+si],al                            ;AAA6 0000
add [bx+si],al                            ;AAA8 0000
add [bx+si],al                            ;AAAA 0000
add [bx+si],al                            ;AAAC 0000
add [bx+si],al                            ;AAAE 0000
add [bx+si],al                            ;AAB0 0000
add [bx+si],al                            ;AAB2 0000
add [bx+si],al                            ;AAB4 0000
add [bx+si],al                            ;AAB6 0000
add [bx+si],al                            ;AAB8 0000
add [bx+si],al                            ;AABA 0000
add [bx+si],al                            ;AABC 0000
add [bx+si],al                            ;AABE 0000
add [bx+si],al                            ;AAC0 0000
add [bx+si],al                            ;AAC2 0000
add [bx+si],al                            ;AAC4 0000
add [bx+si],al                            ;AAC6 0000
add [bx+si],al                            ;AAC8 0000
add [bx+si],al                            ;AACA 0000
add [bx+si],al                            ;AACC 0000
add [bx+si],al                            ;AACE 0000
add [bx+si],al                            ;AAD0 0000
add [bx+si],al                            ;AAD2 0000
add [bx+si],al                            ;AAD4 0000
add [bx+si],al                            ;AAD6 0000
add [bx+si],al                            ;AAD8 0000
add [bx+si],al                            ;AADA 0000
add [bx+si],al                            ;AADC 0000
add [bx+si],al                            ;AADE 0000
add [bx+si],al                            ;AAE0 0000
add [bx+si],al                            ;AAE2 0000
add [bx+si],al                            ;AAE4 0000
add [bx+si],al                            ;AAE6 0000
add [bx+si],al                            ;AAE8 0000
add [bx+si],al                            ;AAEA 0000
add [bx+si],al                            ;AAEC 0000
add [bx+si],al                            ;AAEE 0000
add [bx+si],al                            ;AAF0 0000
add [bx+si],al                            ;AAF2 0000
add [bx+si],al                            ;AAF4 0000
add [bx+si],al                            ;AAF6 0000
add [bx+si],al                            ;AAF8 0000
add [bx+si],al                            ;AAFA 0000
add [bx+si],al                            ;AAFC 0000
add [bx+si],al                            ;AAFE 0000
add [bx+si],al                            ;AB00 0000
add [bx+si],al                            ;AB02 0000
add [bx+si],al                            ;AB04 0000
add [bx+si],al                            ;AB06 0000
add [bx+si],al                            ;AB08 0000
add [bx+si],al                            ;AB0A 0000
add [bx+si],al                            ;AB0C 0000
add [bx+si],al                            ;AB0E 0000
add [bx+si],al                            ;AB10 0000
add [bx+si],al                            ;AB12 0000
add [bx+si],al                            ;AB14 0000
add [bx+si],al                            ;AB16 0000
add [bx+si],al                            ;AB18 0000
add [bx+si],al                            ;AB1A 0000
add [bx+si],al                            ;AB1C 0000
add [bx+si],al                            ;AB1E 0000
add [bx+si],al                            ;AB20 0000
add [bx+si],al                            ;AB22 0000
add [bx+si],al                            ;AB24 0000
add [bx+si],al                            ;AB26 0000
add [bx+si],al                            ;AB28 0000
add [bx+si],al                            ;AB2A 0000
add [bx+si],al                            ;AB2C 0000
add [bx+si],al                            ;AB2E 0000
add [bx+si],al                            ;AB30 0000
add [bx+si],al                            ;AB32 0000
add [bx+si],al                            ;AB34 0000
add [bx+si],al                            ;AB36 0000
add [bx+si],al                            ;AB38 0000
add [bx+si],al                            ;AB3A 0000
add [bx+si],al                            ;AB3C 0000
add [bx+si],al                            ;AB3E 0000
add [bx+si],al                            ;AB40 0000
add [bx+si],al                            ;AB42 0000
add [bx+si],al                            ;AB44 0000
add [bx+si],al                            ;AB46 0000
add [bx+si],al                            ;AB48 0000
add [bx+si],al                            ;AB4A 0000
add [bx+si],al                            ;AB4C 0000
add [bx+si],al                            ;AB4E 0000
add [bx+si],al                            ;AB50 0000
add [bx+si],al                            ;AB52 0000
add [bx+si],al                            ;AB54 0000
add [bx+si],al                            ;AB56 0000
add [bx+si],al                            ;AB58 0000
add [bx+si],al                            ;AB5A 0000
add [bx+si],al                            ;AB5C 0000
add [bx+si],al                            ;AB5E 0000
add [bx+si],al                            ;AB60 0000
add [bx+si],al                            ;AB62 0000
add [bx+si],al                            ;AB64 0000
add [bx+si],al                            ;AB66 0000
add [bx+si],al                            ;AB68 0000
add [bx+si],al                            ;AB6A 0000
add [bx+si],al                            ;AB6C 0000
add [bx+si],al                            ;AB6E 0000
add [bx+si],al                            ;AB70 0000
add [bx+si],al                            ;AB72 0000
add [bx+si],al                            ;AB74 0000
add [bx+si],al                            ;AB76 0000
add [bx+si],al                            ;AB78 0000
add [bx+si],al                            ;AB7A 0000
add [bx+si],al                            ;AB7C 0000
add [bx+si],al                            ;AB7E 0000
add [bx+si],al                            ;AB80 0000
add [bx+si],al                            ;AB82 0000
add [bx+si],al                            ;AB84 0000
add [bx+si],al                            ;AB86 0000
add [bx+si],al                            ;AB88 0000
add [bx+si],al                            ;AB8A 0000
add [bx+si],al                            ;AB8C 0000
add [bx+si],al                            ;AB8E 0000
add [bx+si],al                            ;AB90 0000
add [bx+si],al                            ;AB92 0000
add [bx+si],al                            ;AB94 0000
add [bx+si],al                            ;AB96 0000
add [bx+si],al                            ;AB98 0000
add [bx+si],al                            ;AB9A 0000
add [bx+si],al                            ;AB9C 0000
add [bx+si],al                            ;AB9E 0000
add [bx+si],al                            ;ABA0 0000
add [bx+si],al                            ;ABA2 0000
add [bx+si],al                            ;ABA4 0000
add [bx+si],al                            ;ABA6 0000
add [bx+si],al                            ;ABA8 0000
add [bx+si],al                            ;ABAA 0000
add [bx+si],al                            ;ABAC 0000
add [bx+si],al                            ;ABAE 0000
add [bx+si],al                            ;ABB0 0000
add [bx+si],al                            ;ABB2 0000
add [bx+si],al                            ;ABB4 0000
add [bx+si],al                            ;ABB6 0000
add [bx+si],al                            ;ABB8 0000
add [bx+si],al                            ;ABBA 0000
add [bx+si],al                            ;ABBC 0000
add [bx+si],al                            ;ABBE 0000
add [bx+si],al                            ;ABC0 0000
add [bx+si],al                            ;ABC2 0000
add [bx+si],al                            ;ABC4 0000
add [bx+si],al                            ;ABC6 0000
add [bx+si],al                            ;ABC8 0000
add [bx+si],al                            ;ABCA 0000
add [bx+si],al                            ;ABCC 0000
add [bx+si],al                            ;ABCE 0000
add [bx+si],al                            ;ABD0 0000
add [bx+si],al                            ;ABD2 0000
add [bx+si],al                            ;ABD4 0000
add [bx+si],al                            ;ABD6 0000
add [bx+si],al                            ;ABD8 0000
add [bx+si],al                            ;ABDA 0000
add [bx+si],al                            ;ABDC 0000
add [bx+si],al                            ;ABDE 0000
add [bx+si],al                            ;ABE0 0000
add [bx+si],al                            ;ABE2 0000
add [bx+si],al                            ;ABE4 0000
add [bx+si],al                            ;ABE6 0000
add [bx+si],al                            ;ABE8 0000
add [bx+si],al                            ;ABEA 0000
add [bx+si],al                            ;ABEC 0000
add [bx+si],al                            ;ABEE 0000
add [bx+si],al                            ;ABF0 0000
add [bx+si],al                            ;ABF2 0000
add [bx+si],al                            ;ABF4 0000
add [bx+si],al                            ;ABF6 0000
add [bx+si],al                            ;ABF8 0000
add [bx+si],al                            ;ABFA 0000
add [bx+si],al                            ;ABFC 0000
add [bx+si],al                            ;ABFE 0000
add [bx+si],al                            ;AC00 0000
add [bx+si],al                            ;AC02 0000
add [bx+si],al                            ;AC04 0000
add [bx+si],al                            ;AC06 0000
add [bx+si],al                            ;AC08 0000
add [bx+si],al                            ;AC0A 0000
add [bx+si],al                            ;AC0C 0000
add [bx+si],al                            ;AC0E 0000
add [bx+si],al                            ;AC10 0000
add [bx+si],al                            ;AC12 0000
add [bx+si],al                            ;AC14 0000
add [bx+si],al                            ;AC16 0000
add [bx+si],al                            ;AC18 0000
add [bx+si],al                            ;AC1A 0000
add [bx+si],al                            ;AC1C 0000
add [bx+si],al                            ;AC1E 0000
add [bx+si],al                            ;AC20 0000
add [bx+si],al                            ;AC22 0000
add [bx+si],al                            ;AC24 0000
add [bx+si],al                            ;AC26 0000
add [bx+si],al                            ;AC28 0000
add [bx+si],al                            ;AC2A 0000
add [bx+si],al                            ;AC2C 0000
add [bx+si],al                            ;AC2E 0000
add [bx+si],al                            ;AC30 0000
add [bx+si],al                            ;AC32 0000
add [bx+si],al                            ;AC34 0000
add [bx+si],al                            ;AC36 0000
add [bx+si],al                            ;AC38 0000
add [bx+si],al                            ;AC3A 0000
add [bx+si],al                            ;AC3C 0000
add [bx+si],al                            ;AC3E 0000
add [bx+si],al                            ;AC40 0000
add [bx+si],al                            ;AC42 0000
add [bx+si],al                            ;AC44 0000
add [bx+si],al                            ;AC46 0000
add [bx+si],al                            ;AC48 0000
add [bx+si],al                            ;AC4A 0000
add [bx+si],al                            ;AC4C 0000
add [bx+si],al                            ;AC4E 0000
add [bx+si],al                            ;AC50 0000
add [bx+si],al                            ;AC52 0000
add [bx+si],al                            ;AC54 0000
add [bx+si],al                            ;AC56 0000
add [bx+si],al                            ;AC58 0000
add [bx+si],al                            ;AC5A 0000
add [bx+si],al                            ;AC5C 0000
add [bx+si],al                            ;AC5E 0000
add [bx+si],al                            ;AC60 0000
add [bx+si],al                            ;AC62 0000
add [bx+si],al                            ;AC64 0000
add [bx+si],al                            ;AC66 0000
add [bx+si],al                            ;AC68 0000
add [bx+si],al                            ;AC6A 0000
add [bx+si],al                            ;AC6C 0000
add [bx+si],al                            ;AC6E 0000
add [bx+si],al                            ;AC70 0000
add [bx+si],al                            ;AC72 0000
add [bx+si],al                            ;AC74 0000
add [bx+si],al                            ;AC76 0000
add [bx+si],al                            ;AC78 0000
add [bx+si],al                            ;AC7A 0000
add [bx+si],al                            ;AC7C 0000
add [bx+si],al                            ;AC7E 0000
add [bx+si],al                            ;AC80 0000
add [bx+si],al                            ;AC82 0000
add [bx+si],al                            ;AC84 0000
add [bx+si],al                            ;AC86 0000
add [bx+si],al                            ;AC88 0000
add [bx+si],al                            ;AC8A 0000
add [bx+si],al                            ;AC8C 0000
add [bx+si],al                            ;AC8E 0000
add [bx+si],al                            ;AC90 0000
add [bx+si],al                            ;AC92 0000
add [bx+si],al                            ;AC94 0000
add [bx+si],al                            ;AC96 0000
add [bx+si],al                            ;AC98 0000
add [bx+si],al                            ;AC9A 0000
add [bx+si],al                            ;AC9C 0000
add [bx+si],al                            ;AC9E 0000
add [bx+si],al                            ;ACA0 0000
add [bx+si],al                            ;ACA2 0000
add [bx+si],al                            ;ACA4 0000
add [bx+si],al                            ;ACA6 0000
add [bx+si],al                            ;ACA8 0000
add [bx+si],al                            ;ACAA 0000
add [bx+si],al                            ;ACAC 0000
add [bx+si],al                            ;ACAE 0000
add [bx+si],al                            ;ACB0 0000
add [bx+si],al                            ;ACB2 0000
add [bx+si],al                            ;ACB4 0000
add [bx+si],al                            ;ACB6 0000
add [bx+si],al                            ;ACB8 0000
add [bx+si],al                            ;ACBA 0000
add [bx+si],al                            ;ACBC 0000
add [bx+si],al                            ;ACBE 0000
add [bx+si],al                            ;ACC0 0000
add [bx+si],al                            ;ACC2 0000
add [bx+si],al                            ;ACC4 0000
add [bx+si],al                            ;ACC6 0000
add [bx+si],al                            ;ACC8 0000
add [bx+si],al                            ;ACCA 0000
add [bx+si],al                            ;ACCC 0000
add [bx+si],al                            ;ACCE 0000
add [bx+si],al                            ;ACD0 0000
add [bx+si],al                            ;ACD2 0000
add [bx+si],al                            ;ACD4 0000
add [bx+si],al                            ;ACD6 0000
add [bx+si],al                            ;ACD8 0000
add [bx+si],al                            ;ACDA 0000
add [bx+si],al                            ;ACDC 0000
add [bx+si],al                            ;ACDE 0000
add [bx+si],al                            ;ACE0 0000
add [bx+si],al                            ;ACE2 0000
add [bx+si],al                            ;ACE4 0000
add [bx+si],al                            ;ACE6 0000
add [bx+si],al                            ;ACE8 0000
add [bx+si],al                            ;ACEA 0000
add [bx+si],al                            ;ACEC 0000
add [bx+si],al                            ;ACEE 0000
add [bx+si],al                            ;ACF0 0000
add [bx+si],al                            ;ACF2 0000
add [bx+si],al                            ;ACF4 0000
add [bx+si],al                            ;ACF6 0000
add [bx+si],al                            ;ACF8 0000
add [bx+si],al                            ;ACFA 0000
add [bx+si],al                            ;ACFC 0000
add [bx+si],al                            ;ACFE 0000
add [bx+si],al                            ;AD00 0000
add [bx+si],al                            ;AD02 0000
add [bx+si],al                            ;AD04 0000
add [bx+si],al                            ;AD06 0000
add [bx+si],al                            ;AD08 0000
add [bx+si],al                            ;AD0A 0000
add [bx+si],al                            ;AD0C 0000
add [bx+si],al                            ;AD0E 0000
add [bx+si],al                            ;AD10 0000
add [bx+si],al                            ;AD12 0000
add [bx+si],al                            ;AD14 0000
add [bx+si],al                            ;AD16 0000
add [bx+si],al                            ;AD18 0000
add [bx+si],al                            ;AD1A 0000
add [bx+si],al                            ;AD1C 0000
add [bx+si],al                            ;AD1E 0000
add [bx+si],al                            ;AD20 0000
add [bx+si],al                            ;AD22 0000
add [bx+si],al                            ;AD24 0000
add [bx+si],al                            ;AD26 0000
add [bx+si],al                            ;AD28 0000
add [bx+si],al                            ;AD2A 0000
add [bx+si],al                            ;AD2C 0000
add [bx+si],al                            ;AD2E 0000
add [bx+si],al                            ;AD30 0000
add [bx+si],al                            ;AD32 0000
add [bx+si],al                            ;AD34 0000
add [bx+si],al                            ;AD36 0000
add [bx+si],al                            ;AD38 0000
add [bx+si],al                            ;AD3A 0000
add [bx+si],al                            ;AD3C 0000
add [bx+si],al                            ;AD3E 0000
add [bx+si],al                            ;AD40 0000
add [bx+si],al                            ;AD42 0000
add [bx+si],al                            ;AD44 0000
add [bx+si],al                            ;AD46 0000
add [bx+si],al                            ;AD48 0000
add [bx+si],al                            ;AD4A 0000
add [bx+si],al                            ;AD4C 0000
add [bx+si],al                            ;AD4E 0000
add [bx+si],al                            ;AD50 0000
add [bx+si],al                            ;AD52 0000
add [bx+si],al                            ;AD54 0000
add [bx+si],al                            ;AD56 0000
add [bx+si],al                            ;AD58 0000
add [bx+si],al                            ;AD5A 0000
add [bx+si],al                            ;AD5C 0000
add [bx+si],al                            ;AD5E 0000
add [bx+si],al                            ;AD60 0000
add [bx+si],al                            ;AD62 0000
add [bx+si],al                            ;AD64 0000
add [bx+si],al                            ;AD66 0000
add [bx+si],al                            ;AD68 0000
add [bx+si],al                            ;AD6A 0000
add [bx+si],al                            ;AD6C 0000
add [bx+si],al                            ;AD6E 0000
add [bx+si],al                            ;AD70 0000
add [bx+si],al                            ;AD72 0000
add [bx+si],al                            ;AD74 0000
add [bx+si],al                            ;AD76 0000
add [bx+si],al                            ;AD78 0000
add [bx+si],al                            ;AD7A 0000
add [bx+si],al                            ;AD7C 0000
add [bx+si],al                            ;AD7E 0000
add [bx+si],al                            ;AD80 0000
add [bx+si],al                            ;AD82 0000
add [bx+si],al                            ;AD84 0000
add [bx+si],al                            ;AD86 0000
add [bx+si],al                            ;AD88 0000
add [bx+si],al                            ;AD8A 0000
add [bx+si],al                            ;AD8C 0000
add [bx+si],al                            ;AD8E 0000
add [bx+si],al                            ;AD90 0000
add [bx+si],al                            ;AD92 0000
add [bx+si],al                            ;AD94 0000
add [bx+si],al                            ;AD96 0000
add [bx+si],al                            ;AD98 0000
add [bx+si],al                            ;AD9A 0000
add [bx+si],al                            ;AD9C 0000
add [bx+si],al                            ;AD9E 0000
add [bx+si],al                            ;ADA0 0000
add [bx+si],al                            ;ADA2 0000
add [bx+si],al                            ;ADA4 0000
add [bx+si],al                            ;ADA6 0000
add [bx+si],al                            ;ADA8 0000
add [bx+si],al                            ;ADAA 0000
add [bx+si],al                            ;ADAC 0000
add [bx+si],al                            ;ADAE 0000
add [bx+si],al                            ;ADB0 0000
add [bx+si],al                            ;ADB2 0000
add [bx+si],al                            ;ADB4 0000
add [bx+si],al                            ;ADB6 0000
add [bx+si],al                            ;ADB8 0000
add [bx+si],al                            ;ADBA 0000
add [bx+si],al                            ;ADBC 0000
add [bx+si],al                            ;ADBE 0000
add [bx+si],al                            ;ADC0 0000
add [bx+si],al                            ;ADC2 0000
add [bx+si],al                            ;ADC4 0000
add [bx+si],al                            ;ADC6 0000
add [bx+si],al                            ;ADC8 0000
add [bx+si],al                            ;ADCA 0000
add [bx+si],al                            ;ADCC 0000
add [bx+si],al                            ;ADCE 0000
add [bx+si],al                            ;ADD0 0000
add [bx+si],al                            ;ADD2 0000
add [bx+si],al                            ;ADD4 0000
add [bx+si],al                            ;ADD6 0000
add [bx+si],al                            ;ADD8 0000
add [bx+si],al                            ;ADDA 0000
add [bx+si],al                            ;ADDC 0000
add [bx+si],al                            ;ADDE 0000
add [bx+si],al                            ;ADE0 0000
add [bx+si],al                            ;ADE2 0000
add [bx+si],al                            ;ADE4 0000
add [bx+si],al                            ;ADE6 0000
add [bx+si],al                            ;ADE8 0000
add [bx+si],al                            ;ADEA 0000
add [bx+si],al                            ;ADEC 0000
add [bx+si],al                            ;ADEE 0000
add [bx+si],al                            ;ADF0 0000
add [bx+si],al                            ;ADF2 0000
add [bx+si],al                            ;ADF4 0000
add [bx+si],al                            ;ADF6 0000
add [bx+si],al                            ;ADF8 0000
add [bx+si],al                            ;ADFA 0000
add [bx+si],al                            ;ADFC 0000
add [bx+si],al                            ;ADFE 0000
add [bx+si],al                            ;AE00 0000
add [bx+si],al                            ;AE02 0000
add [bx+si],al                            ;AE04 0000
add [bx+si],al                            ;AE06 0000
add [bx+si],al                            ;AE08 0000
add [bx+si],al                            ;AE0A 0000
add [bx+si],al                            ;AE0C 0000
add [bx+si],al                            ;AE0E 0000
add [bx+si],al                            ;AE10 0000
add [bx+si],al                            ;AE12 0000
add [bx+si],al                            ;AE14 0000
add [bx+si],al                            ;AE16 0000
add [bx+si],al                            ;AE18 0000
add [bx+si],al                            ;AE1A 0000
add [bx+si],al                            ;AE1C 0000
add [bx+si],al                            ;AE1E 0000
add [bx+si],al                            ;AE20 0000
add [bx+si],al                            ;AE22 0000
add [bx+si],al                            ;AE24 0000
add [bx+si],al                            ;AE26 0000
add [bx+si],al                            ;AE28 0000
add [bx+si],al                            ;AE2A 0000
add [bx+si],al                            ;AE2C 0000
add [bx+si],al                            ;AE2E 0000
add [bx+si],al                            ;AE30 0000
add [bx+si],al                            ;AE32 0000
add [bx+si],al                            ;AE34 0000
add [bx+si],al                            ;AE36 0000
add [bx+si],al                            ;AE38 0000
add [bx+si],al                            ;AE3A 0000
add [bx+si],al                            ;AE3C 0000
add [bx+si],al                            ;AE3E 0000
add [bx+si],al                            ;AE40 0000
add [bx+si],al                            ;AE42 0000
add [bx+si],al                            ;AE44 0000
add [bx+si],al                            ;AE46 0000
add [bx+si],al                            ;AE48 0000
add [bx+si],al                            ;AE4A 0000
add [bx+si],al                            ;AE4C 0000
add [bx+si],al                            ;AE4E 0000
add [bx+si],al                            ;AE50 0000
add [bx+si],al                            ;AE52 0000
add [bx+si],al                            ;AE54 0000
add [bx+si],al                            ;AE56 0000
add [bx+si],al                            ;AE58 0000
add [bx+si],al                            ;AE5A 0000
add [bx+si],al                            ;AE5C 0000
add [bx+si],al                            ;AE5E 0000
add [bx+si],al                            ;AE60 0000
add [bx+si],al                            ;AE62 0000
add [bx+si],al                            ;AE64 0000
add [bx+si],al                            ;AE66 0000
add [bx+si],al                            ;AE68 0000
add [bx+si],al                            ;AE6A 0000
add [bx+si],al                            ;AE6C 0000
add [bx+si],al                            ;AE6E 0000
add [bx+si],al                            ;AE70 0000
add [bx+si],al                            ;AE72 0000
add [bx+si],al                            ;AE74 0000
add [bx+si],al                            ;AE76 0000
add [bx+si],al                            ;AE78 0000
add [bx+si],al                            ;AE7A 0000
add [bx+si],al                            ;AE7C 0000
add [bx+si],al                            ;AE7E 0000
add [bx+si],al                            ;AE80 0000
add [bx+si],al                            ;AE82 0000
add [bx+si],al                            ;AE84 0000
add [bx+si],al                            ;AE86 0000
add [bx+si],al                            ;AE88 0000
add [bx+si],al                            ;AE8A 0000
add [bx+si],al                            ;AE8C 0000
add [bx+si],al                            ;AE8E 0000
add [bx+si],al                            ;AE90 0000
add [bx+si],al                            ;AE92 0000
add [bx+si],al                            ;AE94 0000
add [bx+si],al                            ;AE96 0000
add [bx+si],al                            ;AE98 0000
add [bx+si],al                            ;AE9A 0000
add [bx+si],al                            ;AE9C 0000
add [bx+si],al                            ;AE9E 0000
add [bx+si],al                            ;AEA0 0000
add [bx+si],al                            ;AEA2 0000
add [bx+si],al                            ;AEA4 0000
add [bx+si],al                            ;AEA6 0000
add [bx+si],al                            ;AEA8 0000
add [bx+si],al                            ;AEAA 0000
add [bx+si],al                            ;AEAC 0000
add [bx+si],al                            ;AEAE 0000
add [bx+si],al                            ;AEB0 0000
add [bx+si],al                            ;AEB2 0000
add [bx+si],al                            ;AEB4 0000
add [bx+si],al                            ;AEB6 0000
add [bx+si],al                            ;AEB8 0000
add [bx+si],al                            ;AEBA 0000
add [bx+si],al                            ;AEBC 0000
add [bx+si],al                            ;AEBE 0000
add [bx+si],al                            ;AEC0 0000
add [bx+si],al                            ;AEC2 0000
add [bx+si],al                            ;AEC4 0000
add [bx+si],al                            ;AEC6 0000
add [bx+si],al                            ;AEC8 0000
add [bx+si],al                            ;AECA 0000
add [bx+si],al                            ;AECC 0000
add [bx+si],al                            ;AECE 0000
add [bx+si],al                            ;AED0 0000
add [bx+si],al                            ;AED2 0000
add [bx+si],al                            ;AED4 0000
add [bx+si],al                            ;AED6 0000
add [bx+si],al                            ;AED8 0000
add [bx+si],al                            ;AEDA 0000
add [bx+si],al                            ;AEDC 0000
add [bx+si],al                            ;AEDE 0000
add [bx+si],al                            ;AEE0 0000
add [bx+si],al                            ;AEE2 0000
add [bx+si],al                            ;AEE4 0000
add [bx+si],al                            ;AEE6 0000
add [bx+si],al                            ;AEE8 0000
add [bx+si],al                            ;AEEA 0000
add [bx+si],al                            ;AEEC 0000
add [bx+si],al                            ;AEEE 0000
add [bx+si],al                            ;AEF0 0000
add [bx+si],al                            ;AEF2 0000
add [bx+si],al                            ;AEF4 0000
add [bx+si],al                            ;AEF6 0000
add [bx+si],al                            ;AEF8 0000
add [bx+si],al                            ;AEFA 0000
add [bx+si],al                            ;AEFC 0000
add [bx+si],al                            ;AEFE 0000
add [bx+si],al                            ;AF00 0000
add [bx+si],al                            ;AF02 0000
add [bx+si],al                            ;AF04 0000
add [bx+si],al                            ;AF06 0000
add [bx+si],al                            ;AF08 0000
add [bx+si],al                            ;AF0A 0000
add [bx+si],al                            ;AF0C 0000
add [bx+si],al                            ;AF0E 0000
add [bx+si],al                            ;AF10 0000
add [bx+si],al                            ;AF12 0000
add [bx+si],al                            ;AF14 0000
add [bx+si],al                            ;AF16 0000
add [bx+si],al                            ;AF18 0000
add [bx+si],al                            ;AF1A 0000
add [bx+si],al                            ;AF1C 0000
add [bx+si],al                            ;AF1E 0000
add [bx+si],al                            ;AF20 0000
add [bx+si],al                            ;AF22 0000
add [bx+si],al                            ;AF24 0000
add [bx+si],al                            ;AF26 0000
add [bx+si],al                            ;AF28 0000
add [bx+si],al                            ;AF2A 0000
add [bx+si],al                            ;AF2C 0000
add [bx+si],al                            ;AF2E 0000
add [bx+si],al                            ;AF30 0000
add [bx+si],al                            ;AF32 0000
add [bx+si],al                            ;AF34 0000
add [bx+si],al                            ;AF36 0000
add [bx+si],al                            ;AF38 0000
add [bx+si],al                            ;AF3A 0000
add [bx+si],al                            ;AF3C 0000
add [bx+si],al                            ;AF3E 0000
add [bx+si],al                            ;AF40 0000
add [bx+si],al                            ;AF42 0000
add [bx+si],al                            ;AF44 0000
add [bx+si],al                            ;AF46 0000
add [bx+si],al                            ;AF48 0000
add [bx+si],al                            ;AF4A 0000
add [bx+si],al                            ;AF4C 0000
add [bx+si],al                            ;AF4E 0000
add [bx+si],al                            ;AF50 0000
add [bx+si],al                            ;AF52 0000
add [bx+si],al                            ;AF54 0000
add [bx+si],al                            ;AF56 0000
add [bx+si],al                            ;AF58 0000
add [bx+si],al                            ;AF5A 0000
add [bx+si],al                            ;AF5C 0000
add [bx+si],al                            ;AF5E 0000
add [bx+si],al                            ;AF60 0000
add [bx+si],al                            ;AF62 0000
add [bx+si],al                            ;AF64 0000
add [bx+si],al                            ;AF66 0000
add [bx+si],al                            ;AF68 0000
add [bx+si],al                            ;AF6A 0000
add [bx+si],al                            ;AF6C 0000
add [bx+si],al                            ;AF6E 0000
add [bx+si],al                            ;AF70 0000
add [bx+si],al                            ;AF72 0000
add [bx+si],al                            ;AF74 0000
add [bx+si],al                            ;AF76 0000
add [bx+si],al                            ;AF78 0000
add [bx+si],al                            ;AF7A 0000
add [bx+si],al                            ;AF7C 0000
add [bx+si],al                            ;AF7E 0000
add [bx+si],al                            ;AF80 0000
add [bx+si],al                            ;AF82 0000
add [bx+si],al                            ;AF84 0000
add [bx+si],al                            ;AF86 0000
add [bx+si],al                            ;AF88 0000
add [bx+si],al                            ;AF8A 0000
add [bx+si],al                            ;AF8C 0000
add [bx+si],al                            ;AF8E 0000
add [bx+si],al                            ;AF90 0000
add [bx+si],al                            ;AF92 0000
add [bx+si],al                            ;AF94 0000
add [bx+si],al                            ;AF96 0000
add [bx+si],al                            ;AF98 0000
add [bx+si],al                            ;AF9A 0000
add [bx+si],al                            ;AF9C 0000
add [bx+si],al                            ;AF9E 0000
add [bx+si],al                            ;AFA0 0000
add [bx+si],al                            ;AFA2 0000
add [bx+si],al                            ;AFA4 0000
add [bx+si],al                            ;AFA6 0000
add [bx+si],al                            ;AFA8 0000
add [bx+si],al                            ;AFAA 0000
add [bx+si],al                            ;AFAC 0000
add [bx+si],al                            ;AFAE 0000
add [bx+si],al                            ;AFB0 0000
add [bx+si],al                            ;AFB2 0000
add [bx+si],al                            ;AFB4 0000
add [bx+si],al                            ;AFB6 0000
add [bx+si],al                            ;AFB8 0000
add [bx+si],al                            ;AFBA 0000
add [bx+si],al                            ;AFBC 0000
add [bx+si],al                            ;AFBE 0000
add [bx+si],al                            ;AFC0 0000
add [bx+si],al                            ;AFC2 0000
add [bx+si],al                            ;AFC4 0000
add [bx+si],al                            ;AFC6 0000
add [bx+si],al                            ;AFC8 0000
add [bx+si],al                            ;AFCA 0000
add [bx+si],al                            ;AFCC 0000
add [bx+si],al                            ;AFCE 0000
add [bx+si],al                            ;AFD0 0000
add [bx+si],al                            ;AFD2 0000
add [bx+si],al                            ;AFD4 0000
add [bx+si],al                            ;AFD6 0000
add [bx+si],al                            ;AFD8 0000
add [bx+si],al                            ;AFDA 0000
add [bx+si],al                            ;AFDC 0000
add [bx+si],al                            ;AFDE 0000
add [bx+si],al                            ;AFE0 0000
add [bx+si],al                            ;AFE2 0000
add [bx+si],al                            ;AFE4 0000
add [bx+si],al                            ;AFE6 0000
add [bx+si],al                            ;AFE8 0000
add [bx+si],al                            ;AFEA 0000
add [bx+si],al                            ;AFEC 0000
add [bx+si],al                            ;AFEE 0000
add [bx+si],al                            ;AFF0 0000
add [bx+si],al                            ;AFF2 0000
add [bx+si],al                            ;AFF4 0000
add [bx+si],al                            ;AFF6 0000
add [bx+si],al                            ;AFF8 0000
add [bx+si],al                            ;AFFA 0000
add [bx+si],al                            ;AFFC 0000
add [bx+si],al                            ;AFFE 0000
add [bx+si],al                            ;B000 0000
add [bx+si],al                            ;B002 0000
add [bx+si],al                            ;B004 0000
add [bx+si],al                            ;B006 0000
add [bx+si],al                            ;B008 0000
add [bx+si],al                            ;B00A 0000
add [bx+si],al                            ;B00C 0000
add [bx+si],al                            ;B00E 0000
add [bx+si],al                            ;B010 0000
add [bx+si],al                            ;B012 0000
add [bx+si],al                            ;B014 0000
add [bx+si],al                            ;B016 0000
add [bx+si],al                            ;B018 0000
add [bx+si],al                            ;B01A 0000
add [bx+si],al                            ;B01C 0000
add [bx+si],al                            ;B01E 0000
add [bx+si],al                            ;B020 0000
add [bx+si],al                            ;B022 0000
add [bx+si],al                            ;B024 0000
add [bx+si],al                            ;B026 0000
add [bx+si],al                            ;B028 0000
add [bx+si],al                            ;B02A 0000
add [bx+si],al                            ;B02C 0000
add [bx+si],al                            ;B02E 0000
add [bx+si],al                            ;B030 0000
add [bx+si],al                            ;B032 0000
add [bx+si],al                            ;B034 0000
add [bx+si],al                            ;B036 0000
add [bx+si],al                            ;B038 0000
add [bx+si],al                            ;B03A 0000
add [bx+si],al                            ;B03C 0000
add [bx+si],al                            ;B03E 0000
add [bx+si],al                            ;B040 0000
add [bx+si],al                            ;B042 0000
add [bx+si],al                            ;B044 0000
add [bx+si],al                            ;B046 0000
add [bx+si],al                            ;B048 0000
add [bx+si],al                            ;B04A 0000
add [bx+si],al                            ;B04C 0000
add [bx+si],al                            ;B04E 0000
add [bx+si],al                            ;B050 0000
add [bx+si],al                            ;B052 0000
add [bx+si],al                            ;B054 0000
add [bx+si],al                            ;B056 0000
add [bx+si],al                            ;B058 0000
add [bx+si],al                            ;B05A 0000
add [bx+si],al                            ;B05C 0000
add [bx+si],al                            ;B05E 0000
add [bx+si],al                            ;B060 0000
add [bx+si],al                            ;B062 0000
add [bx+si],al                            ;B064 0000
add [bx+si],al                            ;B066 0000
add [bx+si],al                            ;B068 0000
add [bx+si],al                            ;B06A 0000
add [bx+si],al                            ;B06C 0000
add [bx+si],al                            ;B06E 0000
add [bx+si],al                            ;B070 0000
add [bx+si],al                            ;B072 0000
add [bx+si],al                            ;B074 0000
add [bx+si],al                            ;B076 0000
add [bx+si],al                            ;B078 0000
add [bx+si],al                            ;B07A 0000
add [bx+si],al                            ;B07C 0000
add [bx+si],al                            ;B07E 0000
add [bx+si],al                            ;B080 0000
add [bx+si],al                            ;B082 0000
add [bx+si],al                            ;B084 0000
add [bx+si],al                            ;B086 0000
add [bx+si],al                            ;B088 0000
add [bx+si],al                            ;B08A 0000
add [bx+si],al                            ;B08C 0000
add [bx+si],al                            ;B08E 0000
add [bx+si],al                            ;B090 0000
add [bx+si],al                            ;B092 0000
add [bx+si],al                            ;B094 0000
add [bx+si],al                            ;B096 0000
add [bx+si],al                            ;B098 0000
add [bx+si],al                            ;B09A 0000
add [bx+si],al                            ;B09C 0000
add [bx+si],al                            ;B09E 0000
add [bx+si],al                            ;B0A0 0000
add [bx+si],al                            ;B0A2 0000
add [bx+si],al                            ;B0A4 0000
add [bx+si],al                            ;B0A6 0000
add [bx+si],al                            ;B0A8 0000
add [bx+si],al                            ;B0AA 0000
add [bx+si],al                            ;B0AC 0000
add [bx+si],al                            ;B0AE 0000
add [bx+si],al                            ;B0B0 0000
add [bx+si],al                            ;B0B2 0000
add [bx+si],al                            ;B0B4 0000
add [bx+si],al                            ;B0B6 0000
add [bx+si],al                            ;B0B8 0000
add [bx+si],al                            ;B0BA 0000
add [bx+si],al                            ;B0BC 0000
add [bx+si],al                            ;B0BE 0000
add [bx+si],al                            ;B0C0 0000
add [bx+si],al                            ;B0C2 0000
add [bx+si],al                            ;B0C4 0000
add [bx+si],al                            ;B0C6 0000
add [bx+si],al                            ;B0C8 0000
add [bx+si],al                            ;B0CA 0000
add [bx+si],al                            ;B0CC 0000
add [bx+si],al                            ;B0CE 0000
add [bx+si],al                            ;B0D0 0000
add [bx+si],al                            ;B0D2 0000
add [bx+si],al                            ;B0D4 0000
add [bx+si],al                            ;B0D6 0000
add [bx+si],al                            ;B0D8 0000
add [bx+si],al                            ;B0DA 0000
add [bx+si],al                            ;B0DC 0000
add [bx+si],al                            ;B0DE 0000
add [bx+si],al                            ;B0E0 0000
add [bx+si],al                            ;B0E2 0000
add [bx+si],al                            ;B0E4 0000
add [bx+si],al                            ;B0E6 0000
add [bx+si],al                            ;B0E8 0000
add [bx+si],al                            ;B0EA 0000
add [bx+si],al                            ;B0EC 0000
add [bx+si],al                            ;B0EE 0000
add [bx+si],al                            ;B0F0 0000
add [bx+si],al                            ;B0F2 0000
add [bx+si],al                            ;B0F4 0000
add [bx+si],al                            ;B0F6 0000
add [bx+si],al                            ;B0F8 0000
add [bx+si],al                            ;B0FA 0000
add [bx+si],al                            ;B0FC 0000
add [bx+si],al                            ;B0FE 0000
add [bx+si],al                            ;B100 0000
add [bx+si],al                            ;B102 0000
add [bx+si],al                            ;B104 0000
add [bx+si],al                            ;B106 0000
add [bx+si],al                            ;B108 0000
add [bx+si],al                            ;B10A 0000
add [bx+si],al                            ;B10C 0000
add [bx+si],al                            ;B10E 0000
add [bx+si],al                            ;B110 0000
add [bx+si],al                            ;B112 0000
add [bx+si],al                            ;B114 0000
add [bx+si],al                            ;B116 0000
add [bx+si],al                            ;B118 0000
add [bx+si],al                            ;B11A 0000
add [bx+si],al                            ;B11C 0000
add [bx+si],al                            ;B11E 0000
add [bx+si],al                            ;B120 0000
add [bx+si],al                            ;B122 0000
add [bx+si],al                            ;B124 0000
add [bx+si],al                            ;B126 0000
add [bx+si],al                            ;B128 0000
add [bx+si],al                            ;B12A 0000
add [bx+si],al                            ;B12C 0000
add [bx+si],al                            ;B12E 0000
add [bx+si],al                            ;B130 0000
add [bx+si],al                            ;B132 0000
add [bx+si],al                            ;B134 0000
add [bx+si],al                            ;B136 0000
add [bx+si],al                            ;B138 0000
add [bx+si],al                            ;B13A 0000
add [bx+si],al                            ;B13C 0000
add [bx+si],al                            ;B13E 0000
add [bx+si],al                            ;B140 0000
add [bx+si],al                            ;B142 0000
add [bx+si],al                            ;B144 0000
add [bx+si],al                            ;B146 0000
add [bx+si],al                            ;B148 0000
add [bx+si],al                            ;B14A 0000
add [bx+si],al                            ;B14C 0000
add [bx+si],al                            ;B14E 0000
add [bx+si],al                            ;B150 0000
add [bx+si],al                            ;B152 0000
add [bx+si],al                            ;B154 0000
add [bx+si],al                            ;B156 0000
add [bx+si],al                            ;B158 0000
add [bx+si],al                            ;B15A 0000
add [bx+si],al                            ;B15C 0000
add [bx+si],al                            ;B15E 0000
add [bx+si],al                            ;B160 0000
add [bx+si],al                            ;B162 0000
add [bx+si],al                            ;B164 0000
add [bx+si],al                            ;B166 0000
add [bx+si],al                            ;B168 0000
add [bx+si],al                            ;B16A 0000
add [bx+si],al                            ;B16C 0000
add [bx+si],al                            ;B16E 0000
add [bx+si],al                            ;B170 0000
add [bx+si],al                            ;B172 0000
add [bx+si],al                            ;B174 0000
add [bx+si],al                            ;B176 0000
add [bx+si],al                            ;B178 0000
add [bx+si],al                            ;B17A 0000
add [bx+si],al                            ;B17C 0000
add [bx+si],al                            ;B17E 0000
add [bx+si],al                            ;B180 0000
add [bx+si],al                            ;B182 0000
add [bx+si],al                            ;B184 0000
add [bx+si],al                            ;B186 0000
add [bx+si],al                            ;B188 0000
add [bx+si],al                            ;B18A 0000
add [bx+si],al                            ;B18C 0000
add [bx+si],al                            ;B18E 0000
add [bx+si],al                            ;B190 0000
add [bx+si],al                            ;B192 0000
add [bx+si],al                            ;B194 0000
add [bx+si],al                            ;B196 0000
add [bx+si],al                            ;B198 0000
add [bx+si],al                            ;B19A 0000
add [bx+si],al                            ;B19C 0000
add [bx+si],al                            ;B19E 0000
add [bx+si],al                            ;B1A0 0000
add [bx+si],al                            ;B1A2 0000
add [bx+si],al                            ;B1A4 0000
add [bx+si],al                            ;B1A6 0000
add [bx+si],al                            ;B1A8 0000
add [bx+si],al                            ;B1AA 0000
add [bx+si],al                            ;B1AC 0000
add [bx+si],al                            ;B1AE 0000
add [bx+si],al                            ;B1B0 0000
add [bx+si],al                            ;B1B2 0000
add [bx+si],al                            ;B1B4 0000
add [bx+si],al                            ;B1B6 0000
add [bx+si],al                            ;B1B8 0000
add [bx+si],al                            ;B1BA 0000
add [bx+si],al                            ;B1BC 0000
add [bx+si],al                            ;B1BE 0000
add [bx+si],al                            ;B1C0 0000
add [bx+si],al                            ;B1C2 0000
add [bx+si],al                            ;B1C4 0000
add [bx+si],al                            ;B1C6 0000
add [bx+si],al                            ;B1C8 0000
add [bx+si],al                            ;B1CA 0000
add [bx+si],al                            ;B1CC 0000
add [bx+si],al                            ;B1CE 0000
add [bx+si],al                            ;B1D0 0000
add [bx+si],al                            ;B1D2 0000
add [bx+si],al                            ;B1D4 0000
add [bx+si],al                            ;B1D6 0000
add [bx+si],al                            ;B1D8 0000
add [bx+si],al                            ;B1DA 0000
add [bx+si],al                            ;B1DC 0000
add [bx+si],al                            ;B1DE 0000
add [bx+si],al                            ;B1E0 0000
add [bx+si],al                            ;B1E2 0000
add [bx+si],al                            ;B1E4 0000
add [bx+si],al                            ;B1E6 0000
add [bx+si],al                            ;B1E8 0000
add [bx+si],al                            ;B1EA 0000
add [bx+si],al                            ;B1EC 0000
add [bx+si],al                            ;B1EE 0000
add [bx+si],al                            ;B1F0 0000
add [bx+si],al                            ;B1F2 0000
add [bx+si],al                            ;B1F4 0000
add [bx+si],al                            ;B1F6 0000
add [bx+si],al                            ;B1F8 0000
add [bx+si],al                            ;B1FA 0000
add [bx+si],al                            ;B1FC 0000
add [bx+si],al                            ;B1FE 0000
add [bx+si],al                            ;B200 0000
add [bx+si],al                            ;B202 0000
add [bx+si],al                            ;B204 0000
add [bx+si],al                            ;B206 0000
add [bx+si],al                            ;B208 0000
add [bx+si],al                            ;B20A 0000
add [bx+si],al                            ;B20C 0000
add [bx+si],al                            ;B20E 0000
add [bx+si],al                            ;B210 0000
add [bx+si],al                            ;B212 0000
add [bx+si],al                            ;B214 0000
add [bx+si],al                            ;B216 0000
add [bx+si],al                            ;B218 0000
add [bx+si],al                            ;B21A 0000
add [bx+si],al                            ;B21C 0000
add [bx+si],al                            ;B21E 0000
add [bx+si],al                            ;B220 0000
add [bx+si],al                            ;B222 0000
add [bx+si],al                            ;B224 0000
add [bx+si],al                            ;B226 0000
add [bx+si],al                            ;B228 0000
add [bx+si],al                            ;B22A 0000
add [bx+si],al                            ;B22C 0000
add [bx+si],al                            ;B22E 0000
add [bx+si],al                            ;B230 0000
add [bx+si],al                            ;B232 0000
add [bx+si],al                            ;B234 0000
add [bx+si],al                            ;B236 0000
add [bx+si],al                            ;B238 0000
add [bx+si],al                            ;B23A 0000
add [bx+si],al                            ;B23C 0000
add [bx+si],al                            ;B23E 0000
add [bx+si],al                            ;B240 0000
add [bx+si],al                            ;B242 0000
add [bx+si],al                            ;B244 0000
add [bx+si],al                            ;B246 0000
add [bx+si],al                            ;B248 0000
add [bx+si],al                            ;B24A 0000
add [bx+si],al                            ;B24C 0000
add [bx+si],al                            ;B24E 0000
add [bx+si],al                            ;B250 0000
add [bx+si],al                            ;B252 0000
add [bx+si],al                            ;B254 0000
add [bx+si],al                            ;B256 0000
add [bx+si],al                            ;B258 0000
add [bx+si],al                            ;B25A 0000
add [bx+si],al                            ;B25C 0000
add [bx+si],al                            ;B25E 0000
add [bx+si],al                            ;B260 0000
add [bx+si],al                            ;B262 0000
add [bx+si],al                            ;B264 0000
add [bx+si],al                            ;B266 0000
add [bx+si],al                            ;B268 0000
add [bx+si],al                            ;B26A 0000
add [bx+si],al                            ;B26C 0000
add [bx+si],al                            ;B26E 0000
add [bx+si],al                            ;B270 0000
add [bx+si],al                            ;B272 0000
add [bx+si],al                            ;B274 0000
add [bx+si],al                            ;B276 0000
add [bx+si],al                            ;B278 0000
add [bx+si],al                            ;B27A 0000
add [bx+si],al                            ;B27C 0000
add [bx+si],al                            ;B27E 0000
add [bx+si],al                            ;B280 0000
add [bx+si],al                            ;B282 0000
add [bx+si],al                            ;B284 0000
add [bx+si],al                            ;B286 0000
add [bx+si],al                            ;B288 0000
add [bx+si],al                            ;B28A 0000
add [bx+si],al                            ;B28C 0000
add [bx+si],al                            ;B28E 0000
add [bx+si],al                            ;B290 0000
add [bx+si],al                            ;B292 0000
add [bx+si],al                            ;B294 0000
add [bx+si],al                            ;B296 0000
add [bx+si],al                            ;B298 0000
add [bx+si],al                            ;B29A 0000
add [bx+si],al                            ;B29C 0000
add [bx+si],al                            ;B29E 0000
add [bx+si],al                            ;B2A0 0000
add [bx+si],al                            ;B2A2 0000
add [bx+si],al                            ;B2A4 0000
add [bx+si],al                            ;B2A6 0000
add [bx+si],al                            ;B2A8 0000
add [bx+si],al                            ;B2AA 0000
add [bx+si],al                            ;B2AC 0000
add [bx+si],al                            ;B2AE 0000
add [bx+si],al                            ;B2B0 0000
add [bx+si],al                            ;B2B2 0000
add [bx+si],al                            ;B2B4 0000
add [bx+si],al                            ;B2B6 0000
add [bx+si],al                            ;B2B8 0000
add [bx+si],al                            ;B2BA 0000
add [bx+si],al                            ;B2BC 0000
add [bx+si],al                            ;B2BE 0000
add [bx+si],al                            ;B2C0 0000
add [bx+si],al                            ;B2C2 0000
add [bx+si],al                            ;B2C4 0000
add [bx+si],al                            ;B2C6 0000
add [bx+si],al                            ;B2C8 0000
add [bx+si],al                            ;B2CA 0000
add [bx+si],al                            ;B2CC 0000
add [bx+si],al                            ;B2CE 0000
add [bx+si],al                            ;B2D0 0000
add [bx+si],al                            ;B2D2 0000
add [bx+si],al                            ;B2D4 0000
add [bx+si],al                            ;B2D6 0000
add [bx+si],al                            ;B2D8 0000
add [bx+si],al                            ;B2DA 0000
add [bx+si],al                            ;B2DC 0000
add [bx+si],al                            ;B2DE 0000
add [bx+si],al                            ;B2E0 0000
add [bx+si],al                            ;B2E2 0000
add [bx+si],al                            ;B2E4 0000
add [bx+si],al                            ;B2E6 0000
add [bx+si],al                            ;B2E8 0000
add [bx+si],al                            ;B2EA 0000
add [bx+si],al                            ;B2EC 0000
add [bx+si],al                            ;B2EE 0000
add [bx+si],al                            ;B2F0 0000
add [bx+si],al                            ;B2F2 0000
add [bx+si],al                            ;B2F4 0000
add [bx+si],al                            ;B2F6 0000
add [bx+si],al                            ;B2F8 0000
add [bx+si],al                            ;B2FA 0000
add [bx+si],al                            ;B2FC 0000
add [bx+si],al                            ;B2FE 0000
add [bx+si],al                            ;B300 0000
add [bx+si],al                            ;B302 0000
add [bx+si],al                            ;B304 0000
add [bx+si],al                            ;B306 0000
add [bx+si],al                            ;B308 0000
add [bx+si],al                            ;B30A 0000
add [bx+si],al                            ;B30C 0000
add [bx+si],al                            ;B30E 0000
add [bx+si],al                            ;B310 0000
add [bx+si],al                            ;B312 0000
add [bx+si],al                            ;B314 0000
add [bx+si],al                            ;B316 0000
add [bx+si],al                            ;B318 0000
add [bx+si],al                            ;B31A 0000
add [bx+si],al                            ;B31C 0000
add [bx+si],al                            ;B31E 0000
add [bx+si],al                            ;B320 0000
add [bx+si],al                            ;B322 0000
add [bx+si],al                            ;B324 0000
add [bx+si],al                            ;B326 0000
add [bx+si],al                            ;B328 0000
add [bx+si],al                            ;B32A 0000
add [bx+si],al                            ;B32C 0000
add [bx+si],al                            ;B32E 0000
add [bx+si],al                            ;B330 0000
add [bx+si],al                            ;B332 0000
add [bx+si],al                            ;B334 0000
add [bx+si],al                            ;B336 0000
add [bx+si],al                            ;B338 0000
add [bx+si],al                            ;B33A 0000
add [bx+si],al                            ;B33C 0000
add [bx+si],al                            ;B33E 0000
add [bx+si],al                            ;B340 0000
add [bx+si],al                            ;B342 0000
add [bx+si],al                            ;B344 0000
add [bx+si],al                            ;B346 0000
add [bx+si],al                            ;B348 0000
add [bx+si],al                            ;B34A 0000
add [bx+si],al                            ;B34C 0000
add [bx+si],al                            ;B34E 0000
add [bx+si],al                            ;B350 0000
add [bx+si],al                            ;B352 0000
add [bx+si],al                            ;B354 0000
add [bx+si],al                            ;B356 0000
add [bx+si],al                            ;B358 0000
add [bx+si],al                            ;B35A 0000
add [bx+si],al                            ;B35C 0000
add [bx+si],al                            ;B35E 0000
add [bx+si],al                            ;B360 0000
add [bx+si],al                            ;B362 0000
add [bx+si],al                            ;B364 0000
add [bx+si],al                            ;B366 0000
add [bx+si],al                            ;B368 0000
add [bx+si],al                            ;B36A 0000
add [bx+si],al                            ;B36C 0000
add [bx+si],al                            ;B36E 0000
add [bx+si],al                            ;B370 0000
add [bx+si],al                            ;B372 0000
add [bx+si],al                            ;B374 0000
add [bx+si],al                            ;B376 0000
add [bx+si],al                            ;B378 0000
add [bx+si],al                            ;B37A 0000
add [bx+si],al                            ;B37C 0000
add [bx+si],al                            ;B37E 0000
add [bx+si],al                            ;B380 0000
add [bx+si],al                            ;B382 0000
add [bx+si],al                            ;B384 0000
add [bx+si],al                            ;B386 0000
add [bx+si],al                            ;B388 0000
add [bx+si],al                            ;B38A 0000
add [bx+si],al                            ;B38C 0000
add [bx+si],al                            ;B38E 0000
add [bx+si],al                            ;B390 0000
add [bx+si],al                            ;B392 0000
add [bx+si],al                            ;B394 0000
add [bx+si],al                            ;B396 0000
add [bx+si],al                            ;B398 0000
add [bx+si],al                            ;B39A 0000
add [bx+si],al                            ;B39C 0000
add [bx+si],al                            ;B39E 0000
add [bx+si],al                            ;B3A0 0000
add [bx+si],al                            ;B3A2 0000
add [bx+si],al                            ;B3A4 0000
add [bx+si],al                            ;B3A6 0000
add [bx+si],al                            ;B3A8 0000
add [bx+si],al                            ;B3AA 0000
add [bx+si],al                            ;B3AC 0000
add [bx+si],al                            ;B3AE 0000
add [bx+si],al                            ;B3B0 0000
add [bx+si],al                            ;B3B2 0000
add [bx+si],al                            ;B3B4 0000
add [bx+si],al                            ;B3B6 0000
add [bx+si],al                            ;B3B8 0000
add [bx+si],al                            ;B3BA 0000
add [bx+si],al                            ;B3BC 0000
add [bx+si],al                            ;B3BE 0000
add [bx+si],al                            ;B3C0 0000
add [bx+si],al                            ;B3C2 0000
add [bx+si],al                            ;B3C4 0000
add [bx+si],al                            ;B3C6 0000
add [bx+si],al                            ;B3C8 0000
add [bx+si],al                            ;B3CA 0000
add [bx+si],al                            ;B3CC 0000
add [bx+si],al                            ;B3CE 0000
add [bx+si],al                            ;B3D0 0000
add [bx+si],al                            ;B3D2 0000
add [bx+si],al                            ;B3D4 0000
add [bx+si],al                            ;B3D6 0000
add [bx+si],al                            ;B3D8 0000
add [bx+si],al                            ;B3DA 0000
add [bx+si],al                            ;B3DC 0000
add [bx+si],al                            ;B3DE 0000
add [bx+si],al                            ;B3E0 0000
add [bx+si],al                            ;B3E2 0000
add [bx+si],al                            ;B3E4 0000
add [bx+si],al                            ;B3E6 0000
add [bx+si],al                            ;B3E8 0000
add [bx+si],al                            ;B3EA 0000
add [bx+si],al                            ;B3EC 0000
add [bx+si],al                            ;B3EE 0000
add [bx+si],al                            ;B3F0 0000
add [bx+si],al                            ;B3F2 0000
add [bx+si],al                            ;B3F4 0000
add [bx+si],al                            ;B3F6 0000
add [bx+si],al                            ;B3F8 0000
add [bx+si],al                            ;B3FA 0000
add [bx+si],al                            ;B3FC 0000
add [bx+si],al                            ;B3FE 0000
add [bx+si],al                            ;B400 0000
add [bx+si],al                            ;B402 0000
add [bx+si],al                            ;B404 0000
add [bx+si],al                            ;B406 0000
add [bx+si],al                            ;B408 0000
add [bx+si],al                            ;B40A 0000
add [bx+si],al                            ;B40C 0000
add [bx+si],al                            ;B40E 0000
add [bx+si],al                            ;B410 0000
add [bx+si],al                            ;B412 0000
add [bx+si],al                            ;B414 0000
add [bx+si],al                            ;B416 0000
add [bx+si],al                            ;B418 0000
add [bx+si],al                            ;B41A 0000
add [bx+si],al                            ;B41C 0000
add [bx+si],al                            ;B41E 0000
add [bx+si],al                            ;B420 0000
add [bx+si],al                            ;B422 0000
add [bx+si],al                            ;B424 0000
add [bx+si],al                            ;B426 0000
add [bx+si],al                            ;B428 0000
add [bx+si],al                            ;B42A 0000
add [bx+si],al                            ;B42C 0000
add [bx+si],al                            ;B42E 0000
add [bx+si],al                            ;B430 0000
add [bx+si],al                            ;B432 0000
add [bx+si],al                            ;B434 0000
add [bx+si],al                            ;B436 0000
add [bx+si],al                            ;B438 0000
add [bx+si],al                            ;B43A 0000
add [bx+si],al                            ;B43C 0000
add [bx+si],al                            ;B43E 0000
add [bx+si],al                            ;B440 0000
add [bx+si],al                            ;B442 0000
add [bx+si],al                            ;B444 0000
add [bx+si],al                            ;B446 0000
add [bx+si],al                            ;B448 0000
add [bx+si],al                            ;B44A 0000
add [bx+si],al                            ;B44C 0000
add [bx+si],al                            ;B44E 0000
add [bx+si],al                            ;B450 0000
add [bx+si],al                            ;B452 0000
add [bx+si],al                            ;B454 0000
add [bx+si],al                            ;B456 0000
add [bx+si],al                            ;B458 0000
add [bx+si],al                            ;B45A 0000
add [bx+si],al                            ;B45C 0000
add [bx+si],al                            ;B45E 0000
add [bx+si],al                            ;B460 0000
add [bx+si],al                            ;B462 0000
add [bx+si],al                            ;B464 0000
add [bx+si],al                            ;B466 0000
add [bx+si],al                            ;B468 0000
add [bx+si],al                            ;B46A 0000
add [bx+si],al                            ;B46C 0000
add [bx+si],al                            ;B46E 0000
add [bx+si],al                            ;B470 0000
add [bx+si],al                            ;B472 0000
add [bx+si],al                            ;B474 0000
add [bx+si],al                            ;B476 0000
add [bx+si],al                            ;B478 0000
add [bx+si],al                            ;B47A 0000
add [bx+si],al                            ;B47C 0000
add [bx+si],al                            ;B47E 0000
add [bx+si],al                            ;B480 0000
add [bx+si],al                            ;B482 0000
add [bx+si],al                            ;B484 0000
add [bx+si],al                            ;B486 0000
add [bx+si],al                            ;B488 0000
add [bx+si],al                            ;B48A 0000
add [bx+si],al                            ;B48C 0000
add [bx+si],al                            ;B48E 0000
add [bx+si],al                            ;B490 0000
add [bx+si],al                            ;B492 0000
add [bx+si],al                            ;B494 0000
add [bx+si],al                            ;B496 0000
add [bx+si],al                            ;B498 0000
add [bx+si],al                            ;B49A 0000
add [bx+si],al                            ;B49C 0000
add [bx+si],al                            ;B49E 0000
add [bx+si],al                            ;B4A0 0000
add [bx+si],al                            ;B4A2 0000
add [bx+si],al                            ;B4A4 0000
add [bx+si],al                            ;B4A6 0000
add [bx+si],al                            ;B4A8 0000
add [bx+si],al                            ;B4AA 0000
add [bx+si],al                            ;B4AC 0000
add [bx+si],al                            ;B4AE 0000
add [bx+si],al                            ;B4B0 0000
add [bx+si],al                            ;B4B2 0000
add [bx+si],al                            ;B4B4 0000
add [bx+si],al                            ;B4B6 0000
add [bx+si],al                            ;B4B8 0000
add [bx+si],al                            ;B4BA 0000
add [bx+si],al                            ;B4BC 0000
add [bx+si],al                            ;B4BE 0000
add [bx+si],al                            ;B4C0 0000
add [bx+si],al                            ;B4C2 0000
add [bx+si],al                            ;B4C4 0000
add [bx+si],al                            ;B4C6 0000
add [bx+si],al                            ;B4C8 0000
add [bx+si],al                            ;B4CA 0000
add [bx+si],al                            ;B4CC 0000
add [bx+si],al                            ;B4CE 0000
add [bx+si],al                            ;B4D0 0000
add [bx+si],al                            ;B4D2 0000
add [bx+si],al                            ;B4D4 0000
add [bx+si],al                            ;B4D6 0000
add [bx+si],al                            ;B4D8 0000
add [bx+si],al                            ;B4DA 0000
add [bx+si],al                            ;B4DC 0000
add [bx+si],al                            ;B4DE 0000
add [bx+si],al                            ;B4E0 0000
add [bx+si],al                            ;B4E2 0000
add [bx+si],al                            ;B4E4 0000
add [bx+si],al                            ;B4E6 0000
add [bx+si],al                            ;B4E8 0000
add [bx+si],al                            ;B4EA 0000
add [bx+si],al                            ;B4EC 0000
add [bx+si],al                            ;B4EE 0000
add [bx+si],al                            ;B4F0 0000
add [bx+si],al                            ;B4F2 0000
add [bx+si],al                            ;B4F4 0000
add [bx+si],al                            ;B4F6 0000
add [bx+si],al                            ;B4F8 0000
add [bx+si],al                            ;B4FA 0000
add [bx+si],al                            ;B4FC 0000
add [bx+si],al                            ;B4FE 0000
add [bx+si],al                            ;B500 0000
add [bx+si],al                            ;B502 0000
add [bx+si],al                            ;B504 0000
add [bx+si],al                            ;B506 0000
add [bx+si],al                            ;B508 0000
add [bx+si],al                            ;B50A 0000
add [bx+si],al                            ;B50C 0000
add [bx+si],al                            ;B50E 0000
add [bx+si],al                            ;B510 0000
add [bx+si],al                            ;B512 0000
add [bx+si],al                            ;B514 0000
add [bx+si],al                            ;B516 0000
add [bx+si],al                            ;B518 0000
add [bx+si],al                            ;B51A 0000
add [bx+si],al                            ;B51C 0000
add [bx+si],al                            ;B51E 0000
add [bx+si],al                            ;B520 0000
add [bx+si],al                            ;B522 0000
add [bx+si],al                            ;B524 0000
add [bx+si],al                            ;B526 0000
add [bx+si],al                            ;B528 0000
add [bx+si],al                            ;B52A 0000
add [bx+si],al                            ;B52C 0000
add [bx+si],al                            ;B52E 0000
add [bx+si],al                            ;B530 0000
add [bx+si],al                            ;B532 0000
add [bx+si],al                            ;B534 0000
add [bx+si],al                            ;B536 0000
add [bx+si],al                            ;B538 0000
add [bx+si],al                            ;B53A 0000
add [bx+si],al                            ;B53C 0000
add [bx+si],al                            ;B53E 0000
add [bx+si],al                            ;B540 0000
add [bx+si],al                            ;B542 0000
add [bx+si],al                            ;B544 0000
add [bx+si],al                            ;B546 0000
add [bx+si],al                            ;B548 0000
add [bx+si],al                            ;B54A 0000
add [bx+si],al                            ;B54C 0000
add [bx+si],al                            ;B54E 0000
add [bx+si],al                            ;B550 0000
add [bx+si],al                            ;B552 0000
add [bx+si],al                            ;B554 0000
add [bx+si],al                            ;B556 0000
add [bx+si],al                            ;B558 0000
add [bx+si],al                            ;B55A 0000
add [bx+si],al                            ;B55C 0000
add [bx+si],al                            ;B55E 0000
add [bx+si],al                            ;B560 0000
add [bx+si],al                            ;B562 0000
add [bx+si],al                            ;B564 0000
add [bx+si],al                            ;B566 0000
add [bx+si],al                            ;B568 0000
add [bx+si],al                            ;B56A 0000
add [bx+si],al                            ;B56C 0000
add [bx+si],al                            ;B56E 0000
add [bx+si],al                            ;B570 0000
add [bx+si],al                            ;B572 0000
add [bx+si],al                            ;B574 0000
add [bx+si],al                            ;B576 0000
add [bx+si],al                            ;B578 0000
add [bx+si],al                            ;B57A 0000
add [bx+si],al                            ;B57C 0000
add [bx+si],al                            ;B57E 0000
add [bx+si],al                            ;B580 0000
add [bx+si],al                            ;B582 0000
add [bx+si],al                            ;B584 0000
add [bx+si],al                            ;B586 0000
add [bx+si],al                            ;B588 0000
add [bx+si],al                            ;B58A 0000
add [bx+si],al                            ;B58C 0000
add [bx+si],al                            ;B58E 0000
add [bx+si],al                            ;B590 0000
add [bx+si],al                            ;B592 0000
add [bx+si],al                            ;B594 0000
add [bx+si],al                            ;B596 0000
add [bx+si],al                            ;B598 0000
add [bx+si],al                            ;B59A 0000
add [bx+si],al                            ;B59C 0000
add [bx+si],al                            ;B59E 0000
add [bx+si],al                            ;B5A0 0000
add [bx+si],al                            ;B5A2 0000
add [bx+si],al                            ;B5A4 0000
add [bx+si],al                            ;B5A6 0000
add [bx+si],al                            ;B5A8 0000
add [bx+si],al                            ;B5AA 0000
add [bx+si],al                            ;B5AC 0000
add [bx+si],al                            ;B5AE 0000
add [bx+si],al                            ;B5B0 0000
add [bx+si],al                            ;B5B2 0000
add [bx+si],al                            ;B5B4 0000
add [bx+si],al                            ;B5B6 0000
add [bx+si],al                            ;B5B8 0000
add [bx+si],al                            ;B5BA 0000
add [bx+si],al                            ;B5BC 0000
add [bx+si],al                            ;B5BE 0000
add [bx+si],al                            ;B5C0 0000
add [bx+si],al                            ;B5C2 0000
add [bx+si],al                            ;B5C4 0000
add [bx+si],al                            ;B5C6 0000
add [bx+si],al                            ;B5C8 0000
add [bx+si],al                            ;B5CA 0000
add [bx+si],al                            ;B5CC 0000
add [bx+si],al                            ;B5CE 0000
add [bx+si],al                            ;B5D0 0000
add [bx+si],al                            ;B5D2 0000
add [bx+si],al                            ;B5D4 0000
add [bx+si],al                            ;B5D6 0000
add [bx+si],al                            ;B5D8 0000
add [bx+si],al                            ;B5DA 0000
add [bx+si],al                            ;B5DC 0000
add [bx+si],al                            ;B5DE 0000
add [bx+si],al                            ;B5E0 0000
add [bx+si],al                            ;B5E2 0000
add [bx+si],al                            ;B5E4 0000
add [bx+si],al                            ;B5E6 0000
add [bx+si],al                            ;B5E8 0000
add [bx+si],al                            ;B5EA 0000
add [bx+si],al                            ;B5EC 0000
add [bx+si],al                            ;B5EE 0000
add [bx+si],al                            ;B5F0 0000
add [bx+si],al                            ;B5F2 0000
add [bx+si],al                            ;B5F4 0000
add [bx+si],al                            ;B5F6 0000
add [bx+si],al                            ;B5F8 0000
add [bx+si],al                            ;B5FA 0000
add [bx+si],al                            ;B5FC 0000
add [bx+si],al                            ;B5FE 0000
add [bx+si],al                            ;B600 0000
add [bx+si],al                            ;B602 0000
add [bx+si],al                            ;B604 0000
add [bx+si],al                            ;B606 0000
add [bx+si],al                            ;B608 0000
add [bx+si],al                            ;B60A 0000
add [bx+si],al                            ;B60C 0000
add [bx+si],al                            ;B60E 0000
add [bx+si],al                            ;B610 0000
add [bx+si],al                            ;B612 0000
add [bx+si],al                            ;B614 0000
add [bx+si],al                            ;B616 0000
add [bx+si],al                            ;B618 0000
add [bx+si],al                            ;B61A 0000
add [bx+si],al                            ;B61C 0000
add [bx+si],al                            ;B61E 0000
add [bx+si],al                            ;B620 0000
add [bx+si],al                            ;B622 0000
add [bx+si],al                            ;B624 0000
add [bx+si],al                            ;B626 0000
add [bx+si],al                            ;B628 0000
add [bx+si],al                            ;B62A 0000
add [bx+si],al                            ;B62C 0000
add [bx+si],al                            ;B62E 0000
add [bx+si],al                            ;B630 0000
add [bx+si],al                            ;B632 0000
add [bx+si],al                            ;B634 0000
add [bx+si],al                            ;B636 0000
add [bx+si],al                            ;B638 0000
add [bx+si],al                            ;B63A 0000
add [bx+si],al                            ;B63C 0000
add [bx+si],al                            ;B63E 0000
add [bx+si],al                            ;B640 0000
add [bx+si],al                            ;B642 0000
add [bx+si],al                            ;B644 0000
add [bx+si],al                            ;B646 0000
add [bx+si],al                            ;B648 0000
add [bx+si],al                            ;B64A 0000
add [bx+si],al                            ;B64C 0000
add [bx+si],al                            ;B64E 0000
add [bx+si],al                            ;B650 0000
add [bx+si],al                            ;B652 0000
add [bx+si],al                            ;B654 0000
add [bx+si],al                            ;B656 0000
add [bx+si],al                            ;B658 0000
add [bx+si],al                            ;B65A 0000
add [bx+si],al                            ;B65C 0000
add [bx+si],al                            ;B65E 0000
add [bx+si],al                            ;B660 0000
add [bx+si],al                            ;B662 0000
add [bx+si],al                            ;B664 0000
add [bx+si],al                            ;B666 0000
add [bx+si],al                            ;B668 0000
add [bx+si],al                            ;B66A 0000
add [bx+si],al                            ;B66C 0000
add [bx+si],al                            ;B66E 0000
add [bx+si],al                            ;B670 0000
add [bx+si],al                            ;B672 0000
add [bx+si],al                            ;B674 0000
add [bx+si],al                            ;B676 0000
add [bx+si],al                            ;B678 0000
add [bx+si],al                            ;B67A 0000
add [bx+si],al                            ;B67C 0000
add [bx+si],al                            ;B67E 0000
add [bx+si],al                            ;B680 0000
add [bx+si],al                            ;B682 0000
add [bx+si],al                            ;B684 0000
add [bx+si],al                            ;B686 0000
add [bx+si],al                            ;B688 0000
add [bx+si],al                            ;B68A 0000
add [bx+si],al                            ;B68C 0000
add [bx+si],al                            ;B68E 0000
add [bx+si],al                            ;B690 0000
add [bx+si],al                            ;B692 0000
add [bx+si],al                            ;B694 0000
add [bx+si],al                            ;B696 0000
add [bx+si],al                            ;B698 0000
add [bx+si],al                            ;B69A 0000
add [bx+si],al                            ;B69C 0000
add [bx+si],al                            ;B69E 0000
add [bx+si],al                            ;B6A0 0000
add [bx+si],al                            ;B6A2 0000
add [bx+si],al                            ;B6A4 0000
add [bx+si],al                            ;B6A6 0000
add [bx+si],al                            ;B6A8 0000
add [bx+si],al                            ;B6AA 0000
add [bx+si],al                            ;B6AC 0000
add [bx+si],al                            ;B6AE 0000
add [bx+si],al                            ;B6B0 0000
add [bx+si],al                            ;B6B2 0000
add [bx+si],al                            ;B6B4 0000
add [bx+si],al                            ;B6B6 0000
add [bx+si],al                            ;B6B8 0000
add [bx+si],al                            ;B6BA 0000
add [bx+si],al                            ;B6BC 0000
add [bx+si],al                            ;B6BE 0000
add [bx+si],al                            ;B6C0 0000
add [bx+si],al                            ;B6C2 0000
add [bx+si],al                            ;B6C4 0000
add [bx+si],al                            ;B6C6 0000
add [bx+si],al                            ;B6C8 0000
add [bx+si],al                            ;B6CA 0000
add [bx+si],al                            ;B6CC 0000
add [bx+si],al                            ;B6CE 0000
add [bx+si],al                            ;B6D0 0000
add [bx+si],al                            ;B6D2 0000
add [bx+si],al                            ;B6D4 0000
add [bx+si],al                            ;B6D6 0000
add [bx+si],al                            ;B6D8 0000
add [bx+si],al                            ;B6DA 0000
add [bx+si],al                            ;B6DC 0000
add [bx+si],al                            ;B6DE 0000
add [bx+si],al                            ;B6E0 0000
add [bx+si],al                            ;B6E2 0000
add [bx+si],al                            ;B6E4 0000
add [bx+si],al                            ;B6E6 0000
add [bx+si],al                            ;B6E8 0000
add [bx+si],al                            ;B6EA 0000
add [bx+si],al                            ;B6EC 0000
add [bx+si],al                            ;B6EE 0000
add [bx+si],al                            ;B6F0 0000
add [bx+si],al                            ;B6F2 0000
add [bx+si],al                            ;B6F4 0000
add [bx+si],al                            ;B6F6 0000
add [bx+si],al                            ;B6F8 0000
add [bx+si],al                            ;B6FA 0000
add [bx+si],al                            ;B6FC 0000
add [bx+si],al                            ;B6FE 0000
add [bx+si],al                            ;B700 0000
add [bx+si],al                            ;B702 0000
add [bx+si],al                            ;B704 0000
add [bx+si],al                            ;B706 0000
add [bx+si],al                            ;B708 0000
add [bx+si],al                            ;B70A 0000
add [bx+si],al                            ;B70C 0000
add [bx+si],al                            ;B70E 0000
add [bx+si],al                            ;B710 0000
add [bx+si],al                            ;B712 0000
add [bx+si],al                            ;B714 0000
add [bx+si],al                            ;B716 0000
add [bx+si],al                            ;B718 0000
add [bx+si],al                            ;B71A 0000
add [bx+si],al                            ;B71C 0000
add [bx+si],al                            ;B71E 0000
add [bx+si],al                            ;B720 0000
add [bx+si],al                            ;B722 0000
add [bx+si],al                            ;B724 0000
add [bx+si],al                            ;B726 0000
add [bx+si],al                            ;B728 0000
add [bx+si],al                            ;B72A 0000
add [bx+si],al                            ;B72C 0000
add [bx+si],al                            ;B72E 0000
add [bx+si],al                            ;B730 0000
add [bx+si],al                            ;B732 0000
add [bx+si],al                            ;B734 0000
add [bx+si],al                            ;B736 0000
add [bx+si],al                            ;B738 0000
add [bx+si],al                            ;B73A 0000
add [bx+si],al                            ;B73C 0000
add [bx+si],al                            ;B73E 0000
add [bx+si],al                            ;B740 0000
add [bx+si],al                            ;B742 0000
add [bx+si],al                            ;B744 0000
add [bx+si],al                            ;B746 0000
add [bx+si],al                            ;B748 0000
add [bx+si],al                            ;B74A 0000
add [bx+si],al                            ;B74C 0000
add [bx+si],al                            ;B74E 0000
add [bx+si],al                            ;B750 0000
add [bx+si],al                            ;B752 0000
add [bx+si],al                            ;B754 0000
add [bx+si],al                            ;B756 0000
add [bx+si],al                            ;B758 0000
add [bx+si],al                            ;B75A 0000
add [bx+si],al                            ;B75C 0000
add [bx+si],al                            ;B75E 0000
add [bx+si],al                            ;B760 0000
add [bx+si],al                            ;B762 0000
add [bx+si],al                            ;B764 0000
add [bx+si],al                            ;B766 0000
add [bx+si],al                            ;B768 0000
add [bx+si],al                            ;B76A 0000
add [bx+si],al                            ;B76C 0000
add [bx+si],al                            ;B76E 0000
add [bx+si],al                            ;B770 0000
add [bx+si],al                            ;B772 0000
add [bx+si],al                            ;B774 0000
add [bx+si],al                            ;B776 0000
add [bx+si],al                            ;B778 0000
add [bx+si],al                            ;B77A 0000
add [bx+si],al                            ;B77C 0000
add [bx+si],al                            ;B77E 0000
add [bx+si],al                            ;B780 0000
add [bx+si],al                            ;B782 0000
add [bx+si],al                            ;B784 0000
add [bx+si],al                            ;B786 0000
add [bx+si],al                            ;B788 0000
add [bx+si],al                            ;B78A 0000
add [bx+si],al                            ;B78C 0000
add [bx+si],al                            ;B78E 0000
add [bx+si],al                            ;B790 0000
add [bx+si],al                            ;B792 0000
add [bx+si],al                            ;B794 0000
add [bx+si],al                            ;B796 0000
add [bx+si],al                            ;B798 0000
add [bx+si],al                            ;B79A 0000
add [bx+si],al                            ;B79C 0000
add [bx+si],al                            ;B79E 0000
add [bx+si],al                            ;B7A0 0000
add [bx+si],al                            ;B7A2 0000
add [bx+si],al                            ;B7A4 0000
add [bx+si],al                            ;B7A6 0000
add [bx+si],al                            ;B7A8 0000
add [bx+si],al                            ;B7AA 0000
add [bx+si],al                            ;B7AC 0000
add [bx+si],al                            ;B7AE 0000
add [bx+si],al                            ;B7B0 0000
add [bx+si],al                            ;B7B2 0000
add [bx+si],al                            ;B7B4 0000
add [bx+si],al                            ;B7B6 0000
add [bx+si],al                            ;B7B8 0000
add [bx+si],al                            ;B7BA 0000
add [bx+si],al                            ;B7BC 0000
add [bx+si],al                            ;B7BE 0000
add [bx+si],al                            ;B7C0 0000
add [bx+si],al                            ;B7C2 0000
add [bx+si],al                            ;B7C4 0000
add [bx+si],al                            ;B7C6 0000
add [bx+si],al                            ;B7C8 0000
add [bx+si],al                            ;B7CA 0000
add [bx+si],al                            ;B7CC 0000
add [bx+si],al                            ;B7CE 0000
add [bx+si],al                            ;B7D0 0000
add [bx+si],al                            ;B7D2 0000
add [bx+si],al                            ;B7D4 0000
add [bx+si],al                            ;B7D6 0000
add [bx+si],al                            ;B7D8 0000
add [bx+si],al                            ;B7DA 0000
add [bx+si],al                            ;B7DC 0000
add [bx+si],al                            ;B7DE 0000
add [bx+si],al                            ;B7E0 0000
add [bx+si],al                            ;B7E2 0000
add [bx+si],al                            ;B7E4 0000
add [bx+si],al                            ;B7E6 0000
add [bx+si],al                            ;B7E8 0000
add [bx+si],al                            ;B7EA 0000
add [bx+si],al                            ;B7EC 0000
add [bx+si],al                            ;B7EE 0000
add [bx+si],al                            ;B7F0 0000
add [bx+si],al                            ;B7F2 0000
add [bx+si],al                            ;B7F4 0000
add [bx+si],al                            ;B7F6 0000
add [bx+si],al                            ;B7F8 0000
add [bx+si],al                            ;B7FA 0000
add [bx+si],al                            ;B7FC 0000
add [bx+si],al                            ;B7FE 0000
add [bx+si],al                            ;B800 0000
add [bx+si],al                            ;B802 0000
add [bx+si],al                            ;B804 0000
add [bx+si],al                            ;B806 0000
add [bx+si],al                            ;B808 0000
add [bx+si],al                            ;B80A 0000
add [bx+si],al                            ;B80C 0000
add [bx+si],al                            ;B80E 0000
add [bx+si],al                            ;B810 0000
add [bx+si],al                            ;B812 0000
add [bx+si],al                            ;B814 0000
add [bx+si],al                            ;B816 0000
add [bx+si],al                            ;B818 0000
add [bx+si],al                            ;B81A 0000
add [bx+si],al                            ;B81C 0000
add [bx+si],al                            ;B81E 0000
add [bx+si],al                            ;B820 0000
add [bx+si],al                            ;B822 0000
add [bx+si],al                            ;B824 0000
add [bx+si],al                            ;B826 0000
add [bx+si],al                            ;B828 0000
add [bx+si],al                            ;B82A 0000
add [bx+si],al                            ;B82C 0000
add [bx+si],al                            ;B82E 0000
add [bx+si],al                            ;B830 0000
add [bx+si],al                            ;B832 0000
add [bx+si],al                            ;B834 0000
add [bx+si],al                            ;B836 0000
add [bx+si],al                            ;B838 0000
add [bx+si],al                            ;B83A 0000
add [bx+si],al                            ;B83C 0000
add [bx+si],al                            ;B83E 0000
add [bx+si],al                            ;B840 0000
add [bx+si],al                            ;B842 0000
add [bx+si],al                            ;B844 0000
add [bx+si],al                            ;B846 0000
add [bx+si],al                            ;B848 0000
add [bx+si],al                            ;B84A 0000
add [bx+si],al                            ;B84C 0000
add [bx+si],al                            ;B84E 0000
add [bx+si],al                            ;B850 0000
add [bx+si],al                            ;B852 0000
add [bx+si],al                            ;B854 0000
add [bx+si],al                            ;B856 0000
add [bx+si],al                            ;B858 0000
add [bx+si],al                            ;B85A 0000
add [bx+si],al                            ;B85C 0000
add [bx+si],al                            ;B85E 0000
add [bx+si],al                            ;B860 0000
add [bx+si],al                            ;B862 0000
add [bx+si],al                            ;B864 0000
add [bx+si],al                            ;B866 0000
add [bx+si],al                            ;B868 0000
add [bx+si],al                            ;B86A 0000
add [bx+si],al                            ;B86C 0000
add [bx+si],al                            ;B86E 0000
add [bx+si],al                            ;B870 0000
add [bx+si],al                            ;B872 0000
add [bx+si],al                            ;B874 0000
add [bx+si],al                            ;B876 0000
add [bx+si],al                            ;B878 0000
add [bx+si],al                            ;B87A 0000
add [bx+si],al                            ;B87C 0000
add [bx+si],al                            ;B87E 0000
add [bx+si],al                            ;B880 0000
add [bx+si],al                            ;B882 0000
add [bx+si],al                            ;B884 0000
add [bx+si],al                            ;B886 0000
add [bx+si],al                            ;B888 0000
add [bx+si],al                            ;B88A 0000
add [bx+si],al                            ;B88C 0000
add [bx+si],al                            ;B88E 0000
add [bx+si],al                            ;B890 0000
add [bx+si],al                            ;B892 0000
add [bx+si],al                            ;B894 0000
add [bx+si],al                            ;B896 0000
add [bx+si],al                            ;B898 0000
add [bx+si],al                            ;B89A 0000
add [bx+si],al                            ;B89C 0000
add [bx+si],al                            ;B89E 0000
add [bx+si],al                            ;B8A0 0000
add [bx+si],al                            ;B8A2 0000
add [bx+si],al                            ;B8A4 0000
add [bx+si],al                            ;B8A6 0000
add [bx+si],al                            ;B8A8 0000
add [bx+si],al                            ;B8AA 0000
add [bx+si],al                            ;B8AC 0000
add [bx+si],al                            ;B8AE 0000
add [bx+si],al                            ;B8B0 0000
add [bx+si],al                            ;B8B2 0000
add [bx+si],al                            ;B8B4 0000
add [bx+si],al                            ;B8B6 0000
add [bx+si],al                            ;B8B8 0000
add [bx+si],al                            ;B8BA 0000
add [bx+si],al                            ;B8BC 0000
add [bx+si],al                            ;B8BE 0000
add [bx+si],al                            ;B8C0 0000
add [bx+si],al                            ;B8C2 0000
add [bx+si],al                            ;B8C4 0000
add [bx+si],al                            ;B8C6 0000
add [bx+si],al                            ;B8C8 0000
add [bx+si],al                            ;B8CA 0000
add [bx+si],al                            ;B8CC 0000
add [bx+si],al                            ;B8CE 0000
add [bx+si],al                            ;B8D0 0000
add [bx+si],al                            ;B8D2 0000
add [bx+si],al                            ;B8D4 0000
add [bx+si],al                            ;B8D6 0000
add [bx+si],al                            ;B8D8 0000
add [bx+si],al                            ;B8DA 0000
add [bx+si],al                            ;B8DC 0000
add [bx+si],al                            ;B8DE 0000
add [bx+si],al                            ;B8E0 0000
add [bx+si],al                            ;B8E2 0000
add [bx+si],al                            ;B8E4 0000
add [bx+si],al                            ;B8E6 0000
add [bx+si],al                            ;B8E8 0000
add [bx+si],al                            ;B8EA 0000
add [bx+si],al                            ;B8EC 0000
add [bx+si],al                            ;B8EE 0000
add [bx+si],al                            ;B8F0 0000
add [bx+si],al                            ;B8F2 0000
add [bx+si],al                            ;B8F4 0000
add [bx+si],al                            ;B8F6 0000
add [bx+si],al                            ;B8F8 0000
add [bx+si],al                            ;B8FA 0000
add [bx+si],al                            ;B8FC 0000
add [bx+si],al                            ;B8FE 0000
add [bx+si],al                            ;B900 0000
add [bx+si],al                            ;B902 0000
add [bx+si],al                            ;B904 0000
add [bx+si],al                            ;B906 0000
add [bx+si],al                            ;B908 0000
add [bx+si],al                            ;B90A 0000
add [bx+si],al                            ;B90C 0000
add [bx+si],al                            ;B90E 0000
add [bx+si],al                            ;B910 0000
add [bx+si],al                            ;B912 0000
add [bx+si],al                            ;B914 0000
add [bx+si],al                            ;B916 0000
add [bx+si],al                            ;B918 0000
add [bx+si],al                            ;B91A 0000
add [bx+si],al                            ;B91C 0000
add [bx+si],al                            ;B91E 0000
add [bx+si],al                            ;B920 0000
add [bx+si],al                            ;B922 0000
add [bx+si],al                            ;B924 0000
add [bx+si],al                            ;B926 0000
add [bx+si],al                            ;B928 0000
add [bx+si],al                            ;B92A 0000
add [bx+si],al                            ;B92C 0000
add [bx+si],al                            ;B92E 0000
add [bx+si],al                            ;B930 0000
add [bx+si],al                            ;B932 0000
add [bx+si],al                            ;B934 0000
add [bx+si],al                            ;B936 0000
add [bx+si],al                            ;B938 0000
add [bx+si],al                            ;B93A 0000
add [bx+si],al                            ;B93C 0000
add [bx+si],al                            ;B93E 0000
add [bx+si],al                            ;B940 0000
add [bx+si],al                            ;B942 0000
add [bx+si],al                            ;B944 0000
add [bx+si],al                            ;B946 0000
add [bx+si],al                            ;B948 0000
add [bx+si],al                            ;B94A 0000
add [bx+si],al                            ;B94C 0000
add [bx+si],al                            ;B94E 0000
add [bx+si],al                            ;B950 0000
add [bx+si],al                            ;B952 0000
add [bx+si],al                            ;B954 0000
add [bx+si],al                            ;B956 0000
add [bx+si],al                            ;B958 0000
add [bx+si],al                            ;B95A 0000
add [bx+si],al                            ;B95C 0000
add [bx+si],al                            ;B95E 0000
add [bx+si],al                            ;B960 0000
add [bx+si],al                            ;B962 0000
add [bx+si],al                            ;B964 0000
add [bx+si],al                            ;B966 0000
add [bx+si],al                            ;B968 0000
add [bx+si],al                            ;B96A 0000
add [bx+si],al                            ;B96C 0000
add [bx+si],al                            ;B96E 0000
add [bx+si],al                            ;B970 0000
add [bx+si],al                            ;B972 0000
add [bx+si],al                            ;B974 0000
add [bx+si],al                            ;B976 0000
add [bx+si],al                            ;B978 0000
add [bx+si],al                            ;B97A 0000
add [bx+si],al                            ;B97C 0000
add [bx+si],al                            ;B97E 0000
add [bx+si],al                            ;B980 0000
add [bx+si],al                            ;B982 0000
add [bx+si],al                            ;B984 0000
add [bx+si],al                            ;B986 0000
add [bx+si],al                            ;B988 0000
add [bx+si],al                            ;B98A 0000
add [bx+si],al                            ;B98C 0000
add [bx+si],al                            ;B98E 0000
add [bx+si],al                            ;B990 0000
add [bx+si],al                            ;B992 0000
add [bx+si],al                            ;B994 0000
add [bx+si],al                            ;B996 0000
add [bx+si],al                            ;B998 0000
add [bx+si],al                            ;B99A 0000
add [bx+si],al                            ;B99C 0000
add [bx+si],al                            ;B99E 0000
add [bx+si],al                            ;B9A0 0000
add [bx+si],al                            ;B9A2 0000
add [bx+si],al                            ;B9A4 0000
add [bx+si],al                            ;B9A6 0000
add [bx+si],al                            ;B9A8 0000
add [bx+si],al                            ;B9AA 0000
add [bx+si],al                            ;B9AC 0000
add [bx+si],al                            ;B9AE 0000
add [bx+si],al                            ;B9B0 0000
add [bx+si],al                            ;B9B2 0000
add [bx+si],al                            ;B9B4 0000
add [bx+si],al                            ;B9B6 0000
add [bx+si],al                            ;B9B8 0000
add [bx+si],al                            ;B9BA 0000
add [bx+si],al                            ;B9BC 0000
add [bx+si],al                            ;B9BE 0000
add [bx+si],al                            ;B9C0 0000
add [bx+si],al                            ;B9C2 0000
add [bx+si],al                            ;B9C4 0000
add [bx+si],al                            ;B9C6 0000
add [bx+si],al                            ;B9C8 0000
add [bx+si],al                            ;B9CA 0000
add [bx+si],al                            ;B9CC 0000
add [bx+si],al                            ;B9CE 0000
add [bx+si],al                            ;B9D0 0000
add [bx+si],al                            ;B9D2 0000
add [bx+si],al                            ;B9D4 0000
add [bx+si],al                            ;B9D6 0000
add [bx+si],al                            ;B9D8 0000
add [bx+si],al                            ;B9DA 0000
add [bx+si],al                            ;B9DC 0000
add [bx+si],al                            ;B9DE 0000
add [bx+si],al                            ;B9E0 0000
add [bx+si],al                            ;B9E2 0000
add [bx+si],al                            ;B9E4 0000
add [bx+si],al                            ;B9E6 0000
add [bx+si],al                            ;B9E8 0000
add [bx+si],al                            ;B9EA 0000
add [bx+si],al                            ;B9EC 0000
add [bx+si],al                            ;B9EE 0000
add [bx+si],al                            ;B9F0 0000
add [bx+si],al                            ;B9F2 0000
add [bx+si],al                            ;B9F4 0000
add [bx+si],al                            ;B9F6 0000
add [bx+si],al                            ;B9F8 0000
add [bx+si],al                            ;B9FA 0000
add [bx+si],al                            ;B9FC 0000
add [bx+si],al                            ;B9FE 0000
add [bx+si],al                            ;BA00 0000
add [bx+si],al                            ;BA02 0000
add [bx+si],al                            ;BA04 0000
add [bx+si],al                            ;BA06 0000
add [bx+si],al                            ;BA08 0000
add [bx+si],al                            ;BA0A 0000
add [bx+si],al                            ;BA0C 0000
add [bx+si],al                            ;BA0E 0000
add [bx+si],al                            ;BA10 0000
add [bx+si],al                            ;BA12 0000
add [bx+si],al                            ;BA14 0000
add [bx+si],al                            ;BA16 0000
add [bx+si],al                            ;BA18 0000
add [bx+si],al                            ;BA1A 0000
add [bx+si],al                            ;BA1C 0000
add [bx+si],al                            ;BA1E 0000
add [bx+si],al                            ;BA20 0000
add [bx+si],al                            ;BA22 0000
add [bx+si],al                            ;BA24 0000
add [bx+si],al                            ;BA26 0000
add [bx+si],al                            ;BA28 0000
add [bx+si],al                            ;BA2A 0000
add [bx+si],al                            ;BA2C 0000
add [bx+si],al                            ;BA2E 0000
add [bx+si],al                            ;BA30 0000
add [bx+si],al                            ;BA32 0000
add [bx+si],al                            ;BA34 0000
add [bx+si],al                            ;BA36 0000
add [bx+si],al                            ;BA38 0000
add [bx+si],al                            ;BA3A 0000
add [bx+si],al                            ;BA3C 0000
add [bx+si],al                            ;BA3E 0000
add [bx+si],al                            ;BA40 0000
add [bx+si],al                            ;BA42 0000
add [bx+si],al                            ;BA44 0000
add [bx+si],al                            ;BA46 0000
add [bx+si],al                            ;BA48 0000
add [bx+si],al                            ;BA4A 0000
add [bx+si],al                            ;BA4C 0000
add [bx+si],al                            ;BA4E 0000
add [bx+si],al                            ;BA50 0000
add [bx+si],al                            ;BA52 0000
add [bx+si],al                            ;BA54 0000
add [bx+si],al                            ;BA56 0000
add [bx+si],al                            ;BA58 0000
add [bx+si],al                            ;BA5A 0000
add [bx+si],al                            ;BA5C 0000
add [bx+si],al                            ;BA5E 0000
add [bx+si],al                            ;BA60 0000
add [bx+si],al                            ;BA62 0000
add [bx+si],al                            ;BA64 0000
add [bx+si],al                            ;BA66 0000
add [bx+si],al                            ;BA68 0000
add [bx+si],al                            ;BA6A 0000
add [bx+si],al                            ;BA6C 0000
add [bx+si],al                            ;BA6E 0000
add [bx+si],al                            ;BA70 0000
add [bx+si],al                            ;BA72 0000
add [bx+si],al                            ;BA74 0000
add [bx+si],al                            ;BA76 0000
add [bx+si],al                            ;BA78 0000
add [bx+si],al                            ;BA7A 0000
add [bx+si],al                            ;BA7C 0000
add [bx+si],al                            ;BA7E 0000
add [bx+si],al                            ;BA80 0000
add [bx+si],al                            ;BA82 0000
add [bx+si],al                            ;BA84 0000
add [bx+si],al                            ;BA86 0000
add [bx+si],al                            ;BA88 0000
add [bx+si],al                            ;BA8A 0000
add [bx+si],al                            ;BA8C 0000
add [bx+si],al                            ;BA8E 0000
add [bx+si],al                            ;BA90 0000
add [bx+si],al                            ;BA92 0000
add [bx+si],al                            ;BA94 0000
add [bx+si],al                            ;BA96 0000
add [bx+si],al                            ;BA98 0000
add [bx+si],al                            ;BA9A 0000
add [bx+si],al                            ;BA9C 0000
add [bx+si],al                            ;BA9E 0000
add [bx+si],al                            ;BAA0 0000
add [bx+si],al                            ;BAA2 0000
add [bx+si],al                            ;BAA4 0000
add [bx+si],al                            ;BAA6 0000
add [bx+si],al                            ;BAA8 0000
add [bx+si],al                            ;BAAA 0000
add [bx+si],al                            ;BAAC 0000
add [bx+si],al                            ;BAAE 0000
add [bx+si],al                            ;BAB0 0000
add [bx+si],al                            ;BAB2 0000
add [bx+si],al                            ;BAB4 0000
add [bx+si],al                            ;BAB6 0000
add [bx+si],al                            ;BAB8 0000
add [bx+si],al                            ;BABA 0000
add [bx+si],al                            ;BABC 0000
add [bx+si],al                            ;BABE 0000
add [bx+si],al                            ;BAC0 0000
add [bx+si],al                            ;BAC2 0000
add [bx+si],al                            ;BAC4 0000
add [bx+si],al                            ;BAC6 0000
add [bx+si],al                            ;BAC8 0000
add [bx+si],al                            ;BACA 0000
add [bx+si],al                            ;BACC 0000
add [bx+si],al                            ;BACE 0000
add [bx+si],al                            ;BAD0 0000
add [bx+si],al                            ;BAD2 0000
add [bx+si],al                            ;BAD4 0000
add [bx+si],al                            ;BAD6 0000
add [bx+si],al                            ;BAD8 0000
add [bx+si],al                            ;BADA 0000
add [bx+si],al                            ;BADC 0000
add [bx+si],al                            ;BADE 0000
add [bx+si],al                            ;BAE0 0000
add [bx+si],al                            ;BAE2 0000
add [bx+si],al                            ;BAE4 0000
add [bx+si],al                            ;BAE6 0000
add [bx+si],al                            ;BAE8 0000
add [bx+si],al                            ;BAEA 0000
add [bx+si],al                            ;BAEC 0000
add [bx+si],al                            ;BAEE 0000
add [bx+si],al                            ;BAF0 0000
add [bx+si],al                            ;BAF2 0000
add [bx+si],al                            ;BAF4 0000
add [bx+si],al                            ;BAF6 0000
add [bx+si],al                            ;BAF8 0000
add [bx+si],al                            ;BAFA 0000
add [bx+si],al                            ;BAFC 0000
add [bx+si],al                            ;BAFE 0000
add [bx+si],al                            ;BB00 0000
add [bx+si],al                            ;BB02 0000
add [bx+si],al                            ;BB04 0000
add [bx+si],al                            ;BB06 0000
add [bx+si],al                            ;BB08 0000
add [bx+si],al                            ;BB0A 0000
add [bx+si],al                            ;BB0C 0000
add [bx+si],al                            ;BB0E 0000
add [bx+si],al                            ;BB10 0000
add [bx+si],al                            ;BB12 0000
add [bx+si],al                            ;BB14 0000
add [bx+si],al                            ;BB16 0000
add [bx+si],al                            ;BB18 0000
add [bx+si],al                            ;BB1A 0000
add [bx+si],al                            ;BB1C 0000
add [bx+si],al                            ;BB1E 0000
add [bx+si],al                            ;BB20 0000
add [bx+si],al                            ;BB22 0000
add [bx+si],al                            ;BB24 0000
add [bx+si],al                            ;BB26 0000
add [bx+si],al                            ;BB28 0000
add [bx+si],al                            ;BB2A 0000
add [bx+si],al                            ;BB2C 0000
add [bx+si],al                            ;BB2E 0000
add [bx+si],al                            ;BB30 0000
add [bx+si],al                            ;BB32 0000
add [bx+si],al                            ;BB34 0000
add [bx+si],al                            ;BB36 0000
add [bx+si],al                            ;BB38 0000
add [bx+si],al                            ;BB3A 0000
add [bx+si],al                            ;BB3C 0000
add [bx+si],al                            ;BB3E 0000
add [bx+si],al                            ;BB40 0000
add [bx+si],al                            ;BB42 0000
add [bx+si],al                            ;BB44 0000
add [bx+si],al                            ;BB46 0000
add [bx+si],al                            ;BB48 0000
add [bx+si],al                            ;BB4A 0000
add [bx+si],al                            ;BB4C 0000
add [bx+si],al                            ;BB4E 0000
add [bx+si],al                            ;BB50 0000
add [bx+si],al                            ;BB52 0000
add [bx+si],al                            ;BB54 0000
add [bx+si],al                            ;BB56 0000
add [bx+si],al                            ;BB58 0000
add [bx+si],al                            ;BB5A 0000
add [bx+si],al                            ;BB5C 0000
add [bx+si],al                            ;BB5E 0000
add [bx+si],al                            ;BB60 0000
add [bx+si],al                            ;BB62 0000
add [bx+si],al                            ;BB64 0000
add [bx+si],al                            ;BB66 0000
add [bx+si],al                            ;BB68 0000
add [bx+si],al                            ;BB6A 0000
add [bx+si],al                            ;BB6C 0000
add [bx+si],al                            ;BB6E 0000
add [bx+si],al                            ;BB70 0000
add [bx+si],al                            ;BB72 0000
add [bx+si],al                            ;BB74 0000
add [bx+si],al                            ;BB76 0000
add [bx+si],al                            ;BB78 0000
add [bx+si],al                            ;BB7A 0000
add [bx+si],al                            ;BB7C 0000
add [bx+si],al                            ;BB7E 0000
add [bx+si],al                            ;BB80 0000
add [bx+si],al                            ;BB82 0000
add [bx+si],al                            ;BB84 0000
add [bx+si],al                            ;BB86 0000
add [bx+si],al                            ;BB88 0000
add [bx+si],al                            ;BB8A 0000
add [bx+si],al                            ;BB8C 0000
add [bx+si],al                            ;BB8E 0000
add [bx+si],al                            ;BB90 0000
add [bx+si],al                            ;BB92 0000
add [bx+si],al                            ;BB94 0000
add [bx+si],al                            ;BB96 0000
add [bx+si],al                            ;BB98 0000
add [bx+si],al                            ;BB9A 0000
add [bx+si],al                            ;BB9C 0000
add [bx+si],al                            ;BB9E 0000
add [bx+si],al                            ;BBA0 0000
add [bx+si],al                            ;BBA2 0000
add [bx+si],al                            ;BBA4 0000
add [bx+si],al                            ;BBA6 0000
add [bx+si],al                            ;BBA8 0000
add [bx+si],al                            ;BBAA 0000
add [bx+si],al                            ;BBAC 0000
add [bx+si],al                            ;BBAE 0000
add [bx+si],al                            ;BBB0 0000
add [bx+si],al                            ;BBB2 0000
add [bx+si],al                            ;BBB4 0000
add [bx+si],al                            ;BBB6 0000
add [bx+si],al                            ;BBB8 0000
add [bx+si],al                            ;BBBA 0000
add [bx+si],al                            ;BBBC 0000
add [bx+si],al                            ;BBBE 0000
add [bx+si],al                            ;BBC0 0000
add [bx+si],al                            ;BBC2 0000
add [bx+si],al                            ;BBC4 0000
add [bx+si],al                            ;BBC6 0000
add [bx+si],al                            ;BBC8 0000
add [bx+si],al                            ;BBCA 0000
add [bx+si],al                            ;BBCC 0000
add [bx+si],al                            ;BBCE 0000
add [bx+si],al                            ;BBD0 0000
add [bx+si],al                            ;BBD2 0000
add [bx+si],al                            ;BBD4 0000
add [bx+si],al                            ;BBD6 0000
add [bx+si],al                            ;BBD8 0000
add [bx+si],al                            ;BBDA 0000
add [bx+si],al                            ;BBDC 0000
add [bx+si],al                            ;BBDE 0000
add [bx+si],al                            ;BBE0 0000
add [bx+si],al                            ;BBE2 0000
add [bx+si],al                            ;BBE4 0000
add [bx+si],al                            ;BBE6 0000
add [bx+si],al                            ;BBE8 0000
add [bx+si],al                            ;BBEA 0000
add [bx+si],al                            ;BBEC 0000
add [bx+si],al                            ;BBEE 0000
add [bx+si],al                            ;BBF0 0000
add [bx+si],al                            ;BBF2 0000
add [bx+si],al                            ;BBF4 0000
add [bx+si],al                            ;BBF6 0000
add [bx+si],al                            ;BBF8 0000
add [bx+si],al                            ;BBFA 0000
add [bx+si],al                            ;BBFC 0000
add [bx+si],al                            ;BBFE 0000
add [bx+si],al                            ;BC00 0000
add [bx+si],al                            ;BC02 0000
add [bx+si],al                            ;BC04 0000
add [bx+si],al                            ;BC06 0000
add [bx+si],al                            ;BC08 0000
add [bx+si],al                            ;BC0A 0000
add [bx+si],al                            ;BC0C 0000
add [bx+si],al                            ;BC0E 0000
add [bx+si],al                            ;BC10 0000
add [bx+si],al                            ;BC12 0000
add [bx+si],al                            ;BC14 0000
add [bx+si],al                            ;BC16 0000
add [bx+si],al                            ;BC18 0000
add [bx+si],al                            ;BC1A 0000
add [bx+si],al                            ;BC1C 0000
add [bx+si],al                            ;BC1E 0000
add [bx+si],al                            ;BC20 0000
add [bx+si],al                            ;BC22 0000
add [bx+si],al                            ;BC24 0000
add [bx+si],al                            ;BC26 0000
add [bx+si],al                            ;BC28 0000
add [bx+si],al                            ;BC2A 0000
add [bx+si],al                            ;BC2C 0000
add [bx+si],al                            ;BC2E 0000
add [bx+si],al                            ;BC30 0000
add [bx+si],al                            ;BC32 0000
add [bx+si],al                            ;BC34 0000
add [bx+si],al                            ;BC36 0000
add [bx+si],al                            ;BC38 0000
add [bx+si],al                            ;BC3A 0000
add [bx+si],al                            ;BC3C 0000
add [bx+si],al                            ;BC3E 0000
add [bx+si],al                            ;BC40 0000
add [bx+si],al                            ;BC42 0000
add [bx+si],al                            ;BC44 0000
add [bx+si],al                            ;BC46 0000
add [bx+si],al                            ;BC48 0000
add [bx+si],al                            ;BC4A 0000
add [bx+si],al                            ;BC4C 0000
add [bx+si],al                            ;BC4E 0000
add [bx+si],al                            ;BC50 0000
add [bx+si],al                            ;BC52 0000
add [bx+si],al                            ;BC54 0000
add [bx+si],al                            ;BC56 0000
add [bx+si],al                            ;BC58 0000
add [bx+si],al                            ;BC5A 0000
add [bx+si],al                            ;BC5C 0000
add [bx+si],al                            ;BC5E 0000
add [bx+si],al                            ;BC60 0000
add [bx+si],al                            ;BC62 0000
add [bx+si],al                            ;BC64 0000
add [bx+si],al                            ;BC66 0000
add [bx+si],al                            ;BC68 0000
add [bx+si],al                            ;BC6A 0000
add [bx+si],al                            ;BC6C 0000
add [bx+si],al                            ;BC6E 0000
add [bx+si],al                            ;BC70 0000
add [bx+si],al                            ;BC72 0000
add [bx+si],al                            ;BC74 0000
add [bx+si],al                            ;BC76 0000
add [bx+si],al                            ;BC78 0000
add [bx+si],al                            ;BC7A 0000
add [bx+si],al                            ;BC7C 0000
add [bx+si],al                            ;BC7E 0000
add [bx+si],al                            ;BC80 0000
add [bx+si],al                            ;BC82 0000
add [bx+si],al                            ;BC84 0000
add [bx+si],al                            ;BC86 0000
add [bx+si],al                            ;BC88 0000
add [bx+si],al                            ;BC8A 0000
add [bx+si],al                            ;BC8C 0000
add [bx+si],al                            ;BC8E 0000
add [bx+si],al                            ;BC90 0000
add [bx+si],al                            ;BC92 0000
add [bx+si],al                            ;BC94 0000
add [bx+si],al                            ;BC96 0000
add [bx+si],al                            ;BC98 0000
add [bx+si],al                            ;BC9A 0000
add [bx+si],al                            ;BC9C 0000
add [bx+si],al                            ;BC9E 0000
add [bx+si],al                            ;BCA0 0000
add [bx+si],al                            ;BCA2 0000
add [bx+si],al                            ;BCA4 0000
add [bx+si],al                            ;BCA6 0000
add [bx+si],al                            ;BCA8 0000
add [bx+si],al                            ;BCAA 0000
add [bx+si],al                            ;BCAC 0000
add [bx+si],al                            ;BCAE 0000
add [bx+si],al                            ;BCB0 0000
add [bx+si],al                            ;BCB2 0000
add [bx+si],al                            ;BCB4 0000
add [bx+si],al                            ;BCB6 0000
add [bx+si],al                            ;BCB8 0000
add [bx+si],al                            ;BCBA 0000
add [bx+si],al                            ;BCBC 0000
add [bx+si],al                            ;BCBE 0000
add [bx+si],al                            ;BCC0 0000
add [bx+si],al                            ;BCC2 0000
add [bx+si],al                            ;BCC4 0000
add [bx+si],al                            ;BCC6 0000
add [bx+si],al                            ;BCC8 0000
add [bx+si],al                            ;BCCA 0000
add [bx+si],al                            ;BCCC 0000
add [bx+si],al                            ;BCCE 0000
add [bx+si],al                            ;BCD0 0000
add [bx+si],al                            ;BCD2 0000
add [bx+si],al                            ;BCD4 0000
add [bx+si],al                            ;BCD6 0000
add [bx+si],al                            ;BCD8 0000
add [bx+si],al                            ;BCDA 0000
add [bx+si],al                            ;BCDC 0000
add [bx+si],al                            ;BCDE 0000
add [bx+si],al                            ;BCE0 0000
add [bx+si],al                            ;BCE2 0000
add [bx+si],al                            ;BCE4 0000
add [bx+si],al                            ;BCE6 0000
add [bx+si],al                            ;BCE8 0000
add [bx+si],al                            ;BCEA 0000
add [bx+si],al                            ;BCEC 0000
add [bx+si],al                            ;BCEE 0000
add [bx+si],al                            ;BCF0 0000
add [bx+si],al                            ;BCF2 0000
add [bx+si],al                            ;BCF4 0000
add [bx+si],al                            ;BCF6 0000
add [bx+si],al                            ;BCF8 0000
add [bx+si],al                            ;BCFA 0000
add [bx+si],al                            ;BCFC 0000
add [bx+si],al                            ;BCFE 0000
add [bx+si],al                            ;BD00 0000
add [bx+si],al                            ;BD02 0000
add [bx+si],al                            ;BD04 0000
add [bx+si],al                            ;BD06 0000
add [bx+si],al                            ;BD08 0000
add [bx+si],al                            ;BD0A 0000
add [bx+si],al                            ;BD0C 0000
add [bx+si],al                            ;BD0E 0000
add [bx+si],al                            ;BD10 0000
add [bx+si],al                            ;BD12 0000
add [bx+si],al                            ;BD14 0000
add [bx+si],al                            ;BD16 0000
add [bx+si],al                            ;BD18 0000
add [bx+si],al                            ;BD1A 0000
add [bx+si],al                            ;BD1C 0000
add [bx+si],al                            ;BD1E 0000
add [bx+si],al                            ;BD20 0000
add [bx+si],al                            ;BD22 0000
add [bx+si],al                            ;BD24 0000
add [bx+si],al                            ;BD26 0000
add [bx+si],al                            ;BD28 0000
add [bx+si],al                            ;BD2A 0000
add [bx+si],al                            ;BD2C 0000
add [bx+si],al                            ;BD2E 0000
add [bx+si],al                            ;BD30 0000
add [bx+si],al                            ;BD32 0000
add [bx+si],al                            ;BD34 0000
add [bx+si],al                            ;BD36 0000
add [bx+si],al                            ;BD38 0000
add [bx+si],al                            ;BD3A 0000
add [bx+si],al                            ;BD3C 0000
add [bx+si],al                            ;BD3E 0000
add [bx+si],al                            ;BD40 0000
add [bx+si],al                            ;BD42 0000
add [bx+si],al                            ;BD44 0000
add [bx+si],al                            ;BD46 0000
add [bx+si],al                            ;BD48 0000
add [bx+si],al                            ;BD4A 0000
add [bx+si],al                            ;BD4C 0000
add [bx+si],al                            ;BD4E 0000
add [bx+si],al                            ;BD50 0000
add [bx+si],al                            ;BD52 0000
add [bx+si],al                            ;BD54 0000
add [bx+si],al                            ;BD56 0000
add [bx+si],al                            ;BD58 0000
add [bx+si],al                            ;BD5A 0000
add [bx+si],al                            ;BD5C 0000
add [bx+si],al                            ;BD5E 0000
add [bx+si],al                            ;BD60 0000
add [bx+si],al                            ;BD62 0000
add [bx+si],al                            ;BD64 0000
add [bx+si],al                            ;BD66 0000
add [bx+si],al                            ;BD68 0000
add [bx+si],al                            ;BD6A 0000
add [bx+si],al                            ;BD6C 0000
add [bx+si],al                            ;BD6E 0000
add [bx+si],al                            ;BD70 0000
add [bx+si],al                            ;BD72 0000
add [bx+si],al                            ;BD74 0000
add [bx+si],al                            ;BD76 0000
add [bx+si],al                            ;BD78 0000
add [bx+si],al                            ;BD7A 0000
add [bx+si],al                            ;BD7C 0000
add [bx+si],al                            ;BD7E 0000
add [bx+si],al                            ;BD80 0000
add [bx+si],al                            ;BD82 0000
add [bx+si],al                            ;BD84 0000
add [bx+si],al                            ;BD86 0000
add [bx+si],al                            ;BD88 0000
add [bx+si],al                            ;BD8A 0000
add [bx+si],al                            ;BD8C 0000
add [bx+si],al                            ;BD8E 0000
add [bx+si],al                            ;BD90 0000
add [bx+si],al                            ;BD92 0000
add [bx+si],al                            ;BD94 0000
add [bx+si],al                            ;BD96 0000
add [bx+si],al                            ;BD98 0000
add [bx+si],al                            ;BD9A 0000
add [bx+si],al                            ;BD9C 0000
add [bx+si],al                            ;BD9E 0000
add [bx+si],al                            ;BDA0 0000
add [bx+si],al                            ;BDA2 0000
add [bx+si],al                            ;BDA4 0000
add [bx+si],al                            ;BDA6 0000
add [bx+si],al                            ;BDA8 0000
add [bx+si],al                            ;BDAA 0000
add [bx+si],al                            ;BDAC 0000
add [bx+si],al                            ;BDAE 0000
add [bx+si],al                            ;BDB0 0000
add [bx+si],al                            ;BDB2 0000
add [bx+si],al                            ;BDB4 0000
add [bx+si],al                            ;BDB6 0000
add [bx+si],al                            ;BDB8 0000
add [bx+si],al                            ;BDBA 0000
add [bx+si],al                            ;BDBC 0000
add [bx+si],al                            ;BDBE 0000
add [bx+si],al                            ;BDC0 0000
add [bx+si],al                            ;BDC2 0000
add [bx+si],al                            ;BDC4 0000
add [bx+si],al                            ;BDC6 0000
add [bx+si],al                            ;BDC8 0000
add [bx+si],al                            ;BDCA 0000
add [bx+si],al                            ;BDCC 0000
add [bx+si],al                            ;BDCE 0000
add [bx+si],al                            ;BDD0 0000
add [bx+si],al                            ;BDD2 0000
add [bx+si],al                            ;BDD4 0000
add [bx+si],al                            ;BDD6 0000
add [bx+si],al                            ;BDD8 0000
add [bx+si],al                            ;BDDA 0000
add [bx+si],al                            ;BDDC 0000
add [bx+si],al                            ;BDDE 0000
add [bx+si],al                            ;BDE0 0000
add [bx+si],al                            ;BDE2 0000
add [bx+si],al                            ;BDE4 0000
add [bx+si],al                            ;BDE6 0000
add [bx+si],al                            ;BDE8 0000
add [bx+si],al                            ;BDEA 0000
add [bx+si],al                            ;BDEC 0000
add [bx+si],al                            ;BDEE 0000
add [bx+si],al                            ;BDF0 0000
add [bx+si],al                            ;BDF2 0000
add [bx+si],al                            ;BDF4 0000
add [bx+si],al                            ;BDF6 0000
add [bx+si],al                            ;BDF8 0000
add [bx+si],al                            ;BDFA 0000
add [bx+si],al                            ;BDFC 0000
add [bx+si],al                            ;BDFE 0000
cli                                       ;BE00 FA
xor ax,ax                                 ;BE01 33C0
mov ss,ax                                 ;BE03 8ED0
mov sp,0x7be2                             ;BE05 BCE27B
mov bp,0x7be2                             ;BE08 BDE27B
sti                                       ;BE0B FB
mov [bp+0x14],bx                          ;BE0C 895E14
mov [bp+0x1a],ch                          ;BE0F 886E1A
mov [bp+0x18],dl                          ;BE12 885618
xor ax,ax                                 ;BE15 33C0
mov ds,ax                                 ;BE17 8ED8
mov ax,[0x7c18]                           ;BE19 A1187C
mov [bp+0x16],ax                          ;BE1C 894616
mov ax,[0x7c1a]                           ;BE1F A11A7C
mov [bp+0x0],ax                           ;BE22 894600
mov ax,[0x7c16]                           ;BE25 A1167C
mov [bp+0x8],ax                           ;BE28 894608
mov ax,[0x7c1c]                           ;BE2B A11C7C
mov [bp+0xa],ax                           ;BE2E 89460A
mov ax,[0x7c0e]                           ;BE31 A10E7C
mov [bp+0xe],ax                           ;BE34 89460E
xor ax,ax                                 ;BE37 33C0
mov ds,ax                                 ;BE39 8ED8
mov ax,[0x7c0b]                           ;BE3B A10B7C
xor bx,bx                                 ;BE3E 33DB
mov bl,[0x7c0d]                           ;BE40 8A1E0D7C
mul bx                                    ;BE44 F7E3
mov [bp+0x2],ax                           ;BE46 894602
mov byte [bp+0x19],0x1                    ;BE49 C6461901
cmp byte [bp+0x1a],0xf8                   ;BE4D 807E1AF8
jnz 0xbe88                                ;BE51 7535
mov word [bp+0x4],0x0                     ;BE53 C746040000
xor ax,ax                                 ;BE58 33C0
mov es,ax                                 ;BE5A 8EC0
mov di,0x7d00                             ;BE5C BF007D
mov word [bp+0x6],0x1                     ;BE5F C746060100
call 0xbf42                               ;BE64 E8DB00
mov si,0x7ec2                             ;BE67 BEC27E
mov cx,0x4                                ;BE6A B90400
xor ax,ax                                 ;BE6D 33C0
mov ds,ax                                 ;BE6F 8ED8
mov byte [bp+0x19],0x1                    ;BE71 C6461901
cmp byte [si],0x1                         ;BE75 803C01
jz 0xbe88                                 ;BE78 740E
mov byte [bp+0x19],0x4                    ;BE7A C6461904
cmp byte [si],0x4                         ;BE7E 803C04
jz 0xbe88                                 ;BE81 7405
add si,0x10                               ;BE83 83C610
loop 0xbe71                               ;BE86 E2E9
mov word [bp+0x10],0x1                    ;BE88 C746100100
mov ax,0x1ef                              ;BE8D B8EF01
xor dx,dx                                 ;BE90 33D2
div word [bp+0x2]                         ;BE92 F77602
add [bp+0x10],ax                          ;BE95 014610
cmp dx,0x0                                ;BE98 83FA00
jz 0xbea0                                 ;BE9B 7403
inc word [bp+0x10]                        ;BE9D FF4610
push cs                                   ;BEA0 0E
pop ds                                    ;BEA1 1F
xor ax,ax                                 ;BEA2 33C0
mov es,ax                                 ;BEA4 8EC0
mov si,0xb7                               ;BEA6 BEB700
mov di,0x7d00                             ;BEA9 BF007D
mov cx,0x138                              ;BEAC B93801
nop                                       ;BEAF 90
rep movsb                                 ;BEB0 F3A4
jmp word 0x0:word 0x7d00                  ;BEB2 EA007D0000
xor ax,ax                                 ;BEB7 33C0
mov ds,ax                                 ;BEB9 8ED8
mov ax,[bp+0x8]                           ;BEBB 8B4608
mov [bp+0x6],ax                           ;BEBE 894606
mov ax,[bp+0xa]                           ;BEC1 8B460A
add ax,[bp+0xe]                           ;BEC4 03460E
mov [bp+0x4],ax                           ;BEC7 894604
xor ax,ax                                 ;BECA 33C0
mov es,ax                                 ;BECC 8EC0
mov di,0x8000                             ;BECE BF0080
call 0xbf42                               ;BED1 E86E00
push ds                                   ;BED4 1E
mov ax,[bp+0x10]                          ;BED5 8B4610
sub ax,0x1                                ;BED8 2D0100
mul word [bp+0x2]                         ;BEDB F76602
sub ax,0x1ef                              ;BEDE 2DEF01
nop                                       ;BEE1 90
mov cx,ax                                 ;BEE2 8BC8
mov ax,0x70                               ;BEE4 B87000
mov ds,ax                                 ;BEE7 8ED8
mov es,ax                                 ;BEE9 8EC0
mov si,0x1ef                              ;BEEB BEEF01
mov di,0x0                                ;BEEE BF0000
rep movsb                                 ;BEF1 F3A4
mov [bp+0x12],di                          ;BEF3 897E12
pop ds                                    ;BEF6 1F
xor ah,ah                                 ;BEF7 32E4
mov al,[0x7c0d]                           ;BEF9 A00D7C
mov [bp+0x6],ax                           ;BEFC 894606
call 0xbfab                               ;BEFF E8A900
mov [bp+0x10],ax                          ;BF02 894610
cmp byte [bp+0x1b],0xff                   ;BF05 807E1BFF
jz 0xbf34                                 ;BF09 7429
sub ax,0x2                                ;BF0B 2D0200
xor ch,ch                                 ;BF0E 32ED
mov cl,[0x7c0d]                           ;BF10 8A0E0D7C
mul cx                                    ;BF14 F7E1
add ax,[bp+0x14]                          ;BF16 034614
mov [bp+0x4],ax                           ;BF19 894604
mov di,[bp+0x12]                          ;BF1C 8B7E12
push word [bp+0x6]                        ;BF1F FF7606
mov ax,0x70                               ;BF22 B87000
mov es,ax                                 ;BF25 8EC0
call 0xbf42                               ;BF27 E81800
pop ax                                    ;BF2A 58
mul word [0x7c0b]                         ;BF2B F7260B7C
add [bp+0x12],ax                          ;BF2F 014612
jmp 0xbef7                                ;BF32 EBC3
mov ch,[bp+0x1a]                          ;BF34 8A6E1A
mov dl,[bp+0x18]                          ;BF37 8A5618
mov bx,[bp+0x14]                          ;BF3A 8B5E14
jmp word 0x70:word 0x0                    ;BF3D EA00007000
mov cx,0x5                                ;BF42 B90500
push cx                                   ;BF45 51
mov ax,[bp+0x4]                           ;BF46 8B4604
xor dx,dx                                 ;BF49 33D2
div word [bp+0x16]                        ;BF4B F77616
mov bx,[bp+0x16]                          ;BF4E 8B5E16
sub bx,dx                                 ;BF51 2BDA
mov si,bx                                 ;BF53 8BF3
cmp [bp+0x6],si                           ;BF55 397606
jnc 0xbf5d                                ;BF58 7303
mov si,[bp+0x6]                           ;BF5A 8B7606
inc dl                                    ;BF5D FEC2
mov bl,dl                                 ;BF5F 8ADA
xor dx,dx                                 ;BF61 33D2
div word [bp+0x0]                         ;BF63 F77600
mov dh,dl                                 ;BF66 8AF2
mov cl,bl                                 ;BF68 8ACB
ror ah,0x0                                ;BF6A D0CC
ror ah,0x0                                ;BF6C D0CC
or cl,ah                                  ;BF6E 0ACC
mov ch,al                                 ;BF70 8AE8
mov bx,di                                 ;BF72 8BDF
mov dl,[bp+0x18]                          ;BF74 8A5618
mov ax,si                                 ;BF77 8BC6
mov ah,0x2                                ;BF79 B402
push ax                                   ;BF7B 50
push di                                   ;BF7C 57
int byte 0x13                             ;BF7D CD13
pop di                                    ;BF7F 5F
pop ax                                    ;BF80 58
pop cx                                    ;BF81 59
jnc 0xbf93                                ;BF82 730F
push cx                                   ;BF84 51
mov bx,di                                 ;BF85 8BDF
push di                                   ;BF87 57
mov dl,[bp+0x18]                          ;BF88 8A5618
mov ah,0x0                                ;BF8B B400
int byte 0x13                             ;BF8D CD13
pop di                                    ;BF8F 5F
pop cx                                    ;BF90 59
loop 0xbf45                               ;BF91 E2B2
xor ah,ah                                 ;BF93 32E4
sub [bp+0x6],ax                           ;BF95 294606
jz 0xbfaa                                 ;BF98 7410
add [bp+0x4],ax                           ;BF9A 014604
xor bx,bx                                 ;BF9D 33DB
mov bl,al                                 ;BF9F 8AD8
mov ax,[0x7c0b]                           ;BFA1 A10B7C
mul bx                                    ;BFA4 F7E3
add di,ax                                 ;BFA6 03F8
jmp 0xbf42                                ;BFA8 EB98
ret                                       ;BFAA C3
mov byte [bp+0x1b],0xff                   ;BFAB C6461BFF
mov ax,[bp+0x10]                          ;BFAF 8B4610
cmp byte [bp+0x19],0x1                    ;BFB2 807E1901
jnz 0xbfdd                                ;BFB6 7525
xor bx,bx                                 ;BFB8 33DB
mov bl,0x3                                ;BFBA B303
mul bx                                    ;BFBC F7E3
shr ax,0x0                                ;BFBE D1E8
mov si,ax                                 ;BFC0 8BF0
mov ax,[si-0x8000]                        ;BFC2 8B840080
test word [bp+0x10],0x1                   ;BFC6 F746100100
jnz 0xbfd2                                ;BFCB 7505
and ax,0xfff                              ;BFCD 25FF0F
jmp 0xbfd6                                ;BFD0 EB04
mov cl,0x4                                ;BFD2 B104
shr ax,cl                                 ;BFD4 D3E8
cmp ax,0xff8                              ;BFD6 3DF80F
jnc 0xbfee                                ;BFD9 7313
jmp 0xbfea                                ;BFDB EB0D
shl ax,0x0                                ;BFDD D1E0
mov si,ax                                 ;BFDF 8BF0
mov ax,[si-0x8000]                        ;BFE1 8B840080
cmp ax,0xfff8                             ;BFE5 3DF8FF
jnc 0xbfee                                ;BFE8 7304
mov byte [bp+0x1b],0x0                    ;BFEA C6461B00
ret                                       ;BFEE C3
jmp 0xeb4f                                ;BFEF E95D2B
sbb [bx+di-0x31e6],ch                     ;BFF2 18A91ACE
or [bp+0xa],di                            ;BFF6 097E0A
jnc 0xc001                                ;BFF9 7306
xchg ax,si                                ;BFFB 96
or al,0x6f                                ;BFFC 0C6F
push es                                   ;BFFE 06
mov al,[0x68a]                            ;BFFF 8A068A06
test [si],cl                              ;C003 840C
jpo 0xc013                                ;C005 7B0C
mov al,[0x68a]                            ;C007 8A068A06
jnc 0xc013                                ;C00B 7306
mov bx,[si]                               ;C00D 8B1C
xchg ax,sp                                ;C00F 94
sbb al,0x41                               ;C010 1C41
or al,0x8a                                ;C012 0C8A
push es                                   ;C014 06
mov al,[0x68a]                            ;C015 8A068A06
cmc                                       ;C019 F5
adc cl,[bp+si-0x75fa]                     ;C01A 128A068A
push es                                   ;C01E 06
mov al,[0x1741]                           ;C01F 8A064117
gs pop ss                                 ;C023 6517
add [bp+si],cl                            ;C025 000A
mov al,[0x68a]                            ;C027 8A068A06
mov al,[0x673]                            ;C02B 8A067306
mov ax,0xe606                             ;C02F B806E6
push es                                   ;C032 06
mov al,[0x731]                            ;C033 8A063107
dec cx                                    ;C037 49
pop es                                    ;C038 07
dec cx                                    ;C039 49
pop es                                    ;C03A 07
mov al,[0xa00]                            ;C03B 8A06000A
mov al,[0x68a]                            ;C03F 8A068A06
mov al,[0x673]                            ;C043 8A067306
pop si                                    ;C047 5E
pop es                                    ;C048 07
mov [bx],ax                               ;C049 8907
mov al,[0x7c7]                            ;C04B 8A06C707
rol byte [bx],0x0                         ;C04F D007
rol byte [bx],0x0                         ;C051 D007
lodsb                                     ;C053 AC
pop es                                    ;C054 07
add [bx+di],cl                            ;C055 0009
mov al,[0x68a]                            ;C057 8A068A06
mov al,[0x673]                            ;C05B 8A067306
jc 0xc06a                                 ;C05F 7209
outsw                                     ;C061 6F
push es                                   ;C062 06
mov al,[0x68a]                            ;C063 8A068A06
ror word [bx+si],cl                       ;C067 D308
ror word [bx+si],cl                       ;C069 D308
add [bx+si],bl                            ;C06B 0018
mov al,[0x68a]                            ;C06D 8A068A06
mov al,[0x673]                            ;C071 8A067306
add word [0x66f],0x68a                    ;C075 81066F068A06
mov al,[0x7f4]                            ;C07B 8A06F407
hlt                                       ;C07F F4
pop es                                    ;C080 07
adc [bx+si],cl                            ;C081 1008
mov al,[0x68a]                            ;C083 8A068A06
mov al,[0x68a]                            ;C087 8A068A06
mov al,[0x840]                            ;C08B 8A064008
mov al,[0x68a]                            ;C08F 8A068A06
xchg cl,[bx+si]                           ;C093 8608
mov al,[0x68a]                            ;C095 8A068A06
mov al,[0x673]                            ;C099 8A067306
jnc 0xc0a5                                ;C09D 7306
xor ax,0x3839                             ;C09F 353938
xor dh,[ss:bx+di]                         ;C0A2 363231
add [bx+si],al                            ;C0A5 0000
add [bx+si],al                            ;C0A7 0000
add [bx+si],al                            ;C0A9 0000
add [bx+si],al                            ;C0AB 0000
add [bx+si],al                            ;C0AD 0000
add [bx+si],al                            ;C0AF 0000
add [bx+si],al                            ;C0B1 0000
add [bx+si],al                            ;C0B3 0000
add [bx+si],al                            ;C0B5 0000
add [bx+si],al                            ;C0B7 0000
add [bx+si],al                            ;C0B9 0000
add [bx+si],al                            ;C0BB 0000
add [bx+si],al                            ;C0BD 0000
add [bx+si],al                            ;C0BF 0000
add [bx+si],al                            ;C0C1 0000
add [bx+si],al                            ;C0C3 0000
add [bx+si],al                            ;C0C5 0000
add [bx+si],al                            ;C0C7 0000
add [bx+si],al                            ;C0C9 0000
add [bx+si],al                            ;C0CB 0000
add [bx+si],al                            ;C0CD 0000
add [bx+si],al                            ;C0CF 0000
add [bx+si],al                            ;C0D1 0000
add [bx+si],al                            ;C0D3 0000
add [bx+si],al                            ;C0D5 0000
add [bx+si],al                            ;C0D7 0000
add [bx+si],al                            ;C0D9 0000
add [bx+si],al                            ;C0DB 0000
add [bx+si],al                            ;C0DD 0000
add [bx+si],al                            ;C0DF 0000
add [bx+si],al                            ;C0E1 0000
add [bx+si],al                            ;C0E3 0000
add [bx+si],al                            ;C0E5 0000
add [bx+si],al                            ;C0E7 0000
add [bx+si],al                            ;C0E9 0000
add [bx+si],al                            ;C0EB 0000
add [bx+si],al                            ;C0ED 0000
add [bx+si],al                            ;C0EF 0000
add [bx+si],al                            ;C0F1 0000
add [bx+si],al                            ;C0F3 0000
add [bx+si],al                            ;C0F5 0000
add [bx+si],al                            ;C0F7 0000
add [bx+si],al                            ;C0F9 0000
add [bx+si],al                            ;C0FB 0000
add [bx+si],al                            ;C0FD 0000
add [bx+si],al                            ;C0FF 0000
add [bx+si],al                            ;C101 0000
add [bx+si],al                            ;C103 0000
add [bx+si],al                            ;C105 0000
add [bx+si],al                            ;C107 0000
add [bx+si],al                            ;C109 0000
add [bx+si],al                            ;C10B 0000
add [bx+si],al                            ;C10D 0000
add [bx+si],al                            ;C10F 0000
add [bx+si],al                            ;C111 0000
add [bx+si],al                            ;C113 0000
add [bx+si],al                            ;C115 0000
add [bx+si],al                            ;C117 0000
add [bx+si],al                            ;C119 0000
add [bx+si],al                            ;C11B 0000
add [bx+si],al                            ;C11D 0000
add [bx+si],al                            ;C11F 0000
add [bx+si],al                            ;C121 0000
add [bx+si],al                            ;C123 0000
add [bx+si],al                            ;C125 0000
add [bx+si],al                            ;C127 0000
add [bx+si],al                            ;C129 0000
add [bx+si],al                            ;C12B 0000
add [bx+si],al                            ;C12D 0000
add [bx+si],al                            ;C12F 0000
add [bx+si],al                            ;C131 0000
add [bx+si],al                            ;C133 0000
add [bx+si],al                            ;C135 0000
add [bx+si],al                            ;C137 0000
add [bx+si],al                            ;C139 0000
add [bx+si],al                            ;C13B 0000
add [bx+si],al                            ;C13D 0000
add [bx+si],al                            ;C13F 0000
add [bx+si],al                            ;C141 0000
add [bx+si],al                            ;C143 0000
add [bx+si],al                            ;C145 0000
add [bx+si],al                            ;C147 0000
add [bx+si],al                            ;C149 0000
add [bx+si],al                            ;C14B 0000
add [bx+si],al                            ;C14D 0000
add [bx+si],al                            ;C14F 0000
add [bx+si],al                            ;C151 0000
add [bx+si],al                            ;C153 0000
add [bx+si],al                            ;C155 0000
add [bx+si],al                            ;C157 0000
add [bx+si],al                            ;C159 0000
add [bx+si],al                            ;C15B 0000
add byte [bx+di],0x70                     ;C15D 800170
add [bp+di],dl                            ;C160 0013
sbb ah,0x5                                ;C162 80DC05
out byte 0x5,ax                           ;C165 E705
inc bx                                    ;C167 43
dec di                                    ;C168 4F
dec si                                    ;C169 4E
and [bx+si],ah                            ;C16A 2020
and [bx+si],ah                            ;C16C 2020
and [bp+si+0x7001],dl                     ;C16E 20920170
add [bx+si],al                            ;C172 0000
sbb ah,0x5                                ;C174 80DC05
in ax,dx                                  ;C177 ED
add ax,0x5541                             ;C178 054155
pop ax                                    ;C17B 58
and [bx+si],ah                            ;C17C 2020
and [bx+si],ah                            ;C17E 2020
and [si+0x7001],ah                        ;C180 20A40170
add [bx+si-0x60],al                       ;C184 0040A0
fadd qword [di]                           ;C187 DC05
or al,[0x5250]                            ;C189 0A065052
dec si                                    ;C18D 4E
and [bx+si],ah                            ;C18E 2020
and [bx+si],ah                            ;C190 2020
and [bp+0x7001],dh                        ;C192 20B60170
add [bx+si],cl                            ;C196 0008
sbb ah,0x5                                ;C198 80DC05
xor [0x4c43],al                           ;C19B 3006434C
dec di                                    ;C19F 4F
inc bx                                    ;C1A0 43
dec bx                                    ;C1A1 4B
and al,0x20                               ;C1A2 2420
and dl,cl                                 ;C1A4 20CA
add [bx+si+0x0],si                        ;C1A6 017000
inc ax                                    ;C1A9 40
or ah,bl                                  ;C1AA 08DC
add ax,0x636                              ;C1AC 053606
add al,0xfe                               ;C1AF 04FE
add [bx+si],al                            ;C1B1 0000
add [bx+si],al                            ;C1B3 0000
add [bx+si],al                            ;C1B5 0000
imul bp,[bp+si-0x24],0x1                  ;C1B7 6B6ADC01
jo 0xc1bd                                 ;C1BB 7000
add [bx+si+0x5dc],al                      ;C1BD 0080DC05
in ax,dx                                  ;C1C1 ED
add ax,0x4f43                             ;C1C2 05434F
dec bp                                    ;C1C5 4D
xor [bx+si],sp                            ;C1C6 3120
and [bx+si],ah                            ;C1C8 2020
and dh,ch                                 ;C1CA 20EE
add [bx+si+0x0],si                        ;C1CC 017000
inc ax                                    ;C1CF 40
mov al,[0x5dc]                            ;C1D0 A0DC05
adc [0x504c],al                           ;C1D3 10064C50
push sp                                   ;C1D7 54
xor [bx+si],sp                            ;C1D8 3120
and [bx+si],ah                            ;C1DA 2020
and [bx+si],al                            ;C1DC 2000
add dh,[bx+si+0x0]                        ;C1DE 027000
inc ax                                    ;C1E1 40
mov al,[0x5dc]                            ;C1E2 A0DC05
sbb [0x504c],al                           ;C1E5 18064C50
push sp                                   ;C1E9 54
xor ah,[bx+si]                            ;C1EA 3220
and [bx+si],ah                            ;C1EC 2020
and [bp+si],dl                            ;C1EE 2012
add dh,[bx+si+0x0]                        ;C1F0 027000
inc ax                                    ;C1F3 40
mov al,[0x5dc]                            ;C1F4 A0DC05
and [0x504c],al                           ;C1F7 20064C50
push sp                                   ;C1FB 54
xor sp,[bx+si]                            ;C1FC 3320
and [bx+si],ah                            ;C1FE 2020
and [si],ah                               ;C200 2024
add dh,[bx+si+0x0]                        ;C202 027000
add [bx+si+0x5dc],al                      ;C205 0080DC05
rep add ax,0x4f43                         ;C209 F305434F
dec bp                                    ;C20D 4D
xor ah,[bx+si]                            ;C20E 3220
and [bx+si],ah                            ;C210 2020
and [0x7002],dh                           ;C212 20360270
add [bx+si],al                            ;C216 0000
sbb ah,0x5                                ;C218 80DC05
stc                                       ;C21B F9
add ax,0x4f43                             ;C21C 05434F
dec bp                                    ;C21F 4D
xor sp,[bx+si]                            ;C220 3320
and [bx+si],ah                            ;C222 2020
and bh,bh                                 ;C224 20FF
push word [bx+si+0x0]                     ;C226 FF7000
add [bx+si+0x5dc],al                      ;C229 0080DC05
inc word [di]                             ;C22D FF05
inc bx                                    ;C22F 43
dec di                                    ;C230 4F
dec bp                                    ;C231 4D
xor al,0x20                               ;C232 3420
and [bx+si],ah                            ;C234 2020
and [di+0x701a],dh                        ;C236 20B51A70
add [bp+si+0x7004],al                     ;C23A 00820470
add [bx+si],al                            ;C23E 0000
inc word [bx+si]                          ;C240 FF00
add [bx+si],al                            ;C242 0000
nop                                       ;C244 90
add al,[bx+si]                            ;C245 0200
add [bx+si],al                            ;C247 0000
arpl [bx+si],ax                           ;C249 6300
add [bx+si],al                            ;C24B 0000
add [bx+si],al                            ;C24D 0000
or [bx+si+0x0],dx                         ;C24F 09900000
add [bx+si],al                            ;C253 0000
add [bx+si],al                            ;C255 0000
add [bx+si],al                            ;C257 0000
add [bx+si],al                            ;C259 0000
or [bx+si],al                             ;C25B 0800
add [bx+si],al                            ;C25D 0000
push ax                                   ;C25F 50
add byte [bx+si+0x10],0x8                 ;C260 80401008
push es                                   ;C264 06
add al,0x3                                ;C265 0403
add [bp+si],al                            ;C267 0002
push es                                   ;C269 06
add al,0x4                                ;C26A 0404
invd                                      ;C26C 0F08
add [si],cl                               ;C26E 000C
add [bx+si],al                            ;C270 0000
add [bx+si],al                            ;C272 0000
add [bx+si],al                            ;C274 0000
add [bx+si],al                            ;C276 0000
add [bx+si],al                            ;C278 0000
add [bx+si],al                            ;C27A 0000
add [bx+si],al                            ;C27C 0000
add [bx+si],al                            ;C27E 0000
add [bx+si],al                            ;C280 0000
add [bx+si],al                            ;C282 0000
add [bx+si],al                            ;C284 0000
add [bx+si],al                            ;C286 0000
add [bx+si],al                            ;C288 0000
add [bx+si],al                            ;C28A 0000
add [bx+si],al                            ;C28C 0000
add [bx+si],al                            ;C28E 0000
add [bx+si],al                            ;C290 0000
add [bx+si],al                            ;C292 0000
add [bx+si],al                            ;C294 0000
add [bx+si],al                            ;C296 0000
add [bx+si],al                            ;C298 0000
add [bx+si],al                            ;C29A 0000
add [bx+si],al                            ;C29C 0000
add [bx+si],al                            ;C29E 0000
add [bx+si],al                            ;C2A0 0000
add [bx+si],al                            ;C2A2 0000
add [bx+si],al                            ;C2A4 0000
add [bx+si],al                            ;C2A6 0000
add [bx+si],al                            ;C2A8 0000
add [bx+si],al                            ;C2AA 0000
add [bx+si],al                            ;C2AC 0000
add [bx+si],al                            ;C2AE 0000
add [bx+si],al                            ;C2B0 0000
add [bx+si],al                            ;C2B2 0000
add [bx+si],al                            ;C2B4 0000
add [bx+si],al                            ;C2B6 0000
add [bx+si],al                            ;C2B8 0000
add [bx+si],al                            ;C2BA 0000
add [bx+si],al                            ;C2BC 0000
add [bx+si],al                            ;C2BE 0000
add [bx+si],al                            ;C2C0 0000
add [bx+si],al                            ;C2C2 0000
add [bx+si],al                            ;C2C4 0000
add [bx+si],al                            ;C2C6 0000
add [bx+si],al                            ;C2C8 0000
add [bx+si],al                            ;C2CA 0000
add [bx+si],al                            ;C2CC 0000
add [bx+si],al                            ;C2CE 0000
add [bx+si],al                            ;C2D0 0000
add [bx+si],al                            ;C2D2 0000
add [bx+si],al                            ;C2D4 0000
add [bx+si],al                            ;C2D6 0000
add [bx+si],al                            ;C2D8 0000
add [bx+si],al                            ;C2DA 0000
add [bx+si],al                            ;C2DC 0000
add [bx+si],al                            ;C2DE 0000
add [bx+si],al                            ;C2E0 0000
add [bx+si],al                            ;C2E2 0000
add [bx+si],al                            ;C2E4 0000
add [bx+si],al                            ;C2E6 0000
add [bx+si],al                            ;C2E8 0000
add [bx+si],al                            ;C2EA 0000
add [bx+si],al                            ;C2EC 0000
add [bx+si],al                            ;C2EE 0000
add [bx+si],al                            ;C2F0 0000
add [bx+si],al                            ;C2F2 0000
add [bx+si],al                            ;C2F4 0000
add [bx+si],al                            ;C2F6 0000
add [bx+si],al                            ;C2F8 0000
add [bx+si],al                            ;C2FA 0000
add [bx+si],al                            ;C2FC 0000
add [bx+si],al                            ;C2FE 0000
add [bx+si],al                            ;C300 0000
add [bx+si],al                            ;C302 0000
add [bx+si],al                            ;C304 0000
add [bx+si],al                            ;C306 0000
add [bx+si],al                            ;C308 0000
add [bx+si],al                            ;C30A 0000
add [bx+si],al                            ;C30C 0000
add [bx+si],al                            ;C30E 0000
add [bx+si],al                            ;C310 0000
add [bx+si],al                            ;C312 0000
add [bx+si],al                            ;C314 0000
add [bx+si],al                            ;C316 0000
add [bx+si],al                            ;C318 0000
add [bx+si],al                            ;C31A 0000
add [bx+si],al                            ;C31C 0000
add [bx+si],al                            ;C31E 0000
add [bx+si],al                            ;C320 0000
add [bx+si],al                            ;C322 0000
add [bx+si],al                            ;C324 0000
add [bx+si],al                            ;C326 0000
add [bx+si],al                            ;C328 0000
add [bx+si],al                            ;C32A 0000
add [bx+si],al                            ;C32C 0000
add [bx+si],al                            ;C32E 0000
add [bx+si],al                            ;C330 0000
add [bx+si],al                            ;C332 0000
add [bx+si],al                            ;C334 0000
add [bx+si],al                            ;C336 0000
add [bx+si],al                            ;C338 0000
add [bx+si],al                            ;C33A 0000
add [bx+si],al                            ;C33C 0000
add [bx+si],al                            ;C33E 0000
add [bx+si],al                            ;C340 0000
add [bx+si],al                            ;C342 0000
add [bx+si],al                            ;C344 0000
add [bx+si],al                            ;C346 0000
add [bx+si],al                            ;C348 0000
add [bx+si],al                            ;C34A 0000
add [bx+si],al                            ;C34C 0000
add [bx+si],al                            ;C34E 0000
add [bx+si],al                            ;C350 0000
add [bx+si],al                            ;C352 0000
add [bx+si],al                            ;C354 0000
add [bx+si],al                            ;C356 0000
add [bx+si],al                            ;C358 0000
add [bx+si],al                            ;C35A 0000
add [bx+si],al                            ;C35C 0000
add [bx+si],al                            ;C35E 0000
add [bx+si],al                            ;C360 0000
add [bx+si],al                            ;C362 0000
add [bx+si],al                            ;C364 0000
add [bx+si],al                            ;C366 0000
add [bx+si],al                            ;C368 0000
add [bx+si],al                            ;C36A 0000
add [bx+si],al                            ;C36C 0000
add [bx+si],al                            ;C36E 0000
add [bx+si],al                            ;C370 0000
add [bx+si],al                            ;C372 0000
add [bx+si],al                            ;C374 0000
add [bx+si],al                            ;C376 0000
add [bx+si],al                            ;C378 0000
add [bx+si],al                            ;C37A 0000
add [bx+si],al                            ;C37C 0000
add [bx+si],al                            ;C37E 0000
add [bx+si],al                            ;C380 0000
add [bx+si],al                            ;C382 0000
add [bx+si],al                            ;C384 0000
add [bx+si],al                            ;C386 0000
add [bx+si],al                            ;C388 0000
add [bx+si],al                            ;C38A 0000
add [bx+si],al                            ;C38C 0000
add [bx+si],al                            ;C38E 0000
add [bx+si],al                            ;C390 0000
add [bx+si],al                            ;C392 0000
add [bx+si],al                            ;C394 0000
add [bx+si],al                            ;C396 0000
add [bx+si],al                            ;C398 0000
add [bx+si],al                            ;C39A 0000
add [bx+si],al                            ;C39C 0000
add [bx+si],al                            ;C39E 0000
add [bx+si],al                            ;C3A0 0000
add [bx+si],al                            ;C3A2 0000
add [bx+si],al                            ;C3A4 0000
add [bx+si],al                            ;C3A6 0000
add [bx+si],al                            ;C3A8 0000
add [bx+si],al                            ;C3AA 0000
add [bx+si],al                            ;C3AC 0000
add [bx+si],al                            ;C3AE 0000
add [bx+si],al                            ;C3B0 0000
add [bx+si],al                            ;C3B2 0000
add [bx+si],al                            ;C3B4 0000
add [bx+si],al                            ;C3B6 0000
add [bx+si],al                            ;C3B8 0000
add [bx+si],al                            ;C3BA 0000
add [bx+si],al                            ;C3BC 0000
add [bx+si],al                            ;C3BE 0000
add [bx+si],al                            ;C3C0 0000
add [bx+si],al                            ;C3C2 0000
add [bx+si],al                            ;C3C4 0000
add [bx+si],al                            ;C3C6 0000
add [bx+si],al                            ;C3C8 0000
add [bx+si],al                            ;C3CA 0000
add [bx+si],al                            ;C3CC 0000
add [bx+si],al                            ;C3CE 0000
add [bx+si],al                            ;C3D0 0000
add [bx+si],al                            ;C3D2 0000
add [bx+si],al                            ;C3D4 0000
add [bx+si],al                            ;C3D6 0000
add [bx+si],al                            ;C3D8 0000
add [bx+si],al                            ;C3DA 0000
add [bx+si],al                            ;C3DC 0000
add [bx+si],al                            ;C3DE 0000
add [bx+si],al                            ;C3E0 0000
add [bx+si],al                            ;C3E2 0000
add [bx+si],al                            ;C3E4 0000
add [bx+si],al                            ;C3E6 0000
add [bx+si],al                            ;C3E8 0000
add [bx+si],al                            ;C3EA 0000
add [bx+si],al                            ;C3EC 0000
add [bx+si],al                            ;C3EE 0000
add [bx+si],al                            ;C3F0 0000
add [bx+si],al                            ;C3F2 0000
add [bx+si],al                            ;C3F4 0000
add [bx+si],al                            ;C3F6 0000
add [bx+si],al                            ;C3F8 0000
add [bx+si],al                            ;C3FA 0000
add [bx+si],al                            ;C3FC 0000
add [bx+si],al                            ;C3FE 0000
add [bx+si],al                            ;C400 0000
add [bx+si],al                            ;C402 0000
add [bx+si],al                            ;C404 0000
add [bx+si],al                            ;C406 0000
add [bx+si],al                            ;C408 0000
add [bx+si],al                            ;C40A 0000
add [bx+si],al                            ;C40C 0000
add [bx+si],al                            ;C40E 0000
add [bx+si],al                            ;C410 0000
add [bx+si],al                            ;C412 0000
add [bx+si],al                            ;C414 0000
add [bx+si],al                            ;C416 0000
add [bx+si],al                            ;C418 0000
add [bx+si],al                            ;C41A 0000
add [bx+si],al                            ;C41C 0000
add [bx+si],al                            ;C41E 0000
add [bx+si],al                            ;C420 0000
add [bx+si],al                            ;C422 0000
add [bx+si],al                            ;C424 0000
add [bx+si],al                            ;C426 0000
add [bx+si],al                            ;C428 0000
add [bx+si],al                            ;C42A 0000
add [bx+si],al                            ;C42C 0000
add [bx+si],al                            ;C42E 0000
add [bx+si],al                            ;C430 0000
add [bx+si],al                            ;C432 0000
add [bx+si],al                            ;C434 0000
add [bx+si],al                            ;C436 0000
add [bx+si],al                            ;C438 0000
add [bx+si],al                            ;C43A 0000
add [bx+si],al                            ;C43C 0000
add [bx+si],al                            ;C43E 0000
add [bx+si],al                            ;C440 0000
add [bx+si],al                            ;C442 0000
add [bx+si],al                            ;C444 0000
add [bx+si],al                            ;C446 0000
add [bx+si],al                            ;C448 0000
add [bx+si],al                            ;C44A 0000
add [bx+si],al                            ;C44C 0000
add [bx+si],al                            ;C44E 0000
add [bx+si],al                            ;C450 0000
add [bx+si],al                            ;C452 0000
add [bx+si],al                            ;C454 0000
add [bx+si],al                            ;C456 0000
add [bx+si],al                            ;C458 0000
add [bx+si],al                            ;C45A 0000
add [bx+si],al                            ;C45C 0000
add [bx+si],al                            ;C45E 0000
add [bx+si],al                            ;C460 0000
add [bx+si],al                            ;C462 0000
add [bx+si],al                            ;C464 0000
add [bx+si],al                            ;C466 0000
add [bx+si],al                            ;C468 0000
add [bx+si],al                            ;C46A 0000
add [bx+si],al                            ;C46C 0000
add [bx+si],al                            ;C46E 0000
nop                                       ;C470 90
aam byte 0x4                              ;C471 D404
jo 0xc475                                 ;C473 7000
add [bx+si],al                            ;C475 0000
add [bp+si],al                            ;C477 0002
inc word [bx+di]                          ;C479 FF01
add [bp+si],al                            ;C47B 0002
inc ax                                    ;C47D 40
add [bx+si+0x1],ch                        ;C47E 006801
add [bp+si],al                            ;C481 0002
add [bx+di],cl                            ;C483 0009
add [bx+di],al                            ;C485 0001
add [bx+si],al                            ;C487 0000
add [bx+si],al                            ;C489 0000
add [bx+si],al                            ;C48B 0000
dec si                                    ;C48D 4E
dec di                                    ;C48E 4F
and [bp+0x41],cl                          ;C48F 204E41
dec bp                                    ;C492 4D
inc bp                                    ;C493 45
and [bx+si],ah                            ;C494 2020
and [bx+si],ah                            ;C496 2020
add [bp+di],al                            ;C498 0003
and [bx+si],al                            ;C49A 2000
sub [bx+si],al                            ;C49C 2800
add [bp+si],al                            ;C49E 0002
add [bx+di],ax                            ;C4A0 0101
add [bp+si],al                            ;C4A2 0002
loopne 0xc4a6                             ;C4A4 E000
push word 0xf001                          ;C4A6 6801F0
add al,[bx+si]                            ;C4A9 0200
or [bx+si],ax                             ;C4AB 0900
add al,[bx+si]                            ;C4AD 0200
add [bx+si],al                            ;C4AF 0000
add [bx+si],al                            ;C4B1 0000
add [bx+si],al                            ;C4B3 0000
add [bx+si],al                            ;C4B5 0000
add [bx+si],al                            ;C4B7 0000
add [bx+si],al                            ;C4B9 0000
add [bx+si],al                            ;C4BB 0000
db 0xff                                   ;C4BD FF
db 0xff                                   ;C4BE FF
db 0xff                                   ;C4BF FF
db 0xff                                   ;C4C0 FF
call word near [bx+si+0x526]              ;C4C1 FF902605
jo 0xc4c7                                 ;C4C5 7000
add [bx+si],al                            ;C4C7 0000
add [bp+si],al                            ;C4C9 0002
inc word [bx+di]                          ;C4CB FF01
add [bp+si],al                            ;C4CD 0002
inc ax                                    ;C4CF 40
add [bx+si+0x1],ch                        ;C4D0 006801
add [bp+si],al                            ;C4D3 0002
add [bx+di],cl                            ;C4D5 0009
add [bx+di],al                            ;C4D7 0001
add [bx+si],al                            ;C4D9 0000
add [bx+si],al                            ;C4DB 0000
add [bx+si],al                            ;C4DD 0000
dec si                                    ;C4DF 4E
dec di                                    ;C4E0 4F
and [bp+0x41],cl                          ;C4E1 204E41
dec bp                                    ;C4E4 4D
inc bp                                    ;C4E5 45
and [bx+si],ah                            ;C4E6 2020
and [bx+si],ah                            ;C4E8 2020
add [bp+di],al                            ;C4EA 0003
and [bx+si],al                            ;C4EC 2000
sub [bx+si],al                            ;C4EE 2800
add [bp+si],al                            ;C4F0 0002
add [bx+di],ax                            ;C4F2 0101
add [bp+si],al                            ;C4F4 0002
loopne 0xc4f8                             ;C4F6 E000
push word 0xf001                          ;C4F8 6801F0
add al,[bx+si]                            ;C4FB 0200
or [bx+si],ax                             ;C4FD 0900
add al,[bx+si]                            ;C4FF 0200
add [bx+si],al                            ;C501 0000
add [bx+si],al                            ;C503 0000
add [bx+si],al                            ;C505 0000
add [bx+si],al                            ;C507 0000
add [bx+si],al                            ;C509 0000
add [bx+si],al                            ;C50B 0000
add [bx+si],al                            ;C50D 0000
db 0xff                                   ;C50F FF
db 0xff                                   ;C510 FF
db 0xff                                   ;C511 FF
db 0xff                                   ;C512 FF
call word near [bx+si+0x578]              ;C513 FF907805
jo 0xc519                                 ;C517 7000
add [bx+si],al                            ;C519 0000
add [bp+si],al                            ;C51B 0002
inc word [bx+di]                          ;C51D FF01
add [bp+si],al                            ;C51F 0002
inc ax                                    ;C521 40
add [bx+si+0x1],ch                        ;C522 006801
add [bp+si],al                            ;C525 0002
add [bx+di],cl                            ;C527 0009
add [bx+di],al                            ;C529 0001
add [bx+si],al                            ;C52B 0000
add [bx+si],al                            ;C52D 0000
add [bx+si],al                            ;C52F 0000
dec si                                    ;C531 4E
dec di                                    ;C532 4F
and [bp+0x41],cl                          ;C533 204E41
dec bp                                    ;C536 4D
inc bp                                    ;C537 45
and [bx+si],ah                            ;C538 2020
and [bx+si],ah                            ;C53A 2020
add [bp+di],al                            ;C53C 0003
and [bx+si],al                            ;C53E 2000
sub [bx+si],al                            ;C540 2800
add [bp+si],al                            ;C542 0002
add [bx+di],ax                            ;C544 0101
add [bp+si],al                            ;C546 0002
loopne 0xc54a                             ;C548 E000
push word 0xf001                          ;C54A 6801F0
add al,[bx+si]                            ;C54D 0200
or [bx+si],ax                             ;C54F 0900
add al,[bx+si]                            ;C551 0200
add [bx+si],al                            ;C553 0000
add [bx+si],al                            ;C555 0000
add [bx+si],al                            ;C557 0000
add [bx+si],al                            ;C559 0000
add [bx+si],al                            ;C55B 0000
add [bx+si],al                            ;C55D 0000
add [bx+si],al                            ;C55F 0000
db 0xff                                   ;C561 FF
db 0xff                                   ;C562 FF
db 0xff                                   ;C563 FF
db 0xff                                   ;C564 FF
call word near [bx+si-0x1]                ;C565 FF90FFFF
jo 0xc56b                                 ;C569 7000
add [bx+si],al                            ;C56B 0000
add [bp+si],al                            ;C56D 0002
inc word [bx+di]                          ;C56F FF01
add [bp+si],al                            ;C571 0002
inc ax                                    ;C573 40
add [bx+si+0x1],ch                        ;C574 006801
add [bp+si],al                            ;C577 0002
add [bx+di],cl                            ;C579 0009
add [bx+di],al                            ;C57B 0001
add [bx+si],al                            ;C57D 0000
add [bx+si],al                            ;C57F 0000
add [bx+si],al                            ;C581 0000
dec si                                    ;C583 4E
dec di                                    ;C584 4F
and [bp+0x41],cl                          ;C585 204E41
dec bp                                    ;C588 4D
inc bp                                    ;C589 45
and [bx+si],ah                            ;C58A 2020
and [bx+si],ah                            ;C58C 2020
add [bp+di],al                            ;C58E 0003
and [bx+si],al                            ;C590 2000
sub [bx+si],al                            ;C592 2800
add [bp+si],al                            ;C594 0002
add [bx+di],ax                            ;C596 0101
add [bp+si],al                            ;C598 0002
loopne 0xc59c                             ;C59A E000
push word 0xf001                          ;C59C 6801F0
add al,[bx+si]                            ;C59F 0200
or [bx+si],ax                             ;C5A1 0900
add al,[bx+si]                            ;C5A3 0200
add [bx+si],al                            ;C5A5 0000
add [bx+si],al                            ;C5A7 0000
add [bx+si],al                            ;C5A9 0000
add [bx+si],al                            ;C5AB 0000
add [bx+si],al                            ;C5AD 0000
add [bx+si],al                            ;C5AF 0000
add [bx+si],al                            ;C5B1 0000
db 0xff                                   ;C5B3 FF
db 0xff                                   ;C5B4 FF
db 0xff                                   ;C5B5 FF
db 0xff                                   ;C5B6 FF
inc word [bp+di]                          ;C5B7 FF03
or [bx+si-0x60],si                        ;C5B9 0970A0
add ax,0x202                              ;C5BC 050202
add [bx+si],al                            ;C5BF 0000
push ax                                   ;C5C1 50
add [bx+si+0x0],dl                        ;C5C2 005000
push ax                                   ;C5C5 50
add [bx+si+0x0],dl                        ;C5C6 005000
add [bx+si],al                            ;C5C9 0000
mov [cs:0xb8],bx                          ;C5CB 2E891EB800
mov word [cs:0xba],es                     ;C5D0 2E8C06BA00
retf                                      ;C5D5 CB
push si                                   ;C5D6 56
mov si,0x37                               ;C5D7 BE3700
jmp 0xc629                                ;C5DA EB4D
push si                                   ;C5DC 56
push ax                                   ;C5DD 50
xor al,al                                 ;C5DE 32C0
jmp 0xc5f4                                ;C5E0 EB12
push si                                   ;C5E2 56
push ax                                   ;C5E3 50
mov al,0x1                                ;C5E4 B001
jmp 0xc5f4                                ;C5E6 EB0C
push si                                   ;C5E8 56
push ax                                   ;C5E9 50
mov al,0x2                                ;C5EA B002
jmp 0xc5f4                                ;C5EC EB06
push si                                   ;C5EE 56
push ax                                   ;C5EF 50
mov al,0x3                                ;C5F0 B003
jmp 0xc5f4                                ;C5F2 EB00
mov si,0x4f                               ;C5F4 BE4F00
jmp 0xc62a                                ;C5F7 EB31
push si                                   ;C5F9 56
push ax                                   ;C5FA 50
xor ax,ax                                 ;C5FB 33C0
jmp 0xc615                                ;C5FD EB16
push si                                   ;C5FF 56
push ax                                   ;C600 50
xor al,al                                 ;C601 32C0
mov ah,0x1                                ;C603 B401
jmp 0xc615                                ;C605 EB0E
push si                                   ;C607 56
push ax                                   ;C608 50
mov al,0x1                                ;C609 B001
mov ah,0x2                                ;C60B B402
jmp 0xc615                                ;C60D EB06
push si                                   ;C60F 56
push ax                                   ;C610 50
mov al,0x2                                ;C611 B002
mov ah,0x3                                ;C613 B403
mov si,0x7d                               ;C615 BE7D00
mov [cs:0x5d1],ah                         ;C618 2E8826D105
jmp 0xc62a                                ;C61D EB0B
push si                                   ;C61F 56
mov si,0x67                               ;C620 BE6700
jmp 0xc629                                ;C623 EB04
push si                                   ;C625 56
mov si,0x3                                ;C626 BE0300
push ax                                   ;C629 50
push cx                                   ;C62A 51
push dx                                   ;C62B 52
push di                                   ;C62C 57
push bp                                   ;C62D 55
push ds                                   ;C62E 1E
push es                                   ;C62F 06
push bx                                   ;C630 53
mov [cs:0x16c],al                         ;C631 2EA26C01
lds bx,word [cs:0xb8]                     ;C635 2EC51EB800
mov al,[bx+0x1]                           ;C63A 8A4701
mov ah,[bx+0xd]                           ;C63D 8A670D
mov cx,[bx+0x12]                          ;C640 8B4F12
mov dx,[bx+0x14]                          ;C643 8B5714
xchg ax,di                                ;C646 97
mov al,[bx+0x2]                           ;C647 8A4702
cmp al,[cs:si]                            ;C64A 2E3A04
ja 0xc662                                 ;C64D 7713
cbw                                       ;C64F 98
shl ax,0x0                                ;C650 D1E0
add si,ax                                 ;C652 03F0
xchg ax,di                                ;C654 97
les di,word [bx+0xe]                      ;C655 C47F0E
push cs                                   ;C658 0E
pop ds                                    ;C659 1F
cld                                       ;C65A FC
jmp word near [si+0x1]                    ;C65B FF6401
mov ah,0x3                                ;C65E B403
jmp 0xc67b                                ;C660 EB19
mov al,0x3                                ;C662 B003
lds bx,word [cs:0xb8]                     ;C664 2EC51EB800
sub [bx+0x12],cx                          ;C669 294F12
mov ah,0x81                               ;C66C B481
jmp 0xc67b                                ;C66E EB0B
lds bx,word [0xb8]                        ;C670 C51EB800
xor ax,ax                                 ;C674 33C0
mov [bx+0x12],ax                          ;C676 894712
mov ah,0x1                                ;C679 B401
lds bx,word [cs:0xb8]                     ;C67B 2EC51EB800
mov [bx+0x3],ax                           ;C680 894703
pop bx                                    ;C683 5B
pop es                                    ;C684 07
pop ds                                    ;C685 1F
pop bp                                    ;C686 5D
pop di                                    ;C687 5F
pop dx                                    ;C688 5A
pop cx                                    ;C689 59
pop ax                                    ;C68A 58
pop si                                    ;C68B 5E
retf                                      ;C68C CB
push ax                                   ;C68D 50
push si                                   ;C68E 56
push di                                   ;C68F 57
push bp                                   ;C690 55
push bx                                   ;C691 53
mov ah,0xe                                ;C692 B40E
mov bh,0x0                                ;C694 B700
mov bl,0x7                                ;C696 B307
int byte 0x10                             ;C698 CD10
pop bx                                    ;C69A 5B
pop bp                                    ;C69B 5D
pop di                                    ;C69C 5F
pop si                                    ;C69D 5E
pop ax                                    ;C69E 58
iret                                      ;C69F CF
mov dx,[cs:0x16c]                         ;C6A0 2E8B166C01
ret                                       ;C6A5 C3
add bl,ah                                 ;C6A6 00E3
push es                                   ;C6A8 06
call 0xc6b2                               ;C6A9 E80600
stosb                                     ;C6AC AA
loop 0xc6a9                               ;C6AD E2FA
jmp 0xc679                                ;C6AF E9C7FF
xor ax,ax                                 ;C6B2 33C0
xchg al,[0x5d0]                           ;C6B4 8606D005
or al,al                                  ;C6B8 0AC0
jnz 0xc6d1                                ;C6BA 7515
int byte 0x16                             ;C6BC CD16
or ax,ax                                  ;C6BE 0BC0
jz 0xc6b2                                 ;C6C0 74F0
cmp ax,0x7200                             ;C6C2 3D0072
jnz 0xc6c9                                ;C6C5 7502
mov al,0x10                               ;C6C7 B010
or al,al                                  ;C6C9 0AC0
jnz 0xc6d1                                ;C6CB 7504
mov [0x5d0],ah                            ;C6CD 8826D005
ret                                       ;C6D1 C3
jmp 0xc71d                                ;C6D2 EB49
nop                                       ;C6D4 90
mov al,[0x5d0]                            ;C6D5 A0D005
or al,al                                  ;C6D8 0AC0
jz 0xc6df                                 ;C6DA 7403
jmp 0xc713                                ;C6DC EB35
nop                                       ;C6DE 90
mov ah,0x1                                ;C6DF B401
int byte 0x16                             ;C6E1 CD16
jz 0xc6e8                                 ;C6E3 7403
jmp 0xc704                                ;C6E5 EB1D
nop                                       ;C6E7 90
cmp byte [0x1c5],0x0                      ;C6E8 803EC50100
jz 0xc6d2                                 ;C6ED 74E3
lds bx,word [0xb8]                        ;C6EF C51EB800
test word [bx+0x3],0x400                  ;C6F3 F747030004
jz 0xc6d2                                 ;C6F8 74D8
mov ax,0x4100                             ;C6FA B80041
xor bl,bl                                 ;C6FD 32DB
int byte 0x15                             ;C6FF CD15
jmp 0xc71d                                ;C701 EB1A
nop                                       ;C703 90
or ax,ax                                  ;C704 0BC0
jnz 0xc70c                                ;C706 7504
int byte 0x16                             ;C708 CD16
jmp 0xc6d5                                ;C70A EBC9
cmp ax,0x7200                             ;C70C 3D0072
jnz 0xc713                                ;C70F 7502
mov al,0x10                               ;C711 B010
lds bx,word [0xb8]                        ;C713 C51EB800
mov [bx+0xd],al                           ;C717 88470D
jmp 0xc679                                ;C71A E95CFF
jmp 0xc65e                                ;C71D E93EFF
call 0xc726                               ;C720 E80300
jmp 0xc679                                ;C723 E953FF
mov byte [0x5d0],0x0                      ;C726 C606D00500
mov ah,0x1                                ;C72B B401
int byte 0x16                             ;C72D CD16
jz 0xc737                                 ;C72F 7406
xor ah,ah                                 ;C731 32E4
int byte 0x16                             ;C733 CD16
jmp 0xc72b                                ;C735 EBF4
ret                                       ;C737 C3
jcxz 0xc71a                               ;C738 E3E0
mov al,[es:di]                            ;C73A 268A05
inc di                                    ;C73D 47
int byte 0x29                             ;C73E CD29
loop 0xc73a                               ;C740 E2F8
jmp 0xc679                                ;C742 E934FF
mov byte [cs:0x5d0],0x3                   ;C745 2EC606D00503
iret                                      ;C74B CF
add bl,ah                                 ;C74C 00E3
adc ax,bp                                 ;C74E 11E8
xchg ax,[bx+si]                           ;C750 8700
xor ax,ax                                 ;C752 33C0
xchg al,[bx]                              ;C754 8607
or al,al                                  ;C756 0AC0
jnz 0xc75d                                ;C758 7503
call 0xc763                               ;C75A E80600
stosb                                     ;C75D AA
loop 0xc75a                               ;C75E E2FA
jmp 0xc679                                ;C760 E916FF
mov ah,0x2                                ;C763 B402
call 0xc7b0                               ;C765 E84800
test ah,0xe                               ;C768 F6C40E
jz 0xc777                                 ;C76B 740A
add sp,0x2                                ;C76D 83C402
xor al,al                                 ;C770 32C0
or al,0xb0                                ;C772 0CB0
jmp 0xc664                                ;C774 E9EDFE
ret                                       ;C777 C3
call 0xc7d9                               ;C778 E85E00
mov al,[bx]                               ;C77B 8A07
or al,al                                  ;C77D 0AC0
jnz 0xc795                                ;C77F 7514
call 0xc7aa                               ;C781 E82600
test ah,0x1                               ;C784 F6C401
jz 0xc798                                 ;C787 740F
test al,0x20                              ;C789 A820
jz 0xc798                                 ;C78B 740B
call 0xc763                               ;C78D E8D3FF
call 0xc7d9                               ;C790 E84600
mov [bx],al                               ;C793 8807
jmp 0xc713                                ;C795 E97BFF
jmp 0xc65e                                ;C798 E9C3FE
call 0xc7aa                               ;C79B E80C00
test al,0x20                              ;C79E A820
jz 0xc798                                 ;C7A0 74F6
test ah,0x20                              ;C7A2 F6C420
jz 0xc798                                 ;C7A5 74F1
jmp 0xc679                                ;C7A7 E9CFFE
mov ah,0x3                                ;C7AA B403
call 0xc7b0                               ;C7AC E80100
ret                                       ;C7AF C3
call 0xc6a0                               ;C7B0 E8EDFE
int byte 0x14                             ;C7B3 CD14
ret                                       ;C7B5 C3
call 0xc7d9                               ;C7B6 E82000
mov byte [bx],0x0                         ;C7B9 C60700
jmp 0xc679                                ;C7BC E9BAFE
jcxz 0xc760                               ;C7BF E39F
mov al,[es:di]                            ;C7C1 268A05
inc di                                    ;C7C4 47
mov ah,0x1                                ;C7C5 B401
call 0xc7b0                               ;C7C7 E8E6FF
test ah,0x80                              ;C7CA F6C480
jz 0xc7d4                                 ;C7CD 7405
mov al,0xa                                ;C7CF B00A
jmp 0xc664                                ;C7D1 E990FE
loop 0xc7c1                               ;C7D4 E2EB
jmp 0xc679                                ;C7D6 E9A0FE
call 0xc6a0                               ;C7D9 E8C4FE
mov bx,dx                                 ;C7DC 8BDA
add bx,0xbc                               ;C7DE 81C3BC00
ret                                       ;C7E2 C3
jcxz 0xc7f5                               ;C7E3 E310
mov bx,0x2                                ;C7E5 BB0200
mov al,[es:di]                            ;C7E8 268A05
inc di                                    ;C7EB 47
xor ah,ah                                 ;C7EC 32E4
call 0xc815                               ;C7EE E82400
jnz 0xc7f8                                ;C7F1 7505
loop 0xc7e5                               ;C7F3 E2F0
jmp 0xc679                                ;C7F5 E981FE
dec di                                    ;C7F8 4F
dec bx                                    ;C7F9 4B
jnz 0xc7e8                                ;C7FA 75EC
jmp 0xc664                                ;C7FC E965FE
call 0xc813                               ;C7FF E81100
jnz 0xc7fc                                ;C802 75F8
mov al,0x9                                ;C804 B009
test ah,0x20                              ;C806 F6C420
jnz 0xc7fc                                ;C809 75F1
test ah,0x80                              ;C80B F6C480
jnz 0xc7f5                                ;C80E 75E5
jmp 0xc65e                                ;C810 E94BFE
mov ah,0x2                                ;C813 B402
call 0xc6a0                               ;C815 E888FE
int byte 0x17                             ;C818 CD17
test ah,0x8                               ;C81A F6C408
jz 0xc829                                 ;C81D 740A
mov al,0x9                                ;C81F B009
test ah,0x20                              ;C821 F6C420
jnz 0xc828                                ;C824 7502
inc al                                    ;C826 FEC0
ret                                       ;C828 C3
mov al,0x2                                ;C829 B002
test ah,0x1                               ;C82B F6C401
ret                                       ;C82E C3
push ds                                   ;C82F 1E
push es                                   ;C830 06
pop ds                                    ;C831 1F
mov si,di                                 ;C832 8BF7
push cx                                   ;C834 51
push bx                                   ;C835 53
xor bx,bx                                 ;C836 33DB
mov bl,[cs:0x5d1]                         ;C838 2E8A1ED105
shl bx,0x0                                ;C83D D1E3
mov cx,[cs:bx+0x5d2]                      ;C83F 2E8B8FD205
pop bx                                    ;C844 5B
call 0xc813                               ;C845 E8CBFF
jnz 0xc868                                ;C848 751E
test ah,0x80                              ;C84A F6C480
loope 0xc845                              ;C84D E1F6
pop cx                                    ;C84F 59
jz 0xc869                                 ;C850 7417
lodsb                                     ;C852 AC
xor ah,ah                                 ;C853 32E4
call 0xc815                               ;C855 E8BDFF
jnz 0xc869                                ;C858 750F
loop 0xc834                               ;C85A E2D8
pop ds                                    ;C85C 1F
lds bx,word [cs:0xb8]                     ;C85D 2EC51EB800
sub [bx+0x12],cx                          ;C862 294F12
jmp 0xc679                                ;C865 E911FE
pop cx                                    ;C868 59
pop ds                                    ;C869 1F
lds bx,word [cs:0xb8]                     ;C86A 2EC51EB800
sub [bx+0x12],cx                          ;C86F 294F12
jmp 0xc66c                                ;C872 E9F7FD
les di,word [0xb8]                        ;C875 C43EB800
cmp byte [es:di+0xd],0x5                  ;C879 26807D0D05
jz 0xc883                                 ;C87E 7403
jmp 0xc662                                ;C880 E9DFFD
mov al,[es:di+0xe]                        ;C883 268A450E
les di,word [es:di+0x13]                  ;C887 26C47D13
xor bx,bx                                 ;C88B 33DB
mov bl,[0x5d1]                            ;C88D 8A1ED105
shl bx,0x0                                ;C891 D1E3
mov cx,[bx+0x5d2]                         ;C893 8B8FD205
cmp al,0x65                               ;C897 3C65
jz 0xc8a2                                 ;C899 7407
cmp al,0x45                               ;C89B 3C45
jnz 0xc880                                ;C89D 75E1
mov cx,[es:di]                            ;C89F 268B0D
mov [bx+0x5d2],cx                         ;C8A2 898FD205
mov [es:di],cx                            ;C8A6 26890D
jmp 0xc679                                ;C8A9 E9CDFD
add [bx+si],al                            ;C8AC 0000
adc dx,[bx+si+0x1f]                       ;C8AE 13501F
sbb al,0x1f                               ;C8B1 1C1F
push ds                                   ;C8B3 1E
pop ds                                    ;C8B4 1F
push ds                                   ;C8B5 1E
pop ds                                    ;C8B6 1F
pop ds                                    ;C8B7 1F
push ds                                   ;C8B8 1E
pop ds                                    ;C8B9 1F
push ds                                   ;C8BA 1E
pop ds                                    ;C8BB 1F
add [bx+si],al                            ;C8BC 0000
add [bx+si],al                            ;C8BE 0000
sub ax,0x2609                             ;C8C0 2D0926
mov ax,[di]                               ;C8C3 8B05
push ax                                   ;C8C5 50
cmp byte [0x8be],0x0                      ;C8C6 803EBE0800
jz 0xc8f3                                 ;C8CB 7426
mov al,[es:di+0x3]                        ;C8CD 268A4503
call word near [0x8cd]                    ;C8D1 FF16CD08
mov ch,al                                 ;C8D5 8AE8
mov al,[es:di+0x2]                        ;C8D7 268A4502
call word near [0x8cd]                    ;C8DB FF16CD08
mov cl,al                                 ;C8DF 8AC8
mov al,[es:di+0x5]                        ;C8E1 268A4505
call word near [0x8cd]                    ;C8E5 FF16CD08
mov dh,al                                 ;C8E9 8AF0
mov dl,0x0                                ;C8EB B200
cli                                       ;C8ED FA
mov ah,0x3                                ;C8EE B403
int byte 0x1a                             ;C8F0 CD1A
sti                                       ;C8F2 FB
mov cx,[es:di+0x2]                        ;C8F3 268B4D02
mov dx,[es:di+0x4]                        ;C8F7 268B5504
call 0xc91c                               ;C8FB E81E00
cli                                       ;C8FE FA
mov ah,0x1                                ;C8FF B401
int byte 0x1a                             ;C901 CD1A
pop word [0x5da]                          ;C903 8F06DA05
sti                                       ;C907 FB
cmp byte [0x8be],0x0                      ;C908 803EBE0800
jz 0xc919                                 ;C90D 740A
call word near [0x8cf]                    ;C90F FF16CF08
cli                                       ;C913 FA
mov ah,0x5                                ;C914 B405
int byte 0x1a                             ;C916 CD1A
sti                                       ;C918 FB
jmp 0xc679                                ;C919 E95DFD
mov al,0x3c                               ;C91C B03C
mul ch                                    ;C91E F6E5
mov ch,0x0                                ;C920 B500
add ax,cx                                 ;C922 03C1
mov cx,0x1770                             ;C924 B97017
mov bx,dx                                 ;C927 8BDA
mul cx                                    ;C929 F7E1
mov cx,ax                                 ;C92B 8BC8
mov al,0x64                               ;C92D B064
mul bh                                    ;C92F F6E7
add cx,ax                                 ;C931 03C8
adc dx,0x0                                ;C933 83D200
mov bh,0x0                                ;C936 B700
add cx,bx                                 ;C938 03CB
adc dx,0x0                                ;C93A 83D200
xchg ax,dx                                ;C93D 92
xchg ax,cx                                ;C93E 91
mov bx,0xe90b                             ;C93F BB0BE9
mul bx                                    ;C942 F7E3
xchg dx,cx                                ;C944 87D1
xchg ax,dx                                ;C946 92
mul bx                                    ;C947 F7E3
add ax,cx                                 ;C949 03C1
adc dx,0x0                                ;C94B 83D200
xchg ax,dx                                ;C94E 92
mov bx,0x5                                ;C94F BB0500
div bl                                    ;C952 F6F3
mov cl,al                                 ;C954 8AC8
mov ch,0x0                                ;C956 B500
mov al,ah                                 ;C958 8AC4
cbw                                       ;C95A 98
xchg ax,dx                                ;C95B 92
div bx                                    ;C95C F7F3
mov dx,ax                                 ;C95E 8BD0
ret                                       ;C960 C3
xor ah,ah                                 ;C961 32E4
int byte 0x1a                             ;C963 CD1A
or al,al                                  ;C965 0AC0
jz 0xc96d                                 ;C967 7404
inc word [0x5da]                          ;C969 FF06DA05
mov si,[0x5da]                            ;C96D 8B36DA05
mov ax,cx                                 ;C971 8BC1
mov bx,dx                                 ;C973 8BDA
shl dx,0x0                                ;C975 D1E2
rcl cx,0x0                                ;C977 D1D1
shl dx,0x0                                ;C979 D1E2
rcl cx,0x0                                ;C97B D1D1
add dx,bx                                 ;C97D 03D3
adc ax,cx                                 ;C97F 13C1
xchg ax,dx                                ;C981 92
mov cx,0xe90b                             ;C982 B90BE9
div cx                                    ;C985 F7F1
mov bx,ax                                 ;C987 8BD8
xor ax,ax                                 ;C989 33C0
div cx                                    ;C98B F7F1
mov dx,bx                                 ;C98D 8BD3
mov cx,0xc8                               ;C98F B9C800
div cx                                    ;C992 F7F1
cmp dl,0x64                               ;C994 80FA64
jc 0xc99c                                 ;C997 7203
sub dl,0x64                               ;C999 80EA64
cmc                                       ;C99C F5
mov bl,dl                                 ;C99D 8ADA
rcl ax,0x0                                ;C99F D1D0
mov dl,0x0                                ;C9A1 B200
rcl dx,0x0                                ;C9A3 D1D2
mov cx,0x3c                               ;C9A5 B93C00
div cx                                    ;C9A8 F7F1
mov bh,dl                                 ;C9AA 8AFA
div cl                                    ;C9AC F6F1
xchg al,ah                                ;C9AE 86C4
push ax                                   ;C9B0 50
mov ax,si                                 ;C9B1 8BC6
stosw                                     ;C9B3 AB
pop ax                                    ;C9B4 58
stosw                                     ;C9B5 AB
mov ax,bx                                 ;C9B6 8BC3
stosw                                     ;C9B8 AB
jmp 0xc679                                ;C9B9 E9BDFC
add al,ch                                 ;C9BC 00E8
add byte [bp+si],0x2e                     ;C9BE 80022E
cmp word [0x1c8],0x6a6b                   ;C9C1 813EC8016B6A
jnz 0xca0f                                ;C9C7 7546
mov si,0x1                                ;C9C9 BE0100
test word [di+0x29],0x100                 ;C9CC F745290001
jz 0xc9ea                                 ;C9D1 7417
and word [di+0x29],0xfeff                 ;C9D3 816529FFFE
mov byte [cs:0x251],0xff                  ;C9D8 2EC6065102FF
test word [di+0x29],0x1                   ;C9DE F745290100
jz 0xc9f1                                 ;C9E3 740C
mov si,0xffff                             ;C9E5 BEFFFF
jmp 0xca0f                                ;C9E8 EB25
test word [di+0x29],0x1                   ;C9EA F745290100
jnz 0xca0f                                ;C9EF 751E
xor si,si                                 ;C9F1 33F6
call 0xdc97                               ;C9F3 E8A112
jc 0xca2b                                 ;C9F6 7233
call 0xde0f                               ;C9F8 E81414
jnz 0xca0f                                ;C9FB 7512
mov si,0x1                                ;C9FD BE0100
mov al,[cs:0x251]                         ;CA00 2EA05102
cmp al,[di+0x4]                           ;CA04 3A4504
jnz 0xca0e                                ;CA07 7505
call 0xca31                               ;CA09 E82500
jmp 0xca0f                                ;CA0C EB01
dec si                                    ;CA0E 4E
les bx,word [cs:0xb8]                     ;CA0F 2EC41EB800
mov [es:bx+0xe],si                        ;CA14 2689770E
or si,si                                  ;CA18 0BF6
js 0xca1f                                 ;CA1A 7803
jmp 0xc679                                ;CA1C E95AFC
call 0xdd5f                               ;CA1F E83D13
mov byte [cs:0x251],0xff                  ;CA22 2EC6065102FF
jmp 0xc679                                ;CA28 E94EFC
call 0xcf2b                               ;CA2B E8FD04
jmp 0xc66c                                ;CA2E E93BFC
mov si,0x1                                ;CA31 BE0100
xor ah,ah                                 ;CA34 32E4
int byte 0x1a                             ;CA36 CD1A
shr al,0x0                                ;CA38 D0E8
adc word [cs:0x5da],0x0                   ;CA3A 2E8316DA0500
mov ax,[di+0x4d]                          ;CA40 8B454D
sub dx,ax                                 ;CA43 2BD0
mov ax,[di+0x4f]                          ;CA45 8B454F
sbb cx,ax                                 ;CA48 1BC8
jnz 0xca69                                ;CA4A 751D
or dx,dx                                  ;CA4C 0BD2
jnz 0xca64                                ;CA4E 7514
inc byte [cs:0x250]                       ;CA50 2EFE065002
cmp byte [cs:0x250],0x5                   ;CA55 2E803E500205
jc 0xca6a                                 ;CA5B 720D
dec byte [cs:0x250]                       ;CA5D 2EFE0E5002
jmp 0xca69                                ;CA62 EB05
cmp dx,0x24                               ;CA64 83FA24
jna 0xca6a                                ;CA67 7601
dec si                                    ;CA69 4E
ret                                       ;CA6A C3
jmp 0xca2b                                ;CA6B EBBE
mov ah,[es:di]                            ;CA6D 268A25
call 0xcc40                               ;CA70 E8CD01
test word [di+0x29],0x1                   ;CA73 F745290100
jnz 0xca82                                ;CA78 7508
call 0xca99                               ;CA7A E81C00
jc 0xca6b                                 ;CA7D 72EC
call 0xde2d                               ;CA7F E8AB13
add di,0x6                                ;CA82 83C706
les bx,word [cs:0xb8]                     ;CA85 2EC41EB800
mov [es:bx+0xd],ah                        ;CA8A 2688670D
mov [es:bx+0x12],di                       ;CA8E 26897F12
mov word [es:bx+0x14],ds                  ;CA92 268C5F14
jmp 0xc679                                ;CA96 E9E0FB
test word [di+0x29],0x5                   ;CA99 F745290500
jz 0xcaa3                                 ;CA9E 7403
jmp 0xcb31                                ;CAA0 E98E00
push cx                                   ;CAA3 51
push dx                                   ;CAA4 52
push es                                   ;CAA5 06
push bx                                   ;CAA6 53
call 0xcb3c                               ;CAA7 E89200
jnc 0xcaaf                                ;CAAA 7303
jmp 0xcb32                                ;CAAC E98300
cmp bx,0x0                                ;CAAF 83FB00
jnz 0xcaba                                ;CAB2 7506
call 0xcb97                               ;CAB4 E8E000
jmp 0xcb15                                ;CAB7 EB5C
nop                                       ;CAB9 90
call 0xcbb9                               ;CABA E8FC00
jc 0xcb32                                 ;CABD 7273
call 0xdd6e                               ;CABF E8AC12
cmp byte [di+0x28],0x2                    ;CAC2 807D2802
jnz 0xcae4                                ;CAC6 751C
cmp ah,0xf9                               ;CAC8 80FCF9
jnz 0xcb37                                ;CACB 756A
mov bx,0x5c9                              ;CACD BBC905
push cs                                   ;CAD0 0E
pop es                                    ;CAD1 07
mov al,[bx+0x0]                           ;CAD2 8A870000
mov cx,[bx+0x3]                           ;CAD6 8B8F0300
mov dx,[bx+0x5]                           ;CADA 8B970500
mov bx,[bx+0x1]                           ;CADE 8B9F0100
jmp 0xcb12                                ;CAE2 EB2E
mov cl,ah                                 ;CAE4 8ACC
and cl,0xf8                               ;CAE6 80E1F8
cmp cl,0xf8                               ;CAE9 80F9F8
jnz 0xcb37                                ;CAEC 7549
mov al,0x1                                ;CAEE B001
mov bx,0x4008                             ;CAF0 BB0840
mov cx,0x140                              ;CAF3 B94001
mov dx,0x101                              ;CAF6 BA0101
test ah,0x2                               ;CAF9 F6C402
jnz 0xcb05                                ;CAFC 7507
inc al                                    ;CAFE FEC0
inc bl                                    ;CB00 FEC3
add cx,0x28                               ;CB02 83C128
test ah,0x1                               ;CB05 F6C401
jz 0xcb12                                 ;CB08 7408
add cx,cx                                 ;CB0A 03C9
mov bh,0x70                               ;CB0C B770
inc dh                                    ;CB0E FEC6
inc dl                                    ;CB10 FEC2
mov si,[di+0x9]                           ;CB12 8B7509
mov [di+0x8],dh                           ;CB15 887508
mov [di+0xc],bh                           ;CB18 887D0C
mov [di+0xe],cx                           ;CB1B 894D0E
mov [di+0x10],ah                          ;CB1E 886510
mov [di+0x11],al                          ;CB21 884511
mov [di+0x13],bl                          ;CB24 885D13
mov [di+0x15],dl                          ;CB27 885515
mov [di+0x9],si                           ;CB2A 897509
pop bx                                    ;CB2D 5B
pop es                                    ;CB2E 07
pop dx                                    ;CB2F 5A
pop cx                                    ;CB30 59
ret                                       ;CB31 C3
call 0xcf2b                               ;CB32 E8F603
jmp 0xcb2d                                ;CB35 EBF6
mov al,0x7                                ;CB37 B007
stc                                       ;CB39 F9
jmp 0xcb2d                                ;CB3A EBF1
mov cx,0x1                                ;CB3C B90100
xor dh,dh                                 ;CB3F 32F6
call 0xcbcb                               ;CB41 E88700
jc 0xcb96                                 ;CB44 7250
xor bx,bx                                 ;CB46 33DB
cmp byte [cs:0x281],0x69                  ;CB48 2E803E810269
jz 0xcb68                                 ;CB4E 7418
cmp byte [cs:0x281],0xe9                  ;CB50 2E803E8102E9
jz 0xcb68                                 ;CB56 7410
cmp byte [cs:0x281],0xeb                  ;CB58 2E803E8102EB
jnz 0xcb93                                ;CB5E 7533
cmp byte [cs:0x283],0x90                  ;CB60 2E803E830290
jnz 0xcb93                                ;CB66 752B
mov al,[cs:0x296]                         ;CB68 2EA09602
and al,0xf0                               ;CB6C 24F0
cmp al,0xf0                               ;CB6E 3CF0
jnz 0xcb93                                ;CB70 7521
mov al,[cs:0x296]                         ;CB72 2EA09602
test al,0x1                               ;CB76 A801
jnz 0xcb94                                ;CB78 751A
cmp word [cs:0x289],0x2e33                ;CB7A 2E813E8902332E
jnz 0xcb8b                                ;CB81 7508
cmp byte [cs:0x28b],0x32                  ;CB83 2E803E8B0232
jnc 0xcb94                                ;CB89 7309
mov byte [cs:0x28e],0x1                   ;CB8B 2EC6068E0201
jmp 0xcb94                                ;CB91 EB01
inc bx                                    ;CB93 43
clc                                       ;CB94 F8
ret                                       ;CB95 C3
ret                                       ;CB96 C3
push ds                                   ;CB97 1E
push di                                   ;CB98 57
push cs                                   ;CB99 0E
pop ds                                    ;CB9A 1F
mov di,0x28c                              ;CB9B BF8C02
mov dh,[di+0x2]                           ;CB9E 8A7502
mov bh,[di+0x6]                           ;CBA1 8A7D06
mov cx,[di+0x8]                           ;CBA4 8B4D08
mov ah,[di+0xa]                           ;CBA7 8A650A
mov al,[di+0xb]                           ;CBAA 8A450B
mov bl,[di+0xd]                           ;CBAD 8A5D0D
mov dl,[di+0xf]                           ;CBB0 8A550F
mov si,[di+0x3]                           ;CBB3 8B7503
pop di                                    ;CBB6 5F
pop ds                                    ;CBB7 1F
ret                                       ;CBB8 C3
push ax                                   ;CBB9 50
mov dh,0x0                                ;CBBA B600
mov cx,0x2                                ;CBBC B90200
call 0xcbcb                               ;CBBF E80900
jc 0xcbc9                                 ;CBC2 7205
pop ax                                    ;CBC4 58
mov ah,[cs:bx]                            ;CBC5 2E8A27
ret                                       ;CBC8 C3
pop cx                                    ;CBC9 59
ret                                       ;CBCA C3
push bp                                   ;CBCB 55
mov bp,0x3                                ;CBCC BD0300
push es                                   ;CBCF 06
mov dl,[di+0x4]                           ;CBD0 8A5504
mov bx,0x281                              ;CBD3 BB8102
push cs                                   ;CBD6 0E
pop es                                    ;CBD7 07
mov ax,0x201                              ;CBD8 B80102
int byte 0x13                             ;CBDB CD13
jnc 0xcc1b                                ;CBDD 733C
call 0xd6b9                               ;CBDF E8D70A
jz 0xcc18                                 ;CBE2 7434
test word [di+0x29],0x1                   ;CBE4 F745290100
jnz 0xcbd8                                ;CBE9 75ED
push ds                                   ;CBEB 1E
push ax                                   ;CBEC 50
lds si,word [cs:0x262]                    ;CBED 2EC5366202
mov al,[si+0x9]                           ;CBF2 8A4409
mov [cs:0x25f],al                         ;CBF5 2EA25F02
mov byte [si+0x9],0xf                     ;CBF9 C644090F
pop ax                                    ;CBFD 58
pop ds                                    ;CBFE 1F
mov ax,0x201                              ;CBFF B80102
int byte 0x13                             ;CC02 CD13
push ds                                   ;CC04 1E
push ax                                   ;CC05 50
lds si,word [cs:0x262]                    ;CC06 2EC5366202
mov al,[cs:0x25f]                         ;CC0B 2EA05F02
mov [si+0x9],al                           ;CC0F 884409
pop ax                                    ;CC12 58
pop ds                                    ;CC13 1F
jnc 0xcc1b                                ;CC14 7305
jmp 0xcbdf                                ;CC16 EBC7
mov dl,0xff                               ;CC18 B2FF
stc                                       ;CC1A F9
mov [cs:0x1c1],dl                         ;CC1B 2E8816C101
mov [cs:0x251],dl                         ;CC20 2E88165102
mov [di+0x4c],ch                          ;CC25 886D4C
pushf                                     ;CC28 9C
call 0xcf44                               ;CC29 E81803
popf                                      ;CC2C 9D
pop es                                    ;CC2D 07
pop bp                                    ;CC2E 5D
ret                                       ;CC2F C3
call 0xcc40                               ;CC30 E80D00
test word [di+0x29],0x1                   ;CC33 F745290100
jnz 0xcc3d                                ;CC38 7503
jmp 0xc679                                ;CC3A E93CFA
jmp 0xc65e                                ;CC3D E91EFA
push bx                                   ;CC40 53
push cs                                   ;CC41 0E
pop ds                                    ;CC42 1F
mov di,[0x24c]                            ;CC43 8B3E4C02
cmp byte [cs:0x1c2],0x1                   ;CC47 2E803EC20101
jc 0xcc56                                 ;CC4D 7207
cmp [di+0x4],al                           ;CC4F 384504
jz 0xcc68                                 ;CC52 7414
jmp 0xcc5b                                ;CC54 EB05
cmp [di+0x5],al                           ;CC56 384505
jz 0xcc68                                 ;CC59 740D
mov bx,[di+0x2]                           ;CC5B 8B5D02
mov di,[di]                               ;CC5E 8B3D
mov ds,bx                                 ;CC60 8EDB
cmp di,0xffffffffffffffff                 ;CC62 83FFFF
jnz 0xcc47                                ;CC65 75E0
stc                                       ;CC67 F9
pop bx                                    ;CC68 5B
ret                                       ;CC69 C3
mov word [cs:0x256],0x103                 ;CC6A 2EC70656020301
jmp 0xcc7a                                ;CC71 EB07
mov word [cs:0x256],0x3                   ;CC73 2EC70656020300
call 0xcd0d                               ;CC7A E89000
jc 0xcc82                                 ;CC7D 7203
jmp 0xc679                                ;CC7F E9F7F9
jmp 0xc664                                ;CC82 E9DFF9
call 0xcd07                               ;CC85 E87F00
jmp 0xcc7d                                ;CC88 EBF3
push ax                                   ;CC8A 50
push bx                                   ;CC8B 53
mov bx,[di+0x29]                          ;CC8C 8B5D29
test bl,0x21                              ;CC8F F6C321
jnz 0xccf6                                ;CC92 7562
test bl,0x10                              ;CC94 F6C310
jz 0xccf6                                 ;CC97 745D
mov al,[di+0x4]                           ;CC99 8A4504
push ds                                   ;CC9C 1E
push di                                   ;CC9D 57
push cs                                   ;CC9E 0E
pop ds                                    ;CC9F 1F
mov di,0x24c                              ;CCA0 BF4C02
mov bx,[di+0x2]                           ;CCA3 8B5D02
mov di,[di]                               ;CCA6 8B3D
mov ds,bx                                 ;CCA8 8EDB
cmp di,0xffffffffffffffff                 ;CCAA 83FFFF
jz 0xccf9                                 ;CCAD 744A
cmp [di+0x4],al                           ;CCAF 384504
jnz 0xcca3                                ;CCB2 75EF
mov bx,[di+0x29]                          ;CCB4 8B5D29
test bl,0x20                              ;CCB7 F6C320
jz 0xcca3                                 ;CCBA 74E7
xor bl,0x20                               ;CCBC 80F320
mov [di+0x29],bx                          ;CCBF 895D29
pop di                                    ;CCC2 5F
pop ds                                    ;CCC3 1F
xor bx,bx                                 ;CCC4 33DB
or bl,0x20                                ;CCC6 80CB20
or [di+0x29],bx                           ;CCC9 095D29
cmp byte [cs:0x1c7],0x1                   ;CCCC 2E803EC70101
jz 0xccf6                                 ;CCD2 7422
cmp byte [cs:0x1c4],0x2                   ;CCD4 2E803EC40102
jnz 0xccf3                                ;CCDA 7517
push ds                                   ;CCDC 1E
push di                                   ;CCDD 57
push ax                                   ;CCDE 50
mov al,[di+0x5]                           ;CCDF 8A4505
mov ah,al                                 ;CCE2 8AE0
xor di,di                                 ;CCE4 33FF
mov ds,di                                 ;CCE6 8EDF
xchg al,[0x504]                           ;CCE8 86060405
cmp ah,al                                 ;CCEC 3AE0
pop ax                                    ;CCEE 58
pop di                                    ;CCEF 5F
pop ds                                    ;CCF0 1F
jz 0xccf6                                 ;CCF1 7403
call 0xdb47                               ;CCF3 E8510E
pop bx                                    ;CCF6 5B
pop ax                                    ;CCF7 58
ret                                       ;CCF8 C3
stc                                       ;CCF9 F9
pop di                                    ;CCFA 5F
pop ds                                    ;CCFB 1F
jmp 0xccf6                                ;CCFC EBF8
mov al,0x8                                ;CCFE B008
stc                                       ;CD00 F9
ret                                       ;CD01 C3
mov al,0xf                                ;CD02 B00F
jmp 0xcdb9                                ;CD04 E9B200
mov byte [cs:0x256],0x2                   ;CD07 2EC606560202
mov bx,di                                 ;CD0D 8BDF
call 0xcc40                               ;CD0F E82EFF
jc 0xccfe                                 ;CD12 72EA
mov al,[di+0x10]                          ;CD14 8A4510
mov [cs:0x254],al                         ;CD17 2EA25402
jcxz 0xcd01                               ;CD1B E3E4
mov [cs:0x26a],sp                         ;CD1D 2E89266A02
mov si,dx                                 ;CD22 8BF2
add si,cx                                 ;CD24 03F1
add dx,[di+0x17]                          ;CD26 035517
cmp si,[di+0xe]                           ;CD29 3B750E
ja 0xccfe                                 ;CD2C 77D0
mov [cs:0x258],cx                         ;CD2E 2E890E5802
push ds                                   ;CD33 1E
xor ax,ax                                 ;CD34 33C0
mov ds,ax                                 ;CD36 8ED8
lds si,word [0x78]                        ;CD38 C5367800
mov [cs:0x262],si                         ;CD3C 2E89366202
mov word [cs:0x264],ds                    ;CD41 2E8C1E6402
pop ds                                    ;CD46 1F
test word [di+0x29],0x1                   ;CD47 F745290100
jnz 0xcd57                                ;CD4C 7509
call 0xcc8a                               ;CD4E E839FF
call 0xdcde                               ;CD51 E88A0F
call 0xcd80                               ;CD54 E82900
mov ax,dx                                 ;CD57 8BC2
xor dx,dx                                 ;CD59 33D2
div word [di+0x13]                        ;CD5B F77513
inc dl                                    ;CD5E FEC2
mov [cs:0x266],dl                         ;CD60 2E88166602
mov cx,[di+0x15]                          ;CD65 8B4D15
xor dx,dx                                 ;CD68 33D2
div cx                                    ;CD6A F7F1
mov [cs:0x267],dl                         ;CD6C 2E88166702
mov [cs:0x268],ax                         ;CD71 2EA36802
mov ax,[cs:0x258]                         ;CD75 2EA15802
call 0xcded                               ;CD79 E87100
call 0xcdc0                               ;CD7C E84100
ret                                       ;CD7F C3
mov al,[di+0x4]                           ;CD80 8A4504
mov [cs:0x251],al                         ;CD83 2EA25102
mov cx,ds                                 ;CD87 8CD9
lds si,word [cs:0x262]                    ;CD89 2EC5366202
mov al,[cs:0x260]                         ;CD8E 2EA06002
mov [si+0x4],al                           ;CD92 884404
mov al,[si+0xa]                           ;CD95 8A440A
mov [cs:0x25b],al                         ;CD98 2EA25B02
push es                                   ;CD9C 06
mov es,cx                                 ;CD9D 8EC1
cmp byte [es:di+0x28],0x2                 ;CD9F 26807D2802
jnz 0xcdab                                ;CDA4 7505
mov al,0x4                                ;CDA6 B004
xchg al,[si+0xa]                          ;CDA8 86440A
pop es                                    ;CDAB 07
xor al,al                                 ;CDAC 32C0
inc al                                    ;CDAE FEC0
xchg al,[si+0x9]                          ;CDB0 864409
mov [cs:0x25c],al                         ;CDB3 2EA25C02
mov al,0xf                                ;CDB7 B00F
mov ds,cx                                 ;CDB9 8ED9
mov [cs:0x25d],al                         ;CDBB 2EA25D02
ret                                       ;CDBF C3
test word [di+0x29],0x1                   ;CDC0 F745290100
jnz 0xcdec                                ;CDC5 7525
call 0xcf44                               ;CDC7 E87A01
push ax                                   ;CDCA 50
mov dx,ds                                 ;CDCB 8CDA
mov al,[cs:0x25c]                         ;CDCD 2EA05C02
mov ah,[cs:0x25b]                         ;CDD1 2E8A265B02
lds si,word [cs:0x262]                    ;CDD6 2EC5366202
mov byte [si+0x4],0x9                     ;CDDB C6440409
mov [si+0x9],al                           ;CDDF 884409
mov byte [si+0x3],0x2                     ;CDE2 C6440302
mov [si+0xa],ah                           ;CDE6 88640A
mov ds,dx                                 ;CDE9 8EDA
pop ax                                    ;CDEB 58
ret                                       ;CDEC C3
or ax,ax                                  ;CDED 0BC0
jz 0xcdec                                 ;CDEF 74FB
test word [di+0x29],0x1                   ;CDF1 F745290100
jz 0xcdfe                                 ;CDF6 7406
call 0xce21                               ;CDF8 E82600
xor ax,ax                                 ;CDFB 33C0
ret                                       ;CDFD C3
mov cl,[di+0x13]                          ;CDFE 8A4D13
inc cl                                    ;CE01 FEC1
sub cl,[cs:0x266]                         ;CE03 2E2A0E6602
xor ch,ch                                 ;CE08 32ED
cmp ax,cx                                 ;CE0A 3BC1
jnc 0xce10                                ;CE0C 7302
mov cx,ax                                 ;CE0E 8BC8
push ax                                   ;CE10 50
push cx                                   ;CE11 51
mov ax,cx                                 ;CE12 8BC1
call 0xce21                               ;CE14 E80A00
pop cx                                    ;CE17 59
pop ax                                    ;CE18 58
sub ax,cx                                 ;CE19 2BC1
shl cl,0x0                                ;CE1B D0E1
add bh,cl                                 ;CE1D 02F9
jmp 0xcded                                ;CE1F EBCC
mov bp,0x5                                ;CE21 BD0500
mov ah,[cs:0x256]                         ;CE24 2E8A265602
push ax                                   ;CE29 50
mov dx,[cs:0x268]                         ;CE2A 2E8B166802
test word [di+0x29],0x1                   ;CE2F F745290100
jz 0xce3f                                 ;CE34 7409
cmp word [di+0x4d],0x1                    ;CE36 837D4D01
jnz 0xce3f                                ;CE3A 7503
add dx,[di+0x4f]                          ;CE3C 03554F
ror dh,0x0                                ;CE3F D0CE
ror dh,0x0                                ;CE41 D0CE
or dh,[cs:0x266]                          ;CE43 2E0A366602
mov cx,dx                                 ;CE48 8BCA
xchg ch,cl                                ;CE4A 86E9
mov dh,[cs:0x267]                         ;CE4C 2E8A366702
mov dl,[di+0x4]                           ;CE51 8A5504
cmp byte [di+0x28],0x5                    ;CE54 807D2805
jz 0xce6f                                 ;CE58 7415
cmp byte [cs:0x1c1],0xff                  ;CE5A 2E803EC101FF
jz 0xce6c                                 ;CE60 740A
cmp ah,0x2                                ;CE62 80FC02
jz 0xce6f                                 ;CE65 7408
cmp ah,0x4                                ;CE67 80FC04
jz 0xce6f                                 ;CE6A 7403
jmp 0xcebc                                ;CE6C EB4E
nop                                       ;CE6E 90
call 0xcf1d                               ;CE6F E8AB00
jc 0xced6                                 ;CE72 7262
mov [cs:0x1c1],dl                         ;CE74 2E8816C101
mov [di+0x4c],ch                          ;CE79 886D4C
cmp word [cs:0x256],0x103                 ;CE7C 2E813E56020301
jz 0xcecd                                 ;CE83 7448
pop ax                                    ;CE85 58
and cl,0x3f                               ;CE86 80E13F
xor ah,ah                                 ;CE89 32E4
sub [cs:0x258],ax                         ;CE8B 2E29065802
add cl,al                                 ;CE90 02C8
mov [cs:0x266],cl                         ;CE92 2E880E6602
cmp cl,[di+0x13]                          ;CE97 3A4D13
jna 0xceba                                ;CE9A 761E
mov byte [cs:0x266],0x1                   ;CE9C 2EC606660201
mov dh,[cs:0x267]                         ;CEA2 2E8A366702
inc dh                                    ;CEA7 FEC6
cmp dh,[di+0x15]                          ;CEA9 3A7515
jc 0xceb5                                 ;CEAC 7207
xor dh,dh                                 ;CEAE 32F6
inc word [cs:0x268]                       ;CEB0 2EFF066802
mov [cs:0x267],dh                         ;CEB5 2E88366702
clc                                       ;CEBA F8
ret                                       ;CEBB C3
cmp dl,[cs:0x1c1]                         ;CEBC 2E3A16C101
jnz 0xcec8                                ;CEC1 7505
cmp ch,[di+0x4c]                          ;CEC3 3A6D4C
jz 0xce6f                                 ;CEC6 74A7
call 0xcefe                               ;CEC8 E83300
jmp 0xce72                                ;CECB EBA5
pop ax                                    ;CECD 58
push ax                                   ;CECE 50
mov ah,0x4                                ;CECF B404
call 0xcf1d                               ;CED1 E84900
jnc 0xce85                                ;CED4 73AF
call 0xdd23                               ;CED6 E84A0E
call 0xd6b9                               ;CED9 E8DD07
jz 0xcee7                                 ;CEDC 7409
cmp ah,0x80                               ;CEDE 80FC80
jz 0xcee7                                 ;CEE1 7404
pop ax                                    ;CEE3 58
jmp 0xce29                                ;CEE4 E942FF
call 0xcf2b                               ;CEE7 E84100
mov byte [cs:0x251],0xff                  ;CEEA 2EC6065102FF
mov cx,[cs:0x258]                         ;CEF0 2E8B0E5802
mov sp,[cs:0x26a]                         ;CEF5 2E8B266A02
call 0xcdca                               ;CEFA E8CDFE
ret                                       ;CEFD C3
push ds                                   ;CEFE 1E
push ax                                   ;CEFF 50
mov al,[cs:0x25d]                         ;CF00 2EA05D02
lds si,word [cs:0x262]                    ;CF04 2EC5366202
mov [si+0x9],al                           ;CF09 884409
pop ax                                    ;CF0C 58
pop ds                                    ;CF0D 1F
call 0xcf1d                               ;CF0E E80C00
push ds                                   ;CF11 1E
lds si,word [cs:0x262]                    ;CF12 2EC5366202
mov byte [si+0x9],0x1                     ;CF17 C6440901
pop ds                                    ;CF1B 1F
ret                                       ;CF1C C3
test byte [di+0x19],0x80                  ;CF1D F6451980
jnz 0xcf26                                ;CF21 7503
int byte 0x13                             ;CF23 CD13
ret                                       ;CF25 C3
stc                                       ;CF26 F9
mov ah,0x80                               ;CF27 B480
jmp 0xcf25                                ;CF29 EBFA
push cx                                   ;CF2B 51
push cs                                   ;CF2C 0E
pop es                                    ;CF2D 07
mov al,ah                                 ;CF2E 8AC4
mov [cs:0x278],al                         ;CF30 2EA27802
mov cx,0x8                                ;CF34 B90800
mov di,0x271                              ;CF37 BF7102
repne scasb                               ;CF3A F2AE
mov al,[cs:di+0x7]                        ;CF3C 2E8A850700
pop cx                                    ;CF41 59
stc                                       ;CF42 F9
ret                                       ;CF43 C3
push ax                                   ;CF44 50
xor ah,ah                                 ;CF45 32E4
int byte 0x1a                             ;CF47 CD1A
or al,al                                  ;CF49 0AC0
jz 0xcf52                                 ;CF4B 7405
inc word [cs:0x5da]                       ;CF4D 2EFF06DA05
cmp dx,[di+0x4d]                          ;CF52 3B554D
jnz 0xcf5c                                ;CF55 7505
cmp cx,[di+0x4f]                          ;CF57 3B4D4F
jz 0xcf68                                 ;CF5A 740C
mov byte [cs:0x250],0x0                   ;CF5C 2EC606500200
mov [di+0x4d],dx                          ;CF62 89554D
mov [di+0x4f],cx                          ;CF65 894D4F
clc                                       ;CF68 F8
pop ax                                    ;CF69 58
ret                                       ;CF6A C3
add [bx+si],al                            ;CF6B 0000
add [bx+si],al                            ;CF6D 0000
add [bx+si],al                            ;CF6F 0000
add [bx+si],al                            ;CF71 0000
add [bx+si],al                            ;CF73 0000
add [bx+si],al                            ;CF75 0000
add [bx+si],al                            ;CF77 0000
add [bx+si],al                            ;CF79 0000
add [bx+si],al                            ;CF7B 0000
add [bx+si],al                            ;CF7D 0000
add [bx+si],al                            ;CF7F 0000
mov [cs:0xc0],ax                          ;CF81 2EA3C000
pushf                                     ;CF85 9C
cmp ah,0x5                                ;CF86 80FC05
jnz 0xcf95                                ;CF89 750A
mov word [cs:0x252],0x140                 ;CF8B 2EC70652024001
call 0xddd4                               ;CF92 E83F0E
cmp ah,0x8                                ;CF95 80FC08
jz 0xcfac                                 ;CF98 7412
cmp ah,0x15                               ;CF9A 80FC15
jz 0xcfac                                 ;CF9D 740D
call word far [cs:0xb4]                   ;CF9F 2EFF1EB400
jc 0xcfa9                                 ;CFA4 7203
retf word 0x2                             ;CFA6 CA0200
jmp 0xd02c                                ;CFA9 E98000
mov [cs:0xf8e],dx                         ;CFAC 2E89168E0F
call word far [cs:0xb4]                   ;CFB1 2EFF1EB400
mov [cs:0xf7c],ax                         ;CFB6 2EA37C0F
mov [cs:0xf7e],bx                         ;CFBA 2E891E7E0F
mov [cs:0xf80],cx                         ;CFBF 2E890E800F
mov [cs:0xf82],dx                         ;CFC4 2E8916820F
mov [cs:0xf84],di                         ;CFC9 2E893E840F
mov [cs:0xf86],si                         ;CFCE 2E8936860F
mov [cs:0xf88],bp                         ;CFD3 2E892E880F
mov word [cs:0xf8a],ds                    ;CFD8 2E8C1E8A0F
mov word [cs:0xf8c],es                    ;CFDD 2E8C068C0F
pushf                                     ;CFE2 9C
pop word [cs:0xf90]                       ;CFE3 2E8F06900F
mov dx,[cs:0xf8e]                         ;CFE8 2E8B168E0F
pushf                                     ;CFED 9C
mov ah,0x1                                ;CFEE B401
call word far [cs:0xb4]                   ;CFF0 2EFF1EB400
mov ax,[cs:0xf7c]                         ;CFF5 2EA17C0F
mov bx,[cs:0xf7e]                         ;CFF9 2E8B1E7E0F
mov cx,[cs:0xf80]                         ;CFFE 2E8B0E800F
mov dx,[cs:0xf82]                         ;D003 2E8B16820F
mov di,[cs:0xf84]                         ;D008 2E8B3E840F
mov si,[cs:0xf86]                         ;D00D 2E8B36860F
mov bp,[cs:0xf88]                         ;D012 2E8B2E880F
mov ds,word [cs:0xf8a]                    ;D017 2E8E1E8A0F
mov es,word [cs:0xf8c]                    ;D01C 2E8E068C0F
push word [cs:0xf90]                      ;D021 2EFF36900F
popf                                      ;D026 9D
jc 0xd02c                                 ;D027 7203
retf word 0x2                             ;D029 CA0200
pushf                                     ;D02C 9C
cmp ah,0x9                                ;D02D 80FC09
jnz 0xd035                                ;D030 7503
jmp 0xd08d                                ;D032 EB59
nop                                       ;D034 90
cmp ah,0x11                               ;D035 80FC11
jz 0xd03e                                 ;D038 7404
popf                                      ;D03A 9D
retf word 0x2                             ;D03B CA0200
mov ah,0x0                                ;D03E B400
call word far [cs:0xb4]                   ;D040 2EFF1EB400
mov ax,[cs:0xc0]                          ;D045 2EA1C000
cmp al,0x1                                ;D049 3C01
jnz 0xd052                                ;D04B 7505
xor ah,ah                                 ;D04D 32E4
retf word 0x2                             ;D04F CA0200
push bx                                   ;D052 53
push cx                                   ;D053 51
push dx                                   ;D054 52
mov [cs:0xc2],al                          ;D055 2EA2C200
mov ax,[cs:0xc0]                          ;D059 2EA1C000
mov al,0x1                                ;D05D B001
call 0xd7b6                               ;D05F E85407
pushf                                     ;D062 9C
call word far [cs:0xb4]                   ;D063 2EFF1EB400
jnc 0xd077                                ;D068 730D
cmp ah,0x11                               ;D06A 80FC11
jnz 0xd086                                ;D06D 7517
mov ah,0x0                                ;D06F B400
pushf                                     ;D071 9C
call word far [cs:0xb4]                   ;D072 2EFF1EB400
dec byte [cs:0xc2]                        ;D077 2EFE0EC200
jz 0xd087                                 ;D07C 7409
inc cl                                    ;D07E FEC1
inc bh                                    ;D080 FEC7
inc bh                                    ;D082 FEC7
jmp 0xd059                                ;D084 EBD3
stc                                       ;D086 F9
pop dx                                    ;D087 5A
pop cx                                    ;D088 59
pop bx                                    ;D089 5B
retf word 0x2                             ;D08A CA0200
pop ax                                    ;D08D 58
mov ax,[cs:0xc0]                          ;D08E 2EA1C000
sti                                       ;D092 FB
cmp ah,0x2                                ;D093 80FC02
jc 0xd0fe                                 ;D096 7266
cmp ah,0x4                                ;D098 80FC04
jz 0xd0d6                                 ;D09B 7439
cmp ah,0x5                                ;D09D 80FC05
jz 0xd0e8                                 ;D0A0 7446
ja 0xd0fe                                 ;D0A2 775A
push dx                                   ;D0A4 52
push cx                                   ;D0A5 51
push bx                                   ;D0A6 53
push ax                                   ;D0A7 50
push bp                                   ;D0A8 55
mov bp,sp                                 ;D0A9 8BEC
mov dx,es                                 ;D0AB 8CC2
shl dx,0x0                                ;D0AD D1E2
shl dx,0x0                                ;D0AF D1E2
shl dx,0x0                                ;D0B1 D1E2
shl dx,0x0                                ;D0B3 D1E2
add dx,bx                                 ;D0B5 03D3
add dx,0x1ff                              ;D0B7 81C2FF01
jnc 0xd0c3                                ;D0BB 7306
mov dh,[bp+0x9]                           ;D0BD 8A7609
jmp 0xd15d                                ;D0C0 E99A00
shr dh,0x0                                ;D0C3 D0EE
mov ah,0x80                               ;D0C5 B480
sub ah,dh                                 ;D0C7 2AE6
cmp ah,al                                 ;D0C9 3AE0
jc 0xd103                                 ;D0CB 7236
mov dh,[bp+0x9]                           ;D0CD 8A7609
call 0xd877                               ;D0D0 E8A407
jmp 0xd1c7                                ;D0D3 E9F100
push es                                   ;D0D6 06
push bx                                   ;D0D7 53
push cs                                   ;D0D8 0E
pop es                                    ;D0D9 07
mov bx,0x281                              ;D0DA BB8102
pushf                                     ;D0DD 9C
call word far [cs:0xb4]                   ;D0DE 2EFF1EB400
pop bx                                    ;D0E3 5B
pop es                                    ;D0E4 07
retf word 0x2                             ;D0E5 CA0200
push es                                   ;D0E8 06
push bx                                   ;D0E9 53
push si                                   ;D0EA 56
push di                                   ;D0EB 57
push ds                                   ;D0EC 1E
push es                                   ;D0ED 06
push cs                                   ;D0EE 0E
pop es                                    ;D0EF 07
pop ds                                    ;D0F0 1F
mov si,bx                                 ;D0F1 8BF3
mov di,0x281                              ;D0F3 BF8102
call 0xd86e                               ;D0F6 E87507
pop ds                                    ;D0F9 1F
pop di                                    ;D0FA 5F
pop si                                    ;D0FB 5E
jmp 0xd0da                                ;D0FC EBDC
jmp word far [cs:0xb4]                    ;D0FE 2EFF2EB400
mov dx,[bp+0x8]                           ;D103 8B5608
push di                                   ;D106 57
push ds                                   ;D107 1E
push ax                                   ;D108 50
mov byte [cs:0x1c2],0x1                   ;D109 2EC606C20101
mov al,dl                                 ;D10F 8AC2
call 0xcc40                               ;D111 E82CFB
pop ax                                    ;D114 58
mov byte [cs:0x1c2],0x0                   ;D115 2EC606C20100
test word [di+0x29],0x1                   ;D11B F745290100
jnz 0xd126                                ;D120 7504
mov al,ah                                 ;D122 8AC4
jmp 0xd135                                ;D124 EB0F
push cx                                   ;D126 51
xor cx,cx                                 ;D127 33C9
mov cx,[di+0x13]                          ;D129 8B4D13
mov ch,0x3f                               ;D12C B53F
sub ch,cl                                 ;D12E 2AE9
mov al,ch                                 ;D130 8AC5
xchg ah,al                                ;D132 86E0
pop cx                                    ;D134 59
pop ds                                    ;D135 1F
pop di                                    ;D136 5F
cmp ah,al                                 ;D137 3AE0
jnc 0xd140                                ;D139 7305
push ax                                   ;D13B 50
mov al,ah                                 ;D13C 8AC4
jmp 0xd143                                ;D13E EB03
mov ah,al                                 ;D140 8AE0
push ax                                   ;D142 50
call 0xd877                               ;D143 E83107
jc 0xd1c7                                 ;D146 727F
pop ax                                    ;D148 58
sub [bp+0x2],ah                           ;D149 286602
add cl,ah                                 ;D14C 02CC
add bh,ah                                 ;D14E 02FC
add bh,ah                                 ;D150 02FC
cmp ah,al                                 ;D152 3AE0
jz 0xd15d                                 ;D154 7407
sub al,ah                                 ;D156 2AC4
call 0xd7b6                               ;D158 E85B06
jmp 0xd137                                ;D15B EBDA
push bx                                   ;D15D 53
mov ah,[bp+0x3]                           ;D15E 8A6603
cmp ah,0x3                                ;D161 80FC03
jnz 0xd18b                                ;D164 7525
push ds                                   ;D166 1E
push es                                   ;D167 06
push si                                   ;D168 56
push di                                   ;D169 57
push cs                                   ;D16A 0E
push es                                   ;D16B 06
pop ds                                    ;D16C 1F
pop es                                    ;D16D 07
mov di,0x281                              ;D16E BF8102
push di                                   ;D171 57
mov si,bx                                 ;D172 8BF3
call 0xd86e                               ;D174 E8F706
pop bx                                    ;D177 5B
pop di                                    ;D178 5F
pop si                                    ;D179 5E
mov al,0x1                                ;D17A B001
mov dl,[bp+0x8]                           ;D17C 8A5608
call 0xd7b6                               ;D17F E83406
call 0xd877                               ;D182 E8F206
pop es                                    ;D185 07
pop ds                                    ;D186 1F
jc 0xd1c7                                 ;D187 723E
jmp 0xd1b1                                ;D189 EB26
push es                                   ;D18B 06
push bx                                   ;D18C 53
push cs                                   ;D18D 0E
pop es                                    ;D18E 07
mov bx,0x281                              ;D18F BB8102
mov al,0x1                                ;D192 B001
mov dl,[bp+0x8]                           ;D194 8A5608
call 0xd7b6                               ;D197 E81C06
call 0xd877                               ;D19A E8DA06
pop bx                                    ;D19D 5B
pop es                                    ;D19E 07
jc 0xd1c7                                 ;D19F 7226
push ds                                   ;D1A1 1E
push si                                   ;D1A2 56
push di                                   ;D1A3 57
push cs                                   ;D1A4 0E
pop ds                                    ;D1A5 1F
mov di,bx                                 ;D1A6 8BFB
mov si,0x281                              ;D1A8 BE8102
call 0xd86e                               ;D1AB E8C006
pop di                                    ;D1AE 5F
pop si                                    ;D1AF 5E
pop ds                                    ;D1B0 1F
pop bx                                    ;D1B1 5B
add bh,0x2                                ;D1B2 80C702
inc cx                                    ;D1B5 41
mov al,[bp+0x2]                           ;D1B6 8A4602
clc                                       ;D1B9 F8
dec al                                    ;D1BA FEC8
jz 0xd1c7                                 ;D1BC 7409
mov dl,[bp+0x8]                           ;D1BE 8A5608
call 0xd7b6                               ;D1C1 E8F205
call 0xd877                               ;D1C4 E8B006
mov sp,bp                                 ;D1C7 8BE5
pop bp                                    ;D1C9 5D
pop bx                                    ;D1CA 5B
pop bx                                    ;D1CB 5B
pop cx                                    ;D1CC 59
pop dx                                    ;D1CD 5A
retf word 0x2                             ;D1CE CA0200
add dh,[bx+di]                            ;D1D1 0231
adc bp,[bx+di-0x7beb]                     ;D1D3 13A91584
adc ax,0x6d02                             ;D1D7 15026D
adc si,[bp+si+0x3615]                     ;D1DA 13B21536
adc al,0x0                                ;D1DE 1400
add [bx+di],al                            ;D1E0 0001
add al,[bx+si]                            ;D1E2 0200
add [bx+di],al                            ;D1E4 0001
add al,[bx+si]                            ;D1E6 0200
add [bp+di],al                            ;D1E8 0003
add al,[bx+si]                            ;D1EA 0200
add [si],al                               ;D1EC 0004
add al,[bx+si]                            ;D1EE 0200
add [di],al                               ;D1F0 0005
add al,[bx+si]                            ;D1F2 0200
add [0x2],al                              ;D1F4 00060200
add [bx],al                               ;D1F8 0007
add al,[bx+si]                            ;D1FA 0200
add [bx+si],cl                            ;D1FC 0008
add al,[bx+si]                            ;D1FE 0200
add [bx+di],cl                            ;D200 0009
add al,[bx+si]                            ;D202 0200
add [bp+si],cl                            ;D204 000A
add al,[bx+si]                            ;D206 0200
add [bp+di],cl                            ;D208 000B
add al,[bx+si]                            ;D20A 0200
add [si],cl                               ;D20C 000C
add al,[bx+si]                            ;D20E 0200
add [di],cl                               ;D210 000D
add al,[bx+si]                            ;D212 0200
add [0x2],cl                              ;D214 000E0200
add [bx],cl                               ;D218 000F
add al,[bx+si]                            ;D21A 0200
add [bx+si],al                            ;D21C 0000
add [bx+si],al                            ;D21E 0000
add [bx+si],al                            ;D220 0000
add [bx+si],al                            ;D222 0000
add [bx+si],al                            ;D224 0000
add [bx+si],al                            ;D226 0000
add [bx+si],al                            ;D228 0000
add [bx+si],al                            ;D22A 0000
add [bx+si],al                            ;D22C 0000
add [bx+si],al                            ;D22E 0000
add [bx+si],al                            ;D230 0000
add [bx+si],al                            ;D232 0000
add [bx+si],al                            ;D234 0000
add [bx+si],al                            ;D236 0000
add [bx+si],al                            ;D238 0000
add [bx+si],al                            ;D23A 0000
add [bx+si],al                            ;D23C 0000
add [bx+si],al                            ;D23E 0000
add [bx+si],al                            ;D240 0000
add [bx+si],al                            ;D242 0000
add [bx+si],al                            ;D244 0000
add [bx+si],al                            ;D246 0000
add [bx+si],al                            ;D248 0000
add [bx+si],al                            ;D24A 0000
add [bx+si],al                            ;D24C 0000
add [bx+si],al                            ;D24E 0000
add [bx+si],al                            ;D250 0000
add [bx+si],al                            ;D252 0000
add [bx+si],al                            ;D254 0000
add [bx+si],al                            ;D256 0000
add [bx+si],al                            ;D258 0000
add [bx+si],al                            ;D25A 0000
add [bx+si],al                            ;D25C 0000
add [bx+si],al                            ;D25E 0000
add [bx+si],al                            ;D260 0000
add [bx+si],al                            ;D262 0000
add [bx+si],al                            ;D264 0000
add [bx+si],al                            ;D266 0000
add [bx+si],al                            ;D268 0000
add [bx+si],al                            ;D26A 0000
add [bx+si],al                            ;D26C 0000
add [bx+si],al                            ;D26E 0000
add [bx+si],al                            ;D270 0000
add [bx+si],al                            ;D272 0000
add [bx+si],al                            ;D274 0000
add [bx+si],al                            ;D276 0000
add [bx+si],al                            ;D278 0000
add [bx+si],al                            ;D27A 0000
add [bx+si],al                            ;D27C 0000
add [bx+si],al                            ;D27E 0000
add [bx+si],al                            ;D280 0000
add [bx+si],al                            ;D282 0000
add [bx+si],al                            ;D284 0000
add [bx+si],al                            ;D286 0000
add [bx+si],al                            ;D288 0000
add [bx+si],al                            ;D28A 0000
add [bx+si],al                            ;D28C 0000
add [bx+si],al                            ;D28E 0000
add [bx+si],al                            ;D290 0000
add [bx+si],al                            ;D292 0000
add [bx+si],al                            ;D294 0000
add [bx+si],al                            ;D296 0000
add [bx+si],al                            ;D298 0000
add [bx+si],al                            ;D29A 0000
add [bx+si],al                            ;D29C 0000
add [bx+si],al                            ;D29E 0000
add [bx+si],al                            ;D2A0 0000
add [bx+si],al                            ;D2A2 0000
add [bx+si],al                            ;D2A4 0000
add [bx+si],al                            ;D2A6 0000
add [bx+si],al                            ;D2A8 0000
add [bx+si],al                            ;D2AA 0000
add [bx+si],al                            ;D2AC 0000
add [bx+si],al                            ;D2AE 0000
add [bx+si],al                            ;D2B0 0000
add [bx+si],al                            ;D2B2 0000
add [bx+si],al                            ;D2B4 0000
add [bx+si],al                            ;D2B6 0000
add [bx+si],al                            ;D2B8 0000
add [bx+si],al                            ;D2BA 0000
add [bx+si],al                            ;D2BC 0000
add [bx+si],al                            ;D2BE 0000
add [bx+si],al                            ;D2C0 0000
add [bx+si],al                            ;D2C2 0000
add [bx+si],al                            ;D2C4 0000
add [bx+si],al                            ;D2C6 0000
add [bx+si],al                            ;D2C8 0000
add [bx+si],al                            ;D2CA 0000
add [bx+si],al                            ;D2CC 0000
add [bx+si],al                            ;D2CE 0000
add [bx+si],al                            ;D2D0 0000
add [bx+si],al                            ;D2D2 0000
add [bx+si],al                            ;D2D4 0000
add [bx+si],al                            ;D2D6 0000
add [bx+si],al                            ;D2D8 0000
add [bx],cl                               ;D2DA 000F
add [bx+si],al                            ;D2DC 0000
add [bx+si],al                            ;D2DE 0000
db 0xff                                   ;D2E0 FF
db 0xff                                   ;D2E1 FF
db 0xff                                   ;D2E2 FF
jmp word far [0x1ec4]                     ;D2E3 FF2EC41E
mov ax,0xe800                             ;D2E7 B800E8
push sp                                   ;D2EA 54
stc                                       ;D2EB F9
cmp byte [es:bx+0xd],0x8                  ;D2EC 26807F0D08
jnz 0xd31d                                ;D2F1 752A
mov al,[es:bx+0xe]                        ;D2F3 268A470E
mov si,0x11e2                             ;D2F7 BEE211
test al,0x20                              ;D2FA A820
jnz 0xd301                                ;D2FC 7503
mov si,0x11e9                             ;D2FE BEE911
and al,0xf                                ;D301 240F
cmp al,[cs:si]                            ;D303 2E3A04
ja 0xd31d                                 ;D306 7715
cbw                                       ;D308 98
shl ax,0x0                                ;D309 D1E0
inc si                                    ;D30B 46
add si,ax                                 ;D30C 03F0
les bx,word [es:bx+0x13]                  ;D30E 26C45F13
call word near [cs:si]                    ;D312 2EFF14
jc 0xd31a                                 ;D315 7203
jmp 0xc679                                ;D317 E95FF3
jmp 0xc66c                                ;D31A E94FF3
jmp 0xc662                                ;D31D E942F3
mov al,[di+0x28]                          ;D320 8A4528
mov [es:bx+0x1],al                        ;D323 26884701
mov ax,[di+0x29]                          ;D327 8B4529
and ax,0x3                                ;D32A 250300
mov [es:bx+0x2],ax                        ;D32D 26894702
mov ax,[di+0x2b]                          ;D331 8B452B
mov [es:bx+0x4],ax                        ;D334 26894704
xor al,al                                 ;D338 32C0
mov [es:bx+0x6],al                        ;D33A 26884706
lea si,[di+0x2d]                          ;D33E 8D752D
test byte [es:bx],0x1                     ;D341 26F60701
jz 0xd352                                 ;D345 740B
call 0xcc8a                               ;D347 E840F9
call 0xca99                               ;D34A E84CF7
jc 0xd35b                                 ;D34D 720C
lea si,[di+0x6]                           ;D34F 8D7506
lea di,[bx+0x7]                           ;D352 8D7F07
mov cx,0x13                               ;D355 B91300
rep movsb                                 ;D358 F3A4
clc                                       ;D35A F8
ret                                       ;D35B C3
or word [di+0x29],0x140                   ;D35C 814D294001
test byte [es:bx],0x2                     ;D361 26F60702
jz 0xd36a                                 ;D365 7403
jmp 0xd3da                                ;D367 EB71
nop                                       ;D369 90
mov al,[es:bx+0x1]                        ;D36A 268A4701
mov [di+0x28],al                          ;D36E 884528
mov ax,[es:bx+0x4]                        ;D371 268B4704
mov [di+0x2b],ax                          ;D375 89452B
mov ax,[es:bx+0x2]                        ;D378 268B4702
cmp byte [cs:0x1c3],0x0                   ;D37C 2E803EC30100
jnz 0xd387                                ;D382 7503
and ax,0xfffd                             ;D384 25FDFF
and ax,0x3                                ;D387 250300
mov cx,[di+0x29]                          ;D38A 8B4D29
and cx,0xfff4                             ;D38D 81E1F4FF
or ax,cx                                  ;D391 0BC1
mov [di+0x29],ax                          ;D393 894529
mov al,[es:bx+0x6]                        ;D396 268A4706
mov [cs:0x12ee],al                        ;D39A 2EA2EE12
or word [di+0x29],0x80                    ;D39E 814D298000
push ds                                   ;D3A3 1E
push di                                   ;D3A4 57
push es                                   ;D3A5 06
push bx                                   ;D3A6 53
test byte [es:bx],0x1                     ;D3A7 26F60701
jnz 0xd3c4                                ;D3AB 7517
test word [di+0x29],0x4                   ;D3AD F745290400
jz 0xd3bc                                 ;D3B2 7408
and word [di+0x29],0xfffb                 ;D3B4 816529FBFF
jmp 0xd3d3                                ;D3B9 EB18
nop                                       ;D3BB 90
mov cx,0x1f                               ;D3BC B91F00
lea di,[di+0x2d]                          ;D3BF 8D7D2D
jmp 0xd3ca                                ;D3C2 EB06
mov cx,0x13                               ;D3C4 B91300
lea di,[di+0x6]                           ;D3C7 8D7D06
lea si,[bx+0x7]                           ;D3CA 8D7707
push es                                   ;D3CD 06
push ds                                   ;D3CE 1E
pop es                                    ;D3CF 07
pop ds                                    ;D3D0 1F
rep movsb                                 ;D3D1 F3A4
call 0xd78a                               ;D3D3 E8B403
pop bx                                    ;D3D6 5B
pop es                                    ;D3D7 07
pop di                                    ;D3D8 5F
pop ds                                    ;D3D9 1F
mov cx,[es:bx+0x26]                       ;D3DA 268B4F26
mov [cs:0x12ec],cx                        ;D3DE 2E890EEC12
and word [di+0x29],0xfff7                 ;D3E3 816529F7FF
test byte [es:bx],0x4                     ;D3E8 26F60704
jz 0xd3f3                                 ;D3EC 7405
or word [di+0x29],0x8                     ;D3EE 814D290800
cmp cx,0x3f                               ;D3F3 83F93F
ja 0xd421                                 ;D3F6 7729
jcxz 0xd41f                               ;D3F8 E325
push bx                                   ;D3FA 53
add bx,0x28                               ;D3FB 83C328
push di                                   ;D3FE 57
mov di,0x11f2                             ;D3FF BFF211
push ax                                   ;D402 50
mov ax,[es:bx]                            ;D403 268B07
mov [cs:di],al                            ;D406 2E8805
mov ax,[es:bx+0x2]                        ;D409 268B4702
call 0xd649                               ;D40D E83902
mov [cs:di+0x1],al                        ;D410 2E884501
add bx,0x4                                ;D414 83C304
add di,0x4                                ;D417 83C704
loopne 0xd403                             ;D41A E0E7
pop ax                                    ;D41C 58
pop di                                    ;D41D 5F
pop bx                                    ;D41E 5B
clc                                       ;D41F F8
ret                                       ;D420 C3
mov al,0xc                                ;D421 B00C
stc                                       ;D423 F9
ret                                       ;D424 C3
test byte [es:bx],0x1                     ;D425 26F60701
jz 0xd432                                 ;D429 7407
call 0xd4c7                               ;D42B E89900
mov [es:bx],al                            ;D42E 268807
ret                                       ;D431 C3
cmp byte [di+0x28],0x5                    ;D432 807D2805
jnz 0xd43b                                ;D436 7503
jmp 0xd4c3                                ;D438 E98800
push ds                                   ;D43B 1E
push di                                   ;D43C 57
push es                                   ;D43D 06
push bx                                   ;D43E 53
call 0xd4c7                               ;D43F E88500
cmp al,0x3                                ;D442 3C03
jz 0xd4a3                                 ;D444 745D
call 0xd65f                               ;D446 E81602
call 0xcc8a                               ;D449 E83EF8
mov ax,[es:bx+0x3]                        ;D44C 268B4703
mov [cs:0x26e],ax                         ;D450 2EA36E02
mov cx,[es:bx+0x1]                        ;D454 268B4F01
mov [cs:0x26d],cl                         ;D458 2E880E6D02
mov ah,cl                                 ;D45D 8AE1
push di                                   ;D45F 57
mov di,0x11f0                             ;D460 BFF011
mov cx,[cs:0x12ec]                        ;D463 2E8B0EEC12
jcxz 0xd472                               ;D468 E308
mov [cs:di],ax                            ;D46A 2E8905
add di,0x4                                ;D46D 83C704
loopne 0xd46a                             ;D470 E0F8
pop di                                    ;D472 5F
mov cx,0x5                                ;D473 B90500
push cx                                   ;D476 51
mov ax,[cs:0x12ec]                        ;D477 2EA1EC12
mov ah,0x5                                ;D47B B405
push cs                                   ;D47D 0E
pop es                                    ;D47E 07
mov bx,0x11f0                             ;D47F BBF011
call 0xd6cb                               ;D482 E84602
jnc 0xd4b8                                ;D485 7331
pop cx                                    ;D487 59
mov byte [cs:0x12f0],0x1                  ;D488 2EC606F01201
push ax                                   ;D48E 50
push cx                                   ;D48F 51
push dx                                   ;D490 52
call 0xd6be                               ;D491 E82A02
call 0xd4c7                               ;D494 E83000
cmp al,0x1                                ;D497 3C01
jnz 0xd49e                                ;D499 7503
call 0xd65f                               ;D49B E8C101
pop dx                                    ;D49E 5A
pop cx                                    ;D49F 59
pop ax                                    ;D4A0 58
loop 0xd476                               ;D4A1 E2D3
mov byte [cs:0x12f0],0x1                  ;D4A3 2EC606F01201
cmp ah,0x6                                ;D4A9 80FC06
jnz 0xd4b0                                ;D4AC 7502
mov ah,0x80                               ;D4AE B480
call 0xcf2b                               ;D4B0 E878FA
pop bx                                    ;D4B3 5B
pop es                                    ;D4B4 07
pop di                                    ;D4B5 5F
pop ds                                    ;D4B6 1F
ret                                       ;D4B7 C3
mov byte [cs:0x12f0],0x0                  ;D4B8 2EC606F01200
pop cx                                    ;D4BE 59
pop bx                                    ;D4BF 5B
pop es                                    ;D4C0 07
pop di                                    ;D4C1 5F
pop ds                                    ;D4C2 1F
call 0xd573                               ;D4C3 E8AD00
ret                                       ;D4C6 C3
push cx                                   ;D4C7 51
push dx                                   ;D4C8 52
cmp byte [cs:0x12f0],0x1                  ;D4C9 2E803EF01201
jz 0xd4e2                                 ;D4CF 7411
cmp byte [cs:0x12ef],0x1                  ;D4D1 2E803EEF1201
jnz 0xd4dc                                ;D4D7 7503
jmp 0xd56f                                ;D4D9 E99300
mov byte [cs:0x12ef],0x0                  ;D4DC 2EC606EF1200
push ds                                   ;D4E2 1E
push si                                   ;D4E3 56
xor ax,ax                                 ;D4E4 33C0
mov ds,ax                                 ;D4E6 8ED8
lds si,word [0x78]                        ;D4E8 C5367800
mov [cs:0x262],si                         ;D4EC 2E89366202
mov word [cs:0x264],ds                    ;D4F1 2E8C1E6402
pop si                                    ;D4F6 5E
pop ds                                    ;D4F7 1F
mov byte [cs:0x1c6],0x1                   ;D4F8 2EC606C60101
mov ax,[di+0x2b]                          ;D4FE 8B452B
mov cx,[di+0x13]                          ;D501 8B4D13
and ah,0x3                                ;D504 80E403
ror ah,0x0                                ;D507 D0CC
ror ah,0x0                                ;D509 D0CC
or ah,cl                                  ;D50B 0AE1
xchg ah,al                                ;D50D 86E0
mov cx,ax                                 ;D50F 8BC8
dec ch                                    ;D511 FECD
mov dl,[di+0x4]                           ;D513 8A5504
mov ah,0x18                               ;D516 B418
push es                                   ;D518 06
push di                                   ;D519 57
push ds                                   ;D51A 1E
push si                                   ;D51B 56
int byte 0x13                             ;D51C CD13
jc 0xd555                                 ;D51E 7235
cmp byte [cs:0x12f0],0x1                  ;D520 2E803EF01201
jnz 0xd531                                ;D526 7509
xor al,al                                 ;D528 32C0
mov [cs:0x12f0],al                        ;D52A 2EA2F012
jmp 0xd56b                                ;D52E EB3B
nop                                       ;D530 90
xor ax,ax                                 ;D531 33C0
mov ds,ax                                 ;D533 8ED8
lds si,word [0x78]                        ;D535 C5367800
mov [cs:0x12f1],si                        ;D539 2E8936F112
mov word [cs:0x12f3],ds                   ;D53E 2E8C1EF312
mov [0x78],di                             ;D543 893E7800
mov word [0x7a],es                        ;D547 8C067A00
mov byte [cs:0x12ef],0x1                  ;D54B 2EC606EF1201
xor al,al                                 ;D551 32C0
jmp 0xd56b                                ;D553 EB16
mov al,0x3                                ;D555 B003
cmp ah,0x80                               ;D557 80FC80
jz 0xd56b                                 ;D55A 740F
dec al                                    ;D55C FEC8
cmp ah,0xc                                ;D55E 80FC0C
jz 0xd56b                                 ;D561 7408
dec al                                    ;D563 FEC8
mov byte [cs:0x1c6],0x0                   ;D565 2EC606C60100
pop si                                    ;D56B 5E
pop ds                                    ;D56C 1F
pop di                                    ;D56D 5F
pop es                                    ;D56E 07
clc                                       ;D56F F8
pop dx                                    ;D570 5A
pop cx                                    ;D571 59
ret                                       ;D572 C3
mov byte [cs:0x256],0x4                   ;D573 2EC606560204
mov ax,[es:bx+0x3]                        ;D579 268B4703
mov [cs:0x268],ax                         ;D57D 2EA36802
mov ax,[es:bx+0x1]                        ;D581 268B4701
mov [cs:0x267],al                         ;D585 2EA26702
xor ax,ax                                 ;D589 33C0
mov cx,[cs:0x12ec]                        ;D58B 2E8B0EEC12
xor bx,bx                                 ;D590 33DB
mov es,bx                                 ;D592 8EC3
call 0xd5ca                               ;D594 E83300
ret                                       ;D597 C3
mov byte [cs:0x256],0x2                   ;D598 2EC606560202
jmp 0xd5aa                                ;D59E EB0A
nop                                       ;D5A0 90
mov byte [cs:0x256],0x3                   ;D5A1 2EC606560203
jmp 0xd5aa                                ;D5A7 EB01
nop                                       ;D5A9 90
mov ax,[es:bx+0x3]                        ;D5AA 268B4703
mov [cs:0x268],ax                         ;D5AE 2EA36802
mov ax,[es:bx+0x1]                        ;D5B2 268B4701
mov [cs:0x267],al                         ;D5B6 2EA26702
mov ax,[es:bx+0x5]                        ;D5BA 268B4705
mov cx,[es:bx+0x7]                        ;D5BE 268B4F07
les bx,word [es:bx+0x9]                   ;D5C2 26C45F09
call 0xd5ca                               ;D5C6 E80100
ret                                       ;D5C9 C3
mov [cs:0x26a],sp                         ;D5CA 2E89266A02
call 0xcc8a                               ;D5CF E8B8F6
cmp byte [cs:0x12ef],0x1                  ;D5D2 2E803EEF1201
jz 0xd5e1                                 ;D5D8 7407
push ax                                   ;D5DA 50
push cx                                   ;D5DB 51
call 0xcd80                               ;D5DC E8A1F7
pop cx                                    ;D5DF 59
pop ax                                    ;D5E0 58
mov si,0x11f0                             ;D5E1 BEF011
shl ax,0x0                                ;D5E4 D1E0
shl ax,0x0                                ;D5E6 D1E0
add si,ax                                 ;D5E8 03F0
mov dx,0x1                                ;D5EA BA0100
test word [di+0x29],0x8                   ;D5ED F745290800
jz 0xd5f6                                 ;D5F2 7402
xchg dx,cx                                ;D5F4 87D1
push cx                                   ;D5F6 51
push dx                                   ;D5F7 52
inc si                                    ;D5F8 46
inc si                                    ;D5F9 46
mov al,[cs:si]                            ;D5FA 2E8A04
mov [cs:0x266],al                         ;D5FD 2EA26602
test word [di+0x29],0x1                   ;D601 F745290100
jz 0xd616                                 ;D606 740E
mov [cs:0x258],dx                         ;D608 2E89165802
mov ax,dx                                 ;D60D 8BC2
call 0xce21                               ;D60F E80FF8
pop dx                                    ;D612 5A
pop cx                                    ;D613 59
clc                                       ;D614 F8
ret                                       ;D615 C3
mov al,[cs:si+0x1]                        ;D616 2E8A4401
push es                                   ;D61A 06
push si                                   ;D61B 56
push ax                                   ;D61C 50
les si,word [cs:0x262]                    ;D61D 2EC4366202
mov [es:si+0x3],al                        ;D622 26884403
mov ax,[di+0x13]                          ;D626 8B4513
mov [es:si+0x4],al                        ;D629 26884404
pop ax                                    ;D62D 58
pop si                                    ;D62E 5E
pop es                                    ;D62F 07
call 0xd655                               ;D630 E82200
push ax                                   ;D633 50
mov ax,dx                                 ;D634 8BC2
mov [cs:0x258],ax                         ;D636 2EA35802
call 0xce21                               ;D63A E8E4F7
pop ax                                    ;D63D 58
add bx,ax                                 ;D63E 03D8
pop dx                                    ;D640 5A
pop cx                                    ;D641 59
loop 0xd5f6                               ;D642 E2B2
call 0xcdc0                               ;D644 E879F7
clc                                       ;D647 F8
ret                                       ;D648 C3
and ah,0x7                                ;D649 80E407
mov al,ah                                 ;D64C 8AC4
cmp al,0x4                                ;D64E 3C04
jnz 0xd654                                ;D650 7502
sub al,0x1                                ;D652 2C01
ret                                       ;D654 C3
push cx                                   ;D655 51
mov cl,al                                 ;D656 8AC8
mov ax,0x80                               ;D658 B88000
shl ax,cl                                 ;D65B D3E0
pop cx                                    ;D65D 59
ret                                       ;D65E C3
test byte [cs:0x12ef],0x1                 ;D65F 2EF606EF1201
jnz 0xd6b0                                ;D665 7549
cmp byte [cs:0x12f0],0x1                  ;D667 2E803EF01201
jz 0xd67b                                 ;D66D 740C
test word [di+0x29],0x80                  ;D66F F745298000
jz 0xd6b0                                 ;D674 743A
and word [di+0x29],0xff7f                 ;D676 8165297FFF
mov byte [cs:0x12f0],0x0                  ;D67B 2EC606F01200
mov byte [cs:0x270],0x50                  ;D681 2EC606700250
cmp byte [di+0x28],0x2                    ;D687 807D2802
jnz 0xd691                                ;D68B 7504
mov al,0x4                                ;D68D B004
jmp 0xd6a9                                ;D68F EB18
mov al,0x1                                ;D691 B001
cmp byte [di+0x28],0x1                    ;D693 807D2801
jnz 0xd6a9                                ;D697 7510
inc al                                    ;D699 FEC0
cmp word [di+0x13],0xf                    ;D69B 837D130F
jnz 0xd6a9                                ;D69F 7508
inc al                                    ;D6A1 FEC0
mov byte [cs:0x270],0x54                  ;D6A3 2EC606700254
mov ah,0x17                               ;D6A9 B417
mov dl,[di+0x4]                           ;D6AB 8A5504
int byte 0x13                             ;D6AE CD13
mov ah,[di+0x13]                          ;D6B0 8A6513
mov [cs:0x26c],ah                         ;D6B3 2E88266C02
ret                                       ;D6B8 C3
call 0xd6be                               ;D6B9 E80200
dec bp                                    ;D6BC 4D
ret                                       ;D6BD C3
push ax                                   ;D6BE 50
xor ah,ah                                 ;D6BF 32E4
int byte 0x13                             ;D6C1 CD13
pop ax                                    ;D6C3 58
mov byte [cs:0x1c1],0xff                  ;D6C4 2EC606C101FF
ret                                       ;D6CA C3
push ds                                   ;D6CB 1E
push di                                   ;D6CC 57
push es                                   ;D6CD 06
push bx                                   ;D6CE 53
push si                                   ;D6CF 56
test byte [cs:0x12ef],0x1                 ;D6D0 2EF606EF1201
jnz 0xd715                                ;D6D6 753D
push ax                                   ;D6D8 50
push ds                                   ;D6D9 1E
xor ax,ax                                 ;D6DA 33C0
mov ds,ax                                 ;D6DC 8ED8
lds si,word [0x78]                        ;D6DE C5367800
mov [cs:0x262],si                         ;D6E2 2E89366202
mov word [cs:0x264],ds                    ;D6E7 2E8C1E6402
pop ds                                    ;D6EC 1F
push es                                   ;D6ED 06
les si,word [cs:0x262]                    ;D6EE 2EC4366202
mov dx,[di+0x13]                          ;D6F3 8B5513
mov [es:si+0x4],dl                        ;D6F6 26885404
cmp dx,0xf                                ;D6FA 83FA0F
jz 0xd708                                 ;D6FD 7409
mov cl,[cs:0x270]                         ;D6FF 2E8A0E7002
mov [es:si+0x7],cl                        ;D704 26884C07
cmp byte [di+0x28],0x2                    ;D708 807D2802
jnz 0xd713                                ;D70C 7505
mov byte [es:si+0xa],0x4                  ;D70E 26C6440A04
pop es                                    ;D713 07
pop ax                                    ;D714 58
mov dl,[di+0x4]                           ;D715 8A5504
mov dh,[cs:0x26d]                         ;D718 2E8A366D02
mov cx,[cs:0x26e]                         ;D71D 2E8B0E6E02
ror ch,0x0                                ;D722 D0CD
ror ch,0x0                                ;D724 D0CD
xchg ch,cl                                ;D726 86E9
int byte 0x13                             ;D728 CD13
pop si                                    ;D72A 5E
pop bx                                    ;D72B 5B
pop es                                    ;D72C 07
pop di                                    ;D72D 5F
pop ds                                    ;D72E 1F
ret                                       ;D72F C3
call 0xcc40                               ;D730 E80DF5
mov al,[di+0x4]                           ;D733 8A4504
push cs                                   ;D736 0E
pop ds                                    ;D737 1F
mov di,[cs:0x24c]                         ;D738 2E8B3E4C02
cmp [di+0x4],al                           ;D73D 384504
jnz 0xd749                                ;D740 7507
test word [di+0x29],0x20                  ;D742 F745292000
jnz 0xd752                                ;D747 7509
mov bx,[di+0x2]                           ;D749 8B5D02
mov di,[di]                               ;D74C 8B3D
mov ds,bx                                 ;D74E 8EDB
jmp 0xd73d                                ;D750 EBEB
jmp 0xd771                                ;D752 EB1D
call 0xcc40                               ;D754 E8E9F4
mov byte [cs:0x1c7],0x1                   ;D757 2EC606C70101
call 0xcc8a                               ;D75D E82AF5
mov byte [cs:0x1c7],0x0                   ;D760 2EC606C70100
xor bx,bx                                 ;D766 33DB
mov es,bx                                 ;D768 8EC3
mov cl,0xff                               ;D76A B1FF
mov [es:0x504],cl                         ;D76C 26880E0405
xor cl,cl                                 ;D771 32C9
test word [di+0x29],0x10                  ;D773 F745291000
jz 0xd77f                                 ;D778 7405
mov cl,[di+0x5]                           ;D77A 8A4D05
inc cl                                    ;D77D FEC1
lds bx,word [cs:0xb8]                     ;D77F 2EC51EB800
mov [bx+0x1],cl                           ;D784 884F01
jmp 0xc679                                ;D787 E9EFEE
push ax                                   ;D78A 50
xor al,al                                 ;D78B 32C0
mov [cs:0x12f0],al                        ;D78D 2EA2F012
xchg al,[cs:0x12ef]                       ;D791 2E8606EF12
or al,al                                  ;D796 0AC0
jz 0xd7b3                                 ;D798 7419
push si                                   ;D79A 56
push ds                                   ;D79B 1E
push es                                   ;D79C 06
lds si,word [cs:0x12f1]                   ;D79D 2EC536F112
xor ax,ax                                 ;D7A2 33C0
mov es,ax                                 ;D7A4 8EC0
mov [es:0x78],si                          ;D7A6 2689367800
mov word [es:0x7a],ds                     ;D7AB 268C1E7A00
pop es                                    ;D7B0 07
pop ds                                    ;D7B1 1F
pop si                                    ;D7B2 5E
pop ax                                    ;D7B3 58
clc                                       ;D7B4 F8
ret                                       ;D7B5 C3
push ax                                   ;D7B6 50
push bx                                   ;D7B7 53
push ds                                   ;D7B8 1E
push di                                   ;D7B9 57
mov byte [cs:0x1c2],0x1                   ;D7BA 2EC606C20101
mov al,dl                                 ;D7C0 8AC2
call 0xcc40                               ;D7C2 E87BF4
mov byte [cs:0x1c2],0x0                   ;D7C5 2EC606C20100
jc 0xd82b                                 ;D7CB 725E
test word [di+0x29],0x1                   ;D7CD F745290100
jz 0xd82b                                 ;D7D2 7457
mov bx,[di+0x13]                          ;D7D4 8B5D13
mov ax,cx                                 ;D7D7 8BC1
and ax,0x3f                               ;D7D9 253F00
cmp ax,bx                                 ;D7DC 3BC3
jna 0xd82b                                ;D7DE 764B
div bl                                    ;D7E0 F6F3
or ah,ah                                  ;D7E2 0AE4
jnz 0xd7ea                                ;D7E4 7504
mov ah,bl                                 ;D7E6 8AE3
dec al                                    ;D7E8 FEC8
and cl,0xc0                               ;D7EA 80E1C0
or cl,ah                                  ;D7ED 0ACC
xor ah,ah                                 ;D7EF 32E4
inc ax                                    ;D7F1 40
add al,dh                                 ;D7F2 02C6
adc ah,0x0                                ;D7F4 80D400
cmp ax,[di+0x15]                          ;D7F7 3B4515
jna 0xd831                                ;D7FA 7635
push dx                                   ;D7FC 52
xor dx,dx                                 ;D7FD 33D2
mov bx,[di+0x15]                          ;D7FF 8B5D15
div bx                                    ;D802 F7F3
or dx,dx                                  ;D804 0BD2
jnz 0xd80f                                ;D806 7507
mov dx,bx                                 ;D808 8BD3
or ax,ax                                  ;D80A 0BC0
jz 0xd80f                                 ;D80C 7401
dec ax                                    ;D80E 48
mov bh,dl                                 ;D80F 8AFA
pop dx                                    ;D811 5A
dec bh                                    ;D812 FECF
mov dh,bh                                 ;D814 8AF7
mov bh,cl                                 ;D816 8AF9
and bh,0x3f                               ;D818 80E73F
mov bl,0x6                                ;D81B B306
xchg cl,bl                                ;D81D 86CB
shr bl,cl                                 ;D81F D2EB
add ch,al                                 ;D821 02E8
adc bl,ah                                 ;D823 12DC
shl bl,cl                                 ;D825 D2E3
xchg bl,cl                                ;D827 86D9
or cl,bh                                  ;D829 0ACF
clc                                       ;D82B F8
pop di                                    ;D82C 5F
pop ds                                    ;D82D 1F
pop bx                                    ;D82E 5B
pop ax                                    ;D82F 58
ret                                       ;D830 C3
mov dh,al                                 ;D831 8AF0
dec dh                                    ;D833 FECE
jmp 0xd82b                                ;D835 EBF4
cmp ah,0x13                               ;D837 80FC13
jz 0xd841                                 ;D83A 7405
jmp word near [cs:0x248]                  ;D83C 2EFF264802
push word [cs:0xb4]                       ;D841 2EFF36B400
push word [cs:0xb6]                       ;D846 2EFF36B600
push word [cs:0xb0]                       ;D84B 2EFF36B000
push word [cs:0xb2]                       ;D850 2EFF36B200
mov [cs:0xb4],dx                          ;D855 2E8916B400
mov word [cs:0xb6],ds                     ;D85A 2E8C1EB600
mov [cs:0xb0],bx                          ;D85F 2E891EB000
mov word [cs:0xb2],es                     ;D864 2E8C06B200
pop es                                    ;D869 07
pop bx                                    ;D86A 5B
pop ds                                    ;D86B 1F
pop dx                                    ;D86C 5A
iret                                      ;D86D CF
push cx                                   ;D86E 51
mov cx,0x100                              ;D86F B90001
cld                                       ;D872 FC
rep movsw                                 ;D873 F3A5
pop cx                                    ;D875 59
ret                                       ;D876 C3
mov dl,[bp+0x8]                           ;D877 8A5608
xor ah,ah                                 ;D87A 32E4
or al,al                                  ;D87C 0AC0
jz 0xd88f                                 ;D87E 740F
mov ah,[bp+0x3]                           ;D880 8A6603
push word [bp+0xe]                        ;D883 FF760E
call word far [cs:0xb4]                   ;D886 2EFF1EB400
pushf                                     ;D88B 9C
pop word [bp+0xe]                         ;D88C 8F460E
ret                                       ;D88F C3
add [bx+si],al                            ;D890 0000
add [bx+si],al                            ;D892 0000
add [bx+si],al                            ;D894 0000
db 0xff                                   ;D896 FF
db 0xff                                   ;D897 FF
db 0xff                                   ;D898 FF
db 0xff                                   ;D899 FF
db 0xff                                   ;D89A FF
db 0xff                                   ;D89B FF
db 0xff                                   ;D89C FF
db 0xff                                   ;D89D FF
db 0xff                                   ;D89E FF
db 0xff                                   ;D89F FF
db 0xff                                   ;D8A0 FF
db 0xff                                   ;D8A1 FF
db 0xff                                   ;D8A2 FF
db 0xff                                   ;D8A3 FF
db 0xff                                   ;D8A4 FF
db 0xff                                   ;D8A5 FF
db 0xff                                   ;D8A6 FF
db 0xff                                   ;D8A7 FF
db 0xff                                   ;D8A8 FF
db 0xff                                   ;D8A9 FF
db 0xff                                   ;D8AA FF
db 0xff                                   ;D8AB FF
db 0xff                                   ;D8AC FF
db 0xff                                   ;D8AD FF
db 0xff                                   ;D8AE FF
db 0xff                                   ;D8AF FF
db 0xff                                   ;D8B0 FF
db 0xff                                   ;D8B1 FF
db 0xff                                   ;D8B2 FF
db 0xff                                   ;D8B3 FF
db 0xff                                   ;D8B4 FF
db 0xff                                   ;D8B5 FF
db 0xff                                   ;D8B6 FF
db 0xff                                   ;D8B7 FF
db 0xff                                   ;D8B8 FF
db 0xff                                   ;D8B9 FF
db 0xff                                   ;D8BA FF
db 0xff                                   ;D8BB FF
db 0xff                                   ;D8BC FF
db 0xff                                   ;D8BD FF
db 0xff                                   ;D8BE FF
db 0xff                                   ;D8BF FF
db 0xff                                   ;D8C0 FF
db 0xff                                   ;D8C1 FF
db 0xff                                   ;D8C2 FF
db 0xff                                   ;D8C3 FF
db 0xff                                   ;D8C4 FF
db 0xff                                   ;D8C5 FF
db 0xff                                   ;D8C6 FF
db 0xff                                   ;D8C7 FF
db 0xff                                   ;D8C8 FF
db 0xff                                   ;D8C9 FF
db 0xff                                   ;D8CA FF
db 0xff                                   ;D8CB FF
db 0xff                                   ;D8CC FF
call word near [bx+si+0x488]              ;D8CD FF908804
fiadd dword [si]                          ;D8D1 DA04
sub al,0x5                                ;D8D3 2C05
jng 0xd8dc                                ;D8D5 7E05
out dx,al                                 ;D8D7 EE
sbb ax,[bx+si+0x1c]                       ;D8D8 1B401C
add [bx+si],al                            ;D8DB 0000
add [bx+si],al                            ;D8DD 0000
add [bx+si],al                            ;D8DF 0000
add [bx+si],al                            ;D8E1 0000
add [bx+si],al                            ;D8E3 0000
add [bx+si],al                            ;D8E5 0000
add [bx+si],al                            ;D8E7 0000
add [bx+si],al                            ;D8E9 0000
add [bx+si],al                            ;D8EB 0000
add [bx+si],al                            ;D8ED 0000
add [bx+si],al                            ;D8EF 0000
add [bx+si],al                            ;D8F1 0000
add [bx+si],al                            ;D8F3 0000
add [bx+si],al                            ;D8F5 0000
add [bx+si],al                            ;D8F7 0000
add [bx+si],al                            ;D8F9 0000
add [bx+si],al                            ;D8FB 0000
add [bx+si],al                            ;D8FD 0000
add [bx+si],al                            ;D8FF 0000
add [bx+si],al                            ;D901 0000
add [bx+si],al                            ;D903 0000
add [bx+si],al                            ;D905 0000
add [bx+si],al                            ;D907 0000
add [bx+si],al                            ;D909 0000
xor ax,ax                                 ;D90B 33C0
mov ds,ax                                 ;D90D 8ED8
les di,word [cs:0xb0]                     ;D90F 2EC43EB000
mov [0x4c],di                             ;D914 893E4C00
mov word [0x4e],es                        ;D918 8C064E00
cmp byte [cs:0x18a6],0x0                  ;D91C 2E803EA61800
jnz 0xd927                                ;D922 7503
jmp 0xda89                                ;D924 E96201
xor ax,ax                                 ;D927 33C0
mov ds,ax                                 ;D929 8ED8
les di,word [cs:0x18a7]                   ;D92B 2EC43EA718
mov ax,es                                 ;D930 8CC0
cmp ax,0xffff                             ;D932 3DFFFF
jz 0xd944                                 ;D935 740D
cmp di,0xffffffffffffffff                 ;D937 83FFFF
jz 0xd944                                 ;D93A 7408
mov [0x8],di                              ;D93C 893E0800
mov word [0xa],es                         ;D940 8C060A00
les di,word [cs:0x18ab]                   ;D944 2EC43EAB18
mov ax,es                                 ;D949 8CC0
cmp ax,0xffff                             ;D94B 3DFFFF
jz 0xd95d                                 ;D94E 740D
cmp di,0xffffffffffffffff                 ;D950 83FFFF
jz 0xd95d                                 ;D953 7408
mov [0x20],di                             ;D955 893E2000
mov word [0x22],es                        ;D959 8C062200
les di,word [cs:0x18af]                   ;D95D 2EC43EAF18
mov ax,es                                 ;D962 8CC0
cmp ax,0xffff                             ;D964 3DFFFF
jz 0xd976                                 ;D967 740D
cmp di,0xffffffffffffffff                 ;D969 83FFFF
jz 0xd976                                 ;D96C 7408
mov [0x24],di                             ;D96E 893E2400
mov word [0x26],es                        ;D972 8C062600
les di,word [cs:0x18b3]                   ;D976 2EC43EB318
mov ax,es                                 ;D97B 8CC0
cmp ax,0xffff                             ;D97D 3DFFFF
jz 0xd98f                                 ;D980 740D
cmp di,0xffffffffffffffff                 ;D982 83FFFF
jz 0xd98f                                 ;D985 7408
mov [0x28],di                             ;D987 893E2800
mov word [0x2a],es                        ;D98B 8C062A00
les di,word [cs:0x18b7]                   ;D98F 2EC43EB718
mov ax,es                                 ;D994 8CC0
cmp ax,0xffff                             ;D996 3DFFFF
jz 0xd9a8                                 ;D999 740D
cmp di,0xffffffffffffffff                 ;D99B 83FFFF
jz 0xd9a8                                 ;D99E 7408
mov [0x2c],di                             ;D9A0 893E2C00
mov word [0x2e],es                        ;D9A4 8C062E00
les di,word [cs:0x18bb]                   ;D9A8 2EC43EBB18
mov ax,es                                 ;D9AD 8CC0
cmp ax,0xffff                             ;D9AF 3DFFFF
jz 0xd9c1                                 ;D9B2 740D
cmp di,0xffffffffffffffff                 ;D9B4 83FFFF
jz 0xd9c1                                 ;D9B7 7408
mov [0x30],di                             ;D9B9 893E3000
mov word [0x32],es                        ;D9BD 8C063200
les di,word [cs:0x18bf]                   ;D9C1 2EC43EBF18
mov ax,es                                 ;D9C6 8CC0
cmp ax,0xffff                             ;D9C8 3DFFFF
jz 0xd9da                                 ;D9CB 740D
cmp di,0xffffffffffffffff                 ;D9CD 83FFFF
jz 0xd9da                                 ;D9D0 7408
mov [0x34],di                             ;D9D2 893E3400
mov word [0x36],es                        ;D9D6 8C063600
les di,word [cs:0x18c3]                   ;D9DA 2EC43EC318
mov ax,es                                 ;D9DF 8CC0
cmp ax,0xffff                             ;D9E1 3DFFFF
jz 0xd9f3                                 ;D9E4 740D
cmp di,0xffffffffffffffff                 ;D9E6 83FFFF
jz 0xd9f3                                 ;D9E9 7408
mov [0x38],di                             ;D9EB 893E3800
mov word [0x3a],es                        ;D9EF 8C063A00
les di,word [cs:0x18c7]                   ;D9F3 2EC43EC718
mov ax,es                                 ;D9F8 8CC0
cmp ax,0xffff                             ;D9FA 3DFFFF
jz 0xda0c                                 ;D9FD 740D
cmp di,0xffffffffffffffff                 ;D9FF 83FFFF
jz 0xda0c                                 ;DA02 7408
mov [0x1c0],di                            ;DA04 893EC001
mov word [0x1c2],es                       ;DA08 8C06C201
les di,word [cs:0x18cb]                   ;DA0C 2EC43ECB18
mov ax,es                                 ;DA11 8CC0
cmp ax,0xffff                             ;DA13 3DFFFF
jz 0xda25                                 ;DA16 740D
cmp di,0xffffffffffffffff                 ;DA18 83FFFF
jz 0xda25                                 ;DA1B 7408
mov [0x1c8],di                            ;DA1D 893EC801
mov word [0x1ca],es                       ;DA21 8C06CA01
les di,word [cs:0x18cf]                   ;DA25 2EC43ECF18
mov ax,es                                 ;DA2A 8CC0
cmp ax,0xffff                             ;DA2C 3DFFFF
jz 0xda3e                                 ;DA2F 740D
cmp di,0xffffffffffffffff                 ;DA31 83FFFF
jz 0xda3e                                 ;DA34 7408
mov [0x1cc],di                            ;DA36 893ECC01
mov word [0x1ce],es                       ;DA3A 8C06CE01
les di,word [cs:0x18d3]                   ;DA3E 2EC43ED318
mov ax,es                                 ;DA43 8CC0
cmp ax,0xffff                             ;DA45 3DFFFF
jz 0xda57                                 ;DA48 740D
cmp di,0xffffffffffffffff                 ;DA4A 83FFFF
jz 0xda57                                 ;DA4D 7408
mov [0x1d0],di                            ;DA4F 893ED001
mov word [0x1d2],es                       ;DA53 8C06D201
les di,word [cs:0x18d7]                   ;DA57 2EC43ED718
mov ax,es                                 ;DA5C 8CC0
cmp ax,0xffff                             ;DA5E 3DFFFF
jz 0xda70                                 ;DA61 740D
cmp di,0xffffffffffffffff                 ;DA63 83FFFF
jz 0xda70                                 ;DA66 7408
mov [0x1d8],di                            ;DA68 893ED801
mov word [0x1da],es                       ;DA6C 8C06DA01
les di,word [cs:0x18db]                   ;DA70 2EC43EDB18
mov ax,es                                 ;DA75 8CC0
cmp ax,0xffff                             ;DA77 3DFFFF
jz 0xda89                                 ;DA7A 740D
cmp di,0xffffffffffffffff                 ;DA7C 83FFFF
jz 0xda89                                 ;DA7F 7408
mov [0x1dc],di                            ;DA81 893EDC01
mov word [0x1de],es                       ;DA85 8C06DE01
les di,word [cs:0x18a2]                   ;DA89 2EC43EA218
mov [0x64],di                             ;DA8E 893E6400
mov word [0x66],es                        ;DA92 8C066600
int byte 0x19                             ;DA96 CD19
push cs                                   ;DA98 0E
pop ds                                    ;DA99 1F
mov ah,[0x1c0]                            ;DA9A 8A26C001
mov di,0x18e0                             ;DA9E BFE018
jmp 0xca85                                ;DAA1 E9E1EF
cmp ah,0x8                                ;DAA4 80FC08
jz 0xdaae                                 ;DAA7 7405
jmp word far [cs:0x1914]                  ;DAA9 2EFF2E1419
cmp al,0xf8                               ;DAAE 3CF8
jc 0xdab3                                 ;DAB0 7201
iret                                      ;DAB2 CF
or al,al                                  ;DAB3 0AC0
jnz 0xdaba                                ;DAB5 7503
mov al,0xff                               ;DAB7 B0FF
iret                                      ;DAB9 CF
cmp al,0x1                                ;DABA 3C01
jnz 0xdac2                                ;DABC 7504
call 0xdacf                               ;DABE E80E00
iret                                      ;DAC1 CF
mov [cs:0xb8],bx                          ;DAC2 2E891EB800
mov word [cs:0xba],es                     ;DAC7 2E8C06BA00
jmp 0xc625                                ;DACC E956EB
les si,word [cs:0x24c]                    ;DACF 2EC4364C02
push es                                   ;DAD4 06
push si                                   ;DAD5 56
cmp si,0xffffffffffffffff                 ;DAD6 83FEFF
jz 0xdb13                                 ;DAD9 7438
mov al,[di+0x4]                           ;DADB 8A4504
cmp [es:si+0x4],al                        ;DADE 26384404
jnz 0xdb04                                ;DAE2 7520
xor bx,bx                                 ;DAE4 33DB
mov bl,0x10                               ;DAE6 B310
or [di+0x29],bx                           ;DAE8 095D29
or [es:si+0x29],bx                        ;DAEB 26095C29
mov bl,0x20                               ;DAEF B320
xor bx,0xffff                             ;DAF1 81F3FFFF
and [di+0x29],bx                          ;DAF5 215D29
mov bx,[es:si+0x29]                       ;DAF8 268B5C29
and bl,0x2                                ;DAFC 80E302
xor bh,bh                                 ;DAFF 32FF
or [di+0x29],bx                           ;DB01 095D29
pop bx                                    ;DB04 5B
pop bx                                    ;DB05 5B
push es                                   ;DB06 06
push si                                   ;DB07 56
mov bx,[es:si+0x2]                        ;DB08 268B5C02
mov si,[es:si]                            ;DB0C 268B34
mov es,bx                                 ;DB0F 8EC3
jmp 0xdad6                                ;DB11 EBC3
pop si                                    ;DB13 5E
pop es                                    ;DB14 07
mov ax,ds                                 ;DB15 8CD8
mov [es:si+0x2],ax                        ;DB17 26894402
mov [es:si],di                            ;DB1B 26893C
mov word [di],0xffff                      ;DB1E C705FFFF
ret                                       ;DB22 C3
push ax                                   ;DB23 50
push ds                                   ;DB24 1E
push di                                   ;DB25 57
xor di,di                                 ;DB26 33FF
mov ds,di                                 ;DB28 8EDF
mov di,0xbc                               ;DB2A BFBC00
mov ax,[di]                               ;DB2D 8B05
mov [cs:0x1914],ax                        ;DB2F 2EA31419
mov ax,[di+0x2]                           ;DB33 8B4502
mov [cs:0x1916],ax                        ;DB36 2EA31619
cli                                       ;DB3A FA
mov word [di],0x1848                      ;DB3B C7054818
mov word [di+0x2],cs                      ;DB3F 8C4D02
sti                                       ;DB42 FB
pop di                                    ;DB43 5F
pop ds                                    ;DB44 1F
pop ax                                    ;DB45 58
retf                                      ;DB46 CB
mov al,[di+0x5]                           ;DB47 8A4505
add al,0x41                               ;DB4A 0441
mov [cs:0x1b9d],al                        ;DB4C 2EA29D1B
push ds                                   ;DB50 1E
push cs                                   ;DB51 0E
pop ds                                    ;DB52 1F
mov si,0x1b81                             ;DB53 BE811B
push bx                                   ;DB56 53
call 0xdb64                               ;DB57 E80A00
call 0xc726                               ;DB5A E8C9EB
xor ah,ah                                 ;DB5D 32E4
int byte 0x16                             ;DB5F CD16
pop bx                                    ;DB61 5B
pop ds                                    ;DB62 1F
ret                                       ;DB63 C3
lodsb                                     ;DB64 AC
or al,al                                  ;DB65 0AC0
jz 0xdb63                                 ;DB67 74FA
pushf                                     ;DB69 9C
push cs                                   ;DB6A 0E
call 0xc68d                               ;DB6B E81FEB
jmp 0xdb64                                ;DB6E EBF4
or ax,0x490a                              ;DB70 0D0A49
outsb                                     ;DB73 6E
jnc 0xdbdb                                ;DB74 7365
jc 0xdbec                                 ;DB76 7274
and [si+0x69],ah                          ;DB78 206469
jnc 0xdbe8                                ;DB7B 736B
gs jz 0xdbf4                              ;DB7D 657474
and [gs:bp+0x6f],ah                       ;DB80 6520666F
jc 0xdba6                                 ;DB84 7220
fs jc 0xdbf2                              ;DB86 647269
jna 0xdbf0                                ;DB89 7665
and [bx+di+0x3a],al                       ;DB8B 20413A
and [bx+di+0x6e],ah                       ;DB8E 20616E
and [fs:bp+di+0x74],dh                    ;DB91 64207374
jc 0xdc00                                 ;DB95 7269
imul sp,[di+0xd],0xa                      ;DB97 6B650D0A
popa                                      ;DB9B 61
outsb                                     ;DB9C 6E
jns 0xdbbf                                ;DB9D 7920
imul sp,[di+0x79],0x20                    ;DB9F 6B657920
ja 0xdc0d                                 ;DBA3 7768
gs outsb                                  ;DBA5 656E
and [bp+si+0x65],dh                       ;DBA7 207265
popa                                      ;DBAA 61
fs jns 0xdbbb                             ;DBAB 64790D
or cl,[bp+si]                             ;DBAE 0A0A
add [bx+si],al                            ;DBB0 0000
add [bx+si],al                            ;DBB2 0000
add [bx+si],al                            ;DBB4 0000
add [bx+si],al                            ;DBB6 0000
add [bx+si],al                            ;DBB8 0000
add [bx],bl                               ;DBBA 001F
add [bp+di],bh                            ;DBBC 003B
add [bp+si+0x0],bl                        ;DBBE 005A00
js 0xdbc3                                 ;DBC1 7800
xchg ax,di                                ;DBC3 97
add [di-0x2c00],dh                        ;DBC4 00B500D4
add bl,dh                                 ;DBC8 00F3
add [bx+di],dl                            ;DBCA 0011
add [bx+si],si                            ;DBCC 0130
add [bp+0x1],cx                           ;DBCE 014E01
add [bx+si],al                            ;DBD1 0000
add [bx+si],al                            ;DBD3 0000
adc byte [bx+si-0x1],0x70                 ;DBD5 8090FFFF70
add [bx+si+0x43],al                       ;DBDA 00804300
add al,[bx+di]                            ;DBDE 0201
add [bx+si],ax                            ;DBE0 0100
add dl,[bx+si]                            ;DBE2 0210
add [bx+si],al                            ;DBE4 0000
add al,bh                                 ;DBE6 00F8
add [bx+si],ax                            ;DBE8 0100
add [bx+si],al                            ;DBEA 0000
add [bx+si],al                            ;DBEC 0000
add [bx+si],al                            ;DBEE 0000
add [bx+si],al                            ;DBF0 0000
add [bp+0x4f],cl                          ;DBF2 004E4F
and [bp+0x41],cl                          ;DBF5 204E41
dec bp                                    ;DBF8 4D
inc bp                                    ;DBF9 45
and [bx+si],ah                            ;DBFA 2020
and [bx+si],ah                            ;DBFC 2020
add [bp+di],al                            ;DBFE 0003
and [bx+si],al                            ;DC00 2000
sub [bx+si],al                            ;DC02 2800
add [bx+si],al                            ;DC04 0000
add [bx+si],al                            ;DC06 0000
add [bx+si],al                            ;DC08 0000
add [bx+si],al                            ;DC0A 0000
add [bx+si],al                            ;DC0C 0000
add [bx+si],al                            ;DC0E 0000
add [bx+si],al                            ;DC10 0000
add [bx+si],al                            ;DC12 0000
add [bx+si],al                            ;DC14 0000
add [bx+si],al                            ;DC16 0000
add [bx+si],al                            ;DC18 0000
add [bx+si],al                            ;DC1A 0000
add [bx+si],al                            ;DC1C 0000
add [bx+si],al                            ;DC1E 0000
add [bx+si],al                            ;DC20 0000
add bh,bh                                 ;DC22 00FF
db 0xff                                   ;DC24 FF
db 0xff                                   ;DC25 FF
db 0xff                                   ;DC26 FF
call word near [bx+si-0x1]                ;DC27 FF90FFFF
jo 0xdc2d                                 ;DC2B 7000
add word [si+0x0],0x2                     ;DC2D 8144000200
add [bx+si],ax                            ;DC32 0100
add al,[bx+si]                            ;DC34 0200
add [bx+si],al                            ;DC36 0000
add al,bh                                 ;DC38 00F8
add [bx+si],al                            ;DC3A 0000
add [bx+si],al                            ;DC3C 0000
add [bx+si],al                            ;DC3E 0000
add [bx+si],al                            ;DC40 0000
add [bx+si],al                            ;DC42 0000
add [bp+0x4f],cl                          ;DC44 004E4F
and [bp+0x41],cl                          ;DC47 204E41
dec bp                                    ;DC4A 4D
inc bp                                    ;DC4B 45
and [bx+si],ah                            ;DC4C 2020
and [bx+si],ah                            ;DC4E 2020
add [bp+di],al                            ;DC50 0003
and [bx+si],al                            ;DC52 2000
sub [bx+si],al                            ;DC54 2800
add [bx+si],al                            ;DC56 0000
add [bx+si],al                            ;DC58 0000
add [bx+si],al                            ;DC5A 0000
add [bx+si],al                            ;DC5C 0000
add [bx+si],al                            ;DC5E 0000
add [bx+si],al                            ;DC60 0000
add [bx+si],al                            ;DC62 0000
add [bx+si],al                            ;DC64 0000
add [bx+si],al                            ;DC66 0000
add [bx+si],al                            ;DC68 0000
add [bx+si],al                            ;DC6A 0000
add [bx+si],al                            ;DC6C 0000
add [bx+si],al                            ;DC6E 0000
add [bx+si],al                            ;DC70 0000
add [bx+si],al                            ;DC72 0000
add bh,bh                                 ;DC74 00FF
db 0xff                                   ;DC76 FF
db 0xff                                   ;DC77 FF
db 0xff                                   ;DC78 FF
db 0xff                                   ;DC79 FF
call 0xcc40                               ;DC7A E8C3EF
inc word [di+0x1a]                        ;DC7D FF451A
jmp 0xc679                                ;DC80 E9F6E9
call 0xcc40                               ;DC83 E8BAEF
cmp word [di+0x1a],0x0                    ;DC86 837D1A00
jz 0xdc8f                                 ;DC8A 7403
dec word [di+0x1a]                        ;DC8C FF4D1A
jmp 0xc679                                ;DC8F E9E7E9
cmp word [di+0x1a],0x0                    ;DC92 837D1A00
ret                                       ;DC96 C3
call 0xcc8a                               ;DC97 E8F0EF
xor si,si                                 ;DC9A 33F6
call 0xde0f                               ;DC9C E87001
jz 0xdccf                                 ;DC9F 742E
call 0xde03                               ;DCA1 E85F01
jnz 0xdcd0                                ;DCA4 752A
push ax                                   ;DCA6 50
push dx                                   ;DCA7 52
mov dl,[di+0x4]                           ;DCA8 8A5504
mov ah,0x16                               ;DCAB B416
int byte 0x13                             ;DCAD CD13
pop dx                                    ;DCAF 5A
pop ax                                    ;DCB0 58
jc 0xdcd0                                 ;DCB1 721D
mov si,0x1                                ;DCB3 BE0100
mov bl,[cs:0x251]                         ;DCB6 2E8A1E5102
cmp [di+0x4],bl                           ;DCBB 385D04
jz 0xdccf                                 ;DCBE 740F
push ax                                   ;DCC0 50
push cx                                   ;DCC1 51
push dx                                   ;DCC2 52
call 0xca31                               ;DCC3 E86BED
pop dx                                    ;DCC6 5A
pop cx                                    ;DCC7 59
pop ax                                    ;DCC8 58
or si,si                                  ;DCC9 0BF6
jz 0xdcd0                                 ;DCCB 7403
xor si,si                                 ;DCCD 33F6
ret                                       ;DCCF C3
call 0xca99                               ;DCD0 E8C6ED
jc 0xdccf                                 ;DCD3 72FA
call 0xdd0c                               ;DCD5 E83400
jnc 0xdccf                                ;DCD8 73F5
call 0xcf2b                               ;DCDA E84EF2
ret                                       ;DCDD C3
call 0xde0f                               ;DCDE E82E01
jz 0xdce8                                 ;DCE1 7405
call 0xdc92                               ;DCE3 E8ACFF
jnz 0xdce9                                ;DCE6 7501
ret                                       ;DCE8 C3
call 0xde03                               ;DCE9 E81701
jz 0xdce8                                 ;DCEC 74FA
call 0xca99                               ;DCEE E8A8ED
jc 0xdd02                                 ;DCF1 720F
call 0xdd0c                               ;DCF3 E81600
jc 0xdcff                                 ;DCF6 7207
or si,si                                  ;DCF8 0BF6
jns 0xdce8                                ;DCFA 79EC
call 0xdd47                               ;DCFC E84800
call 0xcf2b                               ;DCFF E829F2
stc                                       ;DD02 F9
pop si                                    ;DD03 5E
ret                                       ;DD04 C3
call 0xdf0d                               ;DD05 E80502
or si,si                                  ;DD08 0BF6
js 0xdd1c                                 ;DD0A 7810
call 0xde4a                               ;DD0C E83B01
jc 0xdd1b                                 ;DD0F 720A
call 0xdef6                               ;DD11 E8E201
or si,si                                  ;DD14 0BF6
jnz 0xdd1c                                ;DD16 7504
call 0xde09                               ;DD18 E8EE00
ret                                       ;DD1B C3
mov byte [cs:0x251],0xff                  ;DD1C 2EC6065102FF
ret                                       ;DD22 C3
cmp ah,0x6                                ;DD23 80FC06
jnz 0xdd1b                                ;DD26 75F3
call 0xdc92                               ;DD28 E867FF
jz 0xdd1b                                 ;DD2B 74EE
call 0xca99                               ;DD2D E869ED
jc 0xdd44                                 ;DD30 7212
call 0xdd05                               ;DD32 E8D0FF
jc 0xdd40                                 ;DD35 7209
or si,si                                  ;DD37 0BF6
js 0xdd3d                                 ;DD39 7802
inc bp                                    ;DD3B 45
ret                                       ;DD3C C3
call 0xdd47                               ;DD3D E80700
stc                                       ;DD40 F9
jmp 0xcee7                                ;DD41 E9A3F1
jmp 0xceea                                ;DD44 E9A3F1
push ds                                   ;DD47 1E
push di                                   ;DD48 57
push cx                                   ;DD49 51
call 0xdf1d                               ;DD4A E8D001
lds bx,word [cs:0xb8]                     ;DD4D 2EC51EB800
mov [bx+0x16],di                          ;DD52 897F16
mov word [bx+0x18],es                     ;DD55 8C4718
pop cx                                    ;DD58 59
pop di                                    ;DD59 5F
pop ds                                    ;DD5A 1F
mov ah,0xf                                ;DD5B B40F
stc                                       ;DD5D F9
ret                                       ;DD5E C3
call 0xdf1d                               ;DD5F E8BB01
lds bx,word [cs:0xb8]                     ;DD62 2EC51EB800
mov [bx+0xf],di                           ;DD67 897F0F
mov word [bx+0x11],es                     ;DD6A 8C4711
ret                                       ;DD6D C3
test word [di+0x29],0x2                   ;DD6E F745290200
jz 0xdd91                                 ;DD73 741C
cmp byte [di+0x28],0x2                    ;DD75 807D2802
jz 0xdd91                                 ;DD79 7416
cmp ah,0xf9                               ;DD7B 80FCF9
jnz 0xdd91                                ;DD7E 7511
mov al,0x7                                ;DD80 B007
mov bx,0xe00f                             ;DD82 BB0FE0
mov cx,0x960                              ;DD85 B96009
mov dx,0x102                              ;DD88 BA0201
add sp,0x2                                ;DD8B 83C402
jmp 0xcb12                                ;DD8E E981ED
ret                                       ;DD91 C3
add [bx+si],al                            ;DD92 0000
add [bx+si],al                            ;DD94 0000
add [bx+si],al                            ;DD96 0000
add [bx+si],al                            ;DD98 0000
add [bx+si],al                            ;DD9A 0000
pop word [cs:0x1da7]                      ;DD9C 2E8F06A71D
pop word [cs:0x1da9]                      ;DDA1 2E8F06A91D
pop word [cs:0x1dab]                      ;DDA6 2E8F06AB1D
pushf                                     ;DDAB 9C
call word far [cs:0x1da3]                 ;DDAC 2EFF1EA31D
jc 0xddb8                                 ;DDB1 7205
jmp word far [cs:0x1da7]                  ;DDB3 2EFF2EA71D
pushf                                     ;DDB8 9C
cmp ah,0x6                                ;DDB9 80FC06
jz 0xddc4                                 ;DDBC 7406
popf                                      ;DDBE 9D
jmp word far [cs:0x1da7]                  ;DDBF 2EFF2EA71D
or dl,dl                                  ;DDC4 0AD2
js 0xddbe                                 ;DDC6 78F6
mov word [cs:0x252],0x40                  ;DDC8 2EC70652024000
call 0xddd4                               ;DDCF E80200
jmp 0xddbe                                ;DDD2 EBEA
push bx                                   ;DDD4 53
push dx                                   ;DDD5 52
mov bl,dl                                 ;DDD6 8ADA
mov dx,[cs:0x252]                         ;DDD8 2E8B165202
xor bh,bh                                 ;DDDD 32FF
push ax                                   ;DDDF 50
push ds                                   ;DDE0 1E
push di                                   ;DDE1 57
lds di,word [cs:0x24c]                    ;DDE2 2EC53E4C02
cmp di,0xffffffffffffffff                 ;DDE7 83FFFF
jz 0xddfd                                 ;DDEA 7411
cmp [di+0x4],bl                           ;DDEC 385D04
jnz 0xddf4                                ;DDEF 7503
or [di+0x29],dx                           ;DDF1 095529
mov ax,[di+0x2]                           ;DDF4 8B4502
mov di,[di]                               ;DDF7 8B3D
mov ds,ax                                 ;DDF9 8ED8
jmp 0xdde7                                ;DDFB EBEA
pop di                                    ;DDFD 5F
pop ds                                    ;DDFE 1F
pop ax                                    ;DDFF 58
pop dx                                    ;DE00 5A
pop bx                                    ;DE01 5B
ret                                       ;DE02 C3
test word [di+0x29],0x40                  ;DE03 F745294000
ret                                       ;DE08 C3
and word [di+0x29],0xffbf                 ;DE09 816529BFFF
ret                                       ;DE0E C3
test word [di+0x29],0x2                   ;DE0F F745290200
ret                                       ;DE14 C3
dec si                                    ;DE15 4E
dec di                                    ;DE16 4F
and [bp+0x41],cl                          ;DE17 204E41
dec bp                                    ;DE1A 4D
inc bp                                    ;DE1B 45
and [bx+si],ah                            ;DE1C 2020
and [bx+si],ah                            ;DE1E 2020
add [bp+0x4f],cl                          ;DE20 004E4F
and [bp+0x41],cl                          ;DE23 204E41
dec bp                                    ;DE26 4D
inc bp                                    ;DE27 45
and [bx+si],ah                            ;DE28 2020
and [bx+si],ah                            ;DE2A 2020
add [bp+si+0x50],dl                       ;DE2C 005250
call 0xde0f                               ;DE2F E8DDFF
jz 0xde41                                 ;DE32 740D
push di                                   ;DE34 57
call 0xde4a                               ;DE35 E81200
pop di                                    ;DE38 5F
jc 0xde45                                 ;DE39 720A
call 0xdee5                               ;DE3B E8A700
call 0xde09                               ;DE3E E8C8FF
clc                                       ;DE41 F8
pop ax                                    ;DE42 58
pop dx                                    ;DE43 5A
ret                                       ;DE44 C3
pop dx                                    ;DE45 5A
pop dx                                    ;DE46 5A
ret                                       ;DE47 C3
add [bx+si],al                            ;DE48 0000
push es                                   ;DE4A 06
push dx                                   ;DE4B 52
push cx                                   ;DE4C 51
push bx                                   ;DE4D 53
push ax                                   ;DE4E 50
push ds                                   ;DE4F 1E
push di                                   ;DE50 57
push cs                                   ;DE51 0E
pop es                                    ;DE52 07
push cs                                   ;DE53 0E
pop ds                                    ;DE54 1F
mov di,0x1e32                             ;DE55 BF321E
mov si,0x1e26                             ;DE58 BE261E
mov cx,0xc                                ;DE5B B90C00
rep movsb                                 ;DE5E F3A4
pop di                                    ;DE60 5F
pop ds                                    ;DE61 1F
mov al,[di+0xb]                           ;DE62 8A450B
mov cx,[di+0x11]                          ;DE65 8B4D11
mul cl                                    ;DE68 F6E1
add ax,[di+0x9]                           ;DE6A 034509
mov [cs:0x1e59],ax                        ;DE6D 2EA3591E
mov ax,[di+0xc]                           ;DE71 8B450C
mov cl,0x4                                ;DE74 B104
shr ax,cl                                 ;DE76 D3E8
mov cx,ax                                 ;DE78 8BC8
push cx                                   ;DE7A 51
mov ax,[cs:0x1e59]                        ;DE7B 2EA1591E
mov cx,[di+0x13]                          ;DE7F 8B4D13
xor dx,dx                                 ;DE82 33D2
div cx                                    ;DE84 F7F1
inc dx                                    ;DE86 42
mov cl,dl                                 ;DE87 8ACA
xor dx,dx                                 ;DE89 33D2
div word [di+0x15]                        ;DE8B F77515
mov dh,dl                                 ;DE8E 8AF2
mov ch,al                                 ;DE90 8AE8
call 0xcbcb                               ;DE92 E836ED
jc 0xdee1                                 ;DE95 724A
mov cx,0x10                               ;DE97 B91000
mov al,0x8                                ;DE9A B008
cmp byte [es:bx],0x0                      ;DE9C 26803F00
jz 0xdede                                 ;DEA0 743C
cmp byte [es:bx],0xe5                     ;DEA2 26803FE5
jz 0xdeae                                 ;DEA6 7406
test [es:bx+0xb],al                       ;DEA8 2684470B
jnz 0xdebf                                ;DEAC 7511
add bx,0x20                               ;DEAE 83C320
loop 0xde9c                               ;DEB1 E2E9
pop cx                                    ;DEB3 59
inc word [cs:0x1e59]                      ;DEB4 2EFF06591E
loop 0xde7a                               ;DEB9 E2BF
xor si,si                                 ;DEBB 33F6
jmp 0xded7                                ;DEBD EB18
pop cx                                    ;DEBF 59
mov si,bx                                 ;DEC0 8BF3
push ds                                   ;DEC2 1E
push di                                   ;DEC3 57
push es                                   ;DEC4 06
pop ds                                    ;DEC5 1F
push cs                                   ;DEC6 0E
pop es                                    ;DEC7 07
mov di,0x1e32                             ;DEC8 BF321E
mov cx,0xb                                ;DECB B90B00
rep movsb                                 ;DECE F3A4
xor al,al                                 ;DED0 32C0
stosb                                     ;DED2 AA
xor si,si                                 ;DED3 33F6
pop di                                    ;DED5 5F
pop ds                                    ;DED6 1F
pop ax                                    ;DED7 58
clc                                       ;DED8 F8
pop bx                                    ;DED9 5B
pop cx                                    ;DEDA 59
pop dx                                    ;DEDB 5A
pop es                                    ;DEDC 07
ret                                       ;DEDD C3
pop cx                                    ;DEDE 59
jmp 0xdebb                                ;DEDF EBDA
pop si                                    ;DEE1 5E
pop si                                    ;DEE2 5E
jmp 0xded9                                ;DEE3 EBF4
push ds                                   ;DEE5 1E
push di                                   ;DEE6 57
push es                                   ;DEE7 06
push si                                   ;DEE8 56
push cx                                   ;DEE9 51
call 0xdf1d                               ;DEEA E83000
cld                                       ;DEED FC
rep movsb                                 ;DEEE F3A4
pop cx                                    ;DEF0 59
pop si                                    ;DEF1 5E
pop es                                    ;DEF2 07
pop di                                    ;DEF3 5F
pop ds                                    ;DEF4 1F
ret                                       ;DEF5 C3
push ds                                   ;DEF6 1E
push di                                   ;DEF7 57
push es                                   ;DEF8 06
push cx                                   ;DEF9 51
call 0xdf1d                               ;DEFA E82000
cld                                       ;DEFD FC
repe cmpsb                                ;DEFE F3A6
mov si,0x0                                ;DF00 BE0000
jz 0xdf08                                 ;DF03 7403
mov si,0xffff                             ;DF05 BEFFFF
pop cx                                    ;DF08 59
pop es                                    ;DF09 07
pop di                                    ;DF0A 5F
pop ds                                    ;DF0B 1F
ret                                       ;DF0C C3
push ax                                   ;DF0D 50
xor si,si                                 ;DF0E 33F6
mov al,[cs:0x254]                         ;DF10 2EA05402
cmp al,[di+0x10]                          ;DF14 3A4510
jz 0xdf1a                                 ;DF17 7401
dec si                                    ;DF19 4E
clc                                       ;DF1A F8
pop ax                                    ;DF1B 58
ret                                       ;DF1C C3
push ax                                   ;DF1D 50
push ds                                   ;DF1E 1E
pop es                                    ;DF1F 07
push cs                                   ;DF20 0E
pop ds                                    ;DF21 1F
mov si,0x1e32                             ;DF22 BE321E
add di,0x1c                               ;DF25 83C71C
mov cx,0xc                                ;DF28 B90C00
pop ax                                    ;DF2B 58
ret                                       ;DF2C C3
db 0xff                                   ;DF2D FF
inc word [bx+si]                          ;DF2E FF00
add [bx+si+0x3],dl                        ;DF30 005003
add [bp+si],al                            ;DF33 0002
add [bx+di],ax                            ;DF35 0101
add [bp+si],al                            ;DF37 0002
adc [bx+si],al                            ;DF39 1000
add [bx+si],al                            ;DF3B 0000
clc                                       ;DF3D F8
add [bx+si],ax                            ;DF3E 0100
add [bx+si],al                            ;DF40 0000
add [bx+si],al                            ;DF42 0000
add [bx+si],al                            ;DF44 0000
add [bx+si],al                            ;DF46 0000
add [bp+0x4f],cl                          ;DF48 004E4F
and [bp+0x41],cl                          ;DF4B 204E41
dec bp                                    ;DF4E 4D
inc bp                                    ;DF4F 45
and [bx+si],ah                            ;DF50 2020
and [bx+si],ah                            ;DF52 2020
add [bp+di],al                            ;DF54 0003
and [bx+si],al                            ;DF56 2000
sub [bx+si],al                            ;DF58 2800
add [bx+si],al                            ;DF5A 0000
add [bx+si],al                            ;DF5C 0000
add [bx+si],al                            ;DF5E 0000
add [bx+si],al                            ;DF60 0000
add [bx+si],al                            ;DF62 0000
add [bx+si],al                            ;DF64 0000
add [bx+si],al                            ;DF66 0000
add [bx+si],al                            ;DF68 0000
add [bx+si],al                            ;DF6A 0000
add [bx+si],al                            ;DF6C 0000
add [bx+si],al                            ;DF6E 0000
add [bx+si],al                            ;DF70 0000
add [bx+si],al                            ;DF72 0000
add [bx+si],al                            ;DF74 0000
add [bx+si],al                            ;DF76 0000
add bh,bh                                 ;DF78 00FF
add [bx+si],ax                            ;DF7A 0100
add [bx+si],al                            ;DF7C 0000
db 0xff                                   ;DF7E FF
inc word [bx+si]                          ;DF7F FF00
add [bx+si+0x3],dl                        ;DF81 005003
add [bp+si],al                            ;DF84 0002
add [bx+di],ax                            ;DF86 0101
add [bp+si],al                            ;DF88 0002
adc [bx+si],al                            ;DF8A 1000
add [bx+si],al                            ;DF8C 0000
clc                                       ;DF8E F8
add [bx+si],ax                            ;DF8F 0100
add [bx+si],al                            ;DF91 0000
add [bx+si],al                            ;DF93 0000
add [bx+si],al                            ;DF95 0000
add [bx+si],al                            ;DF97 0000
add [bp+0x4f],cl                          ;DF99 004E4F
and [bp+0x41],cl                          ;DF9C 204E41
dec bp                                    ;DF9F 4D
inc bp                                    ;DFA0 45
and [bx+si],ah                            ;DFA1 2020
and [bx+si],ah                            ;DFA3 2020
add [bp+di],al                            ;DFA5 0003
and [bx+si],al                            ;DFA7 2000
sub [bx+si],al                            ;DFA9 2800
add [bx+si],al                            ;DFAB 0000
add [bx+si],al                            ;DFAD 0000
add [bx+si],al                            ;DFAF 0000
add [bx+si],al                            ;DFB1 0000
add [bx+si],al                            ;DFB3 0000
add [bx+si],al                            ;DFB5 0000
add [bx+si],al                            ;DFB7 0000
add [bx+si],al                            ;DFB9 0000
add [bx+si],al                            ;DFBB 0000
add [bx+si],al                            ;DFBD 0000
add [bx+si],al                            ;DFBF 0000
add [bx+si],al                            ;DFC1 0000
add [bx+si],al                            ;DFC3 0000
add [bx+si],al                            ;DFC5 0000
add [bx+si],al                            ;DFC7 0000
add bh,bh                                 ;DFC9 00FF
add [bx+si],ax                            ;DFCB 0100
add [bx+si],al                            ;DFCD 0000
db 0xff                                   ;DFCF FF
inc word [bx+si]                          ;DFD0 FF00
add [bx+si+0x3],dl                        ;DFD2 005003
add [bp+si],al                            ;DFD5 0002
add [bx+di],ax                            ;DFD7 0101
add [bp+si],al                            ;DFD9 0002
adc [bx+si],al                            ;DFDB 1000
add [bx+si],al                            ;DFDD 0000
clc                                       ;DFDF F8
add [bx+si],ax                            ;DFE0 0100
add [bx+si],al                            ;DFE2 0000
add [bx+si],al                            ;DFE4 0000
add [bx+si],al                            ;DFE6 0000
add [bx+si],al                            ;DFE8 0000
add [bp+0x4f],cl                          ;DFEA 004E4F
and [bp+0x41],cl                          ;DFED 204E41
dec bp                                    ;DFF0 4D
inc bp                                    ;DFF1 45
and [bx+si],ah                            ;DFF2 2020
and [bx+si],ah                            ;DFF4 2020
add [bp+di],al                            ;DFF6 0003
and [bx+si],al                            ;DFF8 2000
sub [bx+si],al                            ;DFFA 2800
add [bx+si],al                            ;DFFC 0000
add [bx+si],al                            ;DFFE 0000
add [bx+si],al                            ;E000 0000
add [bx+si],al                            ;E002 0000
add [bx+si],al                            ;E004 0000
add [bx+si],al                            ;E006 0000
add [bx+si],al                            ;E008 0000
add [bx+si],al                            ;E00A 0000
add [bx+si],al                            ;E00C 0000
add [bx+si],al                            ;E00E 0000
add [bx+si],al                            ;E010 0000
add [bx+si],al                            ;E012 0000
add [bx+si],al                            ;E014 0000
add [bx+si],al                            ;E016 0000
add [bx+si],al                            ;E018 0000
add bh,bh                                 ;E01A 00FF
add [bx+si],ax                            ;E01C 0100
add [bx+si],al                            ;E01E 0000
db 0xff                                   ;E020 FF
inc word [bx+si]                          ;E021 FF00
add [bx+si+0x3],dl                        ;E023 005003
add [bp+si],al                            ;E026 0002
add [bx+di],ax                            ;E028 0101
add [bp+si],al                            ;E02A 0002
adc [bx+si],al                            ;E02C 1000
add [bx+si],al                            ;E02E 0000
clc                                       ;E030 F8
add [bx+si],ax                            ;E031 0100
add [bx+si],al                            ;E033 0000
add [bx+si],al                            ;E035 0000
add [bx+si],al                            ;E037 0000
add [bx+si],al                            ;E039 0000
add [bp+0x4f],cl                          ;E03B 004E4F
and [bp+0x41],cl                          ;E03E 204E41
dec bp                                    ;E041 4D
inc bp                                    ;E042 45
and [bx+si],ah                            ;E043 2020
and [bx+si],ah                            ;E045 2020
add [bp+di],al                            ;E047 0003
and [bx+si],al                            ;E049 2000
sub [bx+si],al                            ;E04B 2800
add [bx+si],al                            ;E04D 0000
add [bx+si],al                            ;E04F 0000
add [bx+si],al                            ;E051 0000
add [bx+si],al                            ;E053 0000
add [bx+si],al                            ;E055 0000
add [bx+si],al                            ;E057 0000
add [bx+si],al                            ;E059 0000
add [bx+si],al                            ;E05B 0000
add [bx+si],al                            ;E05D 0000
add [bx+si],al                            ;E05F 0000
add [bx+si],al                            ;E061 0000
add [bx+si],al                            ;E063 0000
add [bx+si],al                            ;E065 0000
add [bx+si],al                            ;E067 0000
add [bx+si],al                            ;E069 0000
add bh,bh                                 ;E06B 00FF
add [bx+si],ax                            ;E06D 0100
add [bx+si],al                            ;E06F 0000
db 0xff                                   ;E071 FF
inc word [bx+si]                          ;E072 FF00
add [bx+si+0x3],dl                        ;E074 005003
add [bp+si],al                            ;E077 0002
add [bx+di],ax                            ;E079 0101
add [bp+si],al                            ;E07B 0002
adc [bx+si],al                            ;E07D 1000
add [bx+si],al                            ;E07F 0000
clc                                       ;E081 F8
add [bx+si],ax                            ;E082 0100
add [bx+si],al                            ;E084 0000
add [bx+si],al                            ;E086 0000
add [bx+si],al                            ;E088 0000
add [bx+si],al                            ;E08A 0000
add [bp+0x4f],cl                          ;E08C 004E4F
and [bp+0x41],cl                          ;E08F 204E41
dec bp                                    ;E092 4D
inc bp                                    ;E093 45
and [bx+si],ah                            ;E094 2020
and [bx+si],ah                            ;E096 2020
add [bp+di],al                            ;E098 0003
and [bx+si],al                            ;E09A 2000
sub [bx+si],al                            ;E09C 2800
add [bx+si],al                            ;E09E 0000
add [bx+si],al                            ;E0A0 0000
add [bx+si],al                            ;E0A2 0000
add [bx+si],al                            ;E0A4 0000
add [bx+si],al                            ;E0A6 0000
add [bx+si],al                            ;E0A8 0000
add [bx+si],al                            ;E0AA 0000
add [bx+si],al                            ;E0AC 0000
add [bx+si],al                            ;E0AE 0000
add [bx+si],al                            ;E0B0 0000
add [bx+si],al                            ;E0B2 0000
add [bx+si],al                            ;E0B4 0000
add [bx+si],al                            ;E0B6 0000
add [bx+si],al                            ;E0B8 0000
add [bx+si],al                            ;E0BA 0000
add bh,bh                                 ;E0BC 00FF
add [bx+si],ax                            ;E0BE 0100
add [bx+si],al                            ;E0C0 0000
db 0xff                                   ;E0C2 FF
inc word [bx+si]                          ;E0C3 FF00
add [bx+si+0x3],dl                        ;E0C5 005003
add [bp+si],al                            ;E0C8 0002
add [bx+di],ax                            ;E0CA 0101
add [bp+si],al                            ;E0CC 0002
adc [bx+si],al                            ;E0CE 1000
add [bx+si],al                            ;E0D0 0000
clc                                       ;E0D2 F8
add [bx+si],ax                            ;E0D3 0100
add [bx+si],al                            ;E0D5 0000
add [bx+si],al                            ;E0D7 0000
add [bx+si],al                            ;E0D9 0000
add [bx+si],al                            ;E0DB 0000
add [bp+0x4f],cl                          ;E0DD 004E4F
and [bp+0x41],cl                          ;E0E0 204E41
dec bp                                    ;E0E3 4D
inc bp                                    ;E0E4 45
and [bx+si],ah                            ;E0E5 2020
and [bx+si],ah                            ;E0E7 2020
add [bp+di],al                            ;E0E9 0003
and [bx+si],al                            ;E0EB 2000
sub [bx+si],al                            ;E0ED 2800
add [bx+si],al                            ;E0EF 0000
add [bx+si],al                            ;E0F1 0000
add [bx+si],al                            ;E0F3 0000
add [bx+si],al                            ;E0F5 0000
add [bx+si],al                            ;E0F7 0000
add [bx+si],al                            ;E0F9 0000
add [bx+si],al                            ;E0FB 0000
add [bx+si],al                            ;E0FD 0000
add [bx+si],al                            ;E0FF 0000
add [bx+si],al                            ;E101 0000
add [bx+si],al                            ;E103 0000
add [bx+si],al                            ;E105 0000
add [bx+si],al                            ;E107 0000
add [bx+si],al                            ;E109 0000
add [bx+si],al                            ;E10B 0000
add bh,bh                                 ;E10D 00FF
add [bx+si],ax                            ;E10F 0100
add [bx+si],al                            ;E111 0000
db 0xff                                   ;E113 FF
inc word [bx+si]                          ;E114 FF00
add [bx+si+0x3],dl                        ;E116 005003
add [bp+si],al                            ;E119 0002
add [bx+di],ax                            ;E11B 0101
add [bp+si],al                            ;E11D 0002
adc [bx+si],al                            ;E11F 1000
add [bx+si],al                            ;E121 0000
clc                                       ;E123 F8
add [bx+si],ax                            ;E124 0100
add [bx+si],al                            ;E126 0000
add [bx+si],al                            ;E128 0000
add [bx+si],al                            ;E12A 0000
add [bx+si],al                            ;E12C 0000
add [bp+0x4f],cl                          ;E12E 004E4F
and [bp+0x41],cl                          ;E131 204E41
dec bp                                    ;E134 4D
inc bp                                    ;E135 45
and [bx+si],ah                            ;E136 2020
and [bx+si],ah                            ;E138 2020
add [bp+di],al                            ;E13A 0003
and [bx+si],al                            ;E13C 2000
sub [bx+si],al                            ;E13E 2800
add [bx+si],al                            ;E140 0000
add [bx+si],al                            ;E142 0000
add [bx+si],al                            ;E144 0000
add [bx+si],al                            ;E146 0000
add [bx+si],al                            ;E148 0000
add [bx+si],al                            ;E14A 0000
add [bx+si],al                            ;E14C 0000
add [bx+si],al                            ;E14E 0000
add [bx+si],al                            ;E150 0000
add [bx+si],al                            ;E152 0000
add [bx+si],al                            ;E154 0000
add [bx+si],al                            ;E156 0000
add [bx+si],al                            ;E158 0000
add [bx+si],al                            ;E15A 0000
add [bx+si],al                            ;E15C 0000
add bh,bh                                 ;E15E 00FF
add [bx+si],ax                            ;E160 0100
add [bx+si],al                            ;E162 0000
db 0xff                                   ;E164 FF
inc word [bx+si]                          ;E165 FF00
add [bx+si+0x3],dl                        ;E167 005003
add [bp+si],al                            ;E16A 0002
add [bx+di],ax                            ;E16C 0101
add [bp+si],al                            ;E16E 0002
adc [bx+si],al                            ;E170 1000
add [bx+si],al                            ;E172 0000
clc                                       ;E174 F8
add [bx+si],ax                            ;E175 0100
add [bx+si],al                            ;E177 0000
add [bx+si],al                            ;E179 0000
add [bx+si],al                            ;E17B 0000
add [bx+si],al                            ;E17D 0000
add [bp+0x4f],cl                          ;E17F 004E4F
and [bp+0x41],cl                          ;E182 204E41
dec bp                                    ;E185 4D
inc bp                                    ;E186 45
and [bx+si],ah                            ;E187 2020
and [bx+si],ah                            ;E189 2020
add [bp+di],al                            ;E18B 0003
and [bx+si],al                            ;E18D 2000
sub [bx+si],al                            ;E18F 2800
add [bx+si],al                            ;E191 0000
add [bx+si],al                            ;E193 0000
add [bx+si],al                            ;E195 0000
add [bx+si],al                            ;E197 0000
add [bx+si],al                            ;E199 0000
add [bx+si],al                            ;E19B 0000
add [bx+si],al                            ;E19D 0000
add [bx+si],al                            ;E19F 0000
add [bx+si],al                            ;E1A1 0000
add [bx+si],al                            ;E1A3 0000
add [bx+si],al                            ;E1A5 0000
add [bx+si],al                            ;E1A7 0000
add [bx+si],al                            ;E1A9 0000
add [bx+si],al                            ;E1AB 0000
add [bx+si],al                            ;E1AD 0000
add bh,bh                                 ;E1AF 00FF
add [bx+si],ax                            ;E1B1 0100
add [bx+si],al                            ;E1B3 0000
db 0xff                                   ;E1B5 FF
inc word [bx+si]                          ;E1B6 FF00
add [bx+si+0x3],dl                        ;E1B8 005003
add [bp+si],al                            ;E1BB 0002
add [bx+di],ax                            ;E1BD 0101
add [bp+si],al                            ;E1BF 0002
adc [bx+si],al                            ;E1C1 1000
add [bx+si],al                            ;E1C3 0000
clc                                       ;E1C5 F8
add [bx+si],ax                            ;E1C6 0100
add [bx+si],al                            ;E1C8 0000
add [bx+si],al                            ;E1CA 0000
add [bx+si],al                            ;E1CC 0000
add [bx+si],al                            ;E1CE 0000
add [bp+0x4f],cl                          ;E1D0 004E4F
and [bp+0x41],cl                          ;E1D3 204E41
dec bp                                    ;E1D6 4D
inc bp                                    ;E1D7 45
and [bx+si],ah                            ;E1D8 2020
and [bx+si],ah                            ;E1DA 2020
add [bp+di],al                            ;E1DC 0003
and [bx+si],al                            ;E1DE 2000
sub [bx+si],al                            ;E1E0 2800
add [bx+si],al                            ;E1E2 0000
add [bx+si],al                            ;E1E4 0000
add [bx+si],al                            ;E1E6 0000
add [bx+si],al                            ;E1E8 0000
add [bx+si],al                            ;E1EA 0000
add [bx+si],al                            ;E1EC 0000
add [bx+si],al                            ;E1EE 0000
add [bx+si],al                            ;E1F0 0000
add [bx+si],al                            ;E1F2 0000
add [bx+si],al                            ;E1F4 0000
add [bx+si],al                            ;E1F6 0000
add [bx+si],al                            ;E1F8 0000
add [bx+si],al                            ;E1FA 0000
add [bx+si],al                            ;E1FC 0000
add [bx+si],al                            ;E1FE 0000
add bh,bh                                 ;E200 00FF
add [bx+si],ax                            ;E202 0100
add [bx+si],al                            ;E204 0000
db 0xff                                   ;E206 FF
inc word [bx+si]                          ;E207 FF00
add [bx+si+0x3],dl                        ;E209 005003
add [bp+si],al                            ;E20C 0002
add [bx+di],ax                            ;E20E 0101
add [bp+si],al                            ;E210 0002
adc [bx+si],al                            ;E212 1000
add [bx+si],al                            ;E214 0000
clc                                       ;E216 F8
add [bx+si],ax                            ;E217 0100
add [bx+si],al                            ;E219 0000
add [bx+si],al                            ;E21B 0000
add [bx+si],al                            ;E21D 0000
add [bx+si],al                            ;E21F 0000
add [bp+0x4f],cl                          ;E221 004E4F
and [bp+0x41],cl                          ;E224 204E41
dec bp                                    ;E227 4D
inc bp                                    ;E228 45
and [bx+si],ah                            ;E229 2020
and [bx+si],ah                            ;E22B 2020
add [bp+di],al                            ;E22D 0003
and [bx+si],al                            ;E22F 2000
sub [bx+si],al                            ;E231 2800
add [bx+si],al                            ;E233 0000
add [bx+si],al                            ;E235 0000
add [bx+si],al                            ;E237 0000
add [bx+si],al                            ;E239 0000
add [bx+si],al                            ;E23B 0000
add [bx+si],al                            ;E23D 0000
add [bx+si],al                            ;E23F 0000
add [bx+si],al                            ;E241 0000
add [bx+si],al                            ;E243 0000
add [bx+si],al                            ;E245 0000
add [bx+si],al                            ;E247 0000
add [bx+si],al                            ;E249 0000
add [bx+si],al                            ;E24B 0000
add [bx+si],al                            ;E24D 0000
add [bx+si],al                            ;E24F 0000
add bh,bh                                 ;E251 00FF
add [bx+si],ax                            ;E253 0100
add [bx+si],al                            ;E255 0000
db 0xff                                   ;E257 FF
inc word [bx+si]                          ;E258 FF00
add [bx+si+0x3],dl                        ;E25A 005003
add [bp+si],al                            ;E25D 0002
add [bx+di],ax                            ;E25F 0101
add [bp+si],al                            ;E261 0002
adc [bx+si],al                            ;E263 1000
add [bx+si],al                            ;E265 0000
clc                                       ;E267 F8
add [bx+si],ax                            ;E268 0100
add [bx+si],al                            ;E26A 0000
add [bx+si],al                            ;E26C 0000
add [bx+si],al                            ;E26E 0000
add [bx+si],al                            ;E270 0000
add [bp+0x4f],cl                          ;E272 004E4F
and [bp+0x41],cl                          ;E275 204E41
dec bp                                    ;E278 4D
inc bp                                    ;E279 45
and [bx+si],ah                            ;E27A 2020
and [bx+si],ah                            ;E27C 2020
add [bp+di],al                            ;E27E 0003
and [bx+si],al                            ;E280 2000
sub [bx+si],al                            ;E282 2800
add [bx+si],al                            ;E284 0000
add [bx+si],al                            ;E286 0000
add [bx+si],al                            ;E288 0000
add [bx+si],al                            ;E28A 0000
add [bx+si],al                            ;E28C 0000
add [bx+si],al                            ;E28E 0000
add [bx+si],al                            ;E290 0000
add [bx+si],al                            ;E292 0000
add [bx+si],al                            ;E294 0000
add [bx+si],al                            ;E296 0000
add [bx+si],al                            ;E298 0000
add [bx+si],al                            ;E29A 0000
add [bx+si],al                            ;E29C 0000
add [bx+si],al                            ;E29E 0000
add [bx+si],al                            ;E2A0 0000
add bh,bh                                 ;E2A2 00FF
add [bx+si],ax                            ;E2A4 0100
add [bx+si],al                            ;E2A6 0000
db 0xff                                   ;E2A8 FF
inc word [bx+si]                          ;E2A9 FF00
add [bx+si+0x3],dl                        ;E2AB 005003
add [bp+si],al                            ;E2AE 0002
add [bx+di],ax                            ;E2B0 0101
add [bp+si],al                            ;E2B2 0002
adc [bx+si],al                            ;E2B4 1000
add [bx+si],al                            ;E2B6 0000
clc                                       ;E2B8 F8
add [bx+si],ax                            ;E2B9 0100
add [bx+si],al                            ;E2BB 0000
add [bx+si],al                            ;E2BD 0000
add [bx+si],al                            ;E2BF 0000
add [bx+si],al                            ;E2C1 0000
add [bp+0x4f],cl                          ;E2C3 004E4F
and [bp+0x41],cl                          ;E2C6 204E41
dec bp                                    ;E2C9 4D
inc bp                                    ;E2CA 45
and [bx+si],ah                            ;E2CB 2020
and [bx+si],ah                            ;E2CD 2020
add [bp+di],al                            ;E2CF 0003
and [bx+si],al                            ;E2D1 2000
sub [bx+si],al                            ;E2D3 2800
add [bx+si],al                            ;E2D5 0000
add [bx+si],al                            ;E2D7 0000
add [bx+si],al                            ;E2D9 0000
add [bx+si],al                            ;E2DB 0000
add [bx+si],al                            ;E2DD 0000
add [bx+si],al                            ;E2DF 0000
add [bx+si],al                            ;E2E1 0000
add [bx+si],al                            ;E2E3 0000
add [bx+si],al                            ;E2E5 0000
add [bx+si],al                            ;E2E7 0000
add [bx+si],al                            ;E2E9 0000
add [bx+si],al                            ;E2EB 0000
add [bx+si],al                            ;E2ED 0000
add [bx+si],al                            ;E2EF 0000
add [bx+si],al                            ;E2F1 0000
add bh,bh                                 ;E2F3 00FF
add [bx+si],ax                            ;E2F5 0100
add [bx+si],al                            ;E2F7 0000
db 0xff                                   ;E2F9 FF
inc word [bx+si]                          ;E2FA FF00
add [bx+si+0x3],dl                        ;E2FC 005003
add [bp+si],al                            ;E2FF 0002
add [bx+di],ax                            ;E301 0101
add [bp+si],al                            ;E303 0002
adc [bx+si],al                            ;E305 1000
add [bx+si],al                            ;E307 0000
clc                                       ;E309 F8
add [bx+si],ax                            ;E30A 0100
add [bx+si],al                            ;E30C 0000
add [bx+si],al                            ;E30E 0000
add [bx+si],al                            ;E310 0000
add [bx+si],al                            ;E312 0000
add [bp+0x4f],cl                          ;E314 004E4F
and [bp+0x41],cl                          ;E317 204E41
dec bp                                    ;E31A 4D
inc bp                                    ;E31B 45
and [bx+si],ah                            ;E31C 2020
and [bx+si],ah                            ;E31E 2020
add [bp+di],al                            ;E320 0003
and [bx+si],al                            ;E322 2000
sub [bx+si],al                            ;E324 2800
add [bx+si],al                            ;E326 0000
add [bx+si],al                            ;E328 0000
add [bx+si],al                            ;E32A 0000
add [bx+si],al                            ;E32C 0000
add [bx+si],al                            ;E32E 0000
add [bx+si],al                            ;E330 0000
add [bx+si],al                            ;E332 0000
add [bx+si],al                            ;E334 0000
add [bx+si],al                            ;E336 0000
add [bx+si],al                            ;E338 0000
add [bx+si],al                            ;E33A 0000
add [bx+si],al                            ;E33C 0000
add [bx+si],al                            ;E33E 0000
add [bx+si],al                            ;E340 0000
add [bx+si],al                            ;E342 0000
add bh,bh                                 ;E344 00FF
add [bx+si],ax                            ;E346 0100
add [bx+si],al                            ;E348 0000
db 0xff                                   ;E34A FF
inc word [bx+si]                          ;E34B FF00
add [bx+si+0x3],dl                        ;E34D 005003
add [bp+si],al                            ;E350 0002
add [bx+di],ax                            ;E352 0101
add [bp+si],al                            ;E354 0002
adc [bx+si],al                            ;E356 1000
add [bx+si],al                            ;E358 0000
clc                                       ;E35A F8
add [bx+si],ax                            ;E35B 0100
add [bx+si],al                            ;E35D 0000
add [bx+si],al                            ;E35F 0000
add [bx+si],al                            ;E361 0000
add [bx+si],al                            ;E363 0000
add [bp+0x4f],cl                          ;E365 004E4F
and [bp+0x41],cl                          ;E368 204E41
dec bp                                    ;E36B 4D
inc bp                                    ;E36C 45
and [bx+si],ah                            ;E36D 2020
and [bx+si],ah                            ;E36F 2020
add [bp+di],al                            ;E371 0003
and [bx+si],al                            ;E373 2000
sub [bx+si],al                            ;E375 2800
add [bx+si],al                            ;E377 0000
add [bx+si],al                            ;E379 0000
add [bx+si],al                            ;E37B 0000
add [bx+si],al                            ;E37D 0000
add [bx+si],al                            ;E37F 0000
add [bx+si],al                            ;E381 0000
add [bx+si],al                            ;E383 0000
add [bx+si],al                            ;E385 0000
add [bx+si],al                            ;E387 0000
add [bx+si],al                            ;E389 0000
add [bx+si],al                            ;E38B 0000
add [bx+si],al                            ;E38D 0000
add [bx+si],al                            ;E38F 0000
add [bx+si],al                            ;E391 0000
add [bx+si],al                            ;E393 0000
add bh,bh                                 ;E395 00FF
add [bx+si],ax                            ;E397 0100
add [bx+si],al                            ;E399 0000
db 0xff                                   ;E39B FF
inc word [bx+si]                          ;E39C FF00
add [bx+si+0x3],dl                        ;E39E 005003
add [bp+si],al                            ;E3A1 0002
add [bx+di],ax                            ;E3A3 0101
add [bp+si],al                            ;E3A5 0002
adc [bx+si],al                            ;E3A7 1000
add [bx+si],al                            ;E3A9 0000
clc                                       ;E3AB F8
add [bx+si],ax                            ;E3AC 0100
add [bx+si],al                            ;E3AE 0000
add [bx+si],al                            ;E3B0 0000
add [bx+si],al                            ;E3B2 0000
add [bx+si],al                            ;E3B4 0000
add [bp+0x4f],cl                          ;E3B6 004E4F
and [bp+0x41],cl                          ;E3B9 204E41
dec bp                                    ;E3BC 4D
inc bp                                    ;E3BD 45
and [bx+si],ah                            ;E3BE 2020
and [bx+si],ah                            ;E3C0 2020
add [bp+di],al                            ;E3C2 0003
and [bx+si],al                            ;E3C4 2000
sub [bx+si],al                            ;E3C6 2800
add [bx+si],al                            ;E3C8 0000
add [bx+si],al                            ;E3CA 0000
add [bx+si],al                            ;E3CC 0000
add [bx+si],al                            ;E3CE 0000
add [bx+si],al                            ;E3D0 0000
add [bx+si],al                            ;E3D2 0000
add [bx+si],al                            ;E3D4 0000
add [bx+si],al                            ;E3D6 0000
add [bx+si],al                            ;E3D8 0000
add [bx+si],al                            ;E3DA 0000
add [bx+si],al                            ;E3DC 0000
add [bx+si],al                            ;E3DE 0000
add [bx+si],al                            ;E3E0 0000
add [bx+si],al                            ;E3E2 0000
add [bx+si],al                            ;E3E4 0000
add bh,bh                                 ;E3E6 00FF
add [bx+si],ax                            ;E3E8 0100
add [bx+si],al                            ;E3EA 0000
db 0xff                                   ;E3EC FF
inc word [bx+si]                          ;E3ED FF00
add [bx+si+0x3],dl                        ;E3EF 005003
add [bp+si],al                            ;E3F2 0002
add [bx+di],ax                            ;E3F4 0101
add [bp+si],al                            ;E3F6 0002
adc [bx+si],al                            ;E3F8 1000
add [bx+si],al                            ;E3FA 0000
clc                                       ;E3FC F8
add [bx+si],ax                            ;E3FD 0100
add [bx+si],al                            ;E3FF 0000
add [bx+si],al                            ;E401 0000
add [bx+si],al                            ;E403 0000
add [bx+si],al                            ;E405 0000
add [bp+0x4f],cl                          ;E407 004E4F
and [bp+0x41],cl                          ;E40A 204E41
dec bp                                    ;E40D 4D
inc bp                                    ;E40E 45
and [bx+si],ah                            ;E40F 2020
and [bx+si],ah                            ;E411 2020
add [bp+di],al                            ;E413 0003
and [bx+si],al                            ;E415 2000
sub [bx+si],al                            ;E417 2800
add [bx+si],al                            ;E419 0000
add [bx+si],al                            ;E41B 0000
add [bx+si],al                            ;E41D 0000
add [bx+si],al                            ;E41F 0000
add [bx+si],al                            ;E421 0000
add [bx+si],al                            ;E423 0000
add [bx+si],al                            ;E425 0000
add [bx+si],al                            ;E427 0000
add [bx+si],al                            ;E429 0000
add [bx+si],al                            ;E42B 0000
add [bx+si],al                            ;E42D 0000
add [bx+si],al                            ;E42F 0000
add [bx+si],al                            ;E431 0000
add [bx+si],al                            ;E433 0000
add [bx+si],al                            ;E435 0000
add bh,bh                                 ;E437 00FF
add [bx+si],ax                            ;E439 0100
add [bx+si],al                            ;E43B 0000
db 0xff                                   ;E43D FF
inc word [bx+si]                          ;E43E FF00
add [bx+si+0x3],dl                        ;E440 005003
add [bp+si],al                            ;E443 0002
add [bx+di],ax                            ;E445 0101
add [bp+si],al                            ;E447 0002
adc [bx+si],al                            ;E449 1000
add [bx+si],al                            ;E44B 0000
clc                                       ;E44D F8
add [bx+si],ax                            ;E44E 0100
add [bx+si],al                            ;E450 0000
add [bx+si],al                            ;E452 0000
add [bx+si],al                            ;E454 0000
add [bx+si],al                            ;E456 0000
add [bp+0x4f],cl                          ;E458 004E4F
and [bp+0x41],cl                          ;E45B 204E41
dec bp                                    ;E45E 4D
inc bp                                    ;E45F 45
and [bx+si],ah                            ;E460 2020
and [bx+si],ah                            ;E462 2020
add [bp+di],al                            ;E464 0003
and [bx+si],al                            ;E466 2000
sub [bx+si],al                            ;E468 2800
add [bx+si],al                            ;E46A 0000
add [bx+si],al                            ;E46C 0000
add [bx+si],al                            ;E46E 0000
add [bx+si],al                            ;E470 0000
add [bx+si],al                            ;E472 0000
add [bx+si],al                            ;E474 0000
add [bx+si],al                            ;E476 0000
add [bx+si],al                            ;E478 0000
add [bx+si],al                            ;E47A 0000
add [bx+si],al                            ;E47C 0000
add [bx+si],al                            ;E47E 0000
add [bx+si],al                            ;E480 0000
add [bx+si],al                            ;E482 0000
add [bx+si],al                            ;E484 0000
add [bx+si],al                            ;E486 0000
add bh,bh                                 ;E488 00FF
add [bx+si],ax                            ;E48A 0100
add [bx+si],al                            ;E48C 0000
db 0xff                                   ;E48E FF
inc word [bx+si]                          ;E48F FF00
add [bx+si+0x3],dl                        ;E491 005003
add [bp+si],al                            ;E494 0002
add [bx+di],ax                            ;E496 0101
add [bp+si],al                            ;E498 0002
adc [bx+si],al                            ;E49A 1000
add [bx+si],al                            ;E49C 0000
clc                                       ;E49E F8
add [bx+si],ax                            ;E49F 0100
add [bx+si],al                            ;E4A1 0000
add [bx+si],al                            ;E4A3 0000
add [bx+si],al                            ;E4A5 0000
add [bx+si],al                            ;E4A7 0000
add [bp+0x4f],cl                          ;E4A9 004E4F
and [bp+0x41],cl                          ;E4AC 204E41
dec bp                                    ;E4AF 4D
inc bp                                    ;E4B0 45
and [bx+si],ah                            ;E4B1 2020
and [bx+si],ah                            ;E4B3 2020
add [bp+di],al                            ;E4B5 0003
and [bx+si],al                            ;E4B7 2000
sub [bx+si],al                            ;E4B9 2800
add [bx+si],al                            ;E4BB 0000
add [bx+si],al                            ;E4BD 0000
add [bx+si],al                            ;E4BF 0000
add [bx+si],al                            ;E4C1 0000
add [bx+si],al                            ;E4C3 0000
add [bx+si],al                            ;E4C5 0000
add [bx+si],al                            ;E4C7 0000
add [bx+si],al                            ;E4C9 0000
add [bx+si],al                            ;E4CB 0000
add [bx+si],al                            ;E4CD 0000
add [bx+si],al                            ;E4CF 0000
add [bx+si],al                            ;E4D1 0000
add [bx+si],al                            ;E4D3 0000
add [bx+si],al                            ;E4D5 0000
add [bx+si],al                            ;E4D7 0000
add bh,bh                                 ;E4D9 00FF
add [bx+si],ax                            ;E4DB 0100
add [bx+si],al                            ;E4DD 0000
db 0xff                                   ;E4DF FF
inc word [bx+si]                          ;E4E0 FF00
add [bx+si+0x3],dl                        ;E4E2 005003
add [bp+si],al                            ;E4E5 0002
add [bx+di],ax                            ;E4E7 0101
add [bp+si],al                            ;E4E9 0002
adc [bx+si],al                            ;E4EB 1000
add [bx+si],al                            ;E4ED 0000
clc                                       ;E4EF F8
add [bx+si],ax                            ;E4F0 0100
add [bx+si],al                            ;E4F2 0000
add [bx+si],al                            ;E4F4 0000
add [bx+si],al                            ;E4F6 0000
add [bx+si],al                            ;E4F8 0000
add [bp+0x4f],cl                          ;E4FA 004E4F
and [bp+0x41],cl                          ;E4FD 204E41
dec bp                                    ;E500 4D
inc bp                                    ;E501 45
and [bx+si],ah                            ;E502 2020
and [bx+si],ah                            ;E504 2020
add [bp+di],al                            ;E506 0003
and [bx+si],al                            ;E508 2000
sub [bx+si],al                            ;E50A 2800
add [bx+si],al                            ;E50C 0000
add [bx+si],al                            ;E50E 0000
add [bx+si],al                            ;E510 0000
add [bx+si],al                            ;E512 0000
add [bx+si],al                            ;E514 0000
add [bx+si],al                            ;E516 0000
add [bx+si],al                            ;E518 0000
add [bx+si],al                            ;E51A 0000
add [bx+si],al                            ;E51C 0000
add [bx+si],al                            ;E51E 0000
add [bx+si],al                            ;E520 0000
add [bx+si],al                            ;E522 0000
add [bx+si],al                            ;E524 0000
add [bx+si],al                            ;E526 0000
add [bx+si],al                            ;E528 0000
add bh,bh                                 ;E52A 00FF
add [bx+si],ax                            ;E52C 0100
add [bx+si],al                            ;E52E 0000
db 0xff                                   ;E530 FF
inc word [bx+si]                          ;E531 FF00
add [bx+si+0x3],dl                        ;E533 005003
add [bp+si],al                            ;E536 0002
add [bx+di],ax                            ;E538 0101
add [bp+si],al                            ;E53A 0002
adc [bx+si],al                            ;E53C 1000
add [bx+si],al                            ;E53E 0000
clc                                       ;E540 F8
add [bx+si],ax                            ;E541 0100
add [bx+si],al                            ;E543 0000
add [bx+si],al                            ;E545 0000
add [bx+si],al                            ;E547 0000
add [bx+si],al                            ;E549 0000
add [bp+0x4f],cl                          ;E54B 004E4F
and [bp+0x41],cl                          ;E54E 204E41
dec bp                                    ;E551 4D
inc bp                                    ;E552 45
and [bx+si],ah                            ;E553 2020
and [bx+si],ah                            ;E555 2020
add [bp+di],al                            ;E557 0003
and [bx+si],al                            ;E559 2000
sub [bx+si],al                            ;E55B 2800
add [bx+si],al                            ;E55D 0000
add [bx+si],al                            ;E55F 0000
add [bx+si],al                            ;E561 0000
add [bx+si],al                            ;E563 0000
add [bx+si],al                            ;E565 0000
add [bx+si],al                            ;E567 0000
add [bx+si],al                            ;E569 0000
add [bx+si],al                            ;E56B 0000
add [bx+si],al                            ;E56D 0000
add [bx+si],al                            ;E56F 0000
add [bx+si],al                            ;E571 0000
add [bx+si],al                            ;E573 0000
add [bx+si],al                            ;E575 0000
add [bx+si],al                            ;E577 0000
add [bx+si],al                            ;E579 0000
add bh,bh                                 ;E57B 00FF
add [bx+si],ax                            ;E57D 0100
add [bx+si],al                            ;E57F 0000
db 0xff                                   ;E581 FF
inc word [bx+si]                          ;E582 FF00
add [bx+si+0x3],dl                        ;E584 005003
add [bp+si],al                            ;E587 0002
add [bx+di],ax                            ;E589 0101
add [bp+si],al                            ;E58B 0002
adc [bx+si],al                            ;E58D 1000
add [bx+si],al                            ;E58F 0000
clc                                       ;E591 F8
add [bx+si],ax                            ;E592 0100
add [bx+si],al                            ;E594 0000
add [bx+si],al                            ;E596 0000
add [bx+si],al                            ;E598 0000
add [bx+si],al                            ;E59A 0000
add [bp+0x4f],cl                          ;E59C 004E4F
and [bp+0x41],cl                          ;E59F 204E41
dec bp                                    ;E5A2 4D
inc bp                                    ;E5A3 45
and [bx+si],ah                            ;E5A4 2020
and [bx+si],ah                            ;E5A6 2020
add [bp+di],al                            ;E5A8 0003
and [bx+si],al                            ;E5AA 2000
sub [bx+si],al                            ;E5AC 2800
add [bx+si],al                            ;E5AE 0000
add [bx+si],al                            ;E5B0 0000
add [bx+si],al                            ;E5B2 0000
add [bx+si],al                            ;E5B4 0000
add [bx+si],al                            ;E5B6 0000
add [bx+si],al                            ;E5B8 0000
add [bx+si],al                            ;E5BA 0000
add [bx+si],al                            ;E5BC 0000
add [bx+si],al                            ;E5BE 0000
add [bx+si],al                            ;E5C0 0000
add [bx+si],al                            ;E5C2 0000
add [bx+si],al                            ;E5C4 0000
add [bx+si],al                            ;E5C6 0000
add [bx+si],al                            ;E5C8 0000
add [bx+si],al                            ;E5CA 0000
add bh,bh                                 ;E5CC 00FF
add [bx+si],ax                            ;E5CE 0100
add [bx+si],al                            ;E5D0 0000
db 0xff                                   ;E5D2 FF
inc word [bx+si]                          ;E5D3 FF00
add [bx+si+0x3],dl                        ;E5D5 005003
add [bp+si],al                            ;E5D8 0002
add [bx+di],ax                            ;E5DA 0101
add [bp+si],al                            ;E5DC 0002
adc [bx+si],al                            ;E5DE 1000
add [bx+si],al                            ;E5E0 0000
clc                                       ;E5E2 F8
add [bx+si],ax                            ;E5E3 0100
add [bx+si],al                            ;E5E5 0000
add [bx+si],al                            ;E5E7 0000
add [bx+si],al                            ;E5E9 0000
add [bx+si],al                            ;E5EB 0000
add [bp+0x4f],cl                          ;E5ED 004E4F
and [bp+0x41],cl                          ;E5F0 204E41
dec bp                                    ;E5F3 4D
inc bp                                    ;E5F4 45
and [bx+si],ah                            ;E5F5 2020
and [bx+si],ah                            ;E5F7 2020
add [bp+di],al                            ;E5F9 0003
and [bx+si],al                            ;E5FB 2000
sub [bx+si],al                            ;E5FD 2800
add [bx+si],al                            ;E5FF 0000
add [bx+si],al                            ;E601 0000
add [bx+si],al                            ;E603 0000
add [bx+si],al                            ;E605 0000
add [bx+si],al                            ;E607 0000
add [bx+si],al                            ;E609 0000
add [bx+si],al                            ;E60B 0000
add [bx+si],al                            ;E60D 0000
add [bx+si],al                            ;E60F 0000
add [bx+si],al                            ;E611 0000
add [bx+si],al                            ;E613 0000
add [bx+si],al                            ;E615 0000
add [bx+si],al                            ;E617 0000
add [bx+si],al                            ;E619 0000
add [bx+si],al                            ;E61B 0000
add bh,bh                                 ;E61D 00FF
add [bx+si],ax                            ;E61F 0100
add [bx+si],al                            ;E621 0000
db 0xff                                   ;E623 FF
inc word [bx+si]                          ;E624 FF00
add [bx+si+0x3],dl                        ;E626 005003
add [bp+si],al                            ;E629 0002
add [bx+di],ax                            ;E62B 0101
add [bp+si],al                            ;E62D 0002
adc [bx+si],al                            ;E62F 1000
add [bx+si],al                            ;E631 0000
clc                                       ;E633 F8
add [bx+si],ax                            ;E634 0100
add [bx+si],al                            ;E636 0000
add [bx+si],al                            ;E638 0000
add [bx+si],al                            ;E63A 0000
add [bx+si],al                            ;E63C 0000
add [bp+0x4f],cl                          ;E63E 004E4F
and [bp+0x41],cl                          ;E641 204E41
dec bp                                    ;E644 4D
inc bp                                    ;E645 45
and [bx+si],ah                            ;E646 2020
and [bx+si],ah                            ;E648 2020
add [bp+di],al                            ;E64A 0003
and [bx+si],al                            ;E64C 2000
sub [bx+si],al                            ;E64E 2800
add [bx+si],al                            ;E650 0000
add [bx+si],al                            ;E652 0000
add [bx+si],al                            ;E654 0000
add [bx+si],al                            ;E656 0000
add [bx+si],al                            ;E658 0000
add [bx+si],al                            ;E65A 0000
add [bx+si],al                            ;E65C 0000
add [bx+si],al                            ;E65E 0000
add [bx+si],al                            ;E660 0000
add [bx+si],al                            ;E662 0000
add [bx+si],al                            ;E664 0000
add [bx+si],al                            ;E666 0000
add [bx+si],al                            ;E668 0000
add [bx+si],al                            ;E66A 0000
add [bx+si],al                            ;E66C 0000
add bh,bh                                 ;E66E 00FF
add [bx+si],ax                            ;E670 0100
add [bx+si],al                            ;E672 0000
add [bx+si],al                            ;E674 0000
add [bx+si],al                            ;E676 0000
add [bx+si],al                            ;E678 0000
add [bx+si],al                            ;E67A 0000
add [bx+si],al                            ;E67C 0000
add [bx+si],al                            ;E67E 0000
add [bx+si],al                            ;E680 0000
add [bx+si],al                            ;E682 0000
cmp dl,0x80                               ;E684 80FA80
jc 0xe693                                 ;E687 720A
cmp ah,0x2                                ;E689 80FC02
jz 0xe698                                 ;E68C 740A
cmp ah,0xa                                ;E68E 80FC0A
jz 0xe698                                 ;E691 7405
jmp word far [cs:0xb0]                    ;E693 2EFF2EB000
push bx                                   ;E698 53
push cx                                   ;E699 51
push dx                                   ;E69A 52
push di                                   ;E69B 57
push ds                                   ;E69C 1E
push es                                   ;E69D 06
push ax                                   ;E69E 50
mov ax,0x40                               ;E69F B84000
mov ds,ax                                 ;E6A2 8ED8
mov byte [0x74],0x0                       ;E6A4 C606740000
and dl,0x7f                               ;E6A9 80E27F
cmp dl,[0x75]                             ;E6AC 3A167500
jc 0xe6b9                                 ;E6B0 7207
mov byte [0x74],0x1                       ;E6B2 C606740001
jmp 0xe6da                                ;E6B7 EB21
push bx                                   ;E6B9 53
mov ax,es                                 ;E6BA 8CC0
shr bx,byte 0x4                           ;E6BC C1EB04
add ax,bx                                 ;E6BF 03C3
mov es,ax                                 ;E6C1 8EC0
pop bx                                    ;E6C3 5B
and bx,0xf                                ;E6C4 81E30F00
push cs                                   ;E6C8 0E
call 0xe7ab                               ;E6C9 E8DF00
jc 0xe6da                                 ;E6CC 720C
pop ax                                    ;E6CE 58
push ax                                   ;E6CF 50
call 0xe6ee                               ;E6D0 E81B00
mov dx,0x3f6                              ;E6D3 BAF603
out dx,al                                 ;E6D6 EE
call 0xe746                               ;E6D7 E86C00
pop ax                                    ;E6DA 58
mov ah,[0x74]                             ;E6DB 8A267400
stc                                       ;E6DF F9
or ah,ah                                  ;E6E0 0AE4
jnz 0xe6e5                                ;E6E2 7501
clc                                       ;E6E4 F8
pop es                                    ;E6E5 07
pop ds                                    ;E6E6 1F
pop di                                    ;E6E7 5F
pop dx                                    ;E6E8 5A
pop cx                                    ;E6E9 59
pop bx                                    ;E6EA 5B
retf word 0x2                             ;E6EB CA0200
mov [0x43],al                             ;E6EE A24300
mov byte [0x48],0x20                      ;E6F1 C606480020
cmp ah,0x2                                ;E6F6 80FC02
jz 0xe700                                 ;E6F9 7405
mov byte [0x48],0x22                      ;E6FB C606480022
mov al,cl                                 ;E700 8AC1
and al,0x3f                               ;E702 243F
mov [0x44],al                             ;E704 A24400
mov [0x45],ch                             ;E707 882E4500
mov al,cl                                 ;E70B 8AC1
shr al,byte 0x6                           ;E70D C0E806
mov [0x46],al                             ;E710 A24600
mov ax,dx                                 ;E713 8BC2
shl al,byte 0x4                           ;E715 C0E004
and ah,0xf                                ;E718 80E40F
or al,ah                                  ;E71B 0AC4
or al,0xa0                                ;E71D 0CA0
mov [0x47],al                             ;E71F A24700
push es                                   ;E722 06
push bx                                   ;E723 53
push cs                                   ;E724 0E
call 0xe783                               ;E725 E85B00
mov ax,[es:bx+0x5]                        ;E728 268B4705
shr ax,byte 0x2                           ;E72C C1E802
mov [0x42],al                             ;E72F A24200
mov al,[es:bx+0x8]                        ;E732 268A4708
pop bx                                    ;E736 5B
pop es                                    ;E737 07
mov ah,[0x76]                             ;E738 8A267600
and ah,0xc0                               ;E73C 80E4C0
or ah,al                                  ;E73F 0AE0
mov [0x76],ah                             ;E741 88267600
ret                                       ;E745 C3
mov di,bx                                 ;E746 8BFB
push cs                                   ;E748 0E
call 0xe78b                               ;E749 E83F00
jnz 0xe782                                ;E74C 7534
push cs                                   ;E74E 0E
call 0xe793                               ;E74F E84100
jnz 0xe782                                ;E752 752E
mov cx,0x100                              ;E754 B90001
mov dx,0x1f0                              ;E757 BAF001
cld                                       ;E75A FC
cli                                       ;E75B FA
rep insw                                  ;E75C F36D
sti                                       ;E75E FB
test byte [0x48],0x2                      ;E75F F606480002
jz 0xe776                                 ;E764 7410
push cs                                   ;E766 0E
call 0xe79b                               ;E767 E83100
jc 0xe782                                 ;E76A 7216
mov cx,0x4                                ;E76C B90400
mov dx,0x1f0                              ;E76F BAF001
cli                                       ;E772 FA
rep insb                                  ;E773 F36C
sti                                       ;E775 FB
push cs                                   ;E776 0E
call 0xe7a3                               ;E777 E82900
jnz 0xe782                                ;E77A 7506
dec byte [0x43]                           ;E77C FE0E4300
jnz 0xe74e                                ;E780 75CC
ret                                       ;E782 C3
push word 0xff65                          ;E783 6865FF
jmp word 0xf000:word 0x2f8e               ;E786 EA8E2F00F0
push word 0xff65                          ;E78B 6865FF
jmp word 0xf000:word 0x2e1e               ;E78E EA1E2E00F0
push word 0xff65                          ;E793 6865FF
jmp word 0xf000:word 0x2e7f               ;E796 EA7F2E00F0
push word 0xff65                          ;E79B 6865FF
jmp word 0xf000:word 0x2ee2               ;E79E EAE22E00F0
push word 0xff65                          ;E7A3 6865FF
jmp word 0xf000:word 0x2ef8               ;E7A6 EAF82E00F0
push word 0xff65                          ;E7AB 6865FF
jmp word 0xf000:word 0x2f69               ;E7AE EA692F00F0
push word [cs:0x5da]                      ;E7B3 2EFF36DA05
cmp word [cs:0x5da],0x1c89                ;E7B8 2E813EDA05891C
jnc 0xe7d0                                ;E7BF 730F
mov byte [cs:0x8bf],0x13                  ;E7C1 2EC606BF0813
mov byte [cs:0x8c0],0x50                  ;E7C7 2EC606C00850
jmp 0xe7e3                                ;E7CD EB14
nop                                       ;E7CF 90
mov byte [cs:0x8bf],0x14                  ;E7D0 2EC606BF0814
mov byte [cs:0x8c0],0x0                   ;E7D6 2EC606C00800
sub word [cs:0x5da],0x1c89                ;E7DC 2E812EDA05891C
xor dx,dx                                 ;E7E3 33D2
mov ax,[cs:0x5da]                         ;E7E5 2EA1DA05
mov bx,0x5b5                              ;E7E9 BBB505
div bx                                    ;E7EC F7F3
mov [cs:0x5da],dx                         ;E7EE 2E8916DA05
mov bl,0x4                                ;E7F3 B304
mul bl                                    ;E7F5 F6E3
add [cs:0x8c0],al                         ;E7F7 2E0006C008
inc word [cs:0x5da]                       ;E7FC 2EFF06DA05
cmp word [cs:0x5da],0x16e                 ;E801 2E813EDA056E01
jna 0xe830                                ;E808 7626
inc byte [cs:0x8c0]                       ;E80A 2EFE06C008
sub word [cs:0x5da],0x16e                 ;E80F 2E812EDA056E01
mov cx,0x3                                ;E816 B90300
cmp word [cs:0x5da],0x16d                 ;E819 2E813EDA056D01
jna 0xe836                                ;E820 7614
inc byte [cs:0x8c0]                       ;E822 2EFE06C008
sub word [cs:0x5da],0x16d                 ;E827 2E812EDA056D01
loop 0xe819                               ;E82E E2E9
mov byte [cs:0x8c2],0x1d                  ;E830 2EC606C2081D
xor bx,bx                                 ;E836 33DB
xor dx,dx                                 ;E838 33D2
mov ax,[cs:0x5da]                         ;E83A 2EA1DA05
mov si,0x8c1                              ;E83E BEC108
mov cx,0xc                                ;E841 B90C00
inc bl                                    ;E844 FEC3
mov dl,[si]                               ;E846 8A14
cmp ax,dx                                 ;E848 3BC2
jna 0xe851                                ;E84A 7605
inc si                                    ;E84C 46
sub ax,dx                                 ;E84D 2BC2
loop 0xe844                               ;E84F E2F3
mov byte [cs:0x8c2],0x1c                  ;E851 2EC606C2081C
mov dl,bl                                 ;E857 8AD3
mov dh,[cs:0x8c0]                         ;E859 2E8A36C008
mov cl,[cs:0x8bf]                         ;E85E 2E8A0EBF08
call word near [cs:0x8cd]                 ;E863 2EFF16CD08
xchg dl,al                                ;E868 86D0
call word near [cs:0x8cd]                 ;E86A 2EFF16CD08
xchg dh,al                                ;E86F 86F0
call word near [cs:0x8cd]                 ;E871 2EFF16CD08
xchg cl,al                                ;E876 86C8
call word near [cs:0x8cd]                 ;E878 2EFF16CD08
mov ch,al                                 ;E87D 8AE8
pop word [cs:0x5da]                       ;E87F 2E8F06DA05
ret                                       ;E884 C3
push cx                                   ;E885 51
xor ah,ah                                 ;E886 32E4
mov cl,0xa                                ;E888 B10A
div cl                                    ;E88A F6F1
mov cl,0x4                                ;E88C B104
shl al,cl                                 ;E88E D2E0
or al,ah                                  ;E890 0AC4
pop cx                                    ;E892 59
ret                                       ;E893 C3
nop                                       ;E894 90
push cs                                   ;E895 0E
pop ds                                    ;E896 1F
pop word [0x1bc2]                         ;E897 8F06C21B
pop word [0x1bc4]                         ;E89B 8F06C41B
popf                                      ;E89F 9D
call 0xe8b6                               ;E8A0 E81300
cli                                       ;E8A3 FA
mov [0x5da],si                            ;E8A4 8936DA05
sti                                       ;E8A8 FB
call 0xe978                               ;E8A9 E8CC00
cli                                       ;E8AC FA
mov ah,0x1                                ;E8AD B401
int byte 0x1a                             ;E8AF CD1A
sti                                       ;E8B1 FB
jmp word far [0x1bc2]                     ;E8B2 FF2EC21B
push ax                                   ;E8B6 50
push cx                                   ;E8B7 51
push dx                                   ;E8B8 52
xor ah,ah                                 ;E8B9 32E4
int byte 0x1a                             ;E8BB CD1A
pop dx                                    ;E8BD 5A
pop cx                                    ;E8BE 59
pop ax                                    ;E8BF 58
push ax                                   ;E8C0 50
push bx                                   ;E8C1 53
push cx                                   ;E8C2 51
push dx                                   ;E8C3 52
mov word [cs:0x1be2],0x1                  ;E8C4 2EC706E21B0100
mov ah,0x4                                ;E8CB B404
int byte 0x1a                             ;E8CD CD1A
jnc 0xe8d4                                ;E8CF 7303
jmp 0xe967                                ;E8D1 E99300
mov [0x1bc6],ch                           ;E8D4 882EC61B
mov [0x1bc7],cl                           ;E8D8 880EC71B
mov [0x1bc8],dh                           ;E8DC 8836C81B
mov [0x1bc9],dl                           ;E8E0 8816C91B
mov word [cs:0x1be2],0x2                  ;E8E4 2EC706E21B0200
call 0xea44                               ;E8EB E85601
jc 0xe967                                 ;E8EE 7277
mov word [cs:0x1be2],0x3                  ;E8F0 2EC706E21B0300
call 0xe9ed                               ;E8F7 E8F300
jc 0xe967                                 ;E8FA 726B
mov word [cs:0x1be2],0x0                  ;E8FC 2EC706E21B0000
call 0xe9b2                               ;E903 E8AC00
mov al,[0x1bc7]                           ;E906 A0C71B
cbw                                       ;E909 98
cmp byte [0x1bc6],0x14                    ;E90A 803EC61B14
jnz 0xe914                                ;E90F 7503
add ax,0x64                               ;E911 056400
sub ax,0x50                               ;E914 2D5000
mov cl,0x4                                ;E917 B104
div cl                                    ;E919 F6F1
mov bl,ah                                 ;E91B 8ADC
cbw                                       ;E91D 98
mov cx,0x5b5                              ;E91E B9B505
mul cx                                    ;E921 F7E1
mov [cs:0x1be2],ax                        ;E923 2EA3E21B
mov al,bl                                 ;E927 8AC3
cbw                                       ;E929 98
or ax,ax                                  ;E92A 0BC0
jz 0xe93a                                 ;E92C 740C
mov cx,0x16d                              ;E92E B96D01
mul cx                                    ;E931 F7E1
add [cs:0x1be2],ax                        ;E933 2E0106E21B
jmp 0xe941                                ;E938 EB07
cmp byte [0x1bc8],0x2                     ;E93A 803EC81B02
jna 0xe946                                ;E93F 7605
inc word [cs:0x1be2]                      ;E941 2EFF06E21B
mov cl,[0x1bc9]                           ;E946 8A0EC91B
xor ch,ch                                 ;E94A 32ED
dec cx                                    ;E94C 49
add [cs:0x1be2],cx                        ;E94D 2E010EE21B
mov cl,[0x1bc8]                           ;E952 8A0EC81B
xor ch,ch                                 ;E956 32ED
dec cx                                    ;E958 49
shl cx,0x0                                ;E959 D1E1
mov si,0x1bca                             ;E95B BECA1B
add si,cx                                 ;E95E 03F1
mov ax,[si]                               ;E960 8B04
add [cs:0x1be2],ax                        ;E962 2E0106E21B
mov si,[cs:0x1be2]                        ;E967 2E8B36E21B
pop dx                                    ;E96C 5A
pop cx                                    ;E96D 59
pop bx                                    ;E96E 5B
pop ax                                    ;E96F 58
ret                                       ;E970 C3
xor cx,cx                                 ;E971 33C9
xor dx,dx                                 ;E973 33D2
jmp 0xe9b1                                ;E975 EB3A
nop                                       ;E977 90
mov ah,0x2                                ;E978 B402
int byte 0x1a                             ;E97A CD1A
jc 0xe971                                 ;E97C 72F3
mov [0x1bc6],ch                           ;E97E 882EC61B
mov [0x1bc7],cl                           ;E982 880EC71B
mov [0x1bc8],dh                           ;E986 8836C81B
mov byte [0x1bc9],0x0                     ;E98A C606C91B00
call 0xea44                               ;E98F E8B200
jc 0xe971                                 ;E992 72DD
call 0xea2b                               ;E994 E89400
jc 0xe971                                 ;E997 72D8
call 0xe9b2                               ;E999 E81600
mov ch,[0x1bc6]                           ;E99C 8A2EC61B
mov cl,[0x1bc7]                           ;E9A0 8A0EC71B
mov dh,[0x1bc8]                           ;E9A4 8A36C81B
mov dl,[0x1bc9]                           ;E9A8 8A16C91B
call word near [cs:0x8d1]                 ;E9AC 2EFF16D108
ret                                       ;E9B1 C3
mov al,[0x1bc6]                           ;E9B2 A0C61B
call 0xe9d7                               ;E9B5 E81F00
mov [0x1bc6],al                           ;E9B8 A2C61B
mov al,[0x1bc7]                           ;E9BB A0C71B
call 0xe9d7                               ;E9BE E81600
mov [0x1bc7],al                           ;E9C1 A2C71B
mov al,[0x1bc8]                           ;E9C4 A0C81B
call 0xe9d7                               ;E9C7 E80D00
mov [0x1bc8],al                           ;E9CA A2C81B
mov al,[0x1bc9]                           ;E9CD A0C91B
call 0xe9d7                               ;E9D0 E80400
mov [0x1bc9],al                           ;E9D3 A2C91B
ret                                       ;E9D6 C3
mov ah,al                                 ;E9D7 8AE0
and ax,0xf00f                             ;E9D9 250FF0
mov bl,al                                 ;E9DC 8AD8
xchg ah,al                                ;E9DE 86E0
xor ah,ah                                 ;E9E0 32E4
mov cl,0x4                                ;E9E2 B104
shr ax,cl                                 ;E9E4 D3E8
mov cl,0xa                                ;E9E6 B10A
mul cl                                    ;E9E8 F6E1
add al,bl                                 ;E9EA 02C3
ret                                       ;E9EC C3
cmp byte [0x1bc6],0x20                    ;E9ED 803EC61B20
ja 0xea29                                 ;E9F2 7735
jz 0xea04                                 ;E9F4 740E
cmp byte [0x1bc6],0x19                    ;E9F6 803EC61B19
jc 0xea29                                 ;E9FB 722C
cmp byte [0x1bc7],0x80                    ;E9FD 803EC71B80
jc 0xea29                                 ;EA02 7225
cmp byte [0x1bc7],0x99                    ;EA04 803EC71B99
ja 0xea29                                 ;EA09 771E
cmp byte [0x1bc8],0x12                    ;EA0B 803EC81B12
ja 0xea29                                 ;EA10 7717
cmp byte [0x1bc8],0x0                     ;EA12 803EC81B00
jna 0xea29                                ;EA17 7610
cmp byte [0x1bc9],0x31                    ;EA19 803EC91B31
ja 0xea29                                 ;EA1E 7709
cmp byte [0x1bc9],0x0                     ;EA20 803EC91B00
jna 0xea29                                ;EA25 7602
clc                                       ;EA27 F8
ret                                       ;EA28 C3
stc                                       ;EA29 F9
ret                                       ;EA2A C3
cmp byte [0x1bc6],0x24                    ;EA2B 803EC61B24
ja 0xea42                                 ;EA30 7710
cmp byte [0x1bc7],0x59                    ;EA32 803EC71B59
ja 0xea42                                 ;EA37 7709
cmp byte [0x1bc8],0x59                    ;EA39 803EC81B59
ja 0xea42                                 ;EA3E 7702
clc                                       ;EA40 F8
ret                                       ;EA41 C3
stc                                       ;EA42 F9
ret                                       ;EA43 C3
mov cx,0x4                                ;EA44 B90400
mov bx,0x1bc6                             ;EA47 BBC61B
mov al,[bx]                               ;EA4A 8A07
mov ah,al                                 ;EA4C 8AE0
and ax,0xf00f                             ;EA4E 250FF0
cmp al,0xa                                ;EA51 3C0A
ja 0xea6b                                 ;EA53 7716
shr ah,0x0                                ;EA55 D0EC
shr ah,0x0                                ;EA57 D0EC
shr ah,0x0                                ;EA59 D0EC
shr ah,0x0                                ;EA5B D0EC
and ah,0xf                                ;EA5D 80E40F
cmp ah,0xa                                ;EA60 80FC0A
ja 0xea6b                                 ;EA63 7706
inc bx                                    ;EA65 43
dec cx                                    ;EA66 49
jnz 0xea4a                                ;EA67 75E1
clc                                       ;EA69 F8
ret                                       ;EA6A C3
stc                                       ;EA6B F9
ret                                       ;EA6C C3
add [bx+si],al                            ;EA6D 0000
add [bx+si],al                            ;EA6F 0000
add [bx+si],al                            ;EA71 0000
add [bx+si],al                            ;EA73 0000
add [bx+si],al                            ;EA75 0000
add [bp+si],al                            ;EA77 0002
or [bx+si],bp                             ;EA79 0928
inc word [bx+si]                          ;EA7B FF00
add [bp+si],al                            ;EA7D 0002
add [bx+di],al                            ;EA7F 0001
inc ax                                    ;EA81 40
add [bx+si],al                            ;EA82 0000
add [bx+si],al                            ;EA84 0000
or [bx+di],al                             ;EA86 0801
add dh,[bx+si+0x0]                        ;EA88 027000
add [bx+si],al                            ;EA8B 0000
add [bx+si],ah                            ;EA8D 0020
add al,[si]                               ;EA8F 0204
add [bx+di],al                            ;EA91 0001
add [bx+si],al                            ;EA93 0000
test al,0x7f                              ;EA95 A87F
add cx,[bx+si]                            ;EA97 0308
add [bp+si],al                            ;EA99 0002
add [bx+si],al                            ;EA9B 0000
db 0xff                                   ;EA9D FF
inc word [si]                             ;EA9E FF04
adc [bx+si],al                            ;EAA0 1000
add al,0x0                                ;EAA2 0400
add [bx+si+0x37f],ch                      ;EAA4 00A87F03
or [bx+si],al                             ;EAA8 0800
add al,[bx+si]                            ;EAAA 0200
add bh,bh                                 ;EAAC 00FF
inc word [bp+si]                          ;EAAE FF02
add al,0x0                                ;EAB0 0400
add al,[bx+si+0x0]                        ;EAB2 024000
add [bx+si],al                            ;EAB5 0000
add [bx+si],al                            ;EAB7 0000
add [bx+si+0x0],al                        ;EAB9 00800000
add [bx+si],al                            ;EABD 0000
add [bx+si],al                            ;EABF 0000
xor [bx+di],dh                            ;EAC1 3031
das                                       ;EAC3 2F
xor [bx+si],si                            ;EAC4 3130
das                                       ;EAC6 2F
cmp [si],dh                               ;EAC7 3834
add [bx+si+0x200],dl                      ;EAC9 00900002
add al,[bx+di]                            ;EACD 0201
add [bp+si],al                            ;EACF 0002
jo 0xead3                                 ;EAD1 7000
rol byte [bp+si],0x0                      ;EAD3 D002
std                                       ;EAD5 FD
add al,[bx+si]                            ;EAD6 0200
or [bx+si],ax                             ;EAD8 0900
add al,[bx+si]                            ;EADA 0200
add [bx+si],al                            ;EADC 0000
add [bx+si],al                            ;EADE 0000
add [bx+si],al                            ;EAE0 0000
add [bx+si],al                            ;EAE2 0000
add [bx+si],al                            ;EAE4 0000
add [bx+si],al                            ;EAE6 0000
add [bx+si],al                            ;EAE8 0000
nop                                       ;EAEA 90
add [bp+si],al                            ;EAEB 0002
add [bx+di],ax                            ;EAED 0101
add [bp+si],al                            ;EAEF 0002
loopne 0xeaf3                             ;EAF1 E000
pusha                                     ;EAF3 60
or cx,di                                  ;EAF4 09F9
pop es                                    ;EAF6 07
add [bx],cl                               ;EAF7 000F
add [bp+si],al                            ;EAF9 0002
add [bx+si],al                            ;EAFB 0000
add [bx+si],al                            ;EAFD 0000
add [bx+si],al                            ;EAFF 0000
add [bx+si],al                            ;EB01 0000
add [bx+si],al                            ;EB03 0000
add [bx+si],al                            ;EB05 0000
add [bx+si],al                            ;EB07 0000
add [bx+si+0x200],dl                      ;EB09 00900002
add al,[bx+di]                            ;EB0D 0201
add [bp+si],al                            ;EB0F 0002
jo 0xeb13                                 ;EB11 7000
mov al,[0xf905]                           ;EB13 A005F9
add ax,[bx+si]                            ;EB16 0300
or [bx+si],ax                             ;EB18 0900
add al,[bx+si]                            ;EB1A 0200
add [bx+si],al                            ;EB1C 0000
add [bx+si],al                            ;EB1E 0000
add [bx+si],al                            ;EB20 0000
add [bx+si],al                            ;EB22 0000
add [bx+si],al                            ;EB24 0000
add [bx+si],al                            ;EB26 0000
add [bx+si],al                            ;EB28 0000
nop                                       ;EB2A 90
fsubr qword [bp+si]                       ;EB2B DC2A
cld                                       ;EB2D FC
sub bl,[si]                               ;EB2E 2A1C
sub cx,[bp+si]                            ;EB30 2B0A
add [si],al                               ;EB32 0004
or al,[bp+di]                             ;EB34 0A03
add al,dl                                 ;EB36 00D0
or al,[bp+di]                             ;EB38 0A03
add [bx+si+0x30a],dl                      ;EB3A 00900A03
add [bp+si+0xd],ah                        ;EB3E 00620D
add ax,[bx+si]                            ;EB41 0300
out byte 0xe,ax                           ;EB43 E70E
or al,[bx+si]                             ;EB45 0A00
pushf                                     ;EB47 9C
lsl ax,[bx+si]                            ;EB48 0F0300
xor [bp+si],cl                            ;EB4B 300A
add [bx+si],al                            ;EB4D 0000
cli                                       ;EB4F FA
xor ax,ax                                 ;EB50 33C0
mov ds,ax                                 ;EB52 8ED8
mov ax,[0x4c]                             ;EB54 A14C00
mov [cs:0xb0],ax                          ;EB57 2EA3B000
mov [cs:0xb4],ax                          ;EB5B 2EA3B400
mov ax,[0x4e]                             ;EB5F A14E00
mov [cs:0xb2],ax                          ;EB62 2EA3B200
mov [cs:0xb6],ax                          ;EB66 2EA3B600
mov word [0x4c],0xf92                     ;EB6A C7064C00920F
mov word [0x4e],cs                        ;EB70 8C0E4E00
mov ax,[0x64]                             ;EB74 A16400
mov [cs:0x18a2],ax                        ;EB77 2EA3A218
mov ax,[0x66]                             ;EB7B A16600
mov [cs:0x18a4],ax                        ;EB7E 2EA3A418
mov word [0x64],0x191c                    ;EB82 C70664001C19
mov word [0x66],cs                        ;EB88 8C0E6600
sti                                       ;EB8C FB
int byte 0x11                             ;EB8D CD11
rol al,0x0                                ;EB8F D0C0
rol al,0x0                                ;EB91 D0C0
and ax,0x3                                ;EB93 250300
jnz 0xeb9e                                ;EB96 7506
inc ax                                    ;EB98 40
inc byte [cs:0x1c4]                       ;EB99 2EFE06C401
inc ax                                    ;EB9E 40
mov cl,al                                 ;EB9F 8AC8
test dl,0x80                              ;EBA1 F6C280
jnz 0xeba8                                ;EBA4 7502
xor ax,ax                                 ;EBA6 33C0
xor dx,dx                                 ;EBA8 33D2
cli                                       ;EBAA FA
mov ss,dx                                 ;EBAB 8ED2
mov sp,0x700                              ;EBAD BC0007
sti                                       ;EBB0 FB
push cx                                   ;EBB1 51
mov [cs:0x2a80],bx                        ;EBB2 2E891E802A
mov ah,ch                                 ;EBB7 8AE5
push ax                                   ;EBB9 50
mov ah,0xc0                               ;EBBA B4C0
int byte 0x15                             ;EBBC CD15
jc 0xebd7                                 ;EBBE 7217
cmp ah,0x0                                ;EBC0 80FC00
jnz 0xebd7                                ;EBC3 7512
mov al,[es:bx+0x2]                        ;EBC5 268A4702
mov [cs:0x2a8c],al                        ;EBC9 2EA28C2A
mov al,[es:bx+0x3]                        ;EBCD 268A4703
mov [cs:0x2a8d],al                        ;EBD1 2EA28D2A
jmp 0xebe4                                ;EBD5 EB0D
mov si,0xffff                             ;EBD7 BEFFFF
mov es,si                                 ;EBDA 8EC6
mov al,[es:0xe]                           ;EBDC 26A00E00
mov [cs:0x2a8c],al                        ;EBE0 2EA28C2A
mov al,0x20                               ;EBE4 B020
out byte 0x20,al                          ;EBE6 E620
mov si,0x236                              ;EBE8 BE3602
call 0xf313                               ;EBEB E82507
mov si,0x224                              ;EBEE BE2402
call 0xf313                               ;EBF1 E81F07
mov si,0x212                              ;EBF4 BE1202
call 0xf313                               ;EBF7 E81907
mov si,0x1ca                              ;EBFA BECA01
call 0xf313                               ;EBFD E81307
mov si,0x200                              ;EC00 BE0002
call 0xf30b                               ;EC03 E80507
mov si,0x1ee                              ;EC06 BEEE01
call 0xf30b                               ;EC09 E8FF06
mov si,0x1dc                              ;EC0C BEDC01
call 0xf30b                               ;EC0F E8F906
xor dx,dx                                 ;EC12 33D2
mov ds,dx                                 ;EC14 8EDA
mov es,dx                                 ;EC16 8EC2
xor ax,ax                                 ;EC18 33C0
mov di,0x534                              ;EC1A BF3405
stosw                                     ;EC1D AB
stosw                                     ;EC1E AB
mov ax,cs                                 ;EC1F 8CC8
mov word [0x6c],0x756                     ;EC21 C7066C005607
mov [0x6e],ax                             ;EC27 A36E00
mov word [0xa4],0x69e                     ;EC2A C706A4009E06
mov [0xa6],ax                             ;EC30 A3A600
mov di,0x4                                ;EC33 BF0400
mov bx,0x75c                              ;EC36 BB5C07
xchg ax,bx                                ;EC39 93
stosw                                     ;EC3A AB
xchg ax,bx                                ;EC3B 93
stosw                                     ;EC3C AB
add di,0x4                                ;EC3D 83C704
xchg ax,bx                                ;EC40 93
stosw                                     ;EC41 AB
xchg ax,bx                                ;EC42 93
stosw                                     ;EC43 AB
xchg ax,bx                                ;EC44 93
stosw                                     ;EC45 AB
xchg ax,bx                                ;EC46 93
stosw                                     ;EC47 AB
mov [0x500],dx                            ;EC48 89160005
mov [0x504],dx                            ;EC4C 89160405
mov si,[0x78]                             ;EC50 8B367800
mov ds,word [0x7a]                        ;EC54 8E1E7A00
mov di,0x522                              ;EC58 BF2205
mov cx,0xb                                ;EC5B B90B00
rep movsb                                 ;EC5E F3A4
push es                                   ;EC60 06
pop ds                                    ;EC61 1F
mov word [0x78],0x522                     ;EC62 C70678002205
mov word [0x7a],ds                        ;EC68 8C1E7A00
cmp byte [cs:0x2a8c],0xfd                 ;EC6C 2E803E8C2AFD
jc 0xec7f                                 ;EC72 720B
mov word [0x52b],0x20f                    ;EC74 C7062B050F02
mov byte [0x522],0xdf                     ;EC7A C6062205DF
int byte 0x12                             ;EC7F CD12
mov cl,0x6                                ;EC81 B106
shl ax,cl                                 ;EC83 D3E0
pop cx                                    ;EC85 59
mov [cs:0x2a7e],cx                        ;EC86 2E890E7E2A
push ax                                   ;EC8B 50
mov dx,[0x7c16]                           ;EC8C 8B16167C
xor dh,dh                                 ;EC90 32F6
mov [cs:0x2a85],dx                        ;EC92 2E8916852A
shl dx,0x0                                ;EC97 D1E2
shl dx,0x0                                ;EC99 D1E2
shl dx,0x0                                ;EC9B D1E2
shl dx,0x0                                ;EC9D D1E2
shl dx,0x0                                ;EC9F D1E2
sub ax,dx                                 ;ECA1 2BC2
mov [cs:0x2a87],ax                        ;ECA3 2EA3872A
pop ax                                    ;ECA7 58
mov dx,0x3c4                              ;ECA8 BAC403
mov ds,dx                                 ;ECAB 8EDA
mov word [0x7fd],0x16e                    ;ECAD C706FD076E01
mov word [0x7ff],cs                       ;ECB3 8C0EFF07
mov [0x80d],ax                            ;ECB7 A30D08
inc cl                                    ;ECBA FEC1
mov [0x80f],cl                            ;ECBC 880E0F08
mov ax,0x3540                             ;ECC0 B84035
sub ax,0x0                                ;ECC3 2D0000
add ax,0xf                                ;ECC6 050F00
rcr ax,0x0                                ;ECC9 D1D8
shr ax,0x0                                ;ECCB D1E8
shr ax,0x0                                ;ECCD D1E8
shr ax,0x0                                ;ECCF D1E8
add ax,0x203                              ;ECD1 050302
add ax,0x70                               ;ECD4 057000
mov [0x7f7],ax                            ;ECD7 A3F707
push ax                                   ;ECDA 50
mov ax,0x3c4                              ;ECDB B8C403
mov es,ax                                 ;ECDE 8EC0
xor ax,ax                                 ;ECE0 33C0
mov ds,ax                                 ;ECE2 8ED8
mov ax,[0x3e]                             ;ECE4 A13E00
cmp ax,[es:0x80d]                         ;ECE7 263B060D08
jna 0xecf3                                ;ECEC 7605
cmp ax,0xf000                             ;ECEE 3D00F0
jnz 0xecfd                                ;ECF1 750A
mov word [0x3c],0x75c                     ;ECF3 C7063C005C07
mov word [0x3e],cs                        ;ECF9 8C0E3E00
pop ax                                    ;ECFD 58
push cs                                   ;ECFE 0E
pop ds                                    ;ECFF 1F
push cs                                   ;ED00 0E
pop es                                    ;ED01 07
call 0xf484                               ;ED02 E87F07
xor si,si                                 ;ED05 33F6
mov word [si],0x1be6                      ;ED07 C704E61B
pop ax                                    ;ED0B 58
xor ah,ah                                 ;ED0C 32E4
mov [0x25a],al                            ;ED0E A25A02
mov [0x1c0],al                            ;ED11 A2C001
shl ax,0x0                                ;ED14 D1E0
mov di,0x18e0                             ;ED16 BFE018
add di,ax                                 ;ED19 03F8
mov si,0x18e8                             ;ED1B BEE818
movsw                                     ;ED1E A5
movsw                                     ;ED1F A5
mov dl,0x80                               ;ED20 B280
mov ah,0x8                                ;ED22 B408
int byte 0x13                             ;ED24 CD13
jc 0xed2c                                 ;ED26 7204
mov [0x1be5],dl                           ;ED28 8816E51B
xor dl,dl                                 ;ED2C 32D2
push cs                                   ;ED2E 0E
pop ds                                    ;ED2F 1F
mov byte [0x260],0x9                      ;ED30 C606600209
mov di,0x24c                              ;ED35 BF4C02
cmp dl,[0x1c0]                            ;ED38 3A16C001
jc 0xed41                                 ;ED3C 7203
jmp 0xee43                                ;ED3E E90201
xor cx,cx                                 ;ED41 33C9
mov di,[di]                               ;ED43 8B3D
mov dh,0x0                                ;ED45 B600
mov byte [0x2a8b],0x28                    ;ED47 C6068B2A28
push ds                                   ;ED4C 1E
push di                                   ;ED4D 57
push dx                                   ;ED4E 52
push cx                                   ;ED4F 51
push es                                   ;ED50 06
mov ah,0x8                                ;ED51 B408
int byte 0x13                             ;ED53 CD13
jnc 0xed5a                                ;ED55 7303
jmp 0xedc9                                ;ED57 EB70
nop                                       ;ED59 90
cmp ch,0x0                                ;ED5A 80FD00
jnz 0xed65                                ;ED5D 7506
mov ch,0x27                               ;ED5F B527
mov cl,0x9                                ;ED61 B109
mov dh,0x1                                ;ED63 B601
inc dh                                    ;ED65 FEC6
inc ch                                    ;ED67 FEC5
mov [0x2a89],dh                           ;ED69 8836892A
and cl,0x3f                               ;ED6D 80E13F
mov [0x2a8a],cl                           ;ED70 880E8A2A
mov [0x2a8b],ch                           ;ED74 882E8B2A
cmp cl,[0x260]                            ;ED78 3A0E6002
jna 0xed82                                ;ED7C 7604
mov [0x260],cl                            ;ED7E 880E6002
pop es                                    ;ED82 07
pop cx                                    ;ED83 59
pop dx                                    ;ED84 5A
pop di                                    ;ED85 5F
pop ds                                    ;ED86 1F
mov ah,0x15                               ;ED87 B415
int byte 0x13                             ;ED89 CD13
jc 0xed9a                                 ;ED8B 720D
cmp ah,0x2                                ;ED8D 80FC02
jnz 0xed9a                                ;ED90 7508
or cl,0x2                                 ;ED92 80C902
mov byte [0x1c3],0x1                      ;ED95 C606C30101
cmp byte [0x2a8b],0x28                    ;ED9A 803E8B2A28
jnz 0xedac                                ;ED9F 750B
cmp byte [0x2a8a],0x9                     ;EDA1 803E8A2A09
jna 0xedc7                                ;EDA6 761F
mov dh,0x7                                ;EDA8 B607
jmp 0xedc7                                ;EDAA EB1B
cmp byte [0x2a8b],0x50                    ;EDAC 803E8B2A50
jnz 0xeda8                                ;EDB1 75F5
cmp byte [0x2a8a],0xf                     ;EDB3 803E8A2A0F
jz 0xedc5                                 ;EDB8 740B
cmp byte [0x2a8a],0x9                     ;EDBA 803E8A2A09
jnz 0xeda8                                ;EDBF 75E7
mov dh,0x2                                ;EDC1 B602
jmp 0xedc7                                ;EDC3 EB02
mov dh,0x1                                ;EDC5 B601
jmp 0xedf3                                ;EDC7 EB2A
pop es                                    ;EDC9 07
pop cx                                    ;EDCA 59
pop dx                                    ;EDCB 5A
pop di                                    ;EDCC 5F
pop ds                                    ;EDCD 1F
mov ah,0x15                               ;EDCE B415
int byte 0x13                             ;EDD0 CD13
jc 0xedf3                                 ;EDD2 721F
cmp ah,0x2                                ;EDD4 80FC02
jnz 0xedf3                                ;EDD7 751A
or cl,0x2                                 ;EDD9 80C902
mov byte [0x1c3],0x1                      ;EDDC C606C30101
mov byte [0x2a8b],0x50                    ;EDE1 C6068B2A50
mov dh,0x1                                ;EDE6 B601
mov al,0xf                                ;EDE8 B00F
cmp al,[0x260]                            ;EDEA 3A066002
jna 0xedf3                                ;EDEE 7603
mov [0x260],al                            ;EDF0 A26002
or cl,0x20                                ;EDF3 80C920
mov bh,dl                                 ;EDF6 8AFA
cmp byte [0x1c4],0x2                      ;EDF8 803EC40102
jnz 0xee04                                ;EDFD 7505
dec bh                                    ;EDFF FECF
xor cl,0x20                               ;EE01 80F120
xor ax,ax                                 ;EE04 33C0
mov al,[0x2a89]                           ;EE06 A0892A
mov [di+0x3c],ax                          ;EE09 89453C
mov al,[0x2a8a]                           ;EE0C A08A2A
mov [di+0x3a],ax                          ;EE0F 89453A
mov [di+0x29],cx                          ;EE12 894D29
mov [di+0x28],dh                          ;EE15 887528
mov [di+0x5],dl                           ;EE18 885505
mov [di+0x4],bh                           ;EE1B 887D04
mov bl,[0x2a8b]                           ;EE1E 8A1E8B2A
mov [di+0x2b],bl                          ;EE22 885D2B
cmp byte [0x1c4],0x1                      ;EE25 803EC40101
jnz 0xee3e                                ;EE2A 7512
mov byte [0x1c4],0x2                      ;EE2C C606C40102
or cx,0x10                                ;EE31 81C91000
or [di+0x29],cx                           ;EE35 094D29
mov di,[di]                               ;EE38 8B3D
inc dl                                    ;EE3A FEC2
jmp 0xedf3                                ;EE3C EBB5
inc dl                                    ;EE3E FEC2
jmp 0xed38                                ;EE40 E9F5FE
mov ax,0xffff                             ;EE43 B8FFFF
mov [di],ax                               ;EE46 8905
cmp byte [0x1be5],0x0                     ;EE48 803EE51B00
jng 0xee9e                                ;EE4D 7E4F
mov dl,0x80                               ;EE4F B280
mov di,0x1be8                             ;EE51 BFE81B
mov bl,[0x25a]                            ;EE54 8A1E5A02
call 0xf084                               ;EE58 E82902
jnc 0xee6a                                ;EE5B 730D
dec byte [0x1be5]                         ;EE5D FE0EE51B
cmp byte [0x1be5],0x0                     ;EE61 803EE51B00
jg 0xee7d                                 ;EE66 7F15
jmp 0xee9e                                ;EE68 EB34
call 0xdacf                               ;EE6A E862EC
cmp byte [0x1be5],0x2                     ;EE6D 803EE51B02
jc 0xee8d                                 ;EE72 7219
mov bl,[0x25a]                            ;EE74 8A1E5A02
inc bl                                    ;EE78 FEC3
mov di,0x1c3a                             ;EE7A BF3A1C
mov dl,0x81                               ;EE7D B281
call 0xf084                               ;EE7F E80202
jnc 0xee8a                                ;EE82 7306
dec byte [0x1be5]                         ;EE84 FE0EE51B
jmp 0xee8d                                ;EE88 EB03
call 0xdacf                               ;EE8A E842EC
mov al,[0x1be5]                           ;EE8D A0E51B
or al,al                                  ;EE90 0AC0
jz 0xee9e                                 ;EE92 740A
add al,[0x25a]                            ;EE94 02065A02
mov [0x1c0],al                            ;EE98 A2C001
call 0xf349                               ;EE9B E8AB04
push ax                                   ;EE9E 50
mov ax,0x1f3e                             ;EE9F B83E1F
cmp byte [0x1c3],0x0                      ;EEA2 803EC30100
jnz 0xeec4                                ;EEA7 751B
mov ax,0x1c8b                             ;EEA9 B88B1C
cmp byte [0x1be5],0x1                     ;EEAC 803EE51B01
jna 0xeeb6                                ;EEB1 7603
jmp 0xeee4                                ;EEB3 EB2F
nop                                       ;EEB5 90
mov ax,0x1c39                             ;EEB6 B8391C
jnz 0xeebe                                ;EEB9 7503
jmp 0xeee4                                ;EEBB EB27
nop                                       ;EEBD 90
mov ax,0x1be5                             ;EEBE B8E51B
jmp 0xeef4                                ;EEC1 EB31
nop                                       ;EEC3 90
push ax                                   ;EEC4 50
push ds                                   ;EEC5 1E
xor ax,ax                                 ;EEC6 33C0
mov ds,ax                                 ;EEC8 8ED8
mov ax,[0x4c]                             ;EECA A14C00
mov [cs:0x1da3],ax                        ;EECD 2EA3A31D
mov ax,[0x4e]                             ;EED1 A14E00
mov [cs:0x1da5],ax                        ;EED4 2EA3A51D
mov word [0x4c],0x1dad                    ;EED8 C7064C00AD1D
mov word [0x4e],cs                        ;EEDE 8C0E4E00
pop ds                                    ;EEE2 1F
pop ax                                    ;EEE3 58
push ax                                   ;EEE4 50
mov al,[0x25a]                            ;EEE5 A05A02
add al,[0x1be5]                           ;EEE8 0206E51B
add al,[0x2aca]                           ;EEEC 0206CA2A
mov [0x1c0],al                            ;EEF0 A2C001
pop ax                                    ;EEF3 58
call 0xf03d                               ;EEF4 E84601
push cs                                   ;EEF7 0E
pop es                                    ;EEF8 07
cld                                       ;EEF9 FC
cmp byte [0x2aca],0x0                     ;EEFA 803ECA2A00
jz 0xef07                                 ;EEFF 7406
mov ax,[0x2ac6]                           ;EF01 A1C62A
call 0xf03d                               ;EF04 E83601
cmp byte [0x2a8c],0xfc                    ;EF07 803E8C2AFC
jnz 0xef43                                ;EF0C 7535
cmp byte [0x1be5],0x0                     ;EF0E 803EE51B00
jz 0xef43                                 ;EF13 742E
mov si,0xf000                             ;EF15 BE00F0
mov es,si                                 ;EF18 8EC6
mov si,0x2ad2                             ;EF1A BED22A
mov di,0xfff5                             ;EF1D BFF5FF
cmpsb                                     ;EF20 A6
jnz 0xef43                                ;EF21 7520
cmp byte [si-0x1],0x0                     ;EF23 807CFF00
jnz 0xef20                                ;EF27 75F7
push cs                                   ;EF29 0E
pop es                                    ;EF2A 07
mov [0xb4],ax                             ;EF2B A3B400
mov word [0xb6],cs                        ;EF2E 8C0EB600
mov cx,0x27c4                             ;EF32 B9C427
mov si,0x2695                             ;EF35 BE9526
sub cx,si                                 ;EF38 2BCE
mov di,ax                                 ;EF3A 8BF8
rep movsb                                 ;EF3C F3A4
mov ax,di                                 ;EF3E 8BC7
call 0xf03d                               ;EF40 E8FA00
push cs                                   ;EF43 0E
pop es                                    ;EF44 07
cmp byte [0x8be],0x1                      ;EF45 803EBE0801
jnz 0xef74                                ;EF4A 7528
mov [0x8cf],ax                            ;EF4C A3CF08
mov cx,0x2896                             ;EF4F B99628
mov si,0x27c4                             ;EF52 BEC427
sub cx,si                                 ;EF55 2BCE
mov di,ax                                 ;EF57 8BF8
rep movsb                                 ;EF59 F3A4
mov ax,di                                 ;EF5B 8BC7
call 0xf03d                               ;EF5D E8DD00
mov [0x8cd],ax                            ;EF60 A3CD08
mov cx,0x28a5                             ;EF63 B9A528
mov si,0x2896                             ;EF66 BE9628
sub cx,si                                 ;EF69 2BCE
mov di,ax                                 ;EF6B 8BF8
rep movsb                                 ;EF6D F3A4
mov ax,di                                 ;EF6F 8BC7
call 0xf03d                               ;EF71 E8C900
push ax                                   ;EF74 50
mov ax,0x4100                             ;EF75 B80041
mov bl,0x0                                ;EF78 B300
int byte 0x15                             ;EF7A CD15
pop ax                                    ;EF7C 58
jc 0xefa7                                 ;EF7D 7228
mov si,0x28a6                             ;EF7F BEA628
mov cx,0x2a7e                             ;EF82 B97E2A
sub cx,si                                 ;EF85 2BCE
mov di,ax                                 ;EF87 8BF8
push di                                   ;EF89 57
rep movsb                                 ;EF8A F3A4
mov ax,di                                 ;EF8C 8BC7
call 0xf03d                               ;EF8E E8AC00
pop di                                    ;EF91 5F
push ax                                   ;EF92 50
push ds                                   ;EF93 1E
mov byte [0x1c5],0x1                      ;EF94 C606C50101
xor ax,ax                                 ;EF99 33C0
mov ds,ax                                 ;EF9B 8ED8
mov [0x1b0],di                            ;EF9D 893EB001
mov word [0x1b2],cs                       ;EFA1 8C0EB201
pop ds                                    ;EFA5 1F
pop ax                                    ;EFA6 58
mov dx,0x3c4                              ;EFA7 BAC403
mov ds,dx                                 ;EFAA 8EDA
sub ax,0x0                                ;EFAC 2D0000
add ax,0xf                                ;EFAF 050F00
rcr ax,0x0                                ;EFB2 D1D8
shr ax,0x0                                ;EFB4 D1E8
shr ax,0x0                                ;EFB6 D1E8
shr ax,0x0                                ;EFB8 D1E8
mov [0x7fb],ax                            ;EFBA A3FB07
pop ax                                    ;EFBD 58
add word [0x7fb],0x70                     ;EFBE 8106FB077000
push cs                                   ;EFC4 0E
pop ds                                    ;EFC5 1F
cmp byte [0x1c3],0x0                      ;EFC6 803EC30100
jnz 0xefd0                                ;EFCB 7503
call 0xf327                               ;EFCD E85703
mov ax,[0x2a7e]                           ;EFD0 A17E2A
call 0xcc40                               ;EFD3 E86ADC
call 0xca99                               ;EFD6 E8C0DA
call 0xf051                               ;EFD9 E87500
xor di,di                                 ;EFDC 33FF
mov al,[es:di]                            ;EFDE 268A05
mov [0x2a7f],al                           ;EFE1 A27F2A
mov ax,[0x2a7e]                           ;EFE4 A17E2A
call 0xcc40                               ;EFE7 E856DC
mov bl,[di+0x19]                          ;EFEA 8A5D19
mov [0x2a84],bl                           ;EFED 881E842A
mov cl,[di+0x8]                           ;EFF1 8A4D08
mov ax,[di+0x17]                          ;EFF4 8B4517
sub [0x2a80],ax                           ;EFF7 2906802A
xor ch,ch                                 ;EFFB 32ED
push ds                                   ;EFFD 1E
xor di,di                                 ;EFFE 33FF
mov ds,di                                 ;F000 8EDF
mov bx,[0x53a]                            ;F002 8B1E3A05
pop ds                                    ;F006 1F
mov ax,0x3540                             ;F007 B84035
sub ax,0x0                                ;F00A 2D0000
add ax,0xf                                ;F00D 050F00
rcr ax,0x0                                ;F010 D1D8
shr ax,0x0                                ;F012 D1E8
shr ax,0x0                                ;F014 D1E8
shr ax,0x0                                ;F016 D1E8
add ax,0x203                              ;F018 050302
add ax,0x70                               ;F01B 057000
mov es,ax                                 ;F01E 8EC0
call 0xf2a7                               ;F020 E88402
test byte [0x2a84],0x40                   ;F023 F606842A40
jnz 0xf030                                ;F028 7506
cmp bx,0xff7                              ;F02A 81FBF70F
jmp 0xf033                                ;F02E EB03
cmp bx,0xfffffffffffffff7                 ;F030 83FBF7
jc 0xf007                                 ;F033 72D2
call 0xf21d                               ;F035 E8E501
jmp word 0x3c4:word 0x7f2                 ;F038 EAF207C403
add ax,0xf                                ;F03D 050F00
rcr ax,0x0                                ;F040 D1D8
shr ax,0x0                                ;F042 D1E8
shr ax,0x0                                ;F044 D1E8
shr ax,0x0                                ;F046 D1E8
shl ax,0x0                                ;F048 D1E0
shl ax,0x0                                ;F04A D1E0
shl ax,0x0                                ;F04C D1E0
shl ax,0x0                                ;F04E D1E0
ret                                       ;F050 C3
xor di,di                                 ;F051 33FF
mov dx,0x1                                ;F053 BA0100
mov cx,[0x2a85]                           ;F056 8B0E852A
mov ax,[0x2a87]                           ;F05A A1872A
mov es,ax                                 ;F05D 8EC0
mov ax,[0x2a7e]                           ;F05F A17E2A
jmp 0xcd07                                ;F062 E9A2DC
mov ax,0x7c0                              ;F065 B8C007
mov es,ax                                 ;F068 8EC0
mov bx,0x200                              ;F06A BB0002
mov ax,0x201                              ;F06D B80102
xor dh,dh                                 ;F070 32F6
mov cx,0x1                                ;F072 B90100
int byte 0x13                             ;F075 CD13
jc 0xf082                                 ;F077 7209
cmp word [es:0x3fe],0xaa55                ;F079 26813EFE0355AA
jz 0xf083                                 ;F080 7401
stc                                       ;F082 F9
ret                                       ;F083 C3
push di                                   ;F084 57
push bx                                   ;F085 53
push ds                                   ;F086 1E
mov [di+0x5],bl                           ;F087 885D05
mov [di+0x4],dl                           ;F08A 885504
xor ax,ax                                 ;F08D 33C0
or al,0x1                                 ;F08F 0C01
or [di+0x29],ax                           ;F091 094529
mov byte [di+0x28],0x5                    ;F094 C6452805
mov byte [0x2a84],0x0                     ;F098 C606842A00
push dx                                   ;F09D 52
mov ah,0x8                                ;F09E B408
int byte 0x13                             ;F0A0 CD13
inc dh                                    ;F0A2 FEC6
mov [di+0x15],dh                          ;F0A4 887515
pop dx                                    ;F0A7 5A
jc 0xf0cd                                 ;F0A8 7223
and cl,0x3f                               ;F0AA 80E13F
mov [di+0x13],cl                          ;F0AD 884D13
call 0xf065                               ;F0B0 E8B2FF
jc 0xf0cd                                 ;F0B3 7218
mov bx,0x3c2                              ;F0B5 BBC203
cmp byte [es:bx],0x1                      ;F0B8 26803F01
jz 0xf0d1                                 ;F0BC 7413
cmp byte [es:bx],0x4                      ;F0BE 26803F04
jz 0xf0d1                                 ;F0C2 740D
add bx,0x10                               ;F0C4 83C310
cmp bx,0x402                              ;F0C7 81FB0204
jnz 0xf0b8                                ;F0CB 75EB
stc                                       ;F0CD F9
jmp 0xf219                                ;F0CE E94801
push dx                                   ;F0D1 52
mov ax,[es:bx+0x4]                        ;F0D2 268B4704
mov dx,[es:bx+0x6]                        ;F0D6 268B5706
sub ax,0x1                                ;F0DA 2D0100
sbb dx,0x0                                ;F0DD 83DA00
add ax,[es:bx+0x8]                        ;F0E0 26034708
adc dx,[es:bx+0xa]                        ;F0E4 2613570A
jz 0xf0ef                                 ;F0E8 7405
or byte [0x2a84],0x80                     ;F0EA 800E842A80
pop dx                                    ;F0EF 5A
mov ax,[es:bx+0x4]                        ;F0F0 268B4704
mov [di+0x17],ax                          ;F0F4 894517
mov ax,[es:bx+0x8]                        ;F0F7 268B4708
cmp ax,0x40                               ;F0FB 3D4000
jc 0xf0cd                                 ;F0FE 72CD
mov [di+0xe],ax                           ;F100 89450E
push ax                                   ;F103 50
push dx                                   ;F104 52
mov ax,[di+0x17]                          ;F105 8B4517
xor dx,dx                                 ;F108 33D2
mov bh,dh                                 ;F10A 8AFE
mov bl,[di+0x13]                          ;F10C 8A5D13
div bx                                    ;F10F F7F3
mov cl,dl                                 ;F111 8ACA
inc cl                                    ;F113 FEC1
cwd                                       ;F115 99
mov bl,[di+0x15]                          ;F116 8A5D15
div bx                                    ;F119 F7F3
cmp word [di+0x4d],0x1                    ;F11B 837D4D01
jnz 0xf124                                ;F11F 7503
add ax,[di+0x4f]                          ;F121 03454F
ror ah,0x0                                ;F124 D0CC
ror ah,0x0                                ;F126 D0CC
and ah,0xc0                               ;F128 80E4C0
or cl,ah                                  ;F12B 0ACC
mov ch,al                                 ;F12D 8AE8
pop ax                                    ;F12F 58
mov dh,dl                                 ;F130 8AF2
mov dl,al                                 ;F132 8AD0
xor bx,bx                                 ;F134 33DB
mov ax,0x201                              ;F136 B80102
int byte 0x13                             ;F139 CD13
pop ax                                    ;F13B 58
cmp word [es:0x3],0x4249                  ;F13C 26813E03004942
jnz 0xf161                                ;F143 751C
cmp word [es:0x5],0x204d                  ;F145 26813E05004D20
jnz 0xf161                                ;F14C 7513
cmp word [es:0x8],0x2e32                  ;F14E 26813E0800322E
jnz 0xf164                                ;F155 750D
cmp byte [es:0xa],0x30                    ;F157 26803E0A0030
jnz 0xf164                                ;F15D 7505
jmp 0xf175                                ;F15F EB14
jmp 0xf1af                                ;F161 EB4C
nop                                       ;F163 90
cmp word [es:0x8],0x2e33                  ;F164 26813E0800332E
jnz 0xf161                                ;F16B 75F4
cmp byte [es:0xa],0x31                    ;F16D 26803E0A0031
jc 0xf161                                 ;F173 72EC
mov ax,[es:0x13]                          ;F175 26A11300
dec ax                                    ;F179 48
mov dx,[es:0x16]                          ;F17A 268B161600
mov [di+0x11],dx                          ;F17F 895511
shl dx,0x0                                ;F182 D1E2
sub ax,dx                                 ;F184 2BC2
mov dx,[es:0x11]                          ;F186 268B161100
mov [di+0xc],dx                           ;F18B 89550C
mov cl,0x4                                ;F18E B104
shr dx,cl                                 ;F190 D3EA
sub ax,dx                                 ;F192 2BC2
mov cl,[es:0xd]                           ;F194 268A0E0D00
mov [di+0x8],cl                           ;F199 884D08
xor dx,dx                                 ;F19C 33D2
mov ch,dh                                 ;F19E 8AEE
div cx                                    ;F1A0 F7F1
cmp ax,0xff6                              ;F1A2 3DF60F
jc 0xf1ac                                 ;F1A5 7205
or byte [0x2a84],0x40                     ;F1A7 800E842A40
jmp 0xf211                                ;F1AC EB63
nop                                       ;F1AE 90
mov si,0x2ab6                             ;F1AF BEB62A
cmp ax,[si]                               ;F1B2 3B04
jna 0xf1bb                                ;F1B4 7605
add si,0x8                                ;F1B6 83C608
jmp 0xf1b2                                ;F1B9 EBF7
mov cl,[si+0x6]                           ;F1BB 8A4C06
or [0x2a84],cl                            ;F1BE 080E842A
mov cx,[si+0x2]                           ;F1C2 8B4C02
mov dx,[si+0x4]                           ;F1C5 8B5404
mov [di+0xc],dx                           ;F1C8 89550C
mov [di+0x8],ch                           ;F1CB 886D08
test byte [0x2a84],0x40                   ;F1CE F606842A40
jnz 0xf1f3                                ;F1D3 751E
xor bx,bx                                 ;F1D5 33DB
mov bl,ch                                 ;F1D7 8ADD
dec bx                                    ;F1D9 4B
add bx,ax                                 ;F1DA 03D8
shr bx,cl                                 ;F1DC D3EB
inc bx                                    ;F1DE 43
and bl,0xfe                               ;F1DF 80E3FE
mov si,bx                                 ;F1E2 8BF3
shr bx,0x0                                ;F1E4 D1EB
add bx,si                                 ;F1E6 03DE
add bx,0x1ff                              ;F1E8 81C3FF01
shr bh,0x0                                ;F1EC D0EF
mov [di+0x11],bh                          ;F1EE 887D11
jmp 0xf211                                ;F1F1 EB1E
mov cl,0x4                                ;F1F3 B104
shr dx,cl                                 ;F1F5 D3EA
sub ax,dx                                 ;F1F7 2BC2
dec ax                                    ;F1F9 48
mov bl,0x2                                ;F1FA B302
mov bh,[di+0x8]                           ;F1FC 8A7D08
xor dx,dx                                 ;F1FF 33D2
add ax,bx                                 ;F201 03C3
adc dx,0x0                                ;F203 83D200
sub ax,0x1                                ;F206 2D0100
sbb dx,0x0                                ;F209 83DA00
div bx                                    ;F20C F7F3
mov [di+0x11],ax                          ;F20E 894511
mov bl,[0x2a84]                           ;F211 8A1E842A
mov [di+0x19],bl                          ;F215 885D19
clc                                       ;F218 F8
pop ds                                    ;F219 1F
pop bx                                    ;F21A 5B
pop di                                    ;F21B 5F
ret                                       ;F21C C3
xor bx,bx                                 ;F21D 33DB
les di,word [cs:0x24c]                    ;F21F 2EC43E4C02
cmp di,0xffffffffffffffff                 ;F224 83FFFF
jnz 0xf22a                                ;F227 7501
ret                                       ;F229 C3
push es                                   ;F22A 06
push di                                   ;F22B 57
mov bl,[es:di+0x28]                       ;F22C 268A5D28
cmp bl,0x5                                ;F230 80FB05
jnz 0xf259                                ;F233 7524
mov ax,[es:di+0xe]                        ;F235 268B450E
push ax                                   ;F239 50
mov ax,[es:di+0x15]                       ;F23A 268B4515
mul word [es:di+0x13]                     ;F23E 26F76513
mov cx,ax                                 ;F242 8BC8
pop ax                                    ;F244 58
xor dx,dx                                 ;F245 33D2
div cx                                    ;F247 F7F1
or dx,dx                                  ;F249 0BD2
jz 0xf24e                                 ;F24B 7401
inc ax                                    ;F24D 40
mov [es:di+0x2b],ax                       ;F24E 2689452B
push es                                   ;F252 06
pop ds                                    ;F253 1F
lea si,[di+0x6]                           ;F254 8D7506
jmp 0xf291                                ;F257 EB38
push cs                                   ;F259 0E
pop ds                                    ;F25A 1F
cmp bl,0x7                                ;F25B 80FB07
jnz 0xf28a                                ;F25E 752A
xor dx,dx                                 ;F260 33D2
mov ax,[di+0x2b]                          ;F262 8B452B
mov bx,[di+0x3c]                          ;F265 8B5D3C
mul bx                                    ;F268 F7E3
mov bx,[di+0x3a]                          ;F26A 8B5D3A
mul bx                                    ;F26D F7E3
mov [di+0x35],ax                          ;F26F 894535
dec ax                                    ;F272 48
mov bx,0x3                                ;F273 BB0300
mul bx                                    ;F276 F7E3
mov bx,0x2                                ;F278 BB0200
div bx                                    ;F27B F7F3
xor dx,dx                                 ;F27D 33D2
mov bx,0x200                              ;F27F BB0002
div bx                                    ;F282 F7F3
inc ax                                    ;F284 40
mov [di+0x38],ax                          ;F285 894538
jmp 0xf299                                ;F288 EB0F
shl bx,0x0                                ;F28A D1E3
mov si,0x2b3c                             ;F28C BE3C2B
mov si,[bx+si]                            ;F28F 8B30
lea di,[di+0x2d]                          ;F291 8D7D2D
mov cx,0x1f                               ;F294 B91F00
rep movsb                                 ;F297 F3A4
pop di                                    ;F299 5F
pop es                                    ;F29A 07
mov bx,[es:di+0x2]                        ;F29B 268B5D02
mov di,[es:di]                            ;F29F 268B3D
mov es,bx                                 ;F2A2 8EC3
jmp 0xf224                                ;F2A4 E97DFF
push cx                                   ;F2A7 51
push di                                   ;F2A8 57
mov [0x2a82],cx                           ;F2A9 890E822A
mov ax,bx                                 ;F2AD 8BC3
dec ax                                    ;F2AF 48
dec ax                                    ;F2B0 48
mul cx                                    ;F2B1 F7E1
add ax,[0x2a80]                           ;F2B3 0306802A
mov dx,ax                                 ;F2B7 8BD0
push ds                                   ;F2B9 1E
push bx                                   ;F2BA 53
mov si,[0x2a87]                           ;F2BB 8B36872A
test byte [0x2a84],0x40                   ;F2BF F606842A40
jnz 0xf2de                                ;F2C4 7518
mov ds,si                                 ;F2C6 8EDE
mov si,bx                                 ;F2C8 8BF3
shr si,0x0                                ;F2CA D1EE
mov bx,[bx+si]                            ;F2CC 8B18
jnc 0xf2d8                                ;F2CE 7308
shr bx,0x0                                ;F2D0 D1EB
shr bx,0x0                                ;F2D2 D1EB
shr bx,0x0                                ;F2D4 D1EB
shr bx,0x0                                ;F2D6 D1EB
and bx,0xfff                              ;F2D8 81E3FF0F
jmp 0xf2e4                                ;F2DC EB06
mov ds,si                                 ;F2DE 8EDE
shl bx,0x0                                ;F2E0 D1E3
mov bx,[bx]                               ;F2E2 8B1F
pop si                                    ;F2E4 5E
pop ds                                    ;F2E5 1F
sub si,bx                                 ;F2E6 2BF3
cmp si,0xffffffffffffffff                 ;F2E8 83FEFF
jnz 0xf2f3                                ;F2EB 7506
add [0x2a82],cx                           ;F2ED 010E822A
jmp 0xf2b9                                ;F2F1 EBC6
push bx                                   ;F2F3 53
mov ax,[0x2a7e]                           ;F2F4 A17E2A
mov cx,[0x2a82]                           ;F2F7 8B0E822A
call 0xcd07                               ;F2FB E809DA
pop bx                                    ;F2FE 5B
pop di                                    ;F2FF 5F
mov ax,[0x2a82]                           ;F300 A1822A
xchg ah,al                                ;F303 86E0
shl ax,0x0                                ;F305 D1E0
add di,ax                                 ;F307 03F8
pop cx                                    ;F309 59
ret                                       ;F30A C3
call 0xf31d                               ;F30B E80F00
mov ah,0x1                                ;F30E B401
int byte 0x17                             ;F310 CD17
ret                                       ;F312 C3
call 0xf31d                               ;F313 E80700
mov al,0xa3                               ;F316 B0A3
mov ah,0x0                                ;F318 B400
int byte 0x14                             ;F31A CD14
ret                                       ;F31C C3
mov al,[cs:si+0xd]                        ;F31D 2E8A440D
sub al,0x31                               ;F321 2C31
cbw                                       ;F323 98
mov dx,ax                                 ;F324 8BD0
ret                                       ;F326 C3
push ds                                   ;F327 1E
push es                                   ;F328 06
push cs                                   ;F329 0E
pop es                                    ;F32A 07
push cs                                   ;F32B 0E
pop ds                                    ;F32C 1F
mov si,0x2b42                             ;F32D BE422B
lodsw                                     ;F330 AD
mov cx,ax                                 ;F331 8BC8
jcxz 0xf33e                               ;F333 E309
lodsw                                     ;F335 AD
mov di,ax                                 ;F336 8BF8
mov al,0x90                               ;F338 B090
rep stosb                                 ;F33A F3AA
jmp 0xf330                                ;F33C EBF2
mov di,0x1e                               ;F33E BF1E00
mov ax,0x68a                              ;F341 B88A06
stosw                                     ;F344 AB
stosw                                     ;F345 AB
pop es                                    ;F346 07
pop ds                                    ;F347 1F
ret                                       ;F348 C3
push ax                                   ;F349 50
mov di,0x1f3e                             ;F34A BF3E1F
mov dl,0x80                               ;F34D B280
mov ah,0x8                                ;F34F B408
int byte 0x13                             ;F351 CD13
cmp dl,0x0                                ;F353 80FA00
jz 0xf3a9                                 ;F356 7451
mov [0x2ac8],dl                           ;F358 8816C82A
xor ax,ax                                 ;F35C 33C0
mov al,[0x1c0]                            ;F35E A0C001
mov [0x2ac9],al                           ;F361 A2C92A
shl ax,0x0                                ;F364 D1E0
push bx                                   ;F366 53
mov bx,0x18e0                             ;F367 BBE018
add bx,ax                                 ;F36A 03D8
mov [0x2ad0],bx                           ;F36C 891ED02A
pop bx                                    ;F370 5B
mov byte [0x2acb],0x80                    ;F371 C606CB2A80
inc dh                                    ;F376 FEC6
xor ax,ax                                 ;F378 33C0
mov al,dh                                 ;F37A 8AC6
mov [0x2acc],ax                           ;F37C A3CC2A
xor ax,ax                                 ;F37F 33C0
and cl,0x3f                               ;F381 80E13F
mov al,cl                                 ;F384 8AC1
mov [0x2ace],ax                           ;F386 A3CE2A
mov dl,[0x2acb]                           ;F389 8A16CB2A
call 0xf065                               ;F38D E8D5FC
jc 0xf395                                 ;F390 7203
call 0xf3ab                               ;F392 E81600
dec byte [0x2ac8]                         ;F395 FE0EC82A
jz 0xf3a9                                 ;F399 740E
inc byte [0x2acb]                         ;F39B FE06CB2A
mov dl,[0x2acb]                           ;F39F 8A16CB2A
mov ah,0x8                                ;F3A3 B408
int byte 0x13                             ;F3A5 CD13
jmp 0xf376                                ;F3A7 EBCD
pop ax                                    ;F3A9 58
ret                                       ;F3AA C3
add bx,0x1c2                              ;F3AB 81C3C201
cmp byte [es:bx],0x5                      ;F3AF 26803F05
jz 0xf3c1                                 ;F3B3 740C
add bx,0x10                               ;F3B5 83C310
cmp bx,0x402                              ;F3B8 81FB0204
jnz 0xf3af                                ;F3BC 75F1
jmp 0xf450                                ;F3BE E98F00
xor ax,ax                                 ;F3C1 33C0
or al,0x1                                 ;F3C3 0C01
or [di+0x29],ax                           ;F3C5 094529
mov byte [di+0x28],0x5                    ;F3C8 C6452805
mov byte [0x2a84],0x0                     ;F3CC C606842A00
mov ax,[0x2acc]                           ;F3D1 A1CC2A
mov [di+0x15],ax                          ;F3D4 894515
mov ax,[0x2ace]                           ;F3D7 A1CE2A
mov [di+0x13],ax                          ;F3DA 894513
mov al,[0x2acb]                           ;F3DD A0CB2A
mov [di+0x4],al                           ;F3E0 884504
mov al,[0x2ac9]                           ;F3E3 A0C92A
mov [di+0x5],al                           ;F3E6 884505
cmp word [es:bx+0x8],0x40                 ;F3E9 26837F0840
jz 0xf450                                 ;F3EE 7460
sub bx,0x4                                ;F3F0 83EB04
mov dh,[es:bx+0x2]                        ;F3F3 268A7702
and dh,0xc0                               ;F3F7 80E6C0
rol dh,0x0                                ;F3FA D0C6
rol dh,0x0                                ;F3FC D0C6
mov dl,[es:bx+0x3]                        ;F3FE 268A5703
mov [di+0x4f],dx                          ;F402 89554F
mov cx,[es:bx+0x2]                        ;F405 268B4F02
mov dh,[es:bx+0x1]                        ;F409 268A7701
mov dl,[0x2acb]                           ;F40D 8A16CB2A
mov ax,0x7c0                              ;F411 B8C007
mov es,ax                                 ;F414 8EC0
mov bx,0x200                              ;F416 BB0002
mov ax,0x201                              ;F419 B80102
int byte 0x13                             ;F41C CD13
jc 0xf450                                 ;F41E 7230
mov bx,0x3c2                              ;F420 BBC203
call 0xf451                               ;F423 E82B00
jc 0xf44d                                 ;F426 7225
call 0xf457                               ;F428 E82C00
inc byte [0x2ac9]                         ;F42B FE06C92A
inc byte [0x2aca]                         ;F42F FE06CA2A
push bx                                   ;F433 53
mov bx,[0x2ad0]                           ;F434 8B1ED02A
lea si,[di+0x6]                           ;F438 8D7506
mov [bx],si                               ;F43B 8937
inc word [0x2ad0]                         ;F43D FF06D02A
inc word [0x2ad0]                         ;F441 FF06D02A
pop bx                                    ;F445 5B
add di,0x51                               ;F446 83C751
mov [0x2ac6],di                           ;F449 893EC62A
jmp 0xf3af                                ;F44D E95FFF
ret                                       ;F450 C3
push di                                   ;F451 57
push bx                                   ;F452 53
push ds                                   ;F453 1E
jmp 0xf0b8                                ;F454 E961FC
push ax                                   ;F457 50
push si                                   ;F458 56
push es                                   ;F459 06
les si,word [cs:0x24c]                    ;F45A 2EC4364C02
cmp word [es:si],0xffffffffffffffff       ;F45F 26833CFF
jz 0xf470                                 ;F463 740B
mov si,[es:si]                            ;F465 268B34
mov ax,[es:si+0x2]                        ;F468 268B4402
mov es,ax                                 ;F46C 8EC0
jmp 0xf45f                                ;F46E EBEF
mov ax,ds                                 ;F470 8CD8
mov [di+0x2],ax                           ;F472 894502
mov [es:si+0x2],ax                        ;F475 26894402
mov [es:si],di                            ;F479 26893C
mov word [di],0xffff                      ;F47C C705FFFF
pop es                                    ;F480 07
pop si                                    ;F481 5E
pop ax                                    ;F482 58
ret                                       ;F483 C3
push ax                                   ;F484 50
push cx                                   ;F485 51
push dx                                   ;F486 52
push bp                                   ;F487 55
xor bp,bp                                 ;F488 33ED
xor cx,cx                                 ;F48A 33C9
xor dx,dx                                 ;F48C 33D2
mov ah,0x2                                ;F48E B402
int byte 0x1a                             ;F490 CD1A
cmp cx,0x0                                ;F492 83F900
jnz 0xf4a9                                ;F495 7512
cmp dx,0x0                                ;F497 83FA00
jnz 0xf4a9                                ;F49A 750D
cmp bp,0x1                                ;F49C 83FD01
jz 0xf4bd                                 ;F49F 741C
inc bp                                    ;F4A1 45
mov cx,0x4000                             ;F4A2 B90040
loop 0xf4a5                               ;F4A5 E2FE
jmp 0xf48a                                ;F4A7 EBE1
mov byte [cs:0x8be],0x1                   ;F4A9 2EC606BE0801
call 0xf4c2                               ;F4AF E81000
push si                                   ;F4B2 56
call 0xe8b6                               ;F4B3 E800F4
cli                                       ;F4B6 FA
mov [0x5da],si                            ;F4B7 8936DA05
sti                                       ;F4BB FB
pop si                                    ;F4BC 5E
pop bp                                    ;F4BD 5D
pop dx                                    ;F4BE 5A
pop cx                                    ;F4BF 59
pop ax                                    ;F4C0 58
ret                                       ;F4C1 C3
push ax                                   ;F4C2 50
cmp byte [cs:0x2a8c],0xfc                 ;F4C3 2E803E8C2AFC
jnz 0xf4f0                                ;F4C9 7525
cmp byte [cs:0x2a8d],0x6                  ;F4CB 2E803E8D2A06
jz 0xf4db                                 ;F4D1 7408
cmp byte [cs:0x2a8d],0x4                  ;F4D3 2E803E8D2A04
jnc 0xf4f0                                ;F4D9 7315
mov al,0x8a                               ;F4DB B08A
mov ah,0x26                               ;F4DD B426
call 0xf512                               ;F4DF E83000
mov al,0x8b                               ;F4E2 B08B
call 0xf4f2                               ;F4E4 E80B00
and al,0x7                                ;F4E7 2407
mov ah,al                                 ;F4E9 8AE0
mov al,0xb                                ;F4EB B00B
call 0xf512                               ;F4ED E82200
pop ax                                    ;F4F0 58
ret                                       ;F4F1 C3
pushf                                     ;F4F2 9C
cli                                       ;F4F3 FA
push bx                                   ;F4F4 53
push ax                                   ;F4F5 50
or al,0x80                                ;F4F6 0C80
out byte 0x70,al                          ;F4F8 E670
nop                                       ;F4FA 90
in al,byte 0x71                           ;F4FB E471
mov bx,ax                                 ;F4FD 8BD8
pop ax                                    ;F4FF 58
and al,0x80                               ;F500 2480
or al,0xf                                 ;F502 0C0F
out byte 0x70,al                          ;F504 E670
nop                                       ;F506 90
in al,byte 0x71                           ;F507 E471
mov ax,bx                                 ;F509 8BC3
pop bx                                    ;F50B 5B
push cs                                   ;F50C 0E
call 0xf511                               ;F50D E80100
ret                                       ;F510 C3
iret                                      ;F511 CF
pushf                                     ;F512 9C
push ax                                   ;F513 50
cli                                       ;F514 FA
push ax                                   ;F515 50
or al,0x80                                ;F516 0C80
out byte 0x70,al                          ;F518 E670
nop                                       ;F51A 90
mov al,ah                                 ;F51B 8AC4
out byte 0x71,al                          ;F51D E671
pop ax                                    ;F51F 58
and al,0x80                               ;F520 2480
or al,0xf                                 ;F522 0C0F
out byte 0x70,al                          ;F524 E670
nop                                       ;F526 90
in al,byte 0x71                           ;F527 E471
pop ax                                    ;F529 58
push cs                                   ;F52A 0E
call 0xf511                               ;F52B E8E3FF
ret                                       ;F52E C3
add [bx+si],al                            ;F52F 0000
add [bx+si],al                            ;F531 0000
add [bx+si],al                            ;F533 0000
add [bx+si],al                            ;F535 0000
add [bx+si],al                            ;F537 0000
add [bx+si],al                            ;F539 0000
or [bx+si],al                             ;F53B 0800
dec ax                                    ;F53D 48
add [bx+si+0x0],cl                        ;F53E 004800
add [bx+si],al                            ;F541 0000
add [bx+si],al                            ;F543 0000
push ax                                   ;F545 50
push es                                   ;F546 06
mov ax,0xf000                             ;F547 B800F0
mov es,ax                                 ;F54A 8EC0
cmp byte [es:0xfffe],0xf9                 ;F54C 26803EFEFFF9
pop es                                    ;F552 07
jnz 0xf561                                ;F553 750C
in al,byte 0x62                           ;F555 E462
test al,0x80                              ;F557 A880
jz 0xf561                                 ;F559 7406
pop ax                                    ;F55B 58
jmp word far [cs:0x12]                    ;F55C 2EFF2E1200
push bp                                   ;F561 55
push es                                   ;F562 06
mov es,word [cs:0xa]                      ;F563 2E8E060A00
mov bp,[cs:0x10]                          ;F568 2E8B2E1000
mov al,0x1                                ;F56D B001
xchg al,[es:bp+0x0]                       ;F56F 26864600
cmp al,0x0                                ;F573 3C00
jnz 0xf5b9                                ;F575 7542
sub word [cs:0x10],0x8                    ;F577 2E832E100008
mov [es:bp+0x2],sp                        ;F57D 26896602
mov word [es:bp+0x4],ss                   ;F581 268C5604
mov ax,bp                                 ;F585 8BC5
mov bp,[es:bp+0x6]                        ;F587 268B6E06
cmp [es:bp+0x0],ax                        ;F58B 26394600
jnz 0xf5c6                                ;F58F 7535
mov ax,es                                 ;F591 8CC0
mov ss,ax                                 ;F593 8ED0
mov sp,bp                                 ;F595 8BE5
pushf                                     ;F597 9C
call word far [cs:0x12]                   ;F598 2EFF1E1200
mov bp,sp                                 ;F59D 8BEC
mov bp,[es:bp+0x0]                        ;F59F 268B6E00
mov ss,word [es:bp+0x4]                   ;F5A3 268E5604
mov sp,[es:bp+0x2]                        ;F5A7 268B6602
mov byte [es:bp+0x0],0x0                  ;F5AB 26C6460000
mov [cs:0x10],bp                          ;F5B0 2E892E1000
pop es                                    ;F5B5 07
pop bp                                    ;F5B6 5D
pop ax                                    ;F5B7 58
iret                                      ;F5B8 CF
cmp al,0x1                                ;F5B9 3C01
jz 0xf5c1                                 ;F5BB 7404
xchg al,[es:bp+0x0]                       ;F5BD 26864600
call 0xfc99                               ;F5C1 E8D506
jmp 0xf57d                                ;F5C4 EBB7
cmp bp,[cs:0xc]                           ;F5C6 2E3B2E0C00
jc 0xf5c1                                 ;F5CB 72F4
mov bp,ax                                 ;F5CD 8BE8
mov byte [es:bp+0x0],0x3                  ;F5CF 26C6460003
jmp 0xf5c1                                ;F5D4 EBEB
add [bx+si],al                            ;F5D6 0000
add [bx+si],al                            ;F5D8 0000
push ax                                   ;F5DA 50
push bp                                   ;F5DB 55
push es                                   ;F5DC 06
mov es,word [cs:0xa]                      ;F5DD 2E8E060A00
mov bp,[cs:0x10]                          ;F5E2 2E8B2E1000
mov al,0x1                                ;F5E7 B001
xchg al,[es:bp+0x0]                       ;F5E9 26864600
cmp al,0x0                                ;F5ED 3C00
jnz 0xf633                                ;F5EF 7542
sub word [cs:0x10],0x8                    ;F5F1 2E832E100008
mov [es:bp+0x2],sp                        ;F5F7 26896602
mov word [es:bp+0x4],ss                   ;F5FB 268C5604
mov ax,bp                                 ;F5FF 8BC5
mov bp,[es:bp+0x6]                        ;F601 268B6E06
cmp [es:bp+0x0],ax                        ;F605 26394600
jnz 0xf640                                ;F609 7535
mov ax,es                                 ;F60B 8CC0
mov ss,ax                                 ;F60D 8ED0
mov sp,bp                                 ;F60F 8BE5
pushf                                     ;F611 9C
call word far [cs:0xa7]                   ;F612 2EFF1EA700
mov bp,sp                                 ;F617 8BEC
mov bp,[es:bp+0x0]                        ;F619 268B6E00
mov ss,word [es:bp+0x4]                   ;F61D 268E5604
mov sp,[es:bp+0x2]                        ;F621 268B6602
mov byte [es:bp+0x0],0x0                  ;F625 26C6460000
mov [cs:0x10],bp                          ;F62A 2E892E1000
pop es                                    ;F62F 07
pop bp                                    ;F630 5D
pop ax                                    ;F631 58
iret                                      ;F632 CF
cmp al,0x1                                ;F633 3C01
jz 0xf63b                                 ;F635 7404
xchg al,[es:bp+0x0]                       ;F637 26864600
call 0xfc99                               ;F63B E85B06
jmp 0xf5f7                                ;F63E EBB7
cmp bp,[cs:0xc]                           ;F640 2E3B2E0C00
jc 0xf63b                                 ;F645 72F4
mov bp,ax                                 ;F647 8BE8
mov byte [es:bp+0x0],0x3                  ;F649 26C6460003
jmp 0xf63b                                ;F64E EBEB
add [bx+si],al                            ;F650 0000
add [bx+si],al                            ;F652 0000
jmp 0xf659                                ;F654 EB03
nop                                       ;F656 90
nop                                       ;F657 90
add [bx+si+0x55],dl                       ;F658 005055
push es                                   ;F65B 06
mov es,word [cs:0xa]                      ;F65C 2E8E060A00
mov bp,[cs:0x10]                          ;F661 2E8B2E1000
mov al,0x1                                ;F666 B001
xchg al,[es:bp+0x0]                       ;F668 26864600
cmp al,0x0                                ;F66C 3C00
jnz 0xf6b2                                ;F66E 7542
sub word [cs:0x10],0x8                    ;F670 2E832E100008
mov [es:bp+0x2],sp                        ;F676 26896602
mov word [es:bp+0x4],ss                   ;F67A 268C5604
mov ax,bp                                 ;F67E 8BC5
mov bp,[es:bp+0x6]                        ;F680 268B6E06
cmp [es:bp+0x0],ax                        ;F684 26394600
jnz 0xf6bf                                ;F688 7535
mov ax,es                                 ;F68A 8CC0
mov ss,ax                                 ;F68C 8ED0
mov sp,bp                                 ;F68E 8BE5
pushf                                     ;F690 9C
call word far [cs:0x121]                  ;F691 2EFF1E2101
mov bp,sp                                 ;F696 8BEC
mov bp,[es:bp+0x0]                        ;F698 268B6E00
mov ss,word [es:bp+0x4]                   ;F69C 268E5604
mov sp,[es:bp+0x2]                        ;F6A0 268B6602
mov byte [es:bp+0x0],0x0                  ;F6A4 26C6460000
mov [cs:0x10],bp                          ;F6A9 2E892E1000
pop es                                    ;F6AE 07
pop bp                                    ;F6AF 5D
pop ax                                    ;F6B0 58
iret                                      ;F6B1 CF
cmp al,0x1                                ;F6B2 3C01
jz 0xf6ba                                 ;F6B4 7404
xchg al,[es:bp+0x0]                       ;F6B6 26864600
call 0xfc99                               ;F6BA E8DC05
jmp 0xf676                                ;F6BD EBB7
cmp bp,[cs:0xc]                           ;F6BF 2E3B2E0C00
jc 0xf6ba                                 ;F6C4 72F4
mov bp,ax                                 ;F6C6 8BE8
mov byte [es:bp+0x0],0x3                  ;F6C8 26C6460003
jmp 0xf6ba                                ;F6CD EBEB
add [bx+si],al                            ;F6CF 0000
add [bx+si],al                            ;F6D1 0000
push ax                                   ;F6D3 50
push bp                                   ;F6D4 55
push es                                   ;F6D5 06
mov es,word [cs:0xa]                      ;F6D6 2E8E060A00
mov bp,[cs:0x10]                          ;F6DB 2E8B2E1000
mov al,0x1                                ;F6E0 B001
xchg al,[es:bp+0x0]                       ;F6E2 26864600
cmp al,0x0                                ;F6E6 3C00
jnz 0xf72c                                ;F6E8 7542
sub word [cs:0x10],0x8                    ;F6EA 2E832E100008
mov [es:bp+0x2],sp                        ;F6F0 26896602
mov word [es:bp+0x4],ss                   ;F6F4 268C5604
mov ax,bp                                 ;F6F8 8BC5
mov bp,[es:bp+0x6]                        ;F6FA 268B6E06
cmp [es:bp+0x0],ax                        ;F6FE 26394600
jnz 0xf739                                ;F702 7535
mov ax,es                                 ;F704 8CC0
mov ss,ax                                 ;F706 8ED0
mov sp,bp                                 ;F708 8BE5
pushf                                     ;F70A 9C
call word far [cs:0x1a0]                  ;F70B 2EFF1EA001
mov bp,sp                                 ;F710 8BEC
mov bp,[es:bp+0x0]                        ;F712 268B6E00
mov ss,word [es:bp+0x4]                   ;F716 268E5604
mov sp,[es:bp+0x2]                        ;F71A 268B6602
mov byte [es:bp+0x0],0x0                  ;F71E 26C6460000
mov [cs:0x10],bp                          ;F723 2E892E1000
pop es                                    ;F728 07
pop bp                                    ;F729 5D
pop ax                                    ;F72A 58
iret                                      ;F72B CF
cmp al,0x1                                ;F72C 3C01
jz 0xf734                                 ;F72E 7404
xchg al,[es:bp+0x0]                       ;F730 26864600
call 0xfc99                               ;F734 E86205
jmp 0xf6f0                                ;F737 EBB7
cmp bp,[cs:0xc]                           ;F739 2E3B2E0C00
jc 0xf734                                 ;F73E 72F4
mov bp,ax                                 ;F740 8BE8
mov byte [es:bp+0x0],0x3                  ;F742 26C6460003
jmp 0xf734                                ;F747 EBEB
jmp 0xf75b                                ;F749 EB10
add [bx+si],al                            ;F74B 0000
add [bx+si],al                            ;F74D 0000
dec bx                                    ;F74F 4B
inc dx                                    ;F750 42
add bl,ch                                 ;F751 00EB
pop di                                    ;F753 5F
add [bx+si],al                            ;F754 0000
add [bx+si],al                            ;F756 0000
add [bx+si],al                            ;F758 0000
add [bx+si+0x55],dl                       ;F75A 005055
push es                                   ;F75D 06
mov es,word [cs:0xa]                      ;F75E 2E8E060A00
mov bp,[cs:0x10]                          ;F763 2E8B2E1000
mov al,0x1                                ;F768 B001
xchg al,[es:bp+0x0]                       ;F76A 26864600
cmp al,0x0                                ;F76E 3C00
jnz 0xf7b4                                ;F770 7542
sub word [cs:0x10],0x8                    ;F772 2E832E100008
mov [es:bp+0x2],sp                        ;F778 26896602
mov word [es:bp+0x4],ss                   ;F77C 268C5604
mov ax,bp                                 ;F780 8BC5
mov bp,[es:bp+0x6]                        ;F782 268B6E06
cmp [es:bp+0x0],ax                        ;F786 26394600
jnz 0xf7c1                                ;F78A 7535
mov ax,es                                 ;F78C 8CC0
mov ss,ax                                 ;F78E 8ED0
mov sp,bp                                 ;F790 8BE5
pushf                                     ;F792 9C
call word far [cs:0x21c]                  ;F793 2EFF1E1C02
mov bp,sp                                 ;F798 8BEC
mov bp,[es:bp+0x0]                        ;F79A 268B6E00
mov ss,word [es:bp+0x4]                   ;F79E 268E5604
mov sp,[es:bp+0x2]                        ;F7A2 268B6602
mov byte [es:bp+0x0],0x0                  ;F7A6 26C6460000
mov [cs:0x10],bp                          ;F7AB 2E892E1000
pop es                                    ;F7B0 07
pop bp                                    ;F7B1 5D
pop ax                                    ;F7B2 58
iret                                      ;F7B3 CF
cmp al,0x1                                ;F7B4 3C01
jz 0xf7bc                                 ;F7B6 7404
xchg al,[es:bp+0x0]                       ;F7B8 26864600
call 0xfc99                               ;F7BC E8DA04
jmp 0xf778                                ;F7BF EBB7
cmp bp,[cs:0xc]                           ;F7C1 2E3B2E0C00
jc 0xf7bc                                 ;F7C6 72F4
mov bp,ax                                 ;F7C8 8BE8
mov byte [es:bp+0x0],0x3                  ;F7CA 26C6460003
jmp 0xf7bc                                ;F7CF EBEB
jmp 0xf7e3                                ;F7D1 EB10
add [bx+si],al                            ;F7D3 0000
add [bx+si],al                            ;F7D5 0000
dec bx                                    ;F7D7 4B
inc dx                                    ;F7D8 42
add bl,ch                                 ;F7D9 00EB
pop di                                    ;F7DB 5F
add [bx+si],al                            ;F7DC 0000
add [bx+si],al                            ;F7DE 0000
add [bx+si],al                            ;F7E0 0000
add [bx+si+0x55],dl                       ;F7E2 005055
push es                                   ;F7E5 06
mov es,word [cs:0xa]                      ;F7E6 2E8E060A00
mov bp,[cs:0x10]                          ;F7EB 2E8B2E1000
mov al,0x1                                ;F7F0 B001
xchg al,[es:bp+0x0]                       ;F7F2 26864600
cmp al,0x0                                ;F7F6 3C00
jnz 0xf83c                                ;F7F8 7542
sub word [cs:0x10],0x8                    ;F7FA 2E832E100008
mov [es:bp+0x2],sp                        ;F800 26896602
mov word [es:bp+0x4],ss                   ;F804 268C5604
mov ax,bp                                 ;F808 8BC5
mov bp,[es:bp+0x6]                        ;F80A 268B6E06
cmp [es:bp+0x0],ax                        ;F80E 26394600
jnz 0xf849                                ;F812 7535
mov ax,es                                 ;F814 8CC0
mov ss,ax                                 ;F816 8ED0
mov sp,bp                                 ;F818 8BE5
pushf                                     ;F81A 9C
call word far [cs:0x2a4]                  ;F81B 2EFF1EA402
mov bp,sp                                 ;F820 8BEC
mov bp,[es:bp+0x0]                        ;F822 268B6E00
mov ss,word [es:bp+0x4]                   ;F826 268E5604
mov sp,[es:bp+0x2]                        ;F82A 268B6602
mov byte [es:bp+0x0],0x0                  ;F82E 26C6460000
mov [cs:0x10],bp                          ;F833 2E892E1000
pop es                                    ;F838 07
pop bp                                    ;F839 5D
pop ax                                    ;F83A 58
iret                                      ;F83B CF
cmp al,0x1                                ;F83C 3C01
jz 0xf844                                 ;F83E 7404
xchg al,[es:bp+0x0]                       ;F840 26864600
call 0xfc99                               ;F844 E85204
jmp 0xf800                                ;F847 EBB7
cmp bp,[cs:0xc]                           ;F849 2E3B2E0C00
jc 0xf844                                 ;F84E 72F4
mov bp,ax                                 ;F850 8BE8
mov byte [es:bp+0x0],0x3                  ;F852 26C6460003
jmp 0xf844                                ;F857 EBEB
jmp 0xf86b                                ;F859 EB10
add [bx+si],al                            ;F85B 0000
add [bx+si],al                            ;F85D 0000
dec bx                                    ;F85F 4B
inc dx                                    ;F860 42
add bl,ch                                 ;F861 00EB
pop di                                    ;F863 5F
add [bx+si],al                            ;F864 0000
add [bx+si],al                            ;F866 0000
add [bx+si],al                            ;F868 0000
add [bx+si+0x55],dl                       ;F86A 005055
push es                                   ;F86D 06
mov es,word [cs:0xa]                      ;F86E 2E8E060A00
mov bp,[cs:0x10]                          ;F873 2E8B2E1000
mov al,0x1                                ;F878 B001
xchg al,[es:bp+0x0]                       ;F87A 26864600
cmp al,0x0                                ;F87E 3C00
jnz 0xf8c4                                ;F880 7542
sub word [cs:0x10],0x8                    ;F882 2E832E100008
mov [es:bp+0x2],sp                        ;F888 26896602
mov word [es:bp+0x4],ss                   ;F88C 268C5604
mov ax,bp                                 ;F890 8BC5
mov bp,[es:bp+0x6]                        ;F892 268B6E06
cmp [es:bp+0x0],ax                        ;F896 26394600
jnz 0xf8d1                                ;F89A 7535
mov ax,es                                 ;F89C 8CC0
mov ss,ax                                 ;F89E 8ED0
mov sp,bp                                 ;F8A0 8BE5
pushf                                     ;F8A2 9C
call word far [cs:0x32c]                  ;F8A3 2EFF1E2C03
mov bp,sp                                 ;F8A8 8BEC
mov bp,[es:bp+0x0]                        ;F8AA 268B6E00
mov ss,word [es:bp+0x4]                   ;F8AE 268E5604
mov sp,[es:bp+0x2]                        ;F8B2 268B6602
mov byte [es:bp+0x0],0x0                  ;F8B6 26C6460000
mov [cs:0x10],bp                          ;F8BB 2E892E1000
pop es                                    ;F8C0 07
pop bp                                    ;F8C1 5D
pop ax                                    ;F8C2 58
iret                                      ;F8C3 CF
cmp al,0x1                                ;F8C4 3C01
jz 0xf8cc                                 ;F8C6 7404
xchg al,[es:bp+0x0]                       ;F8C8 26864600
call 0xfc99                               ;F8CC E8CA03
jmp 0xf888                                ;F8CF EBB7
cmp bp,[cs:0xc]                           ;F8D1 2E3B2E0C00
jc 0xf8cc                                 ;F8D6 72F4
mov bp,ax                                 ;F8D8 8BE8
mov byte [es:bp+0x0],0x3                  ;F8DA 26C6460003
jmp 0xf8cc                                ;F8DF EBEB
jmp 0xf8f3                                ;F8E1 EB10
add [bx+si],al                            ;F8E3 0000
add [bx+si],al                            ;F8E5 0000
dec bx                                    ;F8E7 4B
inc dx                                    ;F8E8 42
add bl,ch                                 ;F8E9 00EB
pop di                                    ;F8EB 5F
add [bx+si],al                            ;F8EC 0000
add [bx+si],al                            ;F8EE 0000
add [bx+si],al                            ;F8F0 0000
add [bx+si+0x55],dl                       ;F8F2 005055
push es                                   ;F8F5 06
mov es,word [cs:0xa]                      ;F8F6 2E8E060A00
mov bp,[cs:0x10]                          ;F8FB 2E8B2E1000
mov al,0x1                                ;F900 B001
xchg al,[es:bp+0x0]                       ;F902 26864600
cmp al,0x0                                ;F906 3C00
jnz 0xf94c                                ;F908 7542
sub word [cs:0x10],0x8                    ;F90A 2E832E100008
mov [es:bp+0x2],sp                        ;F910 26896602
mov word [es:bp+0x4],ss                   ;F914 268C5604
mov ax,bp                                 ;F918 8BC5
mov bp,[es:bp+0x6]                        ;F91A 268B6E06
cmp [es:bp+0x0],ax                        ;F91E 26394600
jnz 0xf959                                ;F922 7535
mov ax,es                                 ;F924 8CC0
mov ss,ax                                 ;F926 8ED0
mov sp,bp                                 ;F928 8BE5
pushf                                     ;F92A 9C
call word far [cs:0x3b4]                  ;F92B 2EFF1EB403
mov bp,sp                                 ;F930 8BEC
mov bp,[es:bp+0x0]                        ;F932 268B6E00
mov ss,word [es:bp+0x4]                   ;F936 268E5604
mov sp,[es:bp+0x2]                        ;F93A 268B6602
mov byte [es:bp+0x0],0x0                  ;F93E 26C6460000
mov [cs:0x10],bp                          ;F943 2E892E1000
pop es                                    ;F948 07
pop bp                                    ;F949 5D
pop ax                                    ;F94A 58
iret                                      ;F94B CF
cmp al,0x1                                ;F94C 3C01
jz 0xf954                                 ;F94E 7404
xchg al,[es:bp+0x0]                       ;F950 26864600
call 0xfc99                               ;F954 E84203
jmp 0xf910                                ;F957 EBB7
cmp bp,[cs:0xc]                           ;F959 2E3B2E0C00
jc 0xf954                                 ;F95E 72F4
mov bp,ax                                 ;F960 8BE8
mov byte [es:bp+0x0],0x3                  ;F962 26C6460003
jmp 0xf954                                ;F967 EBEB
jmp 0xf97b                                ;F969 EB10
add [bx+si],al                            ;F96B 0000
add [bx+si],al                            ;F96D 0000
dec bx                                    ;F96F 4B
inc dx                                    ;F970 42
add bl,ch                                 ;F971 00EB
pop di                                    ;F973 5F
add [bx+si],al                            ;F974 0000
add [bx+si],al                            ;F976 0000
add [bx+si],al                            ;F978 0000
add [bx+si+0x55],dl                       ;F97A 005055
push es                                   ;F97D 06
mov es,word [cs:0xa]                      ;F97E 2E8E060A00
mov bp,[cs:0x10]                          ;F983 2E8B2E1000
mov al,0x1                                ;F988 B001
xchg al,[es:bp+0x0]                       ;F98A 26864600
cmp al,0x0                                ;F98E 3C00
jnz 0xf9d4                                ;F990 7542
sub word [cs:0x10],0x8                    ;F992 2E832E100008
mov [es:bp+0x2],sp                        ;F998 26896602
mov word [es:bp+0x4],ss                   ;F99C 268C5604
mov ax,bp                                 ;F9A0 8BC5
mov bp,[es:bp+0x6]                        ;F9A2 268B6E06
cmp [es:bp+0x0],ax                        ;F9A6 26394600
jnz 0xf9e1                                ;F9AA 7535
mov ax,es                                 ;F9AC 8CC0
mov ss,ax                                 ;F9AE 8ED0
mov sp,bp                                 ;F9B0 8BE5
pushf                                     ;F9B2 9C
call word far [cs:0x43c]                  ;F9B3 2EFF1E3C04
mov bp,sp                                 ;F9B8 8BEC
mov bp,[es:bp+0x0]                        ;F9BA 268B6E00
mov ss,word [es:bp+0x4]                   ;F9BE 268E5604
mov sp,[es:bp+0x2]                        ;F9C2 268B6602
mov byte [es:bp+0x0],0x0                  ;F9C6 26C6460000
mov [cs:0x10],bp                          ;F9CB 2E892E1000
pop es                                    ;F9D0 07
pop bp                                    ;F9D1 5D
pop ax                                    ;F9D2 58
iret                                      ;F9D3 CF
cmp al,0x1                                ;F9D4 3C01
jz 0xf9dc                                 ;F9D6 7404
xchg al,[es:bp+0x0]                       ;F9D8 26864600
call 0xfc99                               ;F9DC E8BA02
jmp 0xf998                                ;F9DF EBB7
cmp bp,[cs:0xc]                           ;F9E1 2E3B2E0C00
jc 0xf9dc                                 ;F9E6 72F4
mov bp,ax                                 ;F9E8 8BE8
mov byte [es:bp+0x0],0x3                  ;F9EA 26C6460003
jmp 0xf9dc                                ;F9EF EBEB
jmp 0xfa03                                ;F9F1 EB10
add [bx+si],al                            ;F9F3 0000
add [bx+si],al                            ;F9F5 0000
dec bx                                    ;F9F7 4B
inc dx                                    ;F9F8 42
add bl,ch                                 ;F9F9 00EB
pop di                                    ;F9FB 5F
add [bx+si],al                            ;F9FC 0000
add [bx+si],al                            ;F9FE 0000
add [bx+si],al                            ;FA00 0000
add [bx+si+0x55],dl                       ;FA02 005055
push es                                   ;FA05 06
mov es,word [cs:0xa]                      ;FA06 2E8E060A00
mov bp,[cs:0x10]                          ;FA0B 2E8B2E1000
mov al,0x1                                ;FA10 B001
xchg al,[es:bp+0x0]                       ;FA12 26864600
cmp al,0x0                                ;FA16 3C00
jnz 0xfa5c                                ;FA18 7542
sub word [cs:0x10],0x8                    ;FA1A 2E832E100008
mov [es:bp+0x2],sp                        ;FA20 26896602
mov word [es:bp+0x4],ss                   ;FA24 268C5604
mov ax,bp                                 ;FA28 8BC5
mov bp,[es:bp+0x6]                        ;FA2A 268B6E06
cmp [es:bp+0x0],ax                        ;FA2E 26394600
jnz 0xfa69                                ;FA32 7535
mov ax,es                                 ;FA34 8CC0
mov ss,ax                                 ;FA36 8ED0
mov sp,bp                                 ;FA38 8BE5
pushf                                     ;FA3A 9C
call word far [cs:0x4c4]                  ;FA3B 2EFF1EC404
mov bp,sp                                 ;FA40 8BEC
mov bp,[es:bp+0x0]                        ;FA42 268B6E00
mov ss,word [es:bp+0x4]                   ;FA46 268E5604
mov sp,[es:bp+0x2]                        ;FA4A 268B6602
mov byte [es:bp+0x0],0x0                  ;FA4E 26C6460000
mov [cs:0x10],bp                          ;FA53 2E892E1000
pop es                                    ;FA58 07
pop bp                                    ;FA59 5D
pop ax                                    ;FA5A 58
iret                                      ;FA5B CF
cmp al,0x1                                ;FA5C 3C01
jz 0xfa64                                 ;FA5E 7404
xchg al,[es:bp+0x0]                       ;FA60 26864600
call 0xfc99                               ;FA64 E83202
jmp 0xfa20                                ;FA67 EBB7
cmp bp,[cs:0xc]                           ;FA69 2E3B2E0C00
jc 0xfa64                                 ;FA6E 72F4
mov bp,ax                                 ;FA70 8BE8
mov byte [es:bp+0x0],0x3                  ;FA72 26C6460003
jmp 0xfa64                                ;FA77 EBEB
jmp 0xfa8b                                ;FA79 EB10
add [bx+si],al                            ;FA7B 0000
add [bx+si],al                            ;FA7D 0000
dec bx                                    ;FA7F 4B
inc dx                                    ;FA80 42
add bl,ch                                 ;FA81 00EB
pop di                                    ;FA83 5F
add [bx+si],al                            ;FA84 0000
add [bx+si],al                            ;FA86 0000
add [bx+si],al                            ;FA88 0000
add [bx+si+0x55],dl                       ;FA8A 005055
push es                                   ;FA8D 06
mov es,word [cs:0xa]                      ;FA8E 2E8E060A00
mov bp,[cs:0x10]                          ;FA93 2E8B2E1000
mov al,0x1                                ;FA98 B001
xchg al,[es:bp+0x0]                       ;FA9A 26864600
cmp al,0x0                                ;FA9E 3C00
jnz 0xfae4                                ;FAA0 7542
sub word [cs:0x10],0x8                    ;FAA2 2E832E100008
mov [es:bp+0x2],sp                        ;FAA8 26896602
mov word [es:bp+0x4],ss                   ;FAAC 268C5604
mov ax,bp                                 ;FAB0 8BC5
mov bp,[es:bp+0x6]                        ;FAB2 268B6E06
cmp [es:bp+0x0],ax                        ;FAB6 26394600
jnz 0xfaf1                                ;FABA 7535
mov ax,es                                 ;FABC 8CC0
mov ss,ax                                 ;FABE 8ED0
mov sp,bp                                 ;FAC0 8BE5
pushf                                     ;FAC2 9C
call word far [cs:0x54c]                  ;FAC3 2EFF1E4C05
mov bp,sp                                 ;FAC8 8BEC
mov bp,[es:bp+0x0]                        ;FACA 268B6E00
mov ss,word [es:bp+0x4]                   ;FACE 268E5604
mov sp,[es:bp+0x2]                        ;FAD2 268B6602
mov byte [es:bp+0x0],0x0                  ;FAD6 26C6460000
mov [cs:0x10],bp                          ;FADB 2E892E1000
pop es                                    ;FAE0 07
pop bp                                    ;FAE1 5D
pop ax                                    ;FAE2 58
iret                                      ;FAE3 CF
cmp al,0x1                                ;FAE4 3C01
jz 0xfaec                                 ;FAE6 7404
xchg al,[es:bp+0x0]                       ;FAE8 26864600
call 0xfc99                               ;FAEC E8AA01
jmp 0xfaa8                                ;FAEF EBB7
cmp bp,[cs:0xc]                           ;FAF1 2E3B2E0C00
jc 0xfaec                                 ;FAF6 72F4
mov bp,ax                                 ;FAF8 8BE8
mov byte [es:bp+0x0],0x3                  ;FAFA 26C6460003
jmp 0xfaec                                ;FAFF EBEB
jmp 0xfb13                                ;FB01 EB10
add [bx+si],al                            ;FB03 0000
add [bx+si],al                            ;FB05 0000
dec bx                                    ;FB07 4B
inc dx                                    ;FB08 42
add bl,ch                                 ;FB09 00EB
pop di                                    ;FB0B 5F
add [bx+si],al                            ;FB0C 0000
add [bx+si],al                            ;FB0E 0000
add [bx+si],al                            ;FB10 0000
add [bx+si+0x55],dl                       ;FB12 005055
push es                                   ;FB15 06
mov es,word [cs:0xa]                      ;FB16 2E8E060A00
mov bp,[cs:0x10]                          ;FB1B 2E8B2E1000
mov al,0x1                                ;FB20 B001
xchg al,[es:bp+0x0]                       ;FB22 26864600
cmp al,0x0                                ;FB26 3C00
jnz 0xfb6c                                ;FB28 7542
sub word [cs:0x10],0x8                    ;FB2A 2E832E100008
mov [es:bp+0x2],sp                        ;FB30 26896602
mov word [es:bp+0x4],ss                   ;FB34 268C5604
mov ax,bp                                 ;FB38 8BC5
mov bp,[es:bp+0x6]                        ;FB3A 268B6E06
cmp [es:bp+0x0],ax                        ;FB3E 26394600
jnz 0xfb79                                ;FB42 7535
mov ax,es                                 ;FB44 8CC0
mov ss,ax                                 ;FB46 8ED0
mov sp,bp                                 ;FB48 8BE5
pushf                                     ;FB4A 9C
call word far [cs:0x5d4]                  ;FB4B 2EFF1ED405
mov bp,sp                                 ;FB50 8BEC
mov bp,[es:bp+0x0]                        ;FB52 268B6E00
mov ss,word [es:bp+0x4]                   ;FB56 268E5604
mov sp,[es:bp+0x2]                        ;FB5A 268B6602
mov byte [es:bp+0x0],0x0                  ;FB5E 26C6460000
mov [cs:0x10],bp                          ;FB63 2E892E1000
pop es                                    ;FB68 07
pop bp                                    ;FB69 5D
pop ax                                    ;FB6A 58
iret                                      ;FB6B CF
cmp al,0x1                                ;FB6C 3C01
jz 0xfb74                                 ;FB6E 7404
xchg al,[es:bp+0x0]                       ;FB70 26864600
call 0xfc99                               ;FB74 E82201
jmp 0xfb30                                ;FB77 EBB7
cmp bp,[cs:0xc]                           ;FB79 2E3B2E0C00
jc 0xfb74                                 ;FB7E 72F4
mov bp,ax                                 ;FB80 8BE8
mov byte [es:bp+0x0],0x3                  ;FB82 26C6460003
jmp 0xfb74                                ;FB87 EBEB
jmp 0xfb9b                                ;FB89 EB10
add [bx+si],al                            ;FB8B 0000
add [bx+si],al                            ;FB8D 0000
dec bx                                    ;FB8F 4B
inc dx                                    ;FB90 42
add bl,ch                                 ;FB91 00EB
pop di                                    ;FB93 5F
add [bx+si],al                            ;FB94 0000
add [bx+si],al                            ;FB96 0000
add [bx+si],al                            ;FB98 0000
add [bx+si+0x55],dl                       ;FB9A 005055
push es                                   ;FB9D 06
mov es,word [cs:0xa]                      ;FB9E 2E8E060A00
mov bp,[cs:0x10]                          ;FBA3 2E8B2E1000
mov al,0x1                                ;FBA8 B001
xchg al,[es:bp+0x0]                       ;FBAA 26864600
cmp al,0x0                                ;FBAE 3C00
jnz 0xfbf4                                ;FBB0 7542
sub word [cs:0x10],0x8                    ;FBB2 2E832E100008
mov [es:bp+0x2],sp                        ;FBB8 26896602
mov word [es:bp+0x4],ss                   ;FBBC 268C5604
mov ax,bp                                 ;FBC0 8BC5
mov bp,[es:bp+0x6]                        ;FBC2 268B6E06
cmp [es:bp+0x0],ax                        ;FBC6 26394600
jnz 0xfc01                                ;FBCA 7535
mov ax,es                                 ;FBCC 8CC0
mov ss,ax                                 ;FBCE 8ED0
mov sp,bp                                 ;FBD0 8BE5
pushf                                     ;FBD2 9C
call word far [cs:0x65c]                  ;FBD3 2EFF1E5C06
mov bp,sp                                 ;FBD8 8BEC
mov bp,[es:bp+0x0]                        ;FBDA 268B6E00
mov ss,word [es:bp+0x4]                   ;FBDE 268E5604
mov sp,[es:bp+0x2]                        ;FBE2 268B6602
mov byte [es:bp+0x0],0x0                  ;FBE6 26C6460000
mov [cs:0x10],bp                          ;FBEB 2E892E1000
pop es                                    ;FBF0 07
pop bp                                    ;FBF1 5D
pop ax                                    ;FBF2 58
iret                                      ;FBF3 CF
cmp al,0x1                                ;FBF4 3C01
jz 0xfbfc                                 ;FBF6 7404
xchg al,[es:bp+0x0]                       ;FBF8 26864600
call 0xfc99                               ;FBFC E89A00
db 0xeb                                   ;FBFF EB
