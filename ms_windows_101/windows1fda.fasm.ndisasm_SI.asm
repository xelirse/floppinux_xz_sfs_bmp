jmp 0x7c36                                ;00007C00 EB34            SI 
cli                                       ;00007C36 FA              SI 
mov sp,0x7c00                             ;00007C3B BC007C          SI 
push ss                                   ;00007C3E 16              SI 
lodsb                                     ;00007C51 AC              SI 
mov al,[es:di]                            ;00007C58 268A05          SI 
stosb                                     ;00007C5B AA              SI 
push es                                   ;00007C60 06              SI 
int byte 0x13                             ;00007C6A CD13            SI 
jc 0x7cd5                                 ;00007C6C 7267            SI 
mov al,[0x7c10]                           ;00007C6E A0107C          SI 
mov ax,0x201                              ;00007CA1 B80102          SI 
jc 0x7cc2                                 ;00007CA7 7219            SI 
mov di,bx                                 ;00007CA9 8BFB            SI 
jnz 0x7cc2                                ;00007CB3 750D            SI 
lea di,[bx+0x20]                          ;00007CB5 8D7F20          SI 
jz 0x7cda                                 ;00007CC0 7418            SI 
mov ax,[0x51c]                            ;00007CDA A11C05          SI 
mov ax,[0x7c37]                           ;00007CF1 A1377C          SI 
mov ax,[0x7c18]                           ;00007CF7 A1187C          SI 
mov al,[0x7c3c]                           ;00007D05 A03C7C          SI 
push ax                                   ;00007D08 50              SI 
pop ax                                    ;00007D0C 58              SI 
sub [0x7c3c],al                           ;00007D0F 28063C7C        SI 
add [0x7c37],ax                           ;00007D15 0106377C        SI 
add bx,ax                                 ;00007D1D 03D8            SI 
mov ch,[0x7c15]                           ;00007D21 8A2E157C        SI 
mov bx,[0x7c3d]                           ;00007D29 8B1E3D7C        SI 
lodsb                                     ;00007D32 AC              SI 
int byte 0x10                             ;00007D3C CD10            SI 
xor dx,dx                                 ;00007D40 33D2            SI 
mov ah,0x2                                ;00007D5A B402            SI 
ret                                       ;00007D76 C3              SI 
and [si+0x69],ah                          ;00007D8B 206469          SI 
jc 0x7e11                                 ;00007DA6 7269            SI 
outsw                                     ;00007DC8 6F              SI 
and [bx+si],ah                            ;00007DDC 2020            SI 
add [bx+si],al                            ;00007DF4 0000            SI 
db 0xff                                   ;00007E01 FF              SI 
pusha                                     ;00007E1F 60              SI 
inc ax                                    ;00007E34 40              SI 
pusha                                     ;00007E37 60              SI 
add [bp+di],al                            ;00007E46 0003            SI 
add [si],al                               ;00007E5E 0004            SI 
inc cx                                    ;00007E60 41              SI 
push es                                   ;00007EA1 06              SI 
ja 0x7e33                                 ;00007EB1 7780            SI 
jns 0x7e56                                ;00007EB4 79A0            SI 
jnl 0x7e9c                                ;00007EBA 7DE0            SI 
pop word [bx+si]                          ;00007ED5 8F00            SI 
or byte [bx+di],0x99                      ;00007EE2 800999          SI 
lock                                      ;00007EE8 F0              SI 
or ax,0xa0d9                              ;00007F43 0DD9A0          SI 
loope 0x7f72                              ;00007F50 E120            SI 
jmp 0x7f21                                ;00007F5F EBC0            SI 
adc ah,[bx]                               ;00007FB8 1227            SI 
add [bp+di],dx                            ;00007FC6 0113            SI 
adc si,[di]                               ;00007FCD 1335            SI 
adc di,[bp+di]                            ;00007FD6 133B            SI 
inc word [bx+di+0x21]                     ;00007FDF FF4121          SI 
popa                                      ;00007FE7 61              SI 
adc ax,0x8157                             ;00008000 155781          SI 
adc ax,0xe15d                             ;00008009 155DE1          SI 
sbb [bp+di+0x19c1],bx                     ;00008066 199BC119        SI 
popa                                      ;00008077 61              SI 
mov bx,0x1bc1                             ;00008097 BBC11B          SI 
popa                                      ;000080A7 61              SI 
sbb al,0xc7                               ;000080A8 1CC7            SI 
loope 0x80d1                              ;000080B3 E11C            SI 
shl word [bx+di],0x0                      ;000080B8 D121            SI 
push ds                                   ;000080D2 1E              SI 
sti                                       ;000080F7 FB              SI 
and [bx+di],cl                            ;0000810B 2009            SI 
and [di],dx                               ;0000811D 2115            SI 
db 0xff                                   ;00008120 FF              SI 
pop ds                                    ;0000812D 1F              SI 
bound sp,[bp+si]                          ;00008137 6222            SI 
dec word [bx+0x2922]                      ;00008139 FF8F2229        SI 
and si,[bp+di]                            ;0000814A 2333            SI 
and di,[bx+di]                            ;00008153 2339            SI 
mov [0x3b23],al                           ;00008155 A2233B          SI 
inc bx                                    ;00008163 43              SI 
inc dx                                    ;00008164 42              SI 
loop 0x8199                               ;00008173 E224            SI 
dec di                                    ;00008175 4F              SI 
es popa                                   ;0000818F 2661            SI 
and ah,[0x4263]                           ;00008191 22266342        SI 
es imul si,dx,0x6bff                      ;0000819B 2669F2FF6B      SI 
ret word 0x6d26                           ;000081A0 C2266D          SI 
daa                                       ;000081B3 27              SI 
daa                                       ;000081B9 27              SI 
add word [bp+si+0x28],0xffffffffffffff85  ;000081C3 83422885        SI 
ret word 0x8d28                           ;000081D0 C2288D          SI 
loop 0x81fd                               ;000081D3 E228            SI 
sub [bx+di+0x2922],dx                     ;000081D7 29912229        SI 
inc dx                                    ;000081DC 42              SI 
ret word 0xad2a                           ;00008200 C22AAD          SI 
add ch,[bp+di]                            ;00008206 022B            SI 
inc dx                                    ;00008224 42              SI 
bound bp,[si]                             ;00008227 622C            SI 
sub ax,0x42d3                             ;0000823A 2DD342          SI 
sub ax,0xa2d9                             ;00008243 2DD9A2          SI 
jcxz 0x8297                               ;00008252 2EE342          SI 
and ch,[bx]                               ;00008269 222F            SI 
add ax,[bp+di+0x30]                       ;00008283 034330          SI 
xor word [bx+si],0x9                      ;0000828A 833009          SI 
add si,[bp+si]                            ;000082AE 0332            SI 
mov [0x2b32],ax                           ;000082BD A3322B          SI 
das                                       ;000082C5 2F              SI 
xor si,[bp+di]                            ;000082CA 3333            SI 
arpl [bp+di],si                           ;000082CF 6333            SI 
jcxz 0x8310                               ;000082DB E333            SI 
jcxz 0x8329                               ;000082F3 E334            SI 
ss popa                                   ;0000830F 3661            SI 
jmp word far [ss:bx+0x6b36]               ;0000831B 36FFAF366B      SI 
dec word [bx]                             ;00008325 FF0F            SI 
aaa                                       ;00008327 37              SI 
aaa                                       ;00008336 37              SI 
cmp [di+0x39e3],bx                        ;00008369 399DE339        SI 
add di,[bp+si]                            ;0000836E 033A            SI 
ret                                       ;00008380 C3              SI 
jcxz 0x83f1                               ;000083B3 E33C            SI 
shl word [bp+di],0x0                      ;000083B8 D123            SI 
cmp ax,0x83d7                             ;000083C0 3DD783          SI 
cmp ax,0x3df                              ;000083CC 3DDF03          SI 
adc ax,[si+0x41]                          ;0000841B 134441          SI 
movsb                                     ;00008425 A4              SI 
inc cx                                    ;00008429 41              SI 
test [bp+di+0x39],al                      ;00008452 844339          SI 
movsb                                     ;00008455 A4              SI 
and al,0x44                               ;00008461 2444            SI 
inc di                                    ;000084B3 47              SI 
les ax,word [bx+0x7d]                     ;000084B8 C4477D          SI 
and word [si],0x8348                      ;000084C0 81244883        SI 
dec dx                                    ;000084FE 4A              SI 
dec bx                                    ;0000850D 4B              SI 
mov bh,0x84                               ;00008511 B784            SI 
in al,byte 0x4c                           ;00008533 E44C            SI 
dec si                                    ;00008555 4E              SI 
jmp 0xd403                                ;0000855C E9A44E          SI 
push ax                                   ;0000858E 50              SI 
adc [di],sp                               ;00008598 1125            SI 
adc ax,0x5165                             ;0000859E 156551          SI 
sub ax,0x52e5                             ;000085C2 2DE552          SI 
inc bp                                    ;000085CC 45              SI 
inc di                                    ;000085E9 47              SI 
push sp                                   ;000085EE 54              SI 
gs push bp                                ;000085FF 6555            SI 
push di                                   ;00008639 57              SI 
test [di+0x58],sp                         ;00008646 856558          SI 
movsw                                     ;0000864D A5              SI 
pop ax                                    ;00008651 58              SI 
pop bp                                    ;000086C9 5D              SI 
pop bp                                    ;000086CC 5D              SI 
fild word [di]                            ;000086CD DF05            SI 
pop si                                    ;000086D5 5E              SI 
pop si                                    ;000086D8 5E              SI 
jmp 0x86a6                                ;000086DF EBC5            SI 
in ax,byte 0x5e                           ;000086E3 E55E            SI 
cmc                                       ;000086EE F5              SI 
add ax,0x6066                             ;00008706 056660          SI 
pusha                                     ;0000870E 60              SI 
or ax,si                                  ;0000870F 0BC6            SI 
imul dx,[di+0x6966],0x8697                ;000087DD 699566699786    SI 
mov word [bp-0x3694],0x6ca6               ;00008829 C7866CC9A66C    SI 
insb                                      ;00008834 6C              SI 
insw                                      ;00008837 6D              SI 
xchg ch,[di-0x27]                         ;00008842 866DD9          SI 
insw                                      ;00008849 6D              SI 
fild word [0xe16e]                        ;0000884D DF066EE1        SI 
outsb                                     ;0000885B 6E              SI 
in ax,dx                                  ;00008862 ED              SI 
outsd                                     ;0000886F 666F            SI 
sti                                       ;00008877 FB              SI 
jo 0x888c                                 ;00008885 7005            SI 
xchg si,[bx+si+0x9]                       ;0000888A 877009          SI 
jc 0x88d7                                 ;000088B2 7223            SI 
jc 0x88eb                                 ;000088BE 722B            SI 
jnc 0x88ff                                ;000088CA 7333            SI 
jz 0x892c                                 ;000088E5 7445            SI 
dec di                                    ;000088F5 4F              SI 
jnz 0x8968                                ;00008909 755D            SI 
pop es                                    ;0000890E 07              SI 
ja 0x899f                                 ;0000892A 7773            SI 
xchg si,[bx+0x79]                         ;00008932 877779          SI 
fild word [bx]                            ;000089CD DF07            SI 
xchg di,[bx-0x7]                          ;000089F2 877FF9          SI 
xchg ch,[bp+di-0x38]                      ;00008A9E 866BC8          SI 
xchg si,[bx+di+0x28]                      ;00008AA7 877128          SI 
xchg si,[bp+di+0x48]                      ;00008AAA 877348          SI 
xchg di,[bp+di-0x38]                      ;00008AB6 877BC8          SI 
mov [bx+di-0x77d8],al                     ;00008ABF 88812888        SI 
call 0x2a77                               ;00008AEB E8899F          SI 
or [bp+si+0x28a1],cl                      ;00008AEE 088AA128        SI 
movsw                                     ;00008AF6 A5              SI 
mov ch,[bp+di-0x7538]                     ;00008AFE 8AABC88A        SI 
lodsw                                     ;00008B02 AD              SI 
mov si,[bp+di-0x74b8]                     ;00008B0A 8BB3488B        SI 
mov si,[bx-0x7478]                        ;00008B10 8BB7888B        SI 
mov bx,cs                                 ;00008B2E 8CCB            SI 
pop es                                    ;00008B89 07              SI 
sub ax,0x92e9                             ;00008BC2 2DE992          SI 
add [bx+si],al                            ;00008C1C 0000            SI 
add [bx+si],al                            ;00008C1E 0000            SI 
add [bx+si],al                            ;00008C30 0000            SI 
add [bx+si],al                            ;00008C34 0000            SI 
add [bx+si],al                            ;00008C3A 0000            SI 
add [bx+si],al                            ;00008C4C 0000            SI 
add [bx+si],al                            ;00008C60 0000            SI 
add [bx+si],al                            ;00008C70 0000            SI 
add [bx+si],al                            ;00008C72 0000            SI 
add [bx+si],al                            ;00008C80 0000            SI 
add [bx+si],al                            ;00008C8A 0000            SI 
add [bx+si],al                            ;00008C8C 0000            SI 
add [bx+si],al                            ;00008CD6 0000            SI 
add [bx+si],al                            ;00008CD8 0000            SI 
add [bx+si],al                            ;00008CE2 0000            SI 
add [bx+si],al                            ;00008D70 0000            SI 
add [bx+si],al                            ;00008D7C 0000            SI 
add [bx+si],al                            ;00008D7E 0000            SI 
add [bx+si],al                            ;00008D8C 0000            SI 
add [bx+si],al                            ;00008DBC 0000            SI 
add [bx+si],al                            ;00008DC0 0000            SI 
add [bx+si],al                            ;00008DD2 0000            SI 
add [bx+si],al                            ;00008DD8 0000            SI 
add [bx+si],al                            ;00008DDC 0000            SI 
add [bx+si],al                            ;00008DEA 0000            SI 
add [bx+si],al                            ;00008DF2 0000            SI 
add [bx+si],al                            ;00008E28 0000            SI 
add [bx+si],al                            ;00008E2E 0000            SI 
add [bx+si],al                            ;00008E30 0000            SI 
add [bx+si],al                            ;00008E62 0000            SI 
add [bx+si],al                            ;00008E74 0000            SI 
add [bx+si],al                            ;00008E82 0000            SI 
add [bx+si],al                            ;00008E86 0000            SI 
add [bx+si],al                            ;00008E96 0000            SI 
add [bx+si],al                            ;00008EA2 0000            SI 
add [bx+si],al                            ;00008EB0 0000            SI 
add [bx+si],al                            ;00008ED2 0000            SI 
add [bx+si],al                            ;00008ED4 0000            SI 
add [bx+si],al                            ;00008ED8 0000            SI 
add [bx+si],al                            ;00008EE8 0000            SI 
add [bx+si],al                            ;00008EEE 0000            SI 
add [bx+si],al                            ;00008F3A 0000            SI 
add [bx+si],al                            ;00008F42 0000            SI 
add [bx+si],al                            ;00008F4C 0000            SI 
add [bx+si],al                            ;00008F4E 0000            SI 
add [bx+si],al                            ;00008F52 0000            SI 
add [bx+si],al                            ;00008F6E 0000            SI 
add [bx+si],al                            ;00008F76 0000            SI 
add [bx+si],al                            ;00008F84 0000            SI 
add [bx+si],al                            ;00008F90 0000            SI 
add [di],al                               ;00009005 0005            SI 
add ah,[bx]                               ;00009038 0227            SI 
pusha                                     ;0000904F 60              SI 
aas                                       ;0000905D 3F              SI 
add ax,0x6055                             ;0000907D 055560          SI 
push es                                   ;0000908F 06              SI 
add byte [esi],0xff                       ;00009099 678006FF        SI 
loopne 0x90ab                             ;000090A3 E006            SI 
outsw                                     ;000090A5 6F              SI 
pop es                                    ;000090AA 07              SI 
add word [bx+si+0x8],0xffffffffffffff85   ;000090C3 83400885        SI 
and [bx+si],dx                            ;00009181 2110            SI 
adc [bp+di],dx                            ;0000919A 1113            SI 
adc word [bp+di],0xa139                   ;000091D2 811339A1        SI 
int1                                      ;000091DE F1              SI 
adc al,0x45                               ;000091E5 1445            SI 
adc al,0x47                               ;000091E8 1447            SI 
adc word [si],0xa149                      ;000091EA 811449A1        SI 
adc ax,0xc15b                             ;00009206 155BC1          SI 
adc word [esi],0xa169                     ;00009219 67811669A1      SI 
xchg ax,bx                                ;0000925B 93              SI 
add [bp+si],bx                            ;0000926E 011A            SI 
popa                                      ;00009277 61              SI 
mov bp,0x1be1                             ;0000929A BDE11B          SI 
ret                                       ;000092A3 C3              SI 
rcr word [si],byte 0xcd                   ;000092B0 C11CCD          SI 
loope 0x92d1                              ;000092B3 E11C            SI 
push ds                                   ;000092CF 1E              SI 
loope 0x92f3                              ;000092D0 E121            SI 
out dx,ax                                 ;000092E5 EF              SI 
rep inc cx                                ;000092EB F341            SI 
cmc                                       ;000092EE F5              SI 
test word [bx+di-0x6e1],0x1fa1            ;000092F1 F7811FF9A11F    SI 
mov [0xb20],al                            ;0000930D A2200B          SI 
pop ds                                    ;0000932D 1F              SI 
and ah,[di]                               ;00009335 2225            SI 
inc bx                                    ;00009363 43              SI 
db 0x82                                   ;0000936A 82              SI 
bound sp,[gs:0x8267]                      ;00009395 266562266782    SI 
loop 0x93cb                               ;000093A3 E226            SI 
daa                                       ;000093B6 27              SI 
jnl 0x939e                                ;000093BA 7DE2            SI 
add word [bp+si+0x28],0xffffffffffffff85  ;000093C3 83422885        SI 
sub [bx+di+0x2922],dx                     ;000093D7 29912229        SI 
inc dx                                    ;000093DC 42              SI 
outsw                                     ;000093DF 6F              SI 
inc bx                                    ;0000955C 43              SI 
mov ch,0x63                               ;0000958E B563            SI 
cmp ax,0x83d7                             ;000095C0 3DD783          SI 
ds out byte 0x83,ax                       ;000095D8 3EE783          SI 
out dx,ax                                 ;000095E5 EF              SI 
test word [bp+di-0x6c1],0x3fa3            ;000095F1 F7833FF9A33F    SI 
add ax,0x4064                             ;00009606 056440          SI 
pop es                                    ;00009609 07              SI 
sbb ax,sp                                 ;00009627 1BC4            SI 
inc bx                                    ;00009656 43              SI 
les ax,word [si+0x4d]                     ;00009670 C4444D          SI 
add al,0x45                               ;00009676 0445            SI 
pop di                                    ;0000968D 5F              SI 
ja 0x9637                                 ;000096B1 7784            SI 
dec ax                                    ;000096CE 48              SI 
db 0x8d                                   ;000096D2 8D              SI 
add al,0x4a                               ;000096EE 044A            SI 
shl word [si],byte 0x4c                   ;00009720 C1244C          SI 
mov word [si-0x36b4],0x4ca4               ;00009729 C7844CC9A44C    SI 
in al,byte 0x4f                           ;0000977B E44F            SI 
movsw                                     ;0000978D A5              SI 
cmp ax,bp                                 ;000097D7 3BC5            SI 
aas                                       ;000097DD 3F              SI 
pop cx                                    ;00009857 59              SI 
inc bp                                    ;0000985C 45              SI 
lds bx,word [bp+si-0x53]                  ;00009880 C55AAD          SI 
add [bx+si],al                            ;0000B922 0000            SI 
add [bx+si],al                            ;0000B93C 0000            SI 
add [bx+si],al                            ;0000B940 0000            SI 
add [bx+si],al                            ;0000B942 0000            SI 
add [bx+si],al                            ;0000B948 0000            SI 
add [bx+si],al                            ;0000B952 0000            SI 
add [bx+si],al                            ;0000B956 0000            SI 
add [bx+si],al                            ;0000BC9A 0000            SI 
add [bx+si],al                            ;0000BCAC 0000            SI 
mul bx                                    ;0000BE44 F7E3            SI 
cmp byte [si],0x1                         ;0000BE75 803C01          SI 
jz 0xbe88                                 ;0000BE81 7405            SI 
mov cx,[bx+0x12]                          ;0000C640 8B4F12          SI 
jnz 0xc7e8                                ;0000C7FA 75EC            SI 
mov al,0x9                                ;0000C804 B009            SI 
jnz 0xc7f5                                ;0000C80E 75E5            SI 
test ah,0x8                               ;0000C81A F6C408          SI 
ret                                       ;0000C82E C3              SI 
call 0xc813                               ;0000C845 E8CBFF          SI 
sub [bx+0x12],cx                          ;0000C862 294F12          SI 
jmp 0xc679                                ;0000C865 E911FE          SI 
lds bx,word [cs:0xb8]                     ;0000C86A 2EC51EB800      SI 
push ds                                   ;0000C8B3 1E              SI 
mul cx                                    ;0000C929 F7E1            SI 
jmp 0xca0f                                ;0000CA0C EB01            SI 
jmp 0xc679                                ;0000CA1C E95AFC          SI 
int byte 0x1a                             ;0000CA36 CD1A            SI 
mov ax,[di+0x4f]                          ;0000CA45 8B454F          SI 
xor cx,cx                                 ;0000D127 33C9            SI 
pop ds                                    ;0000D3D9 1F              SI 
add di,0x4                                ;0000D417 83C704          SI 
jnz 0xd43b                                ;0000D436 7503            SI 
loopne 0xd46a                             ;0000D470 E0F8            SI 
push dx                                   ;0000D490 52              SI 
pop dx                                    ;0000D49E 5A              SI 
cmp ah,0x6                                ;0000D4A9 80FC06          SI 
mov byte [cs:0x12f0],0x0                  ;0000D4B8 2EC606F01200    SI 
pop cx                                    ;0000D4BE 59              SI 
call 0xce21                               ;0000D63A E8E4F7          SI 
call 0xcdc0                               ;0000D644 E879F7          SI 
mov byte [cs:0x270],0x50                  ;0000D681 2EC606700250    SI 
mov dx,[di+0x13]                          ;0000D6F3 8B5513          SI 
mov [es:si+0x7],cl                        ;0000D704 26884C07        SI 
pop ds                                    ;0000D72E 1F              SI 
inc cl                                    ;0000D77D FEC1            SI 
jmp 0xc679                                ;0000D787 E9EFEE          SI 
push ax                                   ;0000D78A 50              SI 
mov es,ax                                 ;0000D7A4 8EC0            SI 
and ax,0x3f                               ;0000D7D9 253F00          SI 
or cl,ah                                  ;0000D7ED 0ACC            SI 
mov dh,bh                                 ;0000D814 8AF7            SI 
mov bl,0x6                                ;0000D81B B306            SI 
pop es                                    ;0000D869 07              SI 
push cx                                   ;0000D86E 51              SI 
cld                                       ;0000D872 FC              SI 
ret                                       ;0000D876 C3              SI 
mov dl,[bp+0x8]                           ;0000D877 8A5608          SI 
jz 0xd88f                                 ;0000D87E 740F            SI 
ret                                       ;0000D88F C3              SI 
jz 0xda25                                 ;0000DA16 740D            SI 
jz 0xda3e                                 ;0000DA2F 740D            SI 
mov word [0x1d2],es                       ;0000DA53 8C06D201        SI 
cmp al,0x1                                ;0000DABA 3C01            SI 
mov word [cs:0xba],es                     ;0000DAC7 2E8C06BA00      SI 
mov bl,0x10                               ;0000DAE6 B310            SI 
add [bx+si],al                            ;0000DC04 0000            SI 
pop cx                                    ;0000DCC7 59              SI 
jz 0xdcd0                                 ;0000DCCB 7403            SI 
call 0xdd0c                               ;0000DCD5 E83400          SI 
jnz 0xdce9                                ;0000DCE6 7501            SI 
pop si                                    ;0000DD03 5E              SI 
call 0xdef6                               ;0000DD11 E8E201          SI 
cmp ah,0x6                                ;0000DD23 80FC06          SI 
call 0xdc92                               ;0000DD28 E867FF          SI 
jmp 0xcee7                                ;0000DD41 E9A3F1          SI 
mov word [bx+0x18],es                     ;0000DD55 8C4718          SI 
pop cx                                    ;0000DD58 59              SI 
mov ah,0xf                                ;0000DD5B B40F            SI 
stc                                       ;0000DD5D F9              SI 
mov bx,0xe00f                             ;0000DD82 BB0FE0          SI 
mov cx,0x960                              ;0000DD85 B96009          SI 
mov dx,0x102                              ;0000DD88 BA0201          SI 
add sp,0x2                                ;0000DD8B 83C402          SI 
jmp word far [cs:0x1da7]                  ;0000DDBF 2EFF2EA71D      SI 
jmp 0xddbe                                ;0000DDD2 EBEA            SI 
pop ax                                    ;0000DDFF 58              SI 
add [bx+si],al                            ;0000E105 0000            SI 
clc                                       ;0000E123 F8              SI 
add [bx+si],al                            ;0000E12A 0000            SI 
and [bx+si],ah                            ;0000E138 2020            SI 
add [bx+si],al                            ;0000E14E 0000            SI 
add [bx+si],al                            ;0000E1A5 0000            SI 
db 0xff                                   ;0000E1B5 FF              SI 
clc                                       ;0000E1C5 F8              SI 
add [bx+si],al                            ;0000E1E6 0000            SI 
add bh,bh                                 ;0000E200 00FF            SI 
add [bx+si],al                            ;0000E21F 0000            SI 
and [bp+0x41],cl                          ;0000E224 204E41          SI 
add [bx+si],al                            ;0000E24B 0000            SI 
and [bp+0x41],cl                          ;0000E275 204E41          SI 
and [bx+si],ah                            ;0000E27A 2020            SI 
add [bx+si],al                            ;0000E28A 0000            SI 
db 0xff                                   ;0000E2A8 FF              SI 
add [bp+si],al                            ;0000E2AE 0002            SI 
add [bx+si],al                            ;0000E2D9 0000            SI 
adc [bx+si],al                            ;0000E305 1000            SI 
and [bx+si],ah                            ;0000E31C 2020            SI 
add [bx+si],al                            ;0000E32C 0000            SI 
and [bx+si],ah                            ;0000E411 2020            SI 
sub [bx+si],al                            ;0000E417 2800            SI 
add [bx+si],al                            ;0000E41D 0000            SI 
add [bx+si],al                            ;0000E423 0000            SI 
add [bx+di],ax                            ;0000E445 0101            SI 
and [bp+0x41],cl                          ;0000E45B 204E41          SI 
and [bx+si],ah                            ;0000E462 2020            SI 
add [bx+si],al                            ;0000E4A7 0000            SI 
add [bx+si],al                            ;0000E4D3 0000            SI 
add bh,bh                                 ;0000E4D9 00FF            SI 
db 0xff                                   ;0000E4DF FF              SI 
add [bp+si],al                            ;0000E4E5 0002            SI 
add [bx+si],al                            ;0000E4ED 0000            SI 
inc bp                                    ;0000E501 45              SI 
add [bx+si],al                            ;0000E516 0000            SI 
add [bx+si],al                            ;0000E51C 0000            SI 
add [bx+si],al                            ;0000E545 0000            SI 
add [bp+0x4f],cl                          ;0000E54B 004E4F          SI 
and [bx+si],al                            ;0000E559 2000            SI 
add [bx+si],al                            ;0000E5B8 0000            SI 
add [bx+si],al                            ;0000E5C2 0000            SI 
db 0xff                                   ;0000E5D2 FF              SI 
add [bx+si],al                            ;0000E5E0 0000            SI 
add [bx+si],al                            ;0000E5E7 0000            SI 
add [bp+di],al                            ;0000E5F9 0003            SI 
add [bx+si+0x3],dl                        ;0000E626 005003          SI 
adc [bx+si],al                            ;0000E62F 1000            SI 
add [bx+si],al                            ;0000E63C 0000            SI 
add [bp+di],al                            ;0000E64A 0003            SI 
sub [bx+si],al                            ;0000E64E 2800            SI 
add [bx+si],al                            ;0000E658 0000            SI 
add [bx+si],al                            ;0000E65C 0000            SI 
add [bx+si],al                            ;0000E664 0000            SI 
cmp ah,0x2                                ;0000E689 80FC02          SI 
add ax,bx                                 ;0000E6BF 03C3            SI 
mov al,cl                                 ;0000E70B 8AC1            SI 
mov [0x47],al                             ;0000E71F A24700          SI 
dec byte [0x43]                           ;0000E77C FE0E4300        SI 
jmp word 0xf000:word 0x2e7f               ;0000E796 EA7F2E00F0      SI 
mov byte [cs:0x8c2],0x1d                  ;0000E830 2EC606C2081D    SI 
mov si,0x8c1                              ;0000E83E BEC108          SI 
call word near [cs:0x8cd]                 ;0000E863 2EFF16CD08      SI 
xchg dh,al                                ;0000E86F 86F0            SI 
call word near [cs:0x8cd]                 ;0000E878 2EFF16CD08      SI 
pop cx                                    ;0000E892 59              SI 
cli                                       ;0000E8AC FA              SI 
push dx                                   ;0000E8B8 52              SI 
mov [0x1bc7],cl                           ;0000E8D8 880EC71B        SI 
cmp byte [0x1bc8],0x2                     ;0000E93A 803EC81B02      SI 
inc word [cs:0x1be2]                      ;0000E941 2EFF06E21B      SI 
mov cl,[0x1bc9]                           ;0000E946 8A0EC91B        SI 
shl cx,0x0                                ;0000E959 D1E1            SI 
xor cx,cx                                 ;0000E971 33C9            SI 
jc 0xe971                                 ;0000E97C 72F3            SI 
add al,[bx+di]                            ;0000EACD 0201            SI 
add al,[bx+si]                            ;0000EAD6 0200            SI 
add [bx+si],al                            ;0000EAE0 0000            SI 
loopne 0xeaf3                             ;0000EAF1 E000            SI 
add [bx+si],al                            ;0000EAFF 0000            SI 
add [bx+si],al                            ;0000EB1E 0000            SI 
cld                                       ;0000EB2D FC              SI 
add [bx+si+0x30a],dl                      ;0000EB3A 00900A03        SI 
mov word [0x4e],cs                        ;0000EB70 8C0E4E00        SI 
mov [cs:0x18a2],ax                        ;0000EB77 2EA3A218        SI 
and ax,0x3                                ;0000EB93 250300          SI 
inc ax                                    ;0000EB98 40              SI 
call 0xf313                               ;0000EBF7 E81907          SI 
xchg ax,bx                                ;0000EC40 93              SI 
stosw                                     ;0000EC45 AB              SI 
shl ax,cl                                 ;0000EC83 D3E0            SI 
mov [cs:0x2a85],dx                        ;0000EC92 2E8916852A      SI 
shl dx,0x0                                ;0000EC9F D1E2            SI 
sub ax,dx                                 ;0000ECA1 2BC2            SI 
mov word [0x7fd],0x16e                    ;0000ECAD C706FD076E01    SI 
call 0xf484                               ;0000ED02 E87F07          SI 
int byte 0x13                             ;0000ED24 CD13            SI 
xor dl,dl                                 ;0000ED2C 32D2            SI 
mov byte [0x2a8b],0x28                    ;0000ED47 C6068B2A28      SI 
jmp 0xedc9                                ;0000ED57 EB70            SI 
inc dh                                    ;0000ED65 FEC6            SI 
mov [0x260],cl                            ;0000ED7E 880E6002        SI 
cmp ah,0x2                                ;0000ED8D 80FC02          SI 
jnz 0xeda8                                ;0000EDBF 75E7            SI 
or cl,0x2                                 ;0000EDD9 80C902          SI 
jna 0xedf3                                ;0000EDEE 7603            SI 
xor cl,0x20                               ;0000EE01 80F120          SI 
mov di,[di]                               ;0000EE38 8B3D            SI 
call 0xf084                               ;0000EE58 E82902          SI 
mov di,0x1c3a                             ;0000EE7A BF3A1C          SI 
mov dl,0x81                               ;0000EE7D B281            SI 
push ax                                   ;0000EE9E 50              SI 
mov ax,0x1f3e                             ;0000EE9F B83E1F          SI 
mov ax,[0x4c]                             ;0000EECA A14C00          SI 
mov [cs:0x1da5],ax                        ;0000EED4 2EA3A51D        SI 
pop ax                                    ;0000EEE3 58              SI 
cmp byte [0x2a8c],0xfc                    ;0000EF07 803E8C2AFC      SI 
cmp byte [0x1be5],0x0                     ;0000EF0E 803EE51B00      SI 
mov di,0xfff5                             ;0000EF1D BFF5FF          SI 
cmpsb                                     ;0000EF20 A6              SI 
mov cx,0x2896                             ;0000EF4F B99628          SI 
sub cx,si                                 ;0000EF55 2BCE            SI 
mov cx,0x28a5                             ;0000EF63 B9A528          SI 
sub cx,si                                 ;0000EF69 2BCE            SI 
call 0xf03d                               ;0000EF71 E8C900          SI 
jc 0xefa7                                 ;0000EF7D 7228            SI 
sub cx,si                                 ;0000EF85 2BCE            SI 
mov ax,di                                 ;0000EF8C 8BC7            SI 
mov word [0x1b2],cs                       ;0000EFA1 8C0EB201        SI 
mov ax,[es:bx+0x8]                        ;0000F0F7 268B4708        SI 
jc 0xf0cd                                 ;0000F0FE 72CD            SI 
mov ax,0x201                              ;0000F136 B80102          SI 
mov cl,0x4                                ;0000F18E B104            SI 
mov [di+0x8],cl                           ;0000F199 884D08          SI 
dec bx                                    ;0000F1D9 4B              SI 
mov [di+0x11],bh                          ;0000F1EE 887D11          SI 
mov cl,0x4                                ;0000F1F3 B104            SI 
mov bh,[di+0x8]                           ;0000F1FC 8A7D08          SI 
adc dx,0x0                                ;0000F203 83D200          SI 
ret                                       ;0000F229 C3              SI 
jnz 0xf259                                ;0000F233 7524            SI 
mul word [es:di+0x13]                     ;0000F23E 26F76513        SI 
pop ax                                    ;0000F244 58              SI 
jz 0xf24e                                 ;0000F24B 7401            SI 
jmp 0xf291                                ;0000F257 EB38            SI 
dec ax                                    ;0000F272 48              SI 
xor dx,dx                                 ;0000F27D 33D2            SI 
push di                                   ;0000F2A8 57              SI 
ret                                       ;0000F326 C3              SI 
mov cx,ax                                 ;0000F331 8BC8            SI 
jmp 0xf330                                ;0000F33C EBF2            SI 
mov di,0x1e                               ;0000F33E BF1E00          SI 
ret                                       ;0000F348 C3              SI 
call 0xf457                               ;0000F428 E82C00          SI 
loop 0xf4a5                               ;0000F4A5 E2FE            SI 
sti                                       ;0000F4BB FB              SI 
pop bp                                    ;0000F4BD 5D              SI 
cmp byte [cs:0x2a8c],0xfc                 ;0000F4C3 2E803E8C2AFC    SI 
jnc 0xf4f0                                ;0000F4D9 7315            SI 
mov ah,al                                 ;0000F4E9 8AE0            SI 
call 0xf512                               ;0000F4ED E82200          SI 
push ax                                   ;0000F4F5 50              SI 
nop                                       ;0000F4FA 90              SI 
jmp 0xf57d                                ;0000F5C4 EBB7            SI 
mov [es:bp+0x2],sp                        ;0000F5F7 26896602        SI 
mov bp,[es:bp+0x6]                        ;0000F601 268B6E06        SI 
mov bp,[es:bp+0x0]                        ;0000F619 268B6E00        SI 
iret                                      ;0000F632 CF              SI 
pop ax                                    ;0000F6B0 58              SI 
xchg al,[es:bp+0x0]                       ;0000F6B6 26864600        SI 
cmp bp,[cs:0xc]                           ;0000F6BF 2E3B2E0C00      SI 
jc 0xf6ba                                 ;0000F6C4 72F4            SI 
iret                                      ;0000F72B CF              SI 
xchg al,[es:bp+0x0]                       ;0000F730 26864600        SI 
mov byte [es:bp+0x0],0x3                  ;0000F742 26C6460003      SI 
jmp 0xf734                                ;0000F747 EBEB            SI 
pop di                                    ;0000F753 5F              SI 
sub word [cs:0x10],0x8                    ;0000F772 2E832E100008    SI 
jnz 0xf7c1                                ;0000F78A 7535            SI 
call word far [cs:0x21c]                  ;0000F793 2EFF1E1C02      SI 
jz 0xf7bc                                 ;0000F7B6 7404            SI 
xchg al,[es:bp+0x0]                       ;0000F7B8 26864600        SI 
cmp al,0x0                                ;0000F7F6 3C00            SI 
mov [es:bp+0x2],sp                        ;0000F800 26896602        SI 
mov ax,bp                                 ;0000F808 8BC5            SI 
pop es                                    ;0000F838 07              SI 
cmp al,0x1                                ;0000F83C 3C01            SI 
call 0xfc99                               ;0000F844 E85204          SI 
cmp bp,[cs:0xc]                           ;0000F849 2E3B2E0C00      SI 
add [bx+si+0x55],dl                       ;0000F86A 005055          SI 
mov ax,bp                                 ;0000F890 8BC5            SI 
jnz 0xf8d1                                ;0000F89A 7535            SI 
mov ax,es                                 ;0000F89C 8CC0            SI 
call word far [cs:0x32c]                  ;0000F8A3 2EFF1E2C03      SI 
pop bp                                    ;0000F8C1 5D              SI 
call 0xfc99                               ;0000F8CC E8CA03          SI 
mov ax,bp                                 ;0000F918 8BC5            SI 
pop ax                                    ;0000F9D2 58              SI 
jc 0xf9dc                                 ;0000F9E6 72F4            SI 
mov es,word [cs:0xa]                      ;0000FA06 2E8E060A00      SI 
mov [es:bp+0x2],sp                        ;0000FA20 26896602        SI 
mov bp,[es:bp+0x6]                        ;0000FA2A 268B6E06        SI 
mov ax,es                                 ;0000FA34 8CC0            SI 
dec bx                                    ;0000FA7F 4B              SI 
mov es,word [cs:0xa]                      ;0000FA8E 2E8E060A00      SI 
add [bx+si],al                            ;0000FB96 0000            SI 
mov byte [es:bp+0x0],0x0                  ;0000FBE6 26C6460000      SI 
db 0xeb                                   ;0000FBFF EB              SI 
