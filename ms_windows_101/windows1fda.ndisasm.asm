00007C00  EB34              jmp 0x7c36
00007C02  90                nop
00007C03  4D                dec bp
00007C04  53                push bx
00007C05  44                inc sp
00007C06  4F                dec di
00007C07  53                push bx
00007C08  332E3300          xor bp,[0x33]
00007C0C  0201              add al,[bx+di]
00007C0E  0100              add [bx+si],ax
00007C10  02E0              add ah,al
00007C12  00400B            add [bx+si+0xb],al
00007C15  F00900            lock or [bx+si],ax
00007C18  1200              adc al,[bx+si]
00007C1A  0200              add al,[bx+si]
00007C1C  0000              add [bx+si],al
00007C1E  0000              add [bx+si],al
00007C20  0000              add [bx+si],al
00007C22  0000              add [bx+si],al
00007C24  0000              add [bx+si],al
00007C26  0000              add [bx+si],al
00007C28  0000              add [bx+si],al
00007C2A  0000              add [bx+si],al
00007C2C  0000              add [bx+si],al
00007C2E  0012              add [bp+si],dl
00007C30  0000              add [bx+si],al
00007C32  0000              add [bx+si],al
00007C34  0100              add [bx+si],ax
00007C36  FA                cli
00007C37  33C0              xor ax,ax
00007C39  8ED0              mov ss,ax
00007C3B  BC007C            mov sp,0x7c00
00007C3E  16                push ss
00007C3F  07                pop es
00007C40  BB7800            mov bx,0x78
00007C43  36C537            lds si,word [ss:bx]
00007C46  1E                push ds
00007C47  56                push si
00007C48  16                push ss
00007C49  53                push bx
00007C4A  BF2B7C            mov di,0x7c2b
00007C4D  B90B00            mov cx,0xb
00007C50  FC                cld
00007C51  AC                lodsb
00007C52  26803D00          cmp byte [es:di],0x0
00007C56  7403              jz 0x7c5b
00007C58  268A05            mov al,[es:di]
00007C5B  AA                stosb
00007C5C  8AC4              mov al,ah
00007C5E  E2F1              loop 0x7c51
00007C60  06                push es
00007C61  1F                pop ds
00007C62  894702            mov [bx+0x2],ax
00007C65  C7072B7C          mov word [bx],0x7c2b
00007C69  FB                sti
00007C6A  CD13              int byte 0x13
00007C6C  7267              jc 0x7cd5
00007C6E  A0107C            mov al,[0x7c10]
00007C71  98                cbw
00007C72  F726167C          mul word [0x7c16]
00007C76  03061C7C          add ax,[0x7c1c]
00007C7A  03060E7C          add ax,[0x7c0e]
00007C7E  A33F7C            mov [0x7c3f],ax
00007C81  A3377C            mov [0x7c37],ax
00007C84  B82000            mov ax,0x20
00007C87  F726117C          mul word [0x7c11]
00007C8B  8B1E0B7C          mov bx,[0x7c0b]
00007C8F  03C3              add ax,bx
00007C91  48                dec ax
00007C92  F7F3              div bx
00007C94  0106377C          add [0x7c37],ax
00007C98  BB0005            mov bx,0x500
00007C9B  A13F7C            mov ax,[0x7c3f]
00007C9E  E89F00            call 0x7d40
00007CA1  B80102            mov ax,0x201
00007CA4  E8B300            call 0x7d5a
00007CA7  7219              jc 0x7cc2
00007CA9  8BFB              mov di,bx
00007CAB  B90B00            mov cx,0xb
00007CAE  BED67D            mov si,0x7dd6
00007CB1  F3A6              repe cmpsb
00007CB3  750D              jnz 0x7cc2
00007CB5  8D7F20            lea di,[bx+0x20]
00007CB8  BEE17D            mov si,0x7de1
00007CBB  B90B00            mov cx,0xb
00007CBE  F3A6              repe cmpsb
00007CC0  7418              jz 0x7cda
00007CC2  BE777D            mov si,0x7d77
00007CC5  E86A00            call 0x7d32
00007CC8  32E4              xor ah,ah
00007CCA  CD16              int byte 0x16
00007CCC  5E                pop si
00007CCD  1F                pop ds
00007CCE  8F04              pop word [si]
00007CD0  8F4402            pop word [si+0x2]
00007CD3  CD19              int byte 0x19
00007CD5  BEC07D            mov si,0x7dc0
00007CD8  EBEB              jmp 0x7cc5
00007CDA  A11C05            mov ax,[0x51c]
00007CDD  33D2              xor dx,dx
00007CDF  F7360B7C          div word [0x7c0b]
00007CE3  FEC0              inc al
00007CE5  A23C7C            mov [0x7c3c],al
00007CE8  A1377C            mov ax,[0x7c37]
00007CEB  A33D7C            mov [0x7c3d],ax
00007CEE  BB0007            mov bx,0x700
00007CF1  A1377C            mov ax,[0x7c37]
00007CF4  E84900            call 0x7d40
00007CF7  A1187C            mov ax,[0x7c18]
00007CFA  2A063B7C          sub al,[0x7c3b]
00007CFE  40                inc ax
00007CFF  38063C7C          cmp [0x7c3c],al
00007D03  7303              jnc 0x7d08
00007D05  A03C7C            mov al,[0x7c3c]
00007D08  50                push ax
00007D09  E84E00            call 0x7d5a
00007D0C  58                pop ax
00007D0D  72C6              jc 0x7cd5
00007D0F  28063C7C          sub [0x7c3c],al
00007D13  740C              jz 0x7d21
00007D15  0106377C          add [0x7c37],ax
00007D19  F7260B7C          mul word [0x7c0b]
00007D1D  03D8              add bx,ax
00007D1F  EBD0              jmp 0x7cf1
00007D21  8A2E157C          mov ch,[0x7c15]
00007D25  8A16FD7D          mov dl,[0x7dfd]
00007D29  8B1E3D7C          mov bx,[0x7c3d]
00007D2D  EA00007000        jmp word 0x70:word 0x0
00007D32  AC                lodsb
00007D33  0AC0              or al,al
00007D35  7422              jz 0x7d59
00007D37  B40E              mov ah,0xe
00007D39  BB0700            mov bx,0x7
00007D3C  CD10              int byte 0x10
00007D3E  EBF2              jmp 0x7d32
00007D40  33D2              xor dx,dx
00007D42  F736187C          div word [0x7c18]
00007D46  FEC2              inc dl
00007D48  88163B7C          mov [0x7c3b],dl
00007D4C  33D2              xor dx,dx
00007D4E  F7361A7C          div word [0x7c1a]
00007D52  88162A7C          mov [0x7c2a],dl
00007D56  A3397C            mov [0x7c39],ax
00007D59  C3                ret
00007D5A  B402              mov ah,0x2
00007D5C  8B16397C          mov dx,[0x7c39]
00007D60  B106              mov cl,0x6
00007D62  D2E6              shl dh,cl
00007D64  0A363B7C          or dh,[0x7c3b]
00007D68  8BCA              mov cx,dx
00007D6A  86E9              xchg ch,cl
00007D6C  8A16FD7D          mov dl,[0x7dfd]
00007D70  8A362A7C          mov dh,[0x7c2a]
00007D74  CD13              int byte 0x13
00007D76  C3                ret
00007D77  0D0A4E            or ax,0x4e0a
00007D7A  6F                outsw
00007D7B  6E                outsb
00007D7C  2D5379            sub ax,0x7953
00007D7F  7374              jnc 0x7df5
00007D81  656D              gs insw
00007D83  206469            and [si+0x69],ah
00007D86  736B              jnc 0x7df3
00007D88  206F72            and [bx+0x72],ch
00007D8B  206469            and [si+0x69],ah
00007D8E  736B              jnc 0x7dfb
00007D90  206572            and [di+0x72],ah
00007D93  726F              jc 0x7e04
00007D95  720D              jc 0x7da4
00007D97  0A5265            or dl,[bp+si+0x65]
00007D9A  706C              jo 0x7e08
00007D9C  61                popa
00007D9D  636520            arpl [di+0x20],sp
00007DA0  61                popa
00007DA1  6E                outsb
00007DA2  64207374          and [fs:bp+di+0x74],dh
00007DA6  7269              jc 0x7e11
00007DA8  6B652061          imul sp,[di+0x20],0x61
00007DAC  6E                outsb
00007DAD  7920              jns 0x7dcf
00007DAF  6B657920          imul sp,[di+0x79],0x20
00007DB3  7768              ja 0x7e1d
00007DB5  656E              gs outsb
00007DB7  207265            and [bp+si+0x65],dh
00007DBA  61                popa
00007DBB  64790D            fs jns 0x7dcb
00007DBE  0A00              or al,[bx+si]
00007DC0  0D0A44            or ax,0x440a
00007DC3  69736B2042        imul si,[bp+di+0x6b],0x4220
00007DC8  6F                outsw
00007DC9  6F                outsw
00007DCA  7420              jz 0x7dec
00007DCC  6661              popad
00007DCE  696C757265        imul bp,[si+0x75],0x6572
00007DD3  0D0A00            or ax,0xa
00007DD6  49                dec cx
00007DD7  4F                dec di
00007DD8  2020              and [bx+si],ah
00007DDA  2020              and [bx+si],ah
00007DDC  2020              and [bx+si],ah
00007DDE  53                push bx
00007DDF  59                pop cx
00007DE0  53                push bx
00007DE1  4D                dec bp
00007DE2  53                push bx
00007DE3  44                inc sp
00007DE4  4F                dec di
00007DE5  53                push bx
00007DE6  2020              and [bx+si],ah
00007DE8  205359            and [bp+di+0x59],dl
00007DEB  53                push bx
00007DEC  0000              add [bx+si],al
00007DEE  0000              add [bx+si],al
00007DF0  0000              add [bx+si],al
00007DF2  0000              add [bx+si],al
00007DF4  0000              add [bx+si],al
00007DF6  0000              add [bx+si],al
00007DF8  0000              add [bx+si],al
00007DFA  0000              add [bx+si],al
00007DFC  0000              add [bx+si],al
00007DFE  55                push bp
00007DFF  AA                stosb
00007E00  F0                lock
00007E01  FF                db 0xff
00007E02  FF03              inc word [bp+di]
00007E04  40                inc ax
00007E05  0005              add [di],al
00007E07  60                pusha
00007E08  0007              add [bx],al
00007E0A  800009            add byte [bx+si],0x9
00007E0D  A0000B            mov al,[0xb00]
00007E10  C0000D            rol byte [bx+si],byte 0xd
00007E13  E000              loopne 0x7e15
00007E15  0F0001            sldt word [bx+di]
00007E18  1120              adc [bx+si],sp
00007E1A  0113              add [bp+di],dx
00007E1C  40                inc ax
00007E1D  0115              add [di],dx
00007E1F  60                pusha
00007E20  0117              add [bx],dx
00007E22  800119            add byte [bx+di],0x19
00007E25  A0011B            mov al,[0x1b01]
00007E28  C0011D            rol byte [bx+di],byte 0x1d
00007E2B  E001              loopne 0x7e2e
00007E2D  1F                pop ds
00007E2E  0002              add [bp+si],al
00007E30  2120              and [bx+si],sp
00007E32  0223              add ah,[bp+di]
00007E34  40                inc ax
00007E35  0225              add ah,[di]
00007E37  60                pusha
00007E38  0227              add ah,[bx]
00007E3A  800229            add byte [bp+si],0x29
00007E3D  A0022B            mov al,[0x2b02]
00007E40  C0022D            rol byte [bp+si],byte 0x2d
00007E43  F0                lock
00007E44  FF2F              jmp word far [bx]
00007E46  0003              add [bp+di],al
00007E48  3120              xor [bx+si],sp
00007E4A  0333              add si,[bp+di]
00007E4C  40                inc ax
00007E4D  0335              add si,[di]
00007E4F  60                pusha
00007E50  0337              add si,[bx]
00007E52  800339            add byte [bp+di],0x39
00007E55  A0033B            mov al,[0x3b03]
00007E58  C0033D            rol byte [bp+di],byte 0x3d
00007E5B  E003              loopne 0x7e60
00007E5D  3F                aas
00007E5E  0004              add [si],al
00007E60  41                inc cx
00007E61  2004              and [si],al
00007E63  43                inc bx
00007E64  40                inc ax
00007E65  0445              add al,0x45
00007E67  60                pusha
00007E68  0447              add al,0x47
00007E6A  800449            add byte [si],0x49
00007E6D  A0044B            mov al,[0x4b04]
00007E70  C0044D            rol byte [si],byte 0x4d
00007E73  E004              loopne 0x7e79
00007E75  4F                dec di
00007E76  0005              add [di],al
00007E78  51                push cx
00007E79  2005              and [di],al
00007E7B  53                push bx
00007E7C  40                inc ax
00007E7D  055560            add ax,0x6055
00007E80  055780            add ax,0x8057
00007E83  0559A0            add ax,0xa059
00007E86  055BC0            add ax,0xc05b
00007E89  055DE0            add ax,0xe05d
00007E8C  055F00            add ax,0x5f
00007E8F  06                push es
00007E90  61                popa
00007E91  20066340          and [0x4063],al
00007E95  06                push es
00007E96  6560              gs pusha
00007E98  06                push es
00007E99  678006FF          add byte [esi],0xff
00007E9D  FF                db 0xff
00007E9E  FF                db 0xff
00007E9F  FFCF              dec di
00007EA1  06                push es
00007EA2  6D                insw
00007EA3  E006              loopne 0x7eab
00007EA5  6F                outsw
00007EA6  0007              add [bx],al
00007EA8  7120              jno 0x7eca
00007EAA  07                pop es
00007EAB  7340              jnc 0x7eed
00007EAD  07                pop es
00007EAE  7560              jnz 0x7f10
00007EB0  07                pop es
00007EB1  7780              ja 0x7e33
00007EB3  07                pop es
00007EB4  79A0              jns 0x7e56
00007EB6  07                pop es
00007EB7  7BC0              jpo 0x7e79
00007EB9  07                pop es
00007EBA  7DE0              jnl 0x7e9c
00007EBC  07                pop es
00007EBD  7F00              jg 0x7ebf
00007EBF  08812008          or [bx+di+0x820],al
00007EC3  83400885          add word [bx+si+0x8],0xffffffffffffff85
00007EC7  60                pusha
00007EC8  08878008          or [bx+0x880],al
00007ECC  89A0088B          mov [bx+si-0x74f8],sp
00007ED0  C0088D            ror byte [bx+si],byte 0x8d
00007ED3  E008              loopne 0x7edd
00007ED5  8F00              pop word [bx+si]
00007ED7  09912009          or [bx+di+0x920],dx
00007EDB  93                xchg ax,bx
00007EDC  40                inc ax
00007EDD  09956009          or [di+0x960],dx
00007EE1  97                xchg ax,di
00007EE2  800999            or byte [bx+di],0x99
00007EE5  A0099B            mov al,[0x9b09]
00007EE8  F0                lock
00007EE9  FF9DE009          call word far [di+0x9e0]
00007EED  9F                lahf
00007EEE  000A              add [bp+si],cl
00007EF0  A1200A            mov ax,[0xa20]
00007EF3  A3400A            mov [0xa40],ax
00007EF6  A5                movsw
00007EF7  60                pusha
00007EF8  0AA7800A          or ah,[bx+0xa80]
00007EFC  A9A00A            test ax,0xaa0
00007EFF  AB                stosw
00007F00  C00AAD            ror byte [bp+si],byte 0xad
00007F03  E00A              loopne 0x7f0f
00007F05  AF                scasw
00007F06  000B              add [bp+di],cl
00007F08  B120              mov cl,0x20
00007F0A  0BB3400B          or si,[bp+di+0xb40]
00007F0E  B560              mov ch,0x60
00007F10  0BB7800B          or si,[bx+0xb80]
00007F14  B9A00B            mov cx,0xba0
00007F17  BBC00B            mov bx,0xbc0
00007F1A  BDE00B            mov bp,0xbe0
00007F1D  BF000C            mov di,0xc00
00007F20  C1200C            shl word [bx+si],byte 0xc
00007F23  C3                ret
00007F24  40                inc ax
00007F25  0CC5              or al,0xc5
00007F27  60                pusha
00007F28  0CC7              or al,0xc7
00007F2A  800CC9            or byte [si],0xc9
00007F2D  A00CCB            mov al,[0xcb0c]
00007F30  C00CCD            ror byte [si],byte 0xcd
00007F33  E00C              loopne 0x7f41
00007F35  CF                iret
00007F36  000D              add [di],cl
00007F38  D120              shl word [bx+si],0x0
00007F3A  0DD340            or ax,0x40d3
00007F3D  0DD560            or ax,0x60d5
00007F40  0DD780            or ax,0x80d7
00007F43  0DD9A0            or ax,0xa0d9
00007F46  0DDBC0            or ax,0xc0db
00007F49  0DDDE0            or ax,0xe0dd
00007F4C  0DDF00            or ax,0xdf
00007F4F  0E                push cs
00007F50  E120              loope 0x7f72
00007F52  0E                push cs
00007F53  E340              jcxz 0x7f95
00007F55  0E                push cs
00007F56  FF6F0E            jmp word far [bx+0xe]
00007F59  E780              out byte 0x80,ax
00007F5B  0E                push cs
00007F5C  E9A00E            jmp 0x8dff
00007F5F  EBC0              jmp 0x7f21
00007F61  0E                push cs
00007F62  ED                in ax,dx
00007F63  E00E              loopne 0x7f73
00007F65  EF                out dx,ax
00007F66  000F              add [bx],cl
00007F68  F1                int1
00007F69  200F              and [bx],cl
00007F6B  F340              rep inc ax
00007F6D  0FF5600F          pmaddwd mm4,[bx+si+0xf]
00007F71  F7800FF9A00F      test word [bx+si-0x6f1],0xfa0
00007F77  FB                sti
00007F78  C00FFD            ror byte [bx],byte 0xfd
00007F7B  E00F              loopne 0x7f8c
00007F7D  FF00              inc word [bx+si]
00007F7F  1001              adc [bx+di],al
00007F81  2110              and [bx+si],dx
00007F83  034110            add ax,[bx+di+0x10]
00007F86  056110            add ax,0x1061
00007F89  07                pop es
00007F8A  811009A1          adc word [bx+si],0xa109
00007F8E  100B              adc [bp+di],cl
00007F90  C1100D            rcl word [bx+si],byte 0xd
00007F93  E110              loope 0x7fa5
00007F95  0F0111            lgdt word [bx+di]
00007F98  1121              adc [bx+di],sp
00007F9A  1113              adc [bp+di],dx
00007F9C  41                inc cx
00007F9D  1115              adc [di],dx
00007F9F  61                popa
00007FA0  1117              adc [bx],dx
00007FA2  811119A1          adc word [bx+di],0xa119
00007FA6  111B              adc [bp+di],bx
00007FA8  C1111D            rcl word [bx+di],byte 0x1d
00007FAB  E111              loope 0x7fbe
00007FAD  1F                pop ds
00007FAE  0112              add [bp+si],dx
00007FB0  2121              and [bx+di],sp
00007FB2  1223              adc ah,[bp+di]
00007FB4  41                inc cx
00007FB5  1225              adc ah,[di]
00007FB7  61                popa
00007FB8  1227              adc ah,[bx]
00007FBA  811229A1          adc word [bp+si],0xa129
00007FBE  122B              adc ch,[bp+di]
00007FC0  C112FF            rcl word [bp+si],byte 0xff
00007FC3  EF                out dx,ax
00007FC4  122F              adc ch,[bx]
00007FC6  0113              add [bp+di],dx
00007FC8  3121              xor [bx+di],sp
00007FCA  1333              adc si,[bp+di]
00007FCC  41                inc cx
00007FCD  1335              adc si,[di]
00007FCF  61                popa
00007FD0  1337              adc si,[bx]
00007FD2  811339A1          adc word [bp+di],0xa139
00007FD6  133B              adc di,[bp+di]
00007FD8  C1133D            rcl word [bp+di],byte 0x3d
00007FDB  E113              loope 0x7ff0
00007FDD  3F                aas
00007FDE  F1                int1
00007FDF  FF4121            inc word [bx+di+0x21]
00007FE2  1443              adc al,0x43
00007FE4  41                inc cx
00007FE5  1445              adc al,0x45
00007FE7  61                popa
00007FE8  1447              adc al,0x47
00007FEA  811449A1          adc word [si],0xa149
00007FEE  144B              adc al,0x4b
00007FF0  C1144D            rcl word [si],byte 0x4d
00007FF3  E114              loope 0x8009
00007FF5  4F                dec di
00007FF6  F1                int1
00007FF7  FF5121            call word near [bx+di+0x21]
00007FFA  155341            adc ax,0x4153
00007FFD  155561            adc ax,0x6155
00008000  155781            adc ax,0x8157
00008003  1559A1            adc ax,0xa159
00008006  155BC1            adc ax,0xc15b
00008009  155DE1            adc ax,0xe15d
0000800C  155F01            adc ax,0x15f
0000800F  16                push ss
00008010  61                popa
00008011  21166341          and [0x4163],dx
00008015  16                push ss
00008016  6561              gs popa
00008018  16                push ss
00008019  67811669A1        adc word [esi],0xa169
0000801E  16                push ss
0000801F  6BC116            imul ax,cx,0x16
00008022  6D                insw
00008023  E116              loope 0x803b
00008025  6F                outsw
00008026  0117              add [bx],dx
00008028  7121              jno 0x804b
0000802A  17                pop ss
0000802B  7341              jnc 0x806e
0000802D  17                pop ss
0000802E  7561              jnz 0x8091
00008030  17                pop ss
00008031  7781              ja 0x7fb4
00008033  17                pop ss
00008034  79A1              jns 0x7fd7
00008036  17                pop ss
00008037  7BC1              jpo 0x7ffa
00008039  17                pop ss
0000803A  7DE1              jnl 0x801d
0000803C  17                pop ss
0000803D  7F01              jg 0x8040
0000803F  1881F1FF          sbb [bx+di-0xf],al
00008043  83411885          add word [bx+di+0x18],0xffffffffffffff85
00008047  61                popa
00008048  18878118          sbb [bx+0x1881],al
0000804C  89A1188B          mov [bx+di-0x74e8],sp
00008050  C1188D            rcr word [bx+si],byte 0x8d
00008053  E118              loope 0x806d
00008055  8F01              pop word [bx+di]
00008057  19912119          sbb [bx+di+0x1921],dx
0000805B  93                xchg ax,bx
0000805C  41                inc cx
0000805D  19956119          sbb [di+0x1961],dx
00008061  97                xchg ax,di
00008062  811999A1          sbb word [bx+di],0xa199
00008066  199BC119          sbb [bp+di+0x19c1],bx
0000806A  9D                popf
0000806B  E119              loope 0x8086
0000806D  9F                lahf
0000806E  011A              add [bp+si],bx
00008070  A1211A            mov ax,[0x1a21]
00008073  A3411A            mov [0x1a41],ax
00008076  A5                movsw
00008077  61                popa
00008078  1AA7811A          sbb ah,[bx+0x1a81]
0000807C  A9A11A            test ax,0x1aa1
0000807F  AB                stosw
00008080  C11AAD            rcr word [bp+si],byte 0xad
00008083  E11A              loope 0x809f
00008085  AF                scasw
00008086  011B              add [bp+di],bx
00008088  B121              mov cl,0x21
0000808A  1BB3411B          sbb si,[bp+di+0x1b41]
0000808E  B561              mov ch,0x61
00008090  1BB7811B          sbb si,[bx+0x1b81]
00008094  B9A11B            mov cx,0x1ba1
00008097  BBC11B            mov bx,0x1bc1
0000809A  BDE11B            mov bp,0x1be1
0000809D  BF011C            mov di,0x1c01
000080A0  C1211C            shl word [bx+di],byte 0x1c
000080A3  C3                ret
000080A4  41                inc cx
000080A5  1CC5              sbb al,0xc5
000080A7  61                popa
000080A8  1CC7              sbb al,0xc7
000080AA  811CC9A1          sbb word [si],0xa1c9
000080AE  1CCB              sbb al,0xcb
000080B0  C11CCD            rcr word [si],byte 0xcd
000080B3  E11C              loope 0x80d1
000080B5  CF                iret
000080B6  011D              add [di],bx
000080B8  D121              shl word [bx+di],0x0
000080BA  1DD341            sbb ax,0x41d3
000080BD  1DD561            sbb ax,0x61d5
000080C0  1DD781            sbb ax,0x81d7
000080C3  1DD9A1            sbb ax,0xa1d9
000080C6  1DDBC1            sbb ax,0xc1db
000080C9  1DDDE1            sbb ax,0xe1dd
000080CC  1DDF01            sbb ax,0x1df
000080CF  1E                push ds
000080D0  E121              loope 0x80f3
000080D2  1E                push ds
000080D3  E341              jcxz 0x8116
000080D5  1E                push ds
000080D6  E561              in ax,byte 0x61
000080D8  1E                push ds
000080D9  E781              out byte 0x81,ax
000080DB  1E                push ds
000080DC  E9A11E            jmp 0x9f80
000080DF  FFCF              dec di
000080E1  1E                push ds
000080E2  ED                in ax,dx
000080E3  E11E              loope 0x8103
000080E5  EF                out dx,ax
000080E6  011F              add [bx],bx
000080E8  F1                int1
000080E9  211F              and [bx],bx
000080EB  F341              rep inc cx
000080ED  1F                pop ds
000080EE  F5                cmc
000080EF  61                popa
000080F0  1F                pop ds
000080F1  F7811FF9A11F      test word [bx+di-0x6e1],0x1fa1
000080F7  FB                sti
000080F8  C11FFF            rcr word [bx],byte 0xff
000080FB  EF                out dx,ax
000080FC  1F                pop ds
000080FD  FF01              inc word [bx+di]
000080FF  2001              and [bx+di],al
00008101  2220              and ah,[bx+si]
00008103  034220            add ax,[bp+si+0x20]
00008106  056220            add ax,0x2062
00008109  07                pop es
0000810A  82                db 0x82
0000810B  2009              and [bx+di],cl
0000810D  A2200B            mov [0xb20],al
00008110  C2200D            ret word 0xd20
00008113  E220              loop 0x8135
00008115  0F0221            lar sp,[bx+di]
00008118  1122              adc [bp+si],sp
0000811A  2113              and [bp+di],dx
0000811C  42                inc dx
0000811D  2115              and [di],dx
0000811F  F2                repne
00008120  FF                db 0xff
00008121  FF8F2119          dec word [bx+0x1921]
00008125  A2211B            mov [0x1b21],al
00008128  C2211D            ret word 0x1d21
0000812B  E221              loop 0x814e
0000812D  1F                pop ds
0000812E  0222              add ah,[bp+si]
00008130  2122              and [bp+si],sp
00008132  2223              and ah,[bp+di]
00008134  42                inc dx
00008135  2225              and ah,[di]
00008137  6222              bound sp,[bp+si]
00008139  FF8F2229          dec word [bx+0x2922]
0000813D  A2222B            mov [0x2b22],al
00008140  C2222D            ret word 0x2d22
00008143  E222              loop 0x8167
00008145  2F                das
00008146  0223              add ah,[bp+di]
00008148  3122              xor [bp+si],sp
0000814A  2333              and si,[bp+di]
0000814C  42                inc dx
0000814D  2335              and si,[di]
0000814F  6223              bound sp,[bp+di]
00008151  37                aaa
00008152  82                db 0x82
00008153  2339              and di,[bx+di]
00008155  A2233B            mov [0x3b23],al
00008158  F2                repne
00008159  FF                db 0xff
0000815A  3DE223            cmp ax,0x23e2
0000815D  3F                aas
0000815E  0224              add ah,[si]
00008160  41                inc cx
00008161  2224              and ah,[si]
00008163  43                inc bx
00008164  42                inc dx
00008165  2445              and al,0x45
00008167  6224              bound sp,[si]
00008169  47                inc di
0000816A  82                db 0x82
0000816B  2449              and al,0x49
0000816D  A224FF            mov [0xff24],al
00008170  CF                iret
00008171  244D              and al,0x4d
00008173  E224              loop 0x8199
00008175  4F                dec di
00008176  0225              add ah,[di]
00008178  51                push cx
00008179  2225              and ah,[di]
0000817B  53                push bx
0000817C  42                inc dx
0000817D  255562            and ax,0x6255
00008180  255782            and ax,0x8257
00008183  2559A2            and ax,0xa259
00008186  255BC2            and ax,0xc25b
00008189  255DE2            and ax,0xe25d
0000818C  255F02            and ax,0x25f
0000818F  2661              es popa
00008191  22266342          and ah,[0x4263]
00008195  266562266782      bound sp,[gs:0x8267]
0000819B  2669F2FF6B        es imul si,dx,0x6bff
000081A0  C2266D            ret word 0x6d26
000081A3  E226              loop 0x81cb
000081A5  6F                outsw
000081A6  0227              add ah,[bx]
000081A8  7122              jno 0x81cc
000081AA  27                daa
000081AB  7342              jnc 0x81ef
000081AD  27                daa
000081AE  FF6F27            jmp word far [bx+0x27]
000081B1  7782              ja 0x8135
000081B3  27                daa
000081B4  79A2              jns 0x8158
000081B6  27                daa
000081B7  7BC2              jpo 0x817b
000081B9  27                daa
000081BA  7DE2              jnl 0x819e
000081BC  27                daa
000081BD  7F02              jg 0x81c1
000081BF  28812228          sub [bx+di+0x2822],al
000081C3  83422885          add word [bp+si+0x28],0xffffffffffffff85
000081C7  6228              bound bp,[bx+si]
000081C9  87F2              xchg si,dx
000081CB  FF00              inc word [bx+si]
000081CD  A0288B            mov al,[0x8b28]
000081D0  C2288D            ret word 0x8d28
000081D3  E228              loop 0x81fd
000081D5  8F02              pop word [bp+si]
000081D7  29912229          sub [bx+di+0x2922],dx
000081DB  93                xchg ax,bx
000081DC  42                inc dx
000081DD  29FF              sub di,di
000081DF  6F                outsw
000081E0  29978229          sub [bx+0x2982],dx
000081E4  99                cwd
000081E5  A2299B            mov [0x9b29],al
000081E8  C2299D            ret word 0x9d29
000081EB  E229              loop 0x8216
000081ED  9F                lahf
000081EE  022A              add ch,[bp+si]
000081F0  A1222A            mov ax,[0x2a22]
000081F3  A3422A            mov [0x2a42],ax
000081F6  A5                movsw
000081F7  622A              bound bp,[bp+si]
000081F9  A7                cmpsw
000081FA  82                db 0x82
000081FB  2AA9A22A          sub ch,[bx+di+0x2aa2]
000081FF  AB                stosw
00008200  C22AAD            ret word 0xad2a
00008203  E22A              loop 0x822f
00008205  AF                scasw
00008206  022B              add ch,[bp+di]
00008208  B122              mov cl,0x22
0000820A  2BB3422B          sub si,[bp+di+0x2b42]
0000820E  B562              mov ch,0x62
00008210  2BB7822B          sub si,[bx+0x2b82]
00008214  B9F2FF            mov cx,0xfff2
00008217  BBC22B            mov bx,0x2bc2
0000821A  BDE22B            mov bp,0x2be2
0000821D  BF022C            mov di,0x2c02
00008220  C1222C            shl word [bp+si],byte 0x2c
00008223  C3                ret
00008224  42                inc dx
00008225  2CC5              sub al,0xc5
00008227  622C              bound bp,[si]
00008229  C7822CC9A22C      mov word [bp+si-0x36d4],0x2ca2
0000822F  CB                retf
00008230  C22CCD            ret word 0xcd2c
00008233  E22C              loop 0x8261
00008235  CF                iret
00008236  022D              add ch,[di]
00008238  D122              shl word [bp+si],0x0
0000823A  2DD342            sub ax,0x42d3
0000823D  2DD562            sub ax,0x62d5
00008240  2DD782            sub ax,0x82d7
00008243  2DD9A2            sub ax,0xa2d9
00008246  2DDBC2            sub ax,0xc2db
00008249  2DDDE2            sub ax,0xe2dd
0000824C  2DDF02            sub ax,0x2df
0000824F  2EE122            loope 0x8274
00008252  2EE342            jcxz 0x8297
00008255  2EE562            cs in ax,byte 0x62
00008258  2EE782            cs out byte 0x82,ax
0000825B  2EE9A22E          cs jmp 0xb101
0000825F  EBC2              jmp 0x8223
00008261  2EED              cs in ax,dx
00008263  E22E              loop 0x8293
00008265  EF                out dx,ax
00008266  022F              add ch,[bx]
00008268  F1                int1
00008269  222F              and ch,[bx]
0000826B  F342              rep inc dx
0000826D  2F                das
0000826E  F5                cmc
0000826F  622F              bound bp,[bx]
00008271  F7822FF9A22F      test word [bp+si-0x6d1],0x2fa2
00008277  FB                sti
00008278  C22FFD            ret word 0xfd2f
0000827B  E22F              loop 0x82ac
0000827D  FF02              inc word [bp+si]
0000827F  3001              xor [bx+di],al
00008281  2330              and si,[bx+si]
00008283  034330            add ax,[bp+di+0x30]
00008286  056330            add ax,0x3063
00008289  07                pop es
0000828A  833009            xor word [bx+si],0x9
0000828D  A3300B            mov [0xb30],ax
00008290  C3                ret
00008291  300D              xor [di],cl
00008293  E330              jcxz 0x82c5
00008295  0F0331            lsl si,[bx+di]
00008298  1123              adc [bp+di],sp
0000829A  3113              xor [bp+di],dx
0000829C  43                inc bx
0000829D  3115              xor [di],dx
0000829F  6331              arpl [bx+di],si
000082A1  17                pop ss
000082A2  833119            xor word [bx+di],0x19
000082A5  A3311B            mov [0x1b31],ax
000082A8  C3                ret
000082A9  311D              xor [di],bx
000082AB  E331              jcxz 0x82de
000082AD  1F                pop ds
000082AE  0332              add si,[bp+si]
000082B0  2123              and [bp+di],sp
000082B2  3223              xor ah,[bp+di]
000082B4  43                inc bx
000082B5  3225              xor ah,[di]
000082B7  6332              arpl [bp+si],si
000082B9  27                daa
000082BA  833229            xor word [bp+si],0x29
000082BD  A3322B            mov [0x2b32],ax
000082C0  C3                ret
000082C1  322D              xor ch,[di]
000082C3  E332              jcxz 0x82f7
000082C5  2F                das
000082C6  0333              add si,[bp+di]
000082C8  3123              xor [bp+di],sp
000082CA  3333              xor si,[bp+di]
000082CC  43                inc bx
000082CD  3335              xor si,[di]
000082CF  6333              arpl [bp+di],si
000082D1  37                aaa
000082D2  833339            xor word [bp+di],0x39
000082D5  A3333B            mov [0x3b33],ax
000082D8  C3                ret
000082D9  333D              xor di,[di]
000082DB  E333              jcxz 0x8310
000082DD  3F                aas
000082DE  0334              add si,[si]
000082E0  41                inc cx
000082E1  2334              and si,[si]
000082E3  43                inc bx
000082E4  43                inc bx
000082E5  3445              xor al,0x45
000082E7  6334              arpl [si],si
000082E9  47                inc di
000082EA  833449            xor word [si],0x49
000082ED  A3344B            mov [0x4b34],ax
000082F0  C3                ret
000082F1  344D              xor al,0x4d
000082F3  E334              jcxz 0x8329
000082F5  4F                dec di
000082F6  0335              add si,[di]
000082F8  51                push cx
000082F9  2335              and si,[di]
000082FB  53                push bx
000082FC  43                inc bx
000082FD  355563            xor ax,0x6355
00008300  355783            xor ax,0x8357
00008303  3559A3            xor ax,0xa359
00008306  355BC3            xor ax,0xc35b
00008309  355DE3            xor ax,0xe35d
0000830C  355F03            xor ax,0x35f
0000830F  3661              ss popa
00008311  23366343          and si,[0x4363]
00008315  366563366783      arpl [gs:0x8367],si
0000831B  36FFAF366B        jmp word far [ss:bx+0x6b36]
00008320  C3                ret
00008321  366D              ss insw
00008323  E336              jcxz 0x835b
00008325  FF0F              dec word [bx]
00008327  37                aaa
00008328  7123              jno 0x834d
0000832A  37                aaa
0000832B  7343              jnc 0x8370
0000832D  37                aaa
0000832E  FF6F37            jmp word far [bx+0x37]
00008331  7783              ja 0x82b6
00008333  37                aaa
00008334  79A3              jns 0x82d9
00008336  37                aaa
00008337  7BC3              jpo 0x82fc
00008339  37                aaa
0000833A  7DE3              jnl 0x831f
0000833C  37                aaa
0000833D  7F03              jg 0x8342
0000833F  38812338          cmp [bx+di+0x3823],al
00008343  83433885          add word [bp+di+0x38],0xffffffffffffff85
00008347  6338              arpl [bx+si],di
00008349  87833889          xchg ax,[bp+di-0x76c8]
0000834D  A3388B            mov [0x8b38],ax
00008350  C3                ret
00008351  388DE338          cmp [di+0x38e3],cl
00008355  8F03              pop word [bp+di]
00008357  3991F3FF          cmp [bx+di-0xd],dx
0000835B  93                xchg ax,bx
0000835C  43                inc bx
0000835D  39956339          cmp [di+0x3963],dx
00008361  97                xchg ax,di
00008362  833999            cmp word [bx+di],0xffffffffffffff99
00008365  A3399B            mov [0x9b39],ax
00008368  C3                ret
00008369  399DE339          cmp [di+0x39e3],bx
0000836D  9F                lahf
0000836E  033A              add di,[bp+si]
00008370  A1233A            mov ax,[0x3a23]
00008373  A3433A            mov [0x3a43],ax
00008376  A5                movsw
00008377  633A              arpl [bp+si],di
00008379  A7                cmpsw
0000837A  833AA9            cmp word [bp+si],0xffffffffffffffa9
0000837D  A33AAB            mov [0xab3a],ax
00008380  C3                ret
00008381  3AADE33A          cmp ch,[di+0x3ae3]
00008385  AF                scasw
00008386  033B              add di,[bp+di]
00008388  B123              mov cl,0x23
0000838A  3BB3433B          cmp si,[bp+di+0x3b43]
0000838E  B563              mov ch,0x63
00008390  3BB7833B          cmp si,[bx+0x3b83]
00008394  B9A33B            mov cx,0x3ba3
00008397  BBC33B            mov bx,0x3bc3
0000839A  BDE33B            mov bp,0x3be3
0000839D  BF033C            mov di,0x3c03
000083A0  C1233C            shl word [bp+di],byte 0x3c
000083A3  C3                ret
000083A4  43                inc bx
000083A5  3CC5              cmp al,0xc5
000083A7  633C              arpl [si],di
000083A9  C7                db 0xc7
000083AA  F3FFC9            rep dec cx
000083AD  A33CCB            mov [0xcb3c],ax
000083B0  C3                ret
000083B1  3CCD              cmp al,0xcd
000083B3  E33C              jcxz 0x83f1
000083B5  CF                iret
000083B6  033D              add di,[di]
000083B8  D123              shl word [bp+di],0x0
000083BA  3DD3F3            cmp ax,0xf3d3
000083BD  FF                db 0xff
000083BE  D563              aad byte 0x63
000083C0  3DD783            cmp ax,0x83d7
000083C3  3DD9A3            cmp ax,0xa3d9
000083C6  3DDBC3            cmp ax,0xc3db
000083C9  3DDDE3            cmp ax,0xe3dd
000083CC  3DDF03            cmp ax,0x3df
000083CF  3EE123            loope 0x83f5
000083D2  3EE343            jcxz 0x8418
000083D5  3EE563            ds in ax,byte 0x63
000083D8  3EE783            ds out byte 0x83,ax
000083DB  3EE9A33E          ds jmp 0xc282
000083DF  EBC3              jmp 0x83a4
000083E1  3EED              ds in ax,dx
000083E3  F3                rep
000083E4  FF                db 0xff
000083E5  EF                out dx,ax
000083E6  033F              add di,[bx]
000083E8  F1                int1
000083E9  233F              and di,[bx]
000083EB  F343              rep inc bx
000083ED  3F                aas
000083EE  F5                cmc
000083EF  633F              arpl [bx],di
000083F1  F7833FF9A33F      test word [bp+di-0x6c1],0x3fa3
000083F7  FB                sti
000083F8  C3                ret
000083F9  3F                aas
000083FA  FD                std
000083FB  E33F              jcxz 0x843c
000083FD  FF03              inc word [bp+di]
000083FF  40                inc ax
00008400  0124              add [si],sp
00008402  40                inc ax
00008403  034440            add ax,[si+0x40]
00008406  056440            add ax,0x4064
00008409  07                pop es
0000840A  844009            test [bx+si+0x9],al
0000840D  A4                movsb
0000840E  40                inc ax
0000840F  0BC4              or ax,sp
00008411  40                inc ax
00008412  0DE440            or ax,0x40e4
00008415  0F                db 0x0f
00008416  0441              add al,0x41
00008418  1124              adc [si],sp
0000841A  41                inc cx
0000841B  134441            adc ax,[si+0x41]
0000841E  156441            adc ax,0x4164
00008421  17                pop ss
00008422  844119            test [bx+di+0x19],al
00008425  A4                movsb
00008426  41                inc cx
00008427  1BC4              sbb ax,sp
00008429  41                inc cx
0000842A  1DE441            sbb ax,0x41e4
0000842D  1F                pop ds
0000842E  0442              add al,0x42
00008430  2124              and [si],sp
00008432  42                inc dx
00008433  234442            and ax,[si+0x42]
00008436  256442            and ax,0x4264
00008439  27                daa
0000843A  844229            test [bp+si+0x29],al
0000843D  A4                movsb
0000843E  42                inc dx
0000843F  2BC4              sub ax,sp
00008441  42                inc dx
00008442  2DE442            sub ax,0x42e4
00008445  2F                das
00008446  0443              add al,0x43
00008448  3124              xor [si],sp
0000844A  43                inc bx
0000844B  334443            xor ax,[si+0x43]
0000844E  356443            xor ax,0x4364
00008451  37                aaa
00008452  844339            test [bp+di+0x39],al
00008455  A4                movsb
00008456  43                inc bx
00008457  3BC4              cmp ax,sp
00008459  43                inc bx
0000845A  3DE443            cmp ax,0x43e4
0000845D  3F                aas
0000845E  0444              add al,0x44
00008460  41                inc cx
00008461  2444              and al,0x44
00008463  43                inc bx
00008464  F4                hlt
00008465  FF4564            inc word [di+0x64]
00008468  44                inc sp
00008469  47                inc di
0000846A  844449            test [si+0x49],al
0000846D  A4                movsb
0000846E  44                inc sp
0000846F  4B                dec bx
00008470  C4444D            les ax,word [si+0x4d]
00008473  E444              in al,byte 0x44
00008475  4F                dec di
00008476  0445              add al,0x45
00008478  51                push cx
00008479  2445              and al,0x45
0000847B  53                push bx
0000847C  44                inc sp
0000847D  45                inc bp
0000847E  FF6F45            jmp word far [bx+0x45]
00008481  57                push di
00008482  844559            test [di+0x59],al
00008485  A4                movsb
00008486  45                inc bp
00008487  5B                pop bx
00008488  C4455D            les ax,word [di+0x5d]
0000848B  E445              in al,byte 0x45
0000848D  5F                pop di
0000848E  0446              add al,0x46
00008490  61                popa
00008491  2446              and al,0x46
00008493  634446            arpl [si+0x46],ax
00008496  656446            fs inc si
00008499  67844669          test [esi+0x69],al
0000849D  A4                movsb
0000849E  46                inc si
0000849F  FFCF              dec di
000084A1  46                inc si
000084A2  6D                insw
000084A3  E446              in al,byte 0x46
000084A5  FF0F              dec word [bx]
000084A7  47                inc di
000084A8  7124              jno 0x84ce
000084AA  47                inc di
000084AB  7344              jnc 0x84f1
000084AD  47                inc di
000084AE  7564              jnz 0x8514
000084B0  47                inc di
000084B1  7784              ja 0x8437
000084B3  47                inc di
000084B4  FFAF477B          jmp word far [bx+0x7b47]
000084B8  C4477D            les ax,word [bx+0x7d]
000084BB  F4                hlt
000084BC  FF00              inc word [bx+si]
000084BE  0000              add [bx+si],al
000084C0  81244883          and word [si],0x8348
000084C4  44                inc sp
000084C5  48                dec ax
000084C6  856448            test [si+0x48],sp
000084C9  87844889          xchg ax,[si-0x76b8]
000084CD  A4                movsb
000084CE  48                dec ax
000084CF  8BC4              mov ax,sp
000084D1  48                dec ax
000084D2  8D                db 0x8d
000084D3  E448              in al,byte 0x48
000084D5  8F04              pop word [si]
000084D7  49                dec cx
000084D8  91                xchg ax,cx
000084D9  2449              and al,0x49
000084DB  93                xchg ax,bx
000084DC  44                inc sp
000084DD  49                dec cx
000084DE  95                xchg ax,bp
000084DF  6449              fs dec cx
000084E1  97                xchg ax,di
000084E2  844999            test [bx+di-0x67],cl
000084E5  A4                movsb
000084E6  49                dec cx
000084E7  9BC4499D          wait les cx,word [bx+di-0x63]
000084EB  E449              in al,byte 0x49
000084ED  9F                lahf
000084EE  044A              add al,0x4a
000084F0  A1244A            mov ax,[0x4a24]
000084F3  A3444A            mov [0x4a44],ax
000084F6  A5                movsw
000084F7  644A              fs dec dx
000084F9  A7                cmpsw
000084FA  844AA9            test [bp+si-0x57],cl
000084FD  A4                movsb
000084FE  4A                dec dx
000084FF  AB                stosw
00008500  C44AAD            les cx,word [bp+si-0x53]
00008503  E44A              in al,byte 0x4a
00008505  AF                scasw
00008506  044B              add al,0x4b
00008508  B124              mov cl,0x24
0000850A  4B                dec bx
0000850B  B344              mov bl,0x44
0000850D  4B                dec bx
0000850E  B564              mov ch,0x64
00008510  4B                dec bx
00008511  B784              mov bh,0x84
00008513  4B                dec bx
00008514  B9A44B            mov cx,0x4ba4
00008517  BBC44B            mov bx,0x4bc4
0000851A  BDE44B            mov bp,0x4be4
0000851D  BF044C            mov di,0x4c04
00008520  C1244C            shl word [si],byte 0x4c
00008523  C3                ret
00008524  44                inc sp
00008525  4C                dec sp
00008526  C5644C            lds sp,word [si+0x4c]
00008529  C7844CC9A44C      mov word [si-0x36b4],0x4ca4
0000852F  CB                retf
00008530  C44CCD            les cx,word [si-0x33]
00008533  E44C              in al,byte 0x4c
00008535  CF                iret
00008536  044D              add al,0x4d
00008538  D124              shl word [si],0x0
0000853A  4D                dec bp
0000853B  D3444D            rol word [si+0x4d],cl
0000853E  D564              aad byte 0x64
00008540  4D                dec bp
00008541  D7                xlatb
00008542  844DD9            test [di-0x27],cl
00008545  A4                movsb
00008546  4D                dec bp
00008547  DBC4              fcmovnb st4
00008549  4D                dec bp
0000854A  DDE4              fucom st4
0000854C  4D                dec bp
0000854D  DF04              fild word [si]
0000854F  4E                dec si
00008550  E124              loope 0x8576
00008552  4E                dec si
00008553  E344              jcxz 0x8599
00008555  4E                dec si
00008556  E564              in ax,byte 0x64
00008558  4E                dec si
00008559  E784              out byte 0x84,ax
0000855B  4E                dec si
0000855C  E9A44E            jmp 0xd403
0000855F  EBC4              jmp 0x8525
00008561  4E                dec si
00008562  ED                in ax,dx
00008563  E44E              in al,byte 0x4e
00008565  EF                out dx,ax
00008566  044F              add al,0x4f
00008568  F1                int1
00008569  244F              and al,0x4f
0000856B  F344              rep inc sp
0000856D  4F                dec di
0000856E  F5                cmc
0000856F  644F              fs dec di
00008571  F7844FF9A44F      test word [si-0x6b1],0x4fa4
00008577  FB                sti
00008578  C44FFD            les cx,word [bx-0x3]
0000857B  E44F              in al,byte 0x4f
0000857D  FF04              inc word [si]
0000857F  50                push ax
00008580  0125              add [di],sp
00008582  50                push ax
00008583  034550            add ax,[di+0x50]
00008586  056550            add ax,0x5065
00008589  07                pop es
0000858A  855009            test [bx+si+0x9],dx
0000858D  A5                movsw
0000858E  50                push ax
0000858F  0BC5              or ax,bp
00008591  50                push ax
00008592  0DE550            or ax,0x50e5
00008595  0F05              syscall
00008597  51                push cx
00008598  1125              adc [di],sp
0000859A  51                push cx
0000859B  134551            adc ax,[di+0x51]
0000859E  156551            adc ax,0x5165
000085A1  17                pop ss
000085A2  855119            test [bx+di+0x19],dx
000085A5  A5                movsw
000085A6  51                push cx
000085A7  1BC5              sbb ax,bp
000085A9  51                push cx
000085AA  1DE551            sbb ax,0x51e5
000085AD  1F                pop ds
000085AE  055221            add ax,0x2152
000085B1  255223            and ax,0x2352
000085B4  45                inc bp
000085B5  52                push dx
000085B6  256552            and ax,0x5265
000085B9  27                daa
000085BA  855229            test [bp+si+0x29],dx
000085BD  A5                movsw
000085BE  52                push dx
000085BF  2BC5              sub ax,bp
000085C1  52                push dx
000085C2  2DE552            sub ax,0x52e5
000085C5  2F                das
000085C6  055331            add ax,0x3153
000085C9  255333            and ax,0x3353
000085CC  45                inc bp
000085CD  53                push bx
000085CE  356553            xor ax,0x5365
000085D1  37                aaa
000085D2  855339            test [bp+di+0x39],dx
000085D5  A5                movsw
000085D6  53                push bx
000085D7  3BC5              cmp ax,bp
000085D9  53                push bx
000085DA  3DE553            cmp ax,0x53e5
000085DD  3F                aas
000085DE  055441            add ax,0x4154
000085E1  255443            and ax,0x4354
000085E4  45                inc bp
000085E5  54                push sp
000085E6  45                inc bp
000085E7  6554              gs push sp
000085E9  47                inc di
000085EA  855449            test [si+0x49],dx
000085ED  A5                movsw
000085EE  54                push sp
000085EF  4B                dec bx
000085F0  C5544D            lds dx,word [si+0x4d]
000085F3  E554              in ax,byte 0x54
000085F5  4F                dec di
000085F6  055551            add ax,0x5155
000085F9  255553            and ax,0x5355
000085FC  45                inc bp
000085FD  55                push bp
000085FE  55                push bp
000085FF  6555              gs push bp
00008601  57                push di
00008602  855559            test [di+0x59],dx
00008605  A5                movsw
00008606  55                push bp
00008607  5B                pop bx
00008608  C5555D            lds dx,word [di+0x5d]
0000860B  E555              in ax,byte 0x55
0000860D  5F                pop di
0000860E  055661            add ax,0x6156
00008611  255663            and ax,0x6356
00008614  45                inc bp
00008615  56                push si
00008616  656556            gs push si
00008619  67855669          test [esi+0x69],dx
0000861D  A5                movsw
0000861E  56                push si
0000861F  6BC556            imul ax,bp,0x56
00008622  6D                insw
00008623  E556              in ax,byte 0x56
00008625  6F                outsw
00008626  055771            add ax,0x7157
00008629  255773            and ax,0x7357
0000862C  45                inc bp
0000862D  57                push di
0000862E  7565              jnz 0x8695
00008630  57                push di
00008631  7785              ja 0x85b8
00008633  57                push di
00008634  79A5              jns 0x85db
00008636  57                push di
00008637  7BC5              jpo 0x85fe
00008639  57                push di
0000863A  7DE5              jnl 0x8621
0000863C  57                push di
0000863D  7F05              jg 0x8644
0000863F  58                pop ax
00008640  81255883          and word [di],0x8358
00008644  45                inc bp
00008645  58                pop ax
00008646  856558            test [di+0x58],sp
00008649  87855889          xchg ax,[di-0x76a8]
0000864D  A5                movsw
0000864E  58                pop ax
0000864F  8BC5              mov ax,bp
00008651  58                pop ax
00008652  8D                db 0x8d
00008653  E558              in ax,byte 0x58
00008655  8F05              pop word [di]
00008657  59                pop cx
00008658  91                xchg ax,cx
00008659  255993            and ax,0x9359
0000865C  45                inc bp
0000865D  59                pop cx
0000865E  95                xchg ax,bp
0000865F  6559              gs pop cx
00008661  97                xchg ax,di
00008662  855999            test [bx+di-0x67],bx
00008665  A5                movsw
00008666  59                pop cx
00008667  9BC5599D          wait lds bx,word [bx+di-0x63]
0000866B  E559              in ax,byte 0x59
0000866D  9F                lahf
0000866E  055AA1            add ax,0xa15a
00008671  255AA3            and ax,0xa35a
00008674  45                inc bp
00008675  5A                pop dx
00008676  A5                movsw
00008677  655A              gs pop dx
00008679  A7                cmpsw
0000867A  855AA9            test [bp+si-0x57],bx
0000867D  A5                movsw
0000867E  5A                pop dx
0000867F  AB                stosw
00008680  C55AAD            lds bx,word [bp+si-0x53]
00008683  E55A              in ax,byte 0x5a
00008685  AF                scasw
00008686  055BB1            add ax,0xb15b
00008689  255BB3            and ax,0xb35b
0000868C  45                inc bp
0000868D  5B                pop bx
0000868E  B565              mov ch,0x65
00008690  5B                pop bx
00008691  B785              mov bh,0x85
00008693  5B                pop bx
00008694  B9A55B            mov cx,0x5ba5
00008697  BBC55B            mov bx,0x5bc5
0000869A  BDE55B            mov bp,0x5be5
0000869D  BF055C            mov di,0x5c05
000086A0  C1255C            shl word [di],byte 0x5c
000086A3  C3                ret
000086A4  45                inc bp
000086A5  5C                pop sp
000086A6  C5655C            lds sp,word [di+0x5c]
000086A9  C7855CC9A55C      mov word [di-0x36a4],0x5ca5
000086AF  CB                retf
000086B0  C55CCD            lds bx,word [si-0x33]
000086B3  E55C              in ax,byte 0x5c
000086B5  CF                iret
000086B6  055DD1            add ax,0xd15d
000086B9  255DD3            and ax,0xd35d
000086BC  45                inc bp
000086BD  5D                pop bp
000086BE  D565              aad byte 0x65
000086C0  5D                pop bp
000086C1  D7                xlatb
000086C2  855DD9            test [di-0x27],bx
000086C5  A5                movsw
000086C6  5D                pop bp
000086C7  DBC5              fcmovnb st5
000086C9  5D                pop bp
000086CA  DDE5              fucom st5
000086CC  5D                pop bp
000086CD  DF05              fild word [di]
000086CF  5E                pop si
000086D0  E125              loope 0x86f7
000086D2  5E                pop si
000086D3  E345              jcxz 0x871a
000086D5  5E                pop si
000086D6  E565              in ax,byte 0x65
000086D8  5E                pop si
000086D9  E7F5              out byte 0xf5,ax
000086DB  FF                db 0xff
000086DC  E9A55E            jmp 0xe584
000086DF  EBC5              jmp 0x86a6
000086E1  5E                pop si
000086E2  ED                in ax,dx
000086E3  E55E              in ax,byte 0x5e
000086E5  EF                out dx,ax
000086E6  055FF1            add ax,0xf15f
000086E9  255FF3            and ax,0xf35f
000086EC  45                inc bp
000086ED  5F                pop di
000086EE  F5                cmc
000086EF  655F              gs pop di
000086F1  F7855FF9A55F      test word [di-0x6a1],0x5fa5
000086F7  FB                sti
000086F8  C55FFD            lds bx,word [bx-0x3]
000086FB  E55F              in ax,byte 0x5f
000086FD  FF05              inc word [di]
000086FF  60                pusha
00008700  01266003          add [0x360],sp
00008704  46                inc si
00008705  60                pusha
00008706  056660            add ax,0x6066
00008709  07                pop es
0000870A  866009            xchg ah,[bx+si+0x9]
0000870D  A6                cmpsb
0000870E  60                pusha
0000870F  0BC6              or ax,si
00008711  60                pusha
00008712  0DE660            or ax,0x60e6
00008715  0F06              clts
00008717  61                popa
00008718  11266113          adc [0x1361],sp
0000871C  46                inc si
0000871D  61                popa
0000871E  156661            adc ax,0x6166
00008721  17                pop ss
00008722  866119            xchg ah,[bx+di+0x19]
00008725  A6                cmpsb
00008726  61                popa
00008727  1BC6              sbb ax,si
00008729  61                popa
0000872A  1DE661            sbb ax,0x61e6
0000872D  1F                pop ds
0000872E  06                push es
0000872F  6221              bound sp,[bx+di]
00008731  266223            bound sp,[es:bp+di]
00008734  46                inc si
00008735  6225              bound sp,[di]
00008737  666227            bound esp,[bx]
0000873A  866229            xchg ah,[bp+si+0x29]
0000873D  A6                cmpsb
0000873E  622B              bound bp,[bp+di]
00008740  C6                db 0xc6
00008741  622D              bound bp,[di]
00008743  E662              out byte 0x62,al
00008745  2F                das
00008746  06                push es
00008747  6331              arpl [bx+di],si
00008749  266333            arpl [es:bp+di],si
0000874C  46                inc si
0000874D  6335              arpl [di],si
0000874F  666337            arpl word [bx],esi
00008752  866339            xchg ah,[bp+di+0x39]
00008755  A6                cmpsb
00008756  633B              arpl [bp+di],di
00008758  C6                db 0xc6
00008759  633D              arpl [di],di
0000875B  E663              out byte 0x63,al
0000875D  3F                aas
0000875E  06                push es
0000875F  6441              fs inc cx
00008761  266443            fs inc bx
00008764  46                inc si
00008765  6445              fs inc bp
00008767  666447            fs inc edi
0000876A  866449            xchg ah,[si+0x49]
0000876D  A6                cmpsb
0000876E  644B              fs dec bx
00008770  C6                db 0xc6
00008771  644D              fs dec bp
00008773  E664              out byte 0x64,al
00008775  4F                dec di
00008776  06                push es
00008777  6551              gs push cx
00008779  266553            gs push bx
0000877C  46                inc si
0000877D  6555              gs push bp
0000877F  666557            gs push edi
00008782  866559            xchg ah,[di+0x59]
00008785  A6                cmpsb
00008786  655B              gs pop bx
00008788  C6                db 0xc6
00008789  655D              gs pop bp
0000878B  E665              out byte 0x65,al
0000878D  5F                pop di
0000878E  06                push es
0000878F  6661              popad
00008791  2666634666        arpl word [es:bp+0x66],eax
00008796  65666667866669    o32 xchg ah,[gs:esi+0x69]
0000879D  A6                cmpsb
0000879E  666BC666          imul eax,esi,0x66
000087A2  6D                insw
000087A3  E666              out byte 0x66,al
000087A5  6F                outsw
000087A6  06                push es
000087A7  677126            a32 jno 0x87d0
000087AA  677346            a32 jnc 0x87f3
000087AD  677566            a32 jnz 0x8816
000087B0  677786            a32 ja 0x8739
000087B3  6779A6            a32 jns 0x875c
000087B6  677BC6            a32 jpo 0x877f
000087B9  677DE6            a32 jnl 0x87a2
000087BC  677F06            a32 jg 0x87c5
000087BF  688126            push word 0x2681
000087C2  688346            push word 0x4683
000087C5  688566            push word 0x6685
000087C8  688786            push word 0x8687
000087CB  6889A6            push word 0xa689
000087CE  688BC6            push word 0xc68b
000087D1  688DE6            push word 0xe68d
000087D4  688F06            push word 0x68f
000087D7  699126699346      imul dx,[bx+di+0x6926],0x4693
000087DD  699566699786      imul dx,[di+0x6966],0x8697
000087E3  6999A6699BC6      imul bx,[bx+di+0x69a6],0xc69b
000087E9  699DE6699F06      imul bx,[di+0x69e6],0x69f
000087EF  6AA1              push word 0xffffffffffffffa1
000087F1  266AA3            es push word 0xffffffffffffffa3
000087F4  46                inc si
000087F5  6AA5              push word 0xffffffffffffffa5
000087F7  666AA7            push dword 0xffffffffffffffa7
000087FA  866AA9            xchg ch,[bp+si-0x57]
000087FD  A6                cmpsb
000087FE  6AAB              push word 0xffffffffffffffab
00008800  C6                db 0xc6
00008801  6AAD              push word 0xffffffffffffffad
00008803  E66A              out byte 0x6a,al
00008805  AF                scasw
00008806  06                push es
00008807  6BB1266BB3        imul si,[bx+di+0x6b26],0xffffffffffffffb3
0000880C  46                inc si
0000880D  6BB5666BB7        imul si,[di+0x6b66],0xffffffffffffffb7
00008812  866BB9            xchg ch,[bp+di-0x47]
00008815  A6                cmpsb
00008816  6BBBC66BBD        imul di,[bp+di+0x6bc6],0xffffffffffffffbd
0000881B  E66B              out byte 0x6b,al
0000881D  BF066C            mov di,0x6c06
00008820  C1266CC346        shl word [0xc36c],byte 0x46
00008825  6C                insb
00008826  C5666C            lds sp,word [bp+0x6c]
00008829  C7866CC9A66C      mov word [bp-0x3694],0x6ca6
0000882F  CB                retf
00008830  C6                db 0xc6
00008831  6C                insb
00008832  CDE6              int byte 0xe6
00008834  6C                insb
00008835  CF                iret
00008836  06                push es
00008837  6D                insw
00008838  D1266DD3          shl word [0xd36d],0x0
0000883C  46                inc si
0000883D  6D                insw
0000883E  D566              aad byte 0x66
00008840  6D                insw
00008841  D7                xlatb
00008842  866DD9            xchg ch,[di-0x27]
00008845  A6                cmpsb
00008846  6D                insw
00008847  DBC6              fcmovnb st6
00008849  6D                insw
0000884A  DDE6              fucom st6
0000884C  6D                insw
0000884D  DF066EE1          fild word [0xe16e]
00008851  266E              es outsb
00008853  E346              jcxz 0x889b
00008855  6E                outsb
00008856  E566              in ax,byte 0x66
00008858  6E                outsb
00008859  E786              out byte 0x86,ax
0000885B  6E                outsb
0000885C  E9A66E            jmp 0xf705
0000885F  EBC6              jmp 0x8827
00008861  6E                outsb
00008862  ED                in ax,dx
00008863  E66E              out byte 0x6e,al
00008865  EF                out dx,ax
00008866  06                push es
00008867  6F                outsw
00008868  F1                int1
00008869  266F              es outsw
0000886B  F346              rep inc si
0000886D  6F                outsw
0000886E  F5                cmc
0000886F  666F              outsd
00008871  F7866FF9A66F      test word [bp-0x691],0x6fa6
00008877  FB                sti
00008878  C6                db 0xc6
00008879  6F                outsw
0000887A  FD                std
0000887B  E66F              out byte 0x6f,al
0000887D  FF067001          inc word [0x170]
00008881  27                daa
00008882  7003              jo 0x8887
00008884  47                inc di
00008885  7005              jo 0x888c
00008887  677007            a32 jo 0x8891
0000888A  877009            xchg si,[bx+si+0x9]
0000888D  A7                cmpsw
0000888E  700B              jo 0x889b
00008890  C7                db 0xc7
00008891  700D              jo 0x88a0
00008893  E770              out byte 0x70,ax
00008895  0F07              sysret
00008897  7111              jno 0x88aa
00008899  27                daa
0000889A  7113              jno 0x88af
0000889C  47                inc di
0000889D  7115              jno 0x88b4
0000889F  677117            a32 jno 0x88b9
000088A2  877119            xchg si,[bx+di+0x19]
000088A5  A7                cmpsw
000088A6  711B              jno 0x88c3
000088A8  C7                db 0xc7
000088A9  711D              jno 0x88c8
000088AB  E771              out byte 0x71,ax
000088AD  1F                pop ds
000088AE  07                pop es
000088AF  7221              jc 0x88d2
000088B1  27                daa
000088B2  7223              jc 0x88d7
000088B4  47                inc di
000088B5  7225              jc 0x88dc
000088B7  677227            a32 jc 0x88e1
000088BA  877229            xchg si,[bp+si+0x29]
000088BD  A7                cmpsw
000088BE  722B              jc 0x88eb
000088C0  C7                db 0xc7
000088C1  722D              jc 0x88f0
000088C3  E772              out byte 0x72,ax
000088C5  2F                das
000088C6  07                pop es
000088C7  7331              jnc 0x88fa
000088C9  27                daa
000088CA  7333              jnc 0x88ff
000088CC  47                inc di
000088CD  7335              jnc 0x8904
000088CF  677337            a32 jnc 0x8909
000088D2  877339            xchg si,[bp+di+0x39]
000088D5  A7                cmpsw
000088D6  733B              jnc 0x8913
000088D8  C7                db 0xc7
000088D9  733D              jnc 0x8918
000088DB  E773              out byte 0x73,ax
000088DD  3F                aas
000088DE  07                pop es
000088DF  7441              jz 0x8922
000088E1  27                daa
000088E2  7443              jz 0x8927
000088E4  47                inc di
000088E5  7445              jz 0x892c
000088E7  677447            a32 jz 0x8931
000088EA  877449            xchg si,[si+0x49]
000088ED  A7                cmpsw
000088EE  744B              jz 0x893b
000088F0  C7                db 0xc7
000088F1  744D              jz 0x8940
000088F3  E774              out byte 0x74,ax
000088F5  4F                dec di
000088F6  07                pop es
000088F7  7551              jnz 0x894a
000088F9  27                daa
000088FA  7553              jnz 0x894f
000088FC  47                inc di
000088FD  7555              jnz 0x8954
000088FF  677557            a32 jnz 0x8959
00008902  877559            xchg si,[di+0x59]
00008905  A7                cmpsw
00008906  755B              jnz 0x8963
00008908  C7                db 0xc7
00008909  755D              jnz 0x8968
0000890B  E775              out byte 0x75,ax
0000890D  5F                pop di
0000890E  07                pop es
0000890F  7661              jna 0x8972
00008911  27                daa
00008912  7663              jna 0x8977
00008914  47                inc di
00008915  7665              jna 0x897c
00008917  677667            a32 jna 0x8981
0000891A  877669            xchg si,[bp+0x69]
0000891D  A7                cmpsw
0000891E  766B              jna 0x898b
00008920  C7                db 0xc7
00008921  766D              jna 0x8990
00008923  E776              out byte 0x76,ax
00008925  6F                outsw
00008926  07                pop es
00008927  7771              ja 0x899a
00008929  27                daa
0000892A  7773              ja 0x899f
0000892C  47                inc di
0000892D  7775              ja 0x89a4
0000892F  677777            a32 ja 0x89a9
00008932  877779            xchg si,[bx+0x79]
00008935  A7                cmpsw
00008936  777B              ja 0x89b3
00008938  C7                db 0xc7
00008939  777D              ja 0x89b8
0000893B  E777              out byte 0x77,ax
0000893D  7F07              jg 0x8946
0000893F  7881              js 0x88c2
00008941  27                daa
00008942  7883              js 0x88c7
00008944  47                inc di
00008945  7885              js 0x88cc
00008947  677887            a32 js 0x88d1
0000894A  877889            xchg di,[bx+si-0x77]
0000894D  A7                cmpsw
0000894E  788B              js 0x88db
00008950  C7                db 0xc7
00008951  788D              js 0x88e0
00008953  E778              out byte 0x78,ax
00008955  8F07              pop word [bx]
00008957  7991              jns 0x88ea
00008959  27                daa
0000895A  7993              jns 0x88ef
0000895C  47                inc di
0000895D  7995              jns 0x88f4
0000895F  F7FF              idiv di
00008961  97                xchg ax,di
00008962  8779FF            xchg di,[bx+di-0x1]
00008965  AF                scasw
00008966  799B              jns 0x8903
00008968  C7                db 0xc7
00008969  799D              jns 0x8908
0000896B  E779              out byte 0x79,ax
0000896D  9F                lahf
0000896E  07                pop es
0000896F  7AA1              jpe 0x8912
00008971  27                daa
00008972  7AA3              jpe 0x8917
00008974  47                inc di
00008975  7AA5              jpe 0x891c
00008977  677AA7            a32 jpe 0x8921
0000897A  877AA9            xchg di,[bp+si-0x57]
0000897D  A7                cmpsw
0000897E  7AAB              jpe 0x892b
00008980  C7                db 0xc7
00008981  7AAD              jpe 0x8930
00008983  E77A              out byte 0x7a,ax
00008985  AF                scasw
00008986  07                pop es
00008987  7BB1              jpo 0x893a
00008989  27                daa
0000898A  7BB3              jpo 0x893f
0000898C  47                inc di
0000898D  7BB5              jpo 0x8944
0000898F  677BB7            a32 jpo 0x8949
00008992  877BB9            xchg di,[bp+di-0x47]
00008995  A7                cmpsw
00008996  7BBB              jpo 0x8953
00008998  C7                db 0xc7
00008999  7BBD              jpo 0x8958
0000899B  E77B              out byte 0x7b,ax
0000899D  FF                db 0xff
0000899E  FF                db 0xff
0000899F  FFC1              inc cx
000089A1  27                daa
000089A2  7CC3              jl 0x8967
000089A4  47                inc di
000089A5  7CC5              jl 0x896c
000089A7  677CC7            a32 jl 0x8971
000089AA  877CC9            xchg di,[si-0x37]
000089AD  A7                cmpsw
000089AE  7CCB              jl 0x897b
000089B0  C7                db 0xc7
000089B1  7CCD              jl 0x8980
000089B3  E77C              out byte 0x7c,ax
000089B5  CF                iret
000089B6  07                pop es
000089B7  7DD1              jnl 0x898a
000089B9  27                daa
000089BA  7DD3              jnl 0x898f
000089BC  47                inc di
000089BD  7DD5              jnl 0x8994
000089BF  677DD7            a32 jnl 0x8999
000089C2  877DD9            xchg di,[di-0x27]
000089C5  A7                cmpsw
000089C6  7DDB              jnl 0x89a3
000089C8  C7                db 0xc7
000089C9  7DDD              jnl 0x89a8
000089CB  E77D              out byte 0x7d,ax
000089CD  DF07              fild word [bx]
000089CF  7EE1              jng 0x89b2
000089D1  27                daa
000089D2  7EE3              jng 0x89b7
000089D4  47                inc di
000089D5  7EE5              jng 0x89bc
000089D7  677EE7            a32 jng 0x89c1
000089DA  877EE9            xchg di,[bp-0x17]
000089DD  A7                cmpsw
000089DE  7EEB              jng 0x89cb
000089E0  C7                db 0xc7
000089E1  7EED              jng 0x89d0
000089E3  E77E              out byte 0x7e,ax
000089E5  EF                out dx,ax
000089E6  07                pop es
000089E7  7FF1              jg 0x89da
000089E9  27                daa
000089EA  7FF3              jg 0x89df
000089EC  47                inc di
000089ED  7FF5              jg 0x89e4
000089EF  677FF7            a32 jg 0x89e9
000089F2  877FF9            xchg di,[bx-0x7]
000089F5  A7                cmpsw
000089F6  7FFB              jg 0x89f3
000089F8  C7                db 0xc7
000089F9  7FFD              jg 0x89f8
000089FB  E77F              out byte 0x7f,ax
000089FD  FF07              inc word [bx]
000089FF  800128            add byte [bx+di],0x28
00008A02  800348            add byte [bp+di],0x48
00008A05  800568            add byte [di],0x68
00008A08  800788            add byte [bx],0x88
00008A0B  8009A8            or byte [bx+di],0xa8
00008A0E  800BC8            or byte [bp+di],0xc8
00008A11  800DE8            or byte [di],0xe8
00008A14  800F08            or byte [bx],0x8
00008A17  81112881          adc word [bx+di],0x8128
00008A1B  134881            adc cx,[bx+si-0x7f]
00008A1E  156881            adc ax,0x8168
00008A21  17                pop ss
00008A22  888119A8          mov [bx+di-0x57e7],al
00008A26  811BC881          sbb word [bp+di],0x81c8
00008A2A  1DE881            sbb ax,0x81e8
00008A2D  1F                pop ds
00008A2E  08822128          or [bp+si+0x2821],al
00008A32  82                db 0x82
00008A33  234882            and cx,[bx+si-0x7e]
00008A36  256882            and ax,0x8268
00008A39  27                daa
00008A3A  888229A8          mov [bp+si-0x57d7],al
00008A3E  82                db 0x82
00008A3F  2BC8              sub cx,ax
00008A41  82                db 0x82
00008A42  2DE882            sub ax,0x82e8
00008A45  2F                das
00008A46  08833128          or [bp+di+0x2831],al
00008A4A  833348            xor word [bp+di],0x48
00008A4D  833568            xor word [di],0x68
00008A50  833788            xor word [bx],0xffffffffffffff88
00008A53  8339A8            cmp word [bx+di],0xffffffffffffffa8
00008A56  833BC8            cmp word [bp+di],0xffffffffffffffc8
00008A59  833DE8            cmp word [di],0xffffffffffffffe8
00008A5C  833F08            cmp word [bx],0x8
00008A5F  844128            test [bx+di+0x28],al
00008A62  844348            test [bp+di+0x48],al
00008A65  844568            test [di+0x68],al
00008A68  844788            test [bx-0x78],al
00008A6B  8449A8            test [bx+di-0x58],cl
00008A6E  844BC8            test [bp+di-0x38],cl
00008A71  844DE8            test [di-0x18],cl
00008A74  844F08            test [bx+0x8],cl
00008A77  855128            test [bx+di+0x28],dx
00008A7A  855348            test [bp+di+0x48],dx
00008A7D  855568            test [di+0x68],dx
00008A80  855788            test [bx-0x78],dx
00008A83  8559A8            test [bx+di-0x58],bx
00008A86  855BC8            test [bp+di-0x38],bx
00008A89  855DE8            test [di-0x18],bx
00008A8C  855F08            test [bx+0x8],bx
00008A8F  866128            xchg ah,[bx+di+0x28]
00008A92  866348            xchg ah,[bp+di+0x48]
00008A95  866568            xchg ah,[di+0x68]
00008A98  866788            xchg ah,[bx-0x78]
00008A9B  8669A8            xchg ch,[bx+di-0x58]
00008A9E  866BC8            xchg ch,[bp+di-0x38]
00008AA1  866DE8            xchg ch,[di-0x18]
00008AA4  866F08            xchg ch,[bx+0x8]
00008AA7  877128            xchg si,[bx+di+0x28]
00008AAA  877348            xchg si,[bp+di+0x48]
00008AAD  877568            xchg si,[di+0x68]
00008AB0  877788            xchg si,[bx-0x78]
00008AB3  8779A8            xchg di,[bx+di-0x58]
00008AB6  877BC8            xchg di,[bp+di-0x38]
00008AB9  877DE8            xchg di,[di-0x18]
00008ABC  877F08            xchg di,[bx+0x8]
00008ABF  88812888          mov [bx+di-0x77d8],al
00008AC3  83488885          or word [bx+si-0x78],0xffffffffffffff85
00008AC7  688887            push word 0x8788
00008ACA  888889A8          mov [bx+si-0x5777],cl
00008ACE  888BC888          mov [bp+di-0x7738],cl
00008AD2  8D                db 0x8d
00008AD3  E8888F            call 0x1a5e
00008AD6  08899128          or [bx+di+0x2891],cl
00008ADA  89934889          mov [bp+di-0x76b8],dx
00008ADE  95                xchg ax,bp
00008ADF  688997            push word 0x9789
00008AE2  888999A8          mov [bx+di-0x5767],cl
00008AE6  899BC889          mov [bp+di-0x7638],bx
00008AEA  9D                popf
00008AEB  E8899F            call 0x2a77
00008AEE  088AA128          or [bp+si+0x28a1],cl
00008AF2  8AA3488A          mov ah,[bp+di-0x75b8]
00008AF6  A5                movsw
00008AF7  688AA7            push word 0xa78a
00008AFA  888AA9A8          mov [bp+si-0x5757],cl
00008AFE  8AABC88A          mov ch,[bp+di-0x7538]
00008B02  AD                lodsw
00008B03  E88AAF            call 0x3a90
00008B06  088BB128          or [bp+di+0x28b1],cl
00008B0A  8BB3488B          mov si,[bp+di-0x74b8]
00008B0E  B568              mov ch,0x68
00008B10  8BB7888B          mov si,[bx-0x7478]
00008B14  B9A88B            mov cx,0x8ba8
00008B17  BBC88B            mov bx,0x8bc8
00008B1A  BDE88B            mov bp,0x8be8
00008B1D  BF088C            mov di,0x8c08
00008B20  C1288C            shr word [bx+si],byte 0x8c
00008B23  C3                ret
00008B24  48                dec ax
00008B25  8CC5              mov bp,es
00008B27  688CC7            push word 0xc78c
00008B2A  888CC9A8          mov [si-0x5737],cl
00008B2E  8CCB              mov bx,cs
00008B30  C88CCDE8          enter word 0xcd8c,byte 0xe8
00008B34  8CCF              mov di,cs
00008B36  088DD128          or [di+0x28d1],cl
00008B3A  8D                db 0x8d
00008B3B  D3488D            ror word [bx+si-0x73],cl
00008B3E  D568              aad byte 0x68
00008B40  8D                db 0x8d
00008B41  D7                xlatb
00008B42  888DD9A8          mov [di-0x5727],cl
00008B46  8D                db 0x8d
00008B47  DBC8              fcmovne st0
00008B49  8D                db 0x8d
00008B4A  DDE8              fucomp st0
00008B4C  8D                db 0x8d
00008B4D  DF08              fisttp word [bx+si]
00008B4F  8EE1              mov fs,cx
00008B51  288EE348          sub [bp+0x48e3],cl
00008B55  8EE5              mov fs,bp
00008B57  688EE7            push word 0xe78e
00008B5A  888EE9A8          mov [bp-0x5717],cl
00008B5E  8EEB              mov gs,bx
00008B60  C88EEDE8          enter word 0xed8e,byte 0xe8
00008B64  8EEF              mov gs,di
00008B66  088FF128          or [bx+0x28f1],cl
00008B6A  8F                db 0x8f
00008B6B  F348              rep dec ax
00008B6D  8F                db 0x8f
00008B6E  F5                cmc
00008B6F  688FF7            push word 0xf78f
00008B72  888FF9A8          mov [bx-0x5707],cl
00008B76  8F                db 0x8f
00008B77  FB                sti
00008B78  C88FFDE8          enter word 0xfd8f,byte 0xe8
00008B7C  8F                db 0x8f
00008B7D  FF08              dec word [bx+si]
00008B7F  90                nop
00008B80  0129              add [bx+di],bp
00008B82  90                nop
00008B83  034990            add cx,[bx+di-0x70]
00008B86  056990            add ax,0x9069
00008B89  07                pop es
00008B8A  899009A9          mov [bx+si-0x56f7],dx
00008B8E  90                nop
00008B8F  0BC9              or cx,cx
00008B91  90                nop
00008B92  0DE990            or ax,0x90e9
00008B95  0F09              wbinvd
00008B97  91                xchg ax,cx
00008B98  1129              adc [bx+di],bp
00008B9A  91                xchg ax,cx
00008B9B  134991            adc cx,[bx+di-0x6f]
00008B9E  156991            adc ax,0x9169
00008BA1  17                pop ss
00008BA2  899119A9          mov [bx+di-0x56e7],dx
00008BA6  91                xchg ax,cx
00008BA7  1BC9              sbb cx,cx
00008BA9  91                xchg ax,cx
00008BAA  1DE991            sbb ax,0x91e9
00008BAD  1F                pop ds
00008BAE  09922129          or [bp+si+0x2921],dx
00008BB2  92                xchg ax,dx
00008BB3  234992            and cx,[bx+di-0x6e]
00008BB6  256992            and ax,0x9269
00008BB9  27                daa
00008BBA  899229A9          mov [bp+si-0x56d7],dx
00008BBE  92                xchg ax,dx
00008BBF  2BC9              sub cx,cx
00008BC1  92                xchg ax,dx
00008BC2  2DE992            sub ax,0x92e9
00008BC5  2F                das
00008BC6  0993FF0F          or [bp+di+0xfff],dx
00008BCA  0000              add [bx+si],al
00008BCC  0000              add [bx+si],al
00008BCE  0000              add [bx+si],al
00008BD0  0000              add [bx+si],al
00008BD2  0000              add [bx+si],al
00008BD4  0000              add [bx+si],al
00008BD6  0000              add [bx+si],al
00008BD8  0000              add [bx+si],al
00008BDA  0000              add [bx+si],al
00008BDC  0000              add [bx+si],al
00008BDE  0000              add [bx+si],al
00008BE0  0000              add [bx+si],al
00008BE2  0000              add [bx+si],al
00008BE4  0000              add [bx+si],al
00008BE6  0000              add [bx+si],al
00008BE8  0000              add [bx+si],al
00008BEA  0000              add [bx+si],al
00008BEC  0000              add [bx+si],al
00008BEE  0000              add [bx+si],al
00008BF0  0000              add [bx+si],al
00008BF2  0000              add [bx+si],al
00008BF4  0000              add [bx+si],al
00008BF6  0000              add [bx+si],al
00008BF8  0000              add [bx+si],al
00008BFA  0000              add [bx+si],al
00008BFC  0000              add [bx+si],al
00008BFE  0000              add [bx+si],al
00008C00  0000              add [bx+si],al
00008C02  0000              add [bx+si],al
00008C04  0000              add [bx+si],al
00008C06  0000              add [bx+si],al
00008C08  0000              add [bx+si],al
00008C0A  0000              add [bx+si],al
00008C0C  0000              add [bx+si],al
00008C0E  0000              add [bx+si],al
00008C10  0000              add [bx+si],al
00008C12  0000              add [bx+si],al
00008C14  0000              add [bx+si],al
00008C16  0000              add [bx+si],al
00008C18  0000              add [bx+si],al
00008C1A  0000              add [bx+si],al
00008C1C  0000              add [bx+si],al
00008C1E  0000              add [bx+si],al
00008C20  0000              add [bx+si],al
00008C22  0000              add [bx+si],al
00008C24  0000              add [bx+si],al
00008C26  0000              add [bx+si],al
00008C28  0000              add [bx+si],al
00008C2A  0000              add [bx+si],al
00008C2C  0000              add [bx+si],al
00008C2E  0000              add [bx+si],al
00008C30  0000              add [bx+si],al
00008C32  0000              add [bx+si],al
00008C34  0000              add [bx+si],al
00008C36  0000              add [bx+si],al
00008C38  0000              add [bx+si],al
00008C3A  0000              add [bx+si],al
00008C3C  0000              add [bx+si],al
00008C3E  0000              add [bx+si],al
00008C40  0000              add [bx+si],al
00008C42  0000              add [bx+si],al
00008C44  0000              add [bx+si],al
00008C46  0000              add [bx+si],al
00008C48  0000              add [bx+si],al
00008C4A  0000              add [bx+si],al
00008C4C  0000              add [bx+si],al
00008C4E  0000              add [bx+si],al
00008C50  0000              add [bx+si],al
00008C52  0000              add [bx+si],al
00008C54  0000              add [bx+si],al
00008C56  0000              add [bx+si],al
00008C58  0000              add [bx+si],al
00008C5A  0000              add [bx+si],al
00008C5C  0000              add [bx+si],al
00008C5E  0000              add [bx+si],al
00008C60  0000              add [bx+si],al
00008C62  0000              add [bx+si],al
00008C64  0000              add [bx+si],al
00008C66  0000              add [bx+si],al
00008C68  0000              add [bx+si],al
00008C6A  0000              add [bx+si],al
00008C6C  0000              add [bx+si],al
00008C6E  0000              add [bx+si],al
00008C70  0000              add [bx+si],al
00008C72  0000              add [bx+si],al
00008C74  0000              add [bx+si],al
00008C76  0000              add [bx+si],al
00008C78  0000              add [bx+si],al
00008C7A  0000              add [bx+si],al
00008C7C  0000              add [bx+si],al
00008C7E  0000              add [bx+si],al
00008C80  0000              add [bx+si],al
00008C82  0000              add [bx+si],al
00008C84  0000              add [bx+si],al
00008C86  0000              add [bx+si],al
00008C88  0000              add [bx+si],al
00008C8A  0000              add [bx+si],al
00008C8C  0000              add [bx+si],al
00008C8E  0000              add [bx+si],al
00008C90  0000              add [bx+si],al
00008C92  0000              add [bx+si],al
00008C94  0000              add [bx+si],al
00008C96  0000              add [bx+si],al
00008C98  0000              add [bx+si],al
00008C9A  0000              add [bx+si],al
00008C9C  0000              add [bx+si],al
00008C9E  0000              add [bx+si],al
00008CA0  0000              add [bx+si],al
00008CA2  0000              add [bx+si],al
00008CA4  0000              add [bx+si],al
00008CA6  0000              add [bx+si],al
00008CA8  0000              add [bx+si],al
00008CAA  0000              add [bx+si],al
00008CAC  0000              add [bx+si],al
00008CAE  0000              add [bx+si],al
00008CB0  0000              add [bx+si],al
00008CB2  0000              add [bx+si],al
00008CB4  0000              add [bx+si],al
00008CB6  0000              add [bx+si],al
00008CB8  0000              add [bx+si],al
00008CBA  0000              add [bx+si],al
00008CBC  0000              add [bx+si],al
00008CBE  0000              add [bx+si],al
00008CC0  0000              add [bx+si],al
00008CC2  0000              add [bx+si],al
00008CC4  0000              add [bx+si],al
00008CC6  0000              add [bx+si],al
00008CC8  0000              add [bx+si],al
00008CCA  0000              add [bx+si],al
00008CCC  0000              add [bx+si],al
00008CCE  0000              add [bx+si],al
00008CD0  0000              add [bx+si],al
00008CD2  0000              add [bx+si],al
00008CD4  0000              add [bx+si],al
00008CD6  0000              add [bx+si],al
00008CD8  0000              add [bx+si],al
00008CDA  0000              add [bx+si],al
00008CDC  0000              add [bx+si],al
00008CDE  0000              add [bx+si],al
00008CE0  0000              add [bx+si],al
00008CE2  0000              add [bx+si],al
00008CE4  0000              add [bx+si],al
00008CE6  0000              add [bx+si],al
00008CE8  0000              add [bx+si],al
00008CEA  0000              add [bx+si],al
00008CEC  0000              add [bx+si],al
00008CEE  0000              add [bx+si],al
00008CF0  0000              add [bx+si],al
00008CF2  0000              add [bx+si],al
00008CF4  0000              add [bx+si],al
00008CF6  0000              add [bx+si],al
00008CF8  0000              add [bx+si],al
00008CFA  0000              add [bx+si],al
00008CFC  0000              add [bx+si],al
00008CFE  0000              add [bx+si],al
00008D00  0000              add [bx+si],al
00008D02  0000              add [bx+si],al
00008D04  0000              add [bx+si],al
00008D06  0000              add [bx+si],al
00008D08  0000              add [bx+si],al
00008D0A  0000              add [bx+si],al
00008D0C  0000              add [bx+si],al
00008D0E  0000              add [bx+si],al
00008D10  0000              add [bx+si],al
00008D12  0000              add [bx+si],al
00008D14  0000              add [bx+si],al
00008D16  0000              add [bx+si],al
00008D18  0000              add [bx+si],al
00008D1A  0000              add [bx+si],al
00008D1C  0000              add [bx+si],al
00008D1E  0000              add [bx+si],al
00008D20  0000              add [bx+si],al
00008D22  0000              add [bx+si],al
00008D24  0000              add [bx+si],al
00008D26  0000              add [bx+si],al
00008D28  0000              add [bx+si],al
00008D2A  0000              add [bx+si],al
00008D2C  0000              add [bx+si],al
00008D2E  0000              add [bx+si],al
00008D30  0000              add [bx+si],al
00008D32  0000              add [bx+si],al
00008D34  0000              add [bx+si],al
00008D36  0000              add [bx+si],al
00008D38  0000              add [bx+si],al
00008D3A  0000              add [bx+si],al
00008D3C  0000              add [bx+si],al
00008D3E  0000              add [bx+si],al
00008D40  0000              add [bx+si],al
00008D42  0000              add [bx+si],al
00008D44  0000              add [bx+si],al
00008D46  0000              add [bx+si],al
00008D48  0000              add [bx+si],al
00008D4A  0000              add [bx+si],al
00008D4C  0000              add [bx+si],al
00008D4E  0000              add [bx+si],al
00008D50  0000              add [bx+si],al
00008D52  0000              add [bx+si],al
00008D54  0000              add [bx+si],al
00008D56  0000              add [bx+si],al
00008D58  0000              add [bx+si],al
00008D5A  0000              add [bx+si],al
00008D5C  0000              add [bx+si],al
00008D5E  0000              add [bx+si],al
00008D60  0000              add [bx+si],al
00008D62  0000              add [bx+si],al
00008D64  0000              add [bx+si],al
00008D66  0000              add [bx+si],al
00008D68  0000              add [bx+si],al
00008D6A  0000              add [bx+si],al
00008D6C  0000              add [bx+si],al
00008D6E  0000              add [bx+si],al
00008D70  0000              add [bx+si],al
00008D72  0000              add [bx+si],al
00008D74  0000              add [bx+si],al
00008D76  0000              add [bx+si],al
00008D78  0000              add [bx+si],al
00008D7A  0000              add [bx+si],al
00008D7C  0000              add [bx+si],al
00008D7E  0000              add [bx+si],al
00008D80  0000              add [bx+si],al
00008D82  0000              add [bx+si],al
00008D84  0000              add [bx+si],al
00008D86  0000              add [bx+si],al
00008D88  0000              add [bx+si],al
00008D8A  0000              add [bx+si],al
00008D8C  0000              add [bx+si],al
00008D8E  0000              add [bx+si],al
00008D90  0000              add [bx+si],al
00008D92  0000              add [bx+si],al
00008D94  0000              add [bx+si],al
00008D96  0000              add [bx+si],al
00008D98  0000              add [bx+si],al
00008D9A  0000              add [bx+si],al
00008D9C  0000              add [bx+si],al
00008D9E  0000              add [bx+si],al
00008DA0  0000              add [bx+si],al
00008DA2  0000              add [bx+si],al
00008DA4  0000              add [bx+si],al
00008DA6  0000              add [bx+si],al
00008DA8  0000              add [bx+si],al
00008DAA  0000              add [bx+si],al
00008DAC  0000              add [bx+si],al
00008DAE  0000              add [bx+si],al
00008DB0  0000              add [bx+si],al
00008DB2  0000              add [bx+si],al
00008DB4  0000              add [bx+si],al
00008DB6  0000              add [bx+si],al
00008DB8  0000              add [bx+si],al
00008DBA  0000              add [bx+si],al
00008DBC  0000              add [bx+si],al
00008DBE  0000              add [bx+si],al
00008DC0  0000              add [bx+si],al
00008DC2  0000              add [bx+si],al
00008DC4  0000              add [bx+si],al
00008DC6  0000              add [bx+si],al
00008DC8  0000              add [bx+si],al
00008DCA  0000              add [bx+si],al
00008DCC  0000              add [bx+si],al
00008DCE  0000              add [bx+si],al
00008DD0  0000              add [bx+si],al
00008DD2  0000              add [bx+si],al
00008DD4  0000              add [bx+si],al
00008DD6  0000              add [bx+si],al
00008DD8  0000              add [bx+si],al
00008DDA  0000              add [bx+si],al
00008DDC  0000              add [bx+si],al
00008DDE  0000              add [bx+si],al
00008DE0  0000              add [bx+si],al
00008DE2  0000              add [bx+si],al
00008DE4  0000              add [bx+si],al
00008DE6  0000              add [bx+si],al
00008DE8  0000              add [bx+si],al
00008DEA  0000              add [bx+si],al
00008DEC  0000              add [bx+si],al
00008DEE  0000              add [bx+si],al
00008DF0  0000              add [bx+si],al
00008DF2  0000              add [bx+si],al
00008DF4  0000              add [bx+si],al
00008DF6  0000              add [bx+si],al
00008DF8  0000              add [bx+si],al
00008DFA  0000              add [bx+si],al
00008DFC  0000              add [bx+si],al
00008DFE  0000              add [bx+si],al
00008E00  0000              add [bx+si],al
00008E02  0000              add [bx+si],al
00008E04  0000              add [bx+si],al
00008E06  0000              add [bx+si],al
00008E08  0000              add [bx+si],al
00008E0A  0000              add [bx+si],al
00008E0C  0000              add [bx+si],al
00008E0E  0000              add [bx+si],al
00008E10  0000              add [bx+si],al
00008E12  0000              add [bx+si],al
00008E14  0000              add [bx+si],al
00008E16  0000              add [bx+si],al
00008E18  0000              add [bx+si],al
00008E1A  0000              add [bx+si],al
00008E1C  0000              add [bx+si],al
00008E1E  0000              add [bx+si],al
00008E20  0000              add [bx+si],al
00008E22  0000              add [bx+si],al
00008E24  0000              add [bx+si],al
00008E26  0000              add [bx+si],al
00008E28  0000              add [bx+si],al
00008E2A  0000              add [bx+si],al
00008E2C  0000              add [bx+si],al
00008E2E  0000              add [bx+si],al
00008E30  0000              add [bx+si],al
00008E32  0000              add [bx+si],al
00008E34  0000              add [bx+si],al
00008E36  0000              add [bx+si],al
00008E38  0000              add [bx+si],al
00008E3A  0000              add [bx+si],al
00008E3C  0000              add [bx+si],al
00008E3E  0000              add [bx+si],al
00008E40  0000              add [bx+si],al
00008E42  0000              add [bx+si],al
00008E44  0000              add [bx+si],al
00008E46  0000              add [bx+si],al
00008E48  0000              add [bx+si],al
00008E4A  0000              add [bx+si],al
00008E4C  0000              add [bx+si],al
00008E4E  0000              add [bx+si],al
00008E50  0000              add [bx+si],al
00008E52  0000              add [bx+si],al
00008E54  0000              add [bx+si],al
00008E56  0000              add [bx+si],al
00008E58  0000              add [bx+si],al
00008E5A  0000              add [bx+si],al
00008E5C  0000              add [bx+si],al
00008E5E  0000              add [bx+si],al
00008E60  0000              add [bx+si],al
00008E62  0000              add [bx+si],al
00008E64  0000              add [bx+si],al
00008E66  0000              add [bx+si],al
00008E68  0000              add [bx+si],al
00008E6A  0000              add [bx+si],al
00008E6C  0000              add [bx+si],al
00008E6E  0000              add [bx+si],al
00008E70  0000              add [bx+si],al
00008E72  0000              add [bx+si],al
00008E74  0000              add [bx+si],al
00008E76  0000              add [bx+si],al
00008E78  0000              add [bx+si],al
00008E7A  0000              add [bx+si],al
00008E7C  0000              add [bx+si],al
00008E7E  0000              add [bx+si],al
00008E80  0000              add [bx+si],al
00008E82  0000              add [bx+si],al
00008E84  0000              add [bx+si],al
00008E86  0000              add [bx+si],al
00008E88  0000              add [bx+si],al
00008E8A  0000              add [bx+si],al
00008E8C  0000              add [bx+si],al
00008E8E  0000              add [bx+si],al
00008E90  0000              add [bx+si],al
00008E92  0000              add [bx+si],al
00008E94  0000              add [bx+si],al
00008E96  0000              add [bx+si],al
00008E98  0000              add [bx+si],al
00008E9A  0000              add [bx+si],al
00008E9C  0000              add [bx+si],al
00008E9E  0000              add [bx+si],al
00008EA0  0000              add [bx+si],al
00008EA2  0000              add [bx+si],al
00008EA4  0000              add [bx+si],al
00008EA6  0000              add [bx+si],al
00008EA8  0000              add [bx+si],al
00008EAA  0000              add [bx+si],al
00008EAC  0000              add [bx+si],al
00008EAE  0000              add [bx+si],al
00008EB0  0000              add [bx+si],al
00008EB2  0000              add [bx+si],al
00008EB4  0000              add [bx+si],al
00008EB6  0000              add [bx+si],al
00008EB8  0000              add [bx+si],al
00008EBA  0000              add [bx+si],al
00008EBC  0000              add [bx+si],al
00008EBE  0000              add [bx+si],al
00008EC0  0000              add [bx+si],al
00008EC2  0000              add [bx+si],al
00008EC4  0000              add [bx+si],al
00008EC6  0000              add [bx+si],al
00008EC8  0000              add [bx+si],al
00008ECA  0000              add [bx+si],al
00008ECC  0000              add [bx+si],al
00008ECE  0000              add [bx+si],al
00008ED0  0000              add [bx+si],al
00008ED2  0000              add [bx+si],al
00008ED4  0000              add [bx+si],al
00008ED6  0000              add [bx+si],al
00008ED8  0000              add [bx+si],al
00008EDA  0000              add [bx+si],al
00008EDC  0000              add [bx+si],al
00008EDE  0000              add [bx+si],al
00008EE0  0000              add [bx+si],al
00008EE2  0000              add [bx+si],al
00008EE4  0000              add [bx+si],al
00008EE6  0000              add [bx+si],al
00008EE8  0000              add [bx+si],al
00008EEA  0000              add [bx+si],al
00008EEC  0000              add [bx+si],al
00008EEE  0000              add [bx+si],al
00008EF0  0000              add [bx+si],al
00008EF2  0000              add [bx+si],al
00008EF4  0000              add [bx+si],al
00008EF6  0000              add [bx+si],al
00008EF8  0000              add [bx+si],al
00008EFA  0000              add [bx+si],al
00008EFC  0000              add [bx+si],al
00008EFE  0000              add [bx+si],al
00008F00  0000              add [bx+si],al
00008F02  0000              add [bx+si],al
00008F04  0000              add [bx+si],al
00008F06  0000              add [bx+si],al
00008F08  0000              add [bx+si],al
00008F0A  0000              add [bx+si],al
00008F0C  0000              add [bx+si],al
00008F0E  0000              add [bx+si],al
00008F10  0000              add [bx+si],al
00008F12  0000              add [bx+si],al
00008F14  0000              add [bx+si],al
00008F16  0000              add [bx+si],al
00008F18  0000              add [bx+si],al
00008F1A  0000              add [bx+si],al
00008F1C  0000              add [bx+si],al
00008F1E  0000              add [bx+si],al
00008F20  0000              add [bx+si],al
00008F22  0000              add [bx+si],al
00008F24  0000              add [bx+si],al
00008F26  0000              add [bx+si],al
00008F28  0000              add [bx+si],al
00008F2A  0000              add [bx+si],al
00008F2C  0000              add [bx+si],al
00008F2E  0000              add [bx+si],al
00008F30  0000              add [bx+si],al
00008F32  0000              add [bx+si],al
00008F34  0000              add [bx+si],al
00008F36  0000              add [bx+si],al
00008F38  0000              add [bx+si],al
00008F3A  0000              add [bx+si],al
00008F3C  0000              add [bx+si],al
00008F3E  0000              add [bx+si],al
00008F40  0000              add [bx+si],al
00008F42  0000              add [bx+si],al
00008F44  0000              add [bx+si],al
00008F46  0000              add [bx+si],al
00008F48  0000              add [bx+si],al
00008F4A  0000              add [bx+si],al
00008F4C  0000              add [bx+si],al
00008F4E  0000              add [bx+si],al
00008F50  0000              add [bx+si],al
00008F52  0000              add [bx+si],al
00008F54  0000              add [bx+si],al
00008F56  0000              add [bx+si],al
00008F58  0000              add [bx+si],al
00008F5A  0000              add [bx+si],al
00008F5C  0000              add [bx+si],al
00008F5E  0000              add [bx+si],al
00008F60  0000              add [bx+si],al
00008F62  0000              add [bx+si],al
00008F64  0000              add [bx+si],al
00008F66  0000              add [bx+si],al
00008F68  0000              add [bx+si],al
00008F6A  0000              add [bx+si],al
00008F6C  0000              add [bx+si],al
00008F6E  0000              add [bx+si],al
00008F70  0000              add [bx+si],al
00008F72  0000              add [bx+si],al
00008F74  0000              add [bx+si],al
00008F76  0000              add [bx+si],al
00008F78  0000              add [bx+si],al
00008F7A  0000              add [bx+si],al
00008F7C  0000              add [bx+si],al
00008F7E  0000              add [bx+si],al
00008F80  0000              add [bx+si],al
00008F82  0000              add [bx+si],al
00008F84  0000              add [bx+si],al
00008F86  0000              add [bx+si],al
00008F88  0000              add [bx+si],al
00008F8A  0000              add [bx+si],al
00008F8C  0000              add [bx+si],al
00008F8E  0000              add [bx+si],al
00008F90  0000              add [bx+si],al
00008F92  0000              add [bx+si],al
00008F94  0000              add [bx+si],al
00008F96  0000              add [bx+si],al
00008F98  0000              add [bx+si],al
00008F9A  0000              add [bx+si],al
00008F9C  0000              add [bx+si],al
00008F9E  0000              add [bx+si],al
00008FA0  0000              add [bx+si],al
00008FA2  0000              add [bx+si],al
00008FA4  0000              add [bx+si],al
00008FA6  0000              add [bx+si],al
00008FA8  0000              add [bx+si],al
00008FAA  0000              add [bx+si],al
00008FAC  0000              add [bx+si],al
00008FAE  0000              add [bx+si],al
00008FB0  0000              add [bx+si],al
00008FB2  0000              add [bx+si],al
00008FB4  0000              add [bx+si],al
00008FB6  0000              add [bx+si],al
00008FB8  0000              add [bx+si],al
00008FBA  0000              add [bx+si],al
00008FBC  0000              add [bx+si],al
00008FBE  0000              add [bx+si],al
00008FC0  0000              add [bx+si],al
00008FC2  0000              add [bx+si],al
00008FC4  0000              add [bx+si],al
00008FC6  0000              add [bx+si],al
00008FC8  0000              add [bx+si],al
00008FCA  0000              add [bx+si],al
00008FCC  0000              add [bx+si],al
00008FCE  0000              add [bx+si],al
00008FD0  0000              add [bx+si],al
00008FD2  0000              add [bx+si],al
00008FD4  0000              add [bx+si],al
00008FD6  0000              add [bx+si],al
00008FD8  0000              add [bx+si],al
00008FDA  0000              add [bx+si],al
00008FDC  0000              add [bx+si],al
00008FDE  0000              add [bx+si],al
00008FE0  0000              add [bx+si],al
00008FE2  0000              add [bx+si],al
00008FE4  0000              add [bx+si],al
00008FE6  0000              add [bx+si],al
00008FE8  0000              add [bx+si],al
00008FEA  0000              add [bx+si],al
00008FEC  0000              add [bx+si],al
00008FEE  0000              add [bx+si],al
00008FF0  0000              add [bx+si],al
00008FF2  0000              add [bx+si],al
00008FF4  0000              add [bx+si],al
00008FF6  0000              add [bx+si],al
00008FF8  0000              add [bx+si],al
00008FFA  0000              add [bx+si],al
00008FFC  0000              add [bx+si],al
00008FFE  0000              add [bx+si],al
00009000  F0                lock
00009001  FF                db 0xff
00009002  FF03              inc word [bp+di]
00009004  40                inc ax
00009005  0005              add [di],al
00009007  60                pusha
00009008  0007              add [bx],al
0000900A  800009            add byte [bx+si],0x9
0000900D  A0000B            mov al,[0xb00]
00009010  C0000D            rol byte [bx+si],byte 0xd
00009013  E000              loopne 0x9015
00009015  0F0001            sldt word [bx+di]
00009018  1120              adc [bx+si],sp
0000901A  0113              add [bp+di],dx
0000901C  40                inc ax
0000901D  0115              add [di],dx
0000901F  60                pusha
00009020  0117              add [bx],dx
00009022  800119            add byte [bx+di],0x19
00009025  A0011B            mov al,[0x1b01]
00009028  C0011D            rol byte [bx+di],byte 0x1d
0000902B  E001              loopne 0x902e
0000902D  1F                pop ds
0000902E  0002              add [bp+si],al
00009030  2120              and [bx+si],sp
00009032  0223              add ah,[bp+di]
00009034  40                inc ax
00009035  0225              add ah,[di]
00009037  60                pusha
00009038  0227              add ah,[bx]
0000903A  800229            add byte [bp+si],0x29
0000903D  A0022B            mov al,[0x2b02]
00009040  C0022D            rol byte [bp+si],byte 0x2d
00009043  F0                lock
00009044  FF2F              jmp word far [bx]
00009046  0003              add [bp+di],al
00009048  3120              xor [bx+si],sp
0000904A  0333              add si,[bp+di]
0000904C  40                inc ax
0000904D  0335              add si,[di]
0000904F  60                pusha
00009050  0337              add si,[bx]
00009052  800339            add byte [bp+di],0x39
00009055  A0033B            mov al,[0x3b03]
00009058  C0033D            rol byte [bp+di],byte 0x3d
0000905B  E003              loopne 0x9060
0000905D  3F                aas
0000905E  0004              add [si],al
00009060  41                inc cx
00009061  2004              and [si],al
00009063  43                inc bx
00009064  40                inc ax
00009065  0445              add al,0x45
00009067  60                pusha
00009068  0447              add al,0x47
0000906A  800449            add byte [si],0x49
0000906D  A0044B            mov al,[0x4b04]
00009070  C0044D            rol byte [si],byte 0x4d
00009073  E004              loopne 0x9079
00009075  4F                dec di
00009076  0005              add [di],al
00009078  51                push cx
00009079  2005              and [di],al
0000907B  53                push bx
0000907C  40                inc ax
0000907D  055560            add ax,0x6055
00009080  055780            add ax,0x8057
00009083  0559A0            add ax,0xa059
00009086  055BC0            add ax,0xc05b
00009089  055DE0            add ax,0xe05d
0000908C  055F00            add ax,0x5f
0000908F  06                push es
00009090  61                popa
00009091  20066340          and [0x4063],al
00009095  06                push es
00009096  6560              gs pusha
00009098  06                push es
00009099  678006FF          add byte [esi],0xff
0000909D  FF                db 0xff
0000909E  FF                db 0xff
0000909F  FFCF              dec di
000090A1  06                push es
000090A2  6D                insw
000090A3  E006              loopne 0x90ab
000090A5  6F                outsw
000090A6  0007              add [bx],al
000090A8  7120              jno 0x90ca
000090AA  07                pop es
000090AB  7340              jnc 0x90ed
000090AD  07                pop es
000090AE  7560              jnz 0x9110
000090B0  07                pop es
000090B1  7780              ja 0x9033
000090B3  07                pop es
000090B4  79A0              jns 0x9056
000090B6  07                pop es
000090B7  7BC0              jpo 0x9079
000090B9  07                pop es
000090BA  7DE0              jnl 0x909c
000090BC  07                pop es
000090BD  7F00              jg 0x90bf
000090BF  08812008          or [bx+di+0x820],al
000090C3  83400885          add word [bx+si+0x8],0xffffffffffffff85
000090C7  60                pusha
000090C8  08878008          or [bx+0x880],al
000090CC  89A0088B          mov [bx+si-0x74f8],sp
000090D0  C0088D            ror byte [bx+si],byte 0x8d
000090D3  E008              loopne 0x90dd
000090D5  8F00              pop word [bx+si]
000090D7  09912009          or [bx+di+0x920],dx
000090DB  93                xchg ax,bx
000090DC  40                inc ax
000090DD  09956009          or [di+0x960],dx
000090E1  97                xchg ax,di
000090E2  800999            or byte [bx+di],0x99
000090E5  A0099B            mov al,[0x9b09]
000090E8  F0                lock
000090E9  FF9DE009          call word far [di+0x9e0]
000090ED  9F                lahf
000090EE  000A              add [bp+si],cl
000090F0  A1200A            mov ax,[0xa20]
000090F3  A3400A            mov [0xa40],ax
000090F6  A5                movsw
000090F7  60                pusha
000090F8  0AA7800A          or ah,[bx+0xa80]
000090FC  A9A00A            test ax,0xaa0
000090FF  AB                stosw
00009100  C00AAD            ror byte [bp+si],byte 0xad
00009103  E00A              loopne 0x910f
00009105  AF                scasw
00009106  000B              add [bp+di],cl
00009108  B120              mov cl,0x20
0000910A  0BB3400B          or si,[bp+di+0xb40]
0000910E  B560              mov ch,0x60
00009110  0BB7800B          or si,[bx+0xb80]
00009114  B9A00B            mov cx,0xba0
00009117  BBC00B            mov bx,0xbc0
0000911A  BDE00B            mov bp,0xbe0
0000911D  BF000C            mov di,0xc00
00009120  C1200C            shl word [bx+si],byte 0xc
00009123  C3                ret
00009124  40                inc ax
00009125  0CC5              or al,0xc5
00009127  60                pusha
00009128  0CC7              or al,0xc7
0000912A  800CC9            or byte [si],0xc9
0000912D  A00CCB            mov al,[0xcb0c]
00009130  C00CCD            ror byte [si],byte 0xcd
00009133  E00C              loopne 0x9141
00009135  CF                iret
00009136  000D              add [di],cl
00009138  D120              shl word [bx+si],0x0
0000913A  0DD340            or ax,0x40d3
0000913D  0DD560            or ax,0x60d5
00009140  0DD780            or ax,0x80d7
00009143  0DD9A0            or ax,0xa0d9
00009146  0DDBC0            or ax,0xc0db
00009149  0DDDE0            or ax,0xe0dd
0000914C  0DDF00            or ax,0xdf
0000914F  0E                push cs
00009150  E120              loope 0x9172
00009152  0E                push cs
00009153  E340              jcxz 0x9195
00009155  0E                push cs
00009156  FF6F0E            jmp word far [bx+0xe]
00009159  E780              out byte 0x80,ax
0000915B  0E                push cs
0000915C  E9A00E            jmp 0x9fff
0000915F  EBC0              jmp 0x9121
00009161  0E                push cs
00009162  ED                in ax,dx
00009163  E00E              loopne 0x9173
00009165  EF                out dx,ax
00009166  000F              add [bx],cl
00009168  F1                int1
00009169  200F              and [bx],cl
0000916B  F340              rep inc ax
0000916D  0FF5600F          pmaddwd mm4,[bx+si+0xf]
00009171  F7800FF9A00F      test word [bx+si-0x6f1],0xfa0
00009177  FB                sti
00009178  C00FFD            ror byte [bx],byte 0xfd
0000917B  E00F              loopne 0x918c
0000917D  FF00              inc word [bx+si]
0000917F  1001              adc [bx+di],al
00009181  2110              and [bx+si],dx
00009183  034110            add ax,[bx+di+0x10]
00009186  056110            add ax,0x1061
00009189  07                pop es
0000918A  811009A1          adc word [bx+si],0xa109
0000918E  100B              adc [bp+di],cl
00009190  C1100D            rcl word [bx+si],byte 0xd
00009193  E110              loope 0x91a5
00009195  0F0111            lgdt word [bx+di]
00009198  1121              adc [bx+di],sp
0000919A  1113              adc [bp+di],dx
0000919C  41                inc cx
0000919D  1115              adc [di],dx
0000919F  61                popa
000091A0  1117              adc [bx],dx
000091A2  811119A1          adc word [bx+di],0xa119
000091A6  111B              adc [bp+di],bx
000091A8  C1111D            rcl word [bx+di],byte 0x1d
000091AB  E111              loope 0x91be
000091AD  1F                pop ds
000091AE  0112              add [bp+si],dx
000091B0  2121              and [bx+di],sp
000091B2  1223              adc ah,[bp+di]
000091B4  41                inc cx
000091B5  1225              adc ah,[di]
000091B7  61                popa
000091B8  1227              adc ah,[bx]
000091BA  811229A1          adc word [bp+si],0xa129
000091BE  122B              adc ch,[bp+di]
000091C0  C112FF            rcl word [bp+si],byte 0xff
000091C3  EF                out dx,ax
000091C4  122F              adc ch,[bx]
000091C6  0113              add [bp+di],dx
000091C8  3121              xor [bx+di],sp
000091CA  1333              adc si,[bp+di]
000091CC  41                inc cx
000091CD  1335              adc si,[di]
000091CF  61                popa
000091D0  1337              adc si,[bx]
000091D2  811339A1          adc word [bp+di],0xa139
000091D6  133B              adc di,[bp+di]
000091D8  C1133D            rcl word [bp+di],byte 0x3d
000091DB  E113              loope 0x91f0
000091DD  3F                aas
000091DE  F1                int1
000091DF  FF4121            inc word [bx+di+0x21]
000091E2  1443              adc al,0x43
000091E4  41                inc cx
000091E5  1445              adc al,0x45
000091E7  61                popa
000091E8  1447              adc al,0x47
000091EA  811449A1          adc word [si],0xa149
000091EE  144B              adc al,0x4b
000091F0  C1144D            rcl word [si],byte 0x4d
000091F3  E114              loope 0x9209
000091F5  4F                dec di
000091F6  F1                int1
000091F7  FF5121            call word near [bx+di+0x21]
000091FA  155341            adc ax,0x4153
000091FD  155561            adc ax,0x6155
00009200  155781            adc ax,0x8157
00009203  1559A1            adc ax,0xa159
00009206  155BC1            adc ax,0xc15b
00009209  155DE1            adc ax,0xe15d
0000920C  155F01            adc ax,0x15f
0000920F  16                push ss
00009210  61                popa
00009211  21166341          and [0x4163],dx
00009215  16                push ss
00009216  6561              gs popa
00009218  16                push ss
00009219  67811669A1        adc word [esi],0xa169
0000921E  16                push ss
0000921F  6BC116            imul ax,cx,0x16
00009222  6D                insw
00009223  E116              loope 0x923b
00009225  6F                outsw
00009226  0117              add [bx],dx
00009228  7121              jno 0x924b
0000922A  17                pop ss
0000922B  7341              jnc 0x926e
0000922D  17                pop ss
0000922E  7561              jnz 0x9291
00009230  17                pop ss
00009231  7781              ja 0x91b4
00009233  17                pop ss
00009234  79A1              jns 0x91d7
00009236  17                pop ss
00009237  7BC1              jpo 0x91fa
00009239  17                pop ss
0000923A  7DE1              jnl 0x921d
0000923C  17                pop ss
0000923D  7F01              jg 0x9240
0000923F  1881F1FF          sbb [bx+di-0xf],al
00009243  83411885          add word [bx+di+0x18],0xffffffffffffff85
00009247  61                popa
00009248  18878118          sbb [bx+0x1881],al
0000924C  89A1188B          mov [bx+di-0x74e8],sp
00009250  C1188D            rcr word [bx+si],byte 0x8d
00009253  E118              loope 0x926d
00009255  8F01              pop word [bx+di]
00009257  19912119          sbb [bx+di+0x1921],dx
0000925B  93                xchg ax,bx
0000925C  41                inc cx
0000925D  19956119          sbb [di+0x1961],dx
00009261  97                xchg ax,di
00009262  811999A1          sbb word [bx+di],0xa199
00009266  199BC119          sbb [bp+di+0x19c1],bx
0000926A  9D                popf
0000926B  E119              loope 0x9286
0000926D  9F                lahf
0000926E  011A              add [bp+si],bx
00009270  A1211A            mov ax,[0x1a21]
00009273  A3411A            mov [0x1a41],ax
00009276  A5                movsw
00009277  61                popa
00009278  1AA7811A          sbb ah,[bx+0x1a81]
0000927C  A9A11A            test ax,0x1aa1
0000927F  AB                stosw
00009280  C11AAD            rcr word [bp+si],byte 0xad
00009283  E11A              loope 0x929f
00009285  AF                scasw
00009286  011B              add [bp+di],bx
00009288  B121              mov cl,0x21
0000928A  1BB3411B          sbb si,[bp+di+0x1b41]
0000928E  B561              mov ch,0x61
00009290  1BB7811B          sbb si,[bx+0x1b81]
00009294  B9A11B            mov cx,0x1ba1
00009297  BBC11B            mov bx,0x1bc1
0000929A  BDE11B            mov bp,0x1be1
0000929D  BF011C            mov di,0x1c01
000092A0  C1211C            shl word [bx+di],byte 0x1c
000092A3  C3                ret
000092A4  41                inc cx
000092A5  1CC5              sbb al,0xc5
000092A7  61                popa
000092A8  1CC7              sbb al,0xc7
000092AA  811CC9A1          sbb word [si],0xa1c9
000092AE  1CCB              sbb al,0xcb
000092B0  C11CCD            rcr word [si],byte 0xcd
000092B3  E11C              loope 0x92d1
000092B5  CF                iret
000092B6  011D              add [di],bx
000092B8  D121              shl word [bx+di],0x0
000092BA  1DD341            sbb ax,0x41d3
000092BD  1DD561            sbb ax,0x61d5
000092C0  1DD781            sbb ax,0x81d7
000092C3  1DD9A1            sbb ax,0xa1d9
000092C6  1DDBC1            sbb ax,0xc1db
000092C9  1DDDE1            sbb ax,0xe1dd
000092CC  1DDF01            sbb ax,0x1df
000092CF  1E                push ds
000092D0  E121              loope 0x92f3
000092D2  1E                push ds
000092D3  E341              jcxz 0x9316
000092D5  1E                push ds
000092D6  E561              in ax,byte 0x61
000092D8  1E                push ds
000092D9  E781              out byte 0x81,ax
000092DB  1E                push ds
000092DC  E9A11E            jmp 0xb180
000092DF  FFCF              dec di
000092E1  1E                push ds
000092E2  ED                in ax,dx
000092E3  E11E              loope 0x9303
000092E5  EF                out dx,ax
000092E6  011F              add [bx],bx
000092E8  F1                int1
000092E9  211F              and [bx],bx
000092EB  F341              rep inc cx
000092ED  1F                pop ds
000092EE  F5                cmc
000092EF  61                popa
000092F0  1F                pop ds
000092F1  F7811FF9A11F      test word [bx+di-0x6e1],0x1fa1
000092F7  FB                sti
000092F8  C11FFF            rcr word [bx],byte 0xff
000092FB  EF                out dx,ax
000092FC  1F                pop ds
000092FD  FF01              inc word [bx+di]
000092FF  2001              and [bx+di],al
00009301  2220              and ah,[bx+si]
00009303  034220            add ax,[bp+si+0x20]
00009306  056220            add ax,0x2062
00009309  07                pop es
0000930A  82                db 0x82
0000930B  2009              and [bx+di],cl
0000930D  A2200B            mov [0xb20],al
00009310  C2200D            ret word 0xd20
00009313  E220              loop 0x9335
00009315  0F0221            lar sp,[bx+di]
00009318  1122              adc [bp+si],sp
0000931A  2113              and [bp+di],dx
0000931C  42                inc dx
0000931D  2115              and [di],dx
0000931F  F2                repne
00009320  FF                db 0xff
00009321  FF8F2119          dec word [bx+0x1921]
00009325  A2211B            mov [0x1b21],al
00009328  C2211D            ret word 0x1d21
0000932B  E221              loop 0x934e
0000932D  1F                pop ds
0000932E  0222              add ah,[bp+si]
00009330  2122              and [bp+si],sp
00009332  2223              and ah,[bp+di]
00009334  42                inc dx
00009335  2225              and ah,[di]
00009337  6222              bound sp,[bp+si]
00009339  FF8F2229          dec word [bx+0x2922]
0000933D  A2222B            mov [0x2b22],al
00009340  C2222D            ret word 0x2d22
00009343  E222              loop 0x9367
00009345  2F                das
00009346  0223              add ah,[bp+di]
00009348  3122              xor [bp+si],sp
0000934A  2333              and si,[bp+di]
0000934C  42                inc dx
0000934D  2335              and si,[di]
0000934F  6223              bound sp,[bp+di]
00009351  37                aaa
00009352  82                db 0x82
00009353  2339              and di,[bx+di]
00009355  A2233B            mov [0x3b23],al
00009358  F2                repne
00009359  FF                db 0xff
0000935A  3DE223            cmp ax,0x23e2
0000935D  3F                aas
0000935E  0224              add ah,[si]
00009360  41                inc cx
00009361  2224              and ah,[si]
00009363  43                inc bx
00009364  42                inc dx
00009365  2445              and al,0x45
00009367  6224              bound sp,[si]
00009369  47                inc di
0000936A  82                db 0x82
0000936B  2449              and al,0x49
0000936D  A224FF            mov [0xff24],al
00009370  CF                iret
00009371  244D              and al,0x4d
00009373  E224              loop 0x9399
00009375  4F                dec di
00009376  0225              add ah,[di]
00009378  51                push cx
00009379  2225              and ah,[di]
0000937B  53                push bx
0000937C  42                inc dx
0000937D  255562            and ax,0x6255
00009380  255782            and ax,0x8257
00009383  2559A2            and ax,0xa259
00009386  255BC2            and ax,0xc25b
00009389  255DE2            and ax,0xe25d
0000938C  255F02            and ax,0x25f
0000938F  2661              es popa
00009391  22266342          and ah,[0x4263]
00009395  266562266782      bound sp,[gs:0x8267]
0000939B  2669F2FF6B        es imul si,dx,0x6bff
000093A0  C2266D            ret word 0x6d26
000093A3  E226              loop 0x93cb
000093A5  6F                outsw
000093A6  0227              add ah,[bx]
000093A8  7122              jno 0x93cc
000093AA  27                daa
000093AB  7342              jnc 0x93ef
000093AD  27                daa
000093AE  FF6F27            jmp word far [bx+0x27]
000093B1  7782              ja 0x9335
000093B3  27                daa
000093B4  79A2              jns 0x9358
000093B6  27                daa
000093B7  7BC2              jpo 0x937b
000093B9  27                daa
000093BA  7DE2              jnl 0x939e
000093BC  27                daa
000093BD  7F02              jg 0x93c1
000093BF  28812228          sub [bx+di+0x2822],al
000093C3  83422885          add word [bp+si+0x28],0xffffffffffffff85
000093C7  6228              bound bp,[bx+si]
000093C9  87F2              xchg si,dx
000093CB  FF00              inc word [bx+si]
000093CD  A0288B            mov al,[0x8b28]
000093D0  C2288D            ret word 0x8d28
000093D3  E228              loop 0x93fd
000093D5  8F02              pop word [bp+si]
000093D7  29912229          sub [bx+di+0x2922],dx
000093DB  93                xchg ax,bx
000093DC  42                inc dx
000093DD  29FF              sub di,di
000093DF  6F                outsw
000093E0  29978229          sub [bx+0x2982],dx
000093E4  99                cwd
000093E5  A2299B            mov [0x9b29],al
000093E8  C2299D            ret word 0x9d29
000093EB  E229              loop 0x9416
000093ED  9F                lahf
000093EE  022A              add ch,[bp+si]
000093F0  A1222A            mov ax,[0x2a22]
000093F3  A3422A            mov [0x2a42],ax
000093F6  A5                movsw
000093F7  622A              bound bp,[bp+si]
000093F9  A7                cmpsw
000093FA  82                db 0x82
000093FB  2AA9A22A          sub ch,[bx+di+0x2aa2]
000093FF  AB                stosw
00009400  C22AAD            ret word 0xad2a
00009403  E22A              loop 0x942f
00009405  AF                scasw
00009406  022B              add ch,[bp+di]
00009408  B122              mov cl,0x22
0000940A  2BB3422B          sub si,[bp+di+0x2b42]
0000940E  B562              mov ch,0x62
00009410  2BB7822B          sub si,[bx+0x2b82]
00009414  B9F2FF            mov cx,0xfff2
00009417  BBC22B            mov bx,0x2bc2
0000941A  BDE22B            mov bp,0x2be2
0000941D  BF022C            mov di,0x2c02
00009420  C1222C            shl word [bp+si],byte 0x2c
00009423  C3                ret
00009424  42                inc dx
00009425  2CC5              sub al,0xc5
00009427  622C              bound bp,[si]
00009429  C7822CC9A22C      mov word [bp+si-0x36d4],0x2ca2
0000942F  CB                retf
00009430  C22CCD            ret word 0xcd2c
00009433  E22C              loop 0x9461
00009435  CF                iret
00009436  022D              add ch,[di]
00009438  D122              shl word [bp+si],0x0
0000943A  2DD342            sub ax,0x42d3
0000943D  2DD562            sub ax,0x62d5
00009440  2DD782            sub ax,0x82d7
00009443  2DD9A2            sub ax,0xa2d9
00009446  2DDBC2            sub ax,0xc2db
00009449  2DDDE2            sub ax,0xe2dd
0000944C  2DDF02            sub ax,0x2df
0000944F  2EE122            loope 0x9474
00009452  2EE342            jcxz 0x9497
00009455  2EE562            cs in ax,byte 0x62
00009458  2EE782            cs out byte 0x82,ax
0000945B  2EE9A22E          cs jmp 0xc301
0000945F  EBC2              jmp 0x9423
00009461  2EED              cs in ax,dx
00009463  E22E              loop 0x9493
00009465  EF                out dx,ax
00009466  022F              add ch,[bx]
00009468  F1                int1
00009469  222F              and ch,[bx]
0000946B  F342              rep inc dx
0000946D  2F                das
0000946E  F5                cmc
0000946F  622F              bound bp,[bx]
00009471  F7822FF9A22F      test word [bp+si-0x6d1],0x2fa2
00009477  FB                sti
00009478  C22FFD            ret word 0xfd2f
0000947B  E22F              loop 0x94ac
0000947D  FF02              inc word [bp+si]
0000947F  3001              xor [bx+di],al
00009481  2330              and si,[bx+si]
00009483  034330            add ax,[bp+di+0x30]
00009486  056330            add ax,0x3063
00009489  07                pop es
0000948A  833009            xor word [bx+si],0x9
0000948D  A3300B            mov [0xb30],ax
00009490  C3                ret
00009491  300D              xor [di],cl
00009493  E330              jcxz 0x94c5
00009495  0F0331            lsl si,[bx+di]
00009498  1123              adc [bp+di],sp
0000949A  3113              xor [bp+di],dx
0000949C  43                inc bx
0000949D  3115              xor [di],dx
0000949F  6331              arpl [bx+di],si
000094A1  17                pop ss
000094A2  833119            xor word [bx+di],0x19
000094A5  A3311B            mov [0x1b31],ax
000094A8  C3                ret
000094A9  311D              xor [di],bx
000094AB  E331              jcxz 0x94de
000094AD  1F                pop ds
000094AE  0332              add si,[bp+si]
000094B0  2123              and [bp+di],sp
000094B2  3223              xor ah,[bp+di]
000094B4  43                inc bx
000094B5  3225              xor ah,[di]
000094B7  6332              arpl [bp+si],si
000094B9  27                daa
000094BA  833229            xor word [bp+si],0x29
000094BD  A3322B            mov [0x2b32],ax
000094C0  C3                ret
000094C1  322D              xor ch,[di]
000094C3  E332              jcxz 0x94f7
000094C5  2F                das
000094C6  0333              add si,[bp+di]
000094C8  3123              xor [bp+di],sp
000094CA  3333              xor si,[bp+di]
000094CC  43                inc bx
000094CD  3335              xor si,[di]
000094CF  6333              arpl [bp+di],si
000094D1  37                aaa
000094D2  833339            xor word [bp+di],0x39
000094D5  A3333B            mov [0x3b33],ax
000094D8  C3                ret
000094D9  333D              xor di,[di]
000094DB  E333              jcxz 0x9510
000094DD  3F                aas
000094DE  0334              add si,[si]
000094E0  41                inc cx
000094E1  2334              and si,[si]
000094E3  43                inc bx
000094E4  43                inc bx
000094E5  3445              xor al,0x45
000094E7  6334              arpl [si],si
000094E9  47                inc di
000094EA  833449            xor word [si],0x49
000094ED  A3344B            mov [0x4b34],ax
000094F0  C3                ret
000094F1  344D              xor al,0x4d
000094F3  E334              jcxz 0x9529
000094F5  4F                dec di
000094F6  0335              add si,[di]
000094F8  51                push cx
000094F9  2335              and si,[di]
000094FB  53                push bx
000094FC  43                inc bx
000094FD  355563            xor ax,0x6355
00009500  355783            xor ax,0x8357
00009503  3559A3            xor ax,0xa359
00009506  355BC3            xor ax,0xc35b
00009509  355DE3            xor ax,0xe35d
0000950C  355F03            xor ax,0x35f
0000950F  3661              ss popa
00009511  23366343          and si,[0x4363]
00009515  366563366783      arpl [gs:0x8367],si
0000951B  36FFAF366B        jmp word far [ss:bx+0x6b36]
00009520  C3                ret
00009521  366D              ss insw
00009523  E336              jcxz 0x955b
00009525  FF0F              dec word [bx]
00009527  37                aaa
00009528  7123              jno 0x954d
0000952A  37                aaa
0000952B  7343              jnc 0x9570
0000952D  37                aaa
0000952E  FF6F37            jmp word far [bx+0x37]
00009531  7783              ja 0x94b6
00009533  37                aaa
00009534  79A3              jns 0x94d9
00009536  37                aaa
00009537  7BC3              jpo 0x94fc
00009539  37                aaa
0000953A  7DE3              jnl 0x951f
0000953C  37                aaa
0000953D  7F03              jg 0x9542
0000953F  38812338          cmp [bx+di+0x3823],al
00009543  83433885          add word [bp+di+0x38],0xffffffffffffff85
00009547  6338              arpl [bx+si],di
00009549  87833889          xchg ax,[bp+di-0x76c8]
0000954D  A3388B            mov [0x8b38],ax
00009550  C3                ret
00009551  388DE338          cmp [di+0x38e3],cl
00009555  8F03              pop word [bp+di]
00009557  3991F3FF          cmp [bx+di-0xd],dx
0000955B  93                xchg ax,bx
0000955C  43                inc bx
0000955D  39956339          cmp [di+0x3963],dx
00009561  97                xchg ax,di
00009562  833999            cmp word [bx+di],0xffffffffffffff99
00009565  A3399B            mov [0x9b39],ax
00009568  C3                ret
00009569  399DE339          cmp [di+0x39e3],bx
0000956D  9F                lahf
0000956E  033A              add di,[bp+si]
00009570  A1233A            mov ax,[0x3a23]
00009573  A3433A            mov [0x3a43],ax
00009576  A5                movsw
00009577  633A              arpl [bp+si],di
00009579  A7                cmpsw
0000957A  833AA9            cmp word [bp+si],0xffffffffffffffa9
0000957D  A33AAB            mov [0xab3a],ax
00009580  C3                ret
00009581  3AADE33A          cmp ch,[di+0x3ae3]
00009585  AF                scasw
00009586  033B              add di,[bp+di]
00009588  B123              mov cl,0x23
0000958A  3BB3433B          cmp si,[bp+di+0x3b43]
0000958E  B563              mov ch,0x63
00009590  3BB7833B          cmp si,[bx+0x3b83]
00009594  B9A33B            mov cx,0x3ba3
00009597  BBC33B            mov bx,0x3bc3
0000959A  BDE33B            mov bp,0x3be3
0000959D  BF033C            mov di,0x3c03
000095A0  C1233C            shl word [bp+di],byte 0x3c
000095A3  C3                ret
000095A4  43                inc bx
000095A5  3CC5              cmp al,0xc5
000095A7  633C              arpl [si],di
000095A9  C7                db 0xc7
000095AA  F3FFC9            rep dec cx
000095AD  A33CCB            mov [0xcb3c],ax
000095B0  C3                ret
000095B1  3CCD              cmp al,0xcd
000095B3  E33C              jcxz 0x95f1
000095B5  CF                iret
000095B6  033D              add di,[di]
000095B8  D123              shl word [bp+di],0x0
000095BA  3DD3F3            cmp ax,0xf3d3
000095BD  FF                db 0xff
000095BE  D563              aad byte 0x63
000095C0  3DD783            cmp ax,0x83d7
000095C3  3DD9A3            cmp ax,0xa3d9
000095C6  3DDBC3            cmp ax,0xc3db
000095C9  3DDDE3            cmp ax,0xe3dd
000095CC  3DDF03            cmp ax,0x3df
000095CF  3EE123            loope 0x95f5
000095D2  3EE343            jcxz 0x9618
000095D5  3EE563            ds in ax,byte 0x63
000095D8  3EE783            ds out byte 0x83,ax
000095DB  3EE9A33E          ds jmp 0xd482
000095DF  EBC3              jmp 0x95a4
000095E1  3EED              ds in ax,dx
000095E3  F3                rep
000095E4  FF                db 0xff
000095E5  EF                out dx,ax
000095E6  033F              add di,[bx]
000095E8  F1                int1
000095E9  233F              and di,[bx]
000095EB  F343              rep inc bx
000095ED  3F                aas
000095EE  F5                cmc
000095EF  633F              arpl [bx],di
000095F1  F7833FF9A33F      test word [bp+di-0x6c1],0x3fa3
000095F7  FB                sti
000095F8  C3                ret
000095F9  3F                aas
000095FA  FD                std
000095FB  E33F              jcxz 0x963c
000095FD  FF03              inc word [bp+di]
000095FF  40                inc ax
00009600  0124              add [si],sp
00009602  40                inc ax
00009603  034440            add ax,[si+0x40]
00009606  056440            add ax,0x4064
00009609  07                pop es
0000960A  844009            test [bx+si+0x9],al
0000960D  A4                movsb
0000960E  40                inc ax
0000960F  0BC4              or ax,sp
00009611  40                inc ax
00009612  0DE440            or ax,0x40e4
00009615  0F                db 0x0f
00009616  0441              add al,0x41
00009618  1124              adc [si],sp
0000961A  41                inc cx
0000961B  134441            adc ax,[si+0x41]
0000961E  156441            adc ax,0x4164
00009621  17                pop ss
00009622  844119            test [bx+di+0x19],al
00009625  A4                movsb
00009626  41                inc cx
00009627  1BC4              sbb ax,sp
00009629  41                inc cx
0000962A  1DE441            sbb ax,0x41e4
0000962D  1F                pop ds
0000962E  0442              add al,0x42
00009630  2124              and [si],sp
00009632  42                inc dx
00009633  234442            and ax,[si+0x42]
00009636  256442            and ax,0x4264
00009639  27                daa
0000963A  844229            test [bp+si+0x29],al
0000963D  A4                movsb
0000963E  42                inc dx
0000963F  2BC4              sub ax,sp
00009641  42                inc dx
00009642  2DE442            sub ax,0x42e4
00009645  2F                das
00009646  0443              add al,0x43
00009648  3124              xor [si],sp
0000964A  43                inc bx
0000964B  334443            xor ax,[si+0x43]
0000964E  356443            xor ax,0x4364
00009651  37                aaa
00009652  844339            test [bp+di+0x39],al
00009655  A4                movsb
00009656  43                inc bx
00009657  3BC4              cmp ax,sp
00009659  43                inc bx
0000965A  3DE443            cmp ax,0x43e4
0000965D  3F                aas
0000965E  0444              add al,0x44
00009660  41                inc cx
00009661  2444              and al,0x44
00009663  43                inc bx
00009664  F4                hlt
00009665  FF4564            inc word [di+0x64]
00009668  44                inc sp
00009669  47                inc di
0000966A  844449            test [si+0x49],al
0000966D  A4                movsb
0000966E  44                inc sp
0000966F  4B                dec bx
00009670  C4444D            les ax,word [si+0x4d]
00009673  E444              in al,byte 0x44
00009675  4F                dec di
00009676  0445              add al,0x45
00009678  51                push cx
00009679  2445              and al,0x45
0000967B  53                push bx
0000967C  44                inc sp
0000967D  45                inc bp
0000967E  FF6F45            jmp word far [bx+0x45]
00009681  57                push di
00009682  844559            test [di+0x59],al
00009685  A4                movsb
00009686  45                inc bp
00009687  5B                pop bx
00009688  C4455D            les ax,word [di+0x5d]
0000968B  E445              in al,byte 0x45
0000968D  5F                pop di
0000968E  0446              add al,0x46
00009690  61                popa
00009691  2446              and al,0x46
00009693  634446            arpl [si+0x46],ax
00009696  656446            fs inc si
00009699  67844669          test [esi+0x69],al
0000969D  A4                movsb
0000969E  46                inc si
0000969F  FFCF              dec di
000096A1  46                inc si
000096A2  6D                insw
000096A3  E446              in al,byte 0x46
000096A5  FF0F              dec word [bx]
000096A7  47                inc di
000096A8  7124              jno 0x96ce
000096AA  47                inc di
000096AB  7344              jnc 0x96f1
000096AD  47                inc di
000096AE  7564              jnz 0x9714
000096B0  47                inc di
000096B1  7784              ja 0x9637
000096B3  47                inc di
000096B4  FFAF477B          jmp word far [bx+0x7b47]
000096B8  C4477D            les ax,word [bx+0x7d]
000096BB  F4                hlt
000096BC  FF00              inc word [bx+si]
000096BE  0000              add [bx+si],al
000096C0  81244883          and word [si],0x8348
000096C4  44                inc sp
000096C5  48                dec ax
000096C6  856448            test [si+0x48],sp
000096C9  87844889          xchg ax,[si-0x76b8]
000096CD  A4                movsb
000096CE  48                dec ax
000096CF  8BC4              mov ax,sp
000096D1  48                dec ax
000096D2  8D                db 0x8d
000096D3  E448              in al,byte 0x48
000096D5  8F04              pop word [si]
000096D7  49                dec cx
000096D8  91                xchg ax,cx
000096D9  2449              and al,0x49
000096DB  93                xchg ax,bx
000096DC  44                inc sp
000096DD  49                dec cx
000096DE  95                xchg ax,bp
000096DF  6449              fs dec cx
000096E1  97                xchg ax,di
000096E2  844999            test [bx+di-0x67],cl
000096E5  A4                movsb
000096E6  49                dec cx
000096E7  9BC4499D          wait les cx,word [bx+di-0x63]
000096EB  E449              in al,byte 0x49
000096ED  9F                lahf
000096EE  044A              add al,0x4a
000096F0  A1244A            mov ax,[0x4a24]
000096F3  A3444A            mov [0x4a44],ax
000096F6  A5                movsw
000096F7  644A              fs dec dx
000096F9  A7                cmpsw
000096FA  844AA9            test [bp+si-0x57],cl
000096FD  A4                movsb
000096FE  4A                dec dx
000096FF  AB                stosw
00009700  C44AAD            les cx,word [bp+si-0x53]
00009703  E44A              in al,byte 0x4a
00009705  AF                scasw
00009706  044B              add al,0x4b
00009708  B124              mov cl,0x24
0000970A  4B                dec bx
0000970B  B344              mov bl,0x44
0000970D  4B                dec bx
0000970E  B564              mov ch,0x64
00009710  4B                dec bx
00009711  B784              mov bh,0x84
00009713  4B                dec bx
00009714  B9A44B            mov cx,0x4ba4
00009717  BBC44B            mov bx,0x4bc4
0000971A  BDE44B            mov bp,0x4be4
0000971D  BF044C            mov di,0x4c04
00009720  C1244C            shl word [si],byte 0x4c
00009723  C3                ret
00009724  44                inc sp
00009725  4C                dec sp
00009726  C5644C            lds sp,word [si+0x4c]
00009729  C7844CC9A44C      mov word [si-0x36b4],0x4ca4
0000972F  CB                retf
00009730  C44CCD            les cx,word [si-0x33]
00009733  E44C              in al,byte 0x4c
00009735  CF                iret
00009736  044D              add al,0x4d
00009738  D124              shl word [si],0x0
0000973A  4D                dec bp
0000973B  D3444D            rol word [si+0x4d],cl
0000973E  D564              aad byte 0x64
00009740  4D                dec bp
00009741  D7                xlatb
00009742  844DD9            test [di-0x27],cl
00009745  A4                movsb
00009746  4D                dec bp
00009747  DBC4              fcmovnb st4
00009749  4D                dec bp
0000974A  DDE4              fucom st4
0000974C  4D                dec bp
0000974D  DF04              fild word [si]
0000974F  4E                dec si
00009750  E124              loope 0x9776
00009752  4E                dec si
00009753  E344              jcxz 0x9799
00009755  4E                dec si
00009756  E564              in ax,byte 0x64
00009758  4E                dec si
00009759  E784              out byte 0x84,ax
0000975B  4E                dec si
0000975C  E9A44E            jmp 0xe603
0000975F  EBC4              jmp 0x9725
00009761  4E                dec si
00009762  ED                in ax,dx
00009763  E44E              in al,byte 0x4e
00009765  EF                out dx,ax
00009766  044F              add al,0x4f
00009768  F1                int1
00009769  244F              and al,0x4f
0000976B  F344              rep inc sp
0000976D  4F                dec di
0000976E  F5                cmc
0000976F  644F              fs dec di
00009771  F7844FF9A44F      test word [si-0x6b1],0x4fa4
00009777  FB                sti
00009778  C44FFD            les cx,word [bx-0x3]
0000977B  E44F              in al,byte 0x4f
0000977D  FF04              inc word [si]
0000977F  50                push ax
00009780  0125              add [di],sp
00009782  50                push ax
00009783  034550            add ax,[di+0x50]
00009786  056550            add ax,0x5065
00009789  07                pop es
0000978A  855009            test [bx+si+0x9],dx
0000978D  A5                movsw
0000978E  50                push ax
0000978F  0BC5              or ax,bp
00009791  50                push ax
00009792  0DE550            or ax,0x50e5
00009795  0F05              syscall
00009797  51                push cx
00009798  1125              adc [di],sp
0000979A  51                push cx
0000979B  134551            adc ax,[di+0x51]
0000979E  156551            adc ax,0x5165
000097A1  17                pop ss
000097A2  855119            test [bx+di+0x19],dx
000097A5  A5                movsw
000097A6  51                push cx
000097A7  1BC5              sbb ax,bp
000097A9  51                push cx
000097AA  1DE551            sbb ax,0x51e5
000097AD  1F                pop ds
000097AE  055221            add ax,0x2152
000097B1  255223            and ax,0x2352
000097B4  45                inc bp
000097B5  52                push dx
000097B6  256552            and ax,0x5265
000097B9  27                daa
000097BA  855229            test [bp+si+0x29],dx
000097BD  A5                movsw
000097BE  52                push dx
000097BF  2BC5              sub ax,bp
000097C1  52                push dx
000097C2  2DE552            sub ax,0x52e5
000097C5  2F                das
000097C6  055331            add ax,0x3153
000097C9  255333            and ax,0x3353
000097CC  45                inc bp
000097CD  53                push bx
000097CE  356553            xor ax,0x5365
000097D1  37                aaa
000097D2  855339            test [bp+di+0x39],dx
000097D5  A5                movsw
000097D6  53                push bx
000097D7  3BC5              cmp ax,bp
000097D9  53                push bx
000097DA  3DE553            cmp ax,0x53e5
000097DD  3F                aas
000097DE  055441            add ax,0x4154
000097E1  255443            and ax,0x4354
000097E4  45                inc bp
000097E5  54                push sp
000097E6  45                inc bp
000097E7  6554              gs push sp
000097E9  47                inc di
000097EA  855449            test [si+0x49],dx
000097ED  A5                movsw
000097EE  54                push sp
000097EF  4B                dec bx
000097F0  C5544D            lds dx,word [si+0x4d]
000097F3  E554              in ax,byte 0x54
000097F5  4F                dec di
000097F6  055551            add ax,0x5155
000097F9  255553            and ax,0x5355
000097FC  45                inc bp
000097FD  55                push bp
000097FE  55                push bp
000097FF  6555              gs push bp
00009801  57                push di
00009802  855559            test [di+0x59],dx
00009805  A5                movsw
00009806  55                push bp
00009807  5B                pop bx
00009808  C5555D            lds dx,word [di+0x5d]
0000980B  E555              in ax,byte 0x55
0000980D  5F                pop di
0000980E  055661            add ax,0x6156
00009811  255663            and ax,0x6356
00009814  45                inc bp
00009815  56                push si
00009816  656556            gs push si
00009819  67855669          test [esi+0x69],dx
0000981D  A5                movsw
0000981E  56                push si
0000981F  6BC556            imul ax,bp,0x56
00009822  6D                insw
00009823  E556              in ax,byte 0x56
00009825  6F                outsw
00009826  055771            add ax,0x7157
00009829  255773            and ax,0x7357
0000982C  45                inc bp
0000982D  57                push di
0000982E  7565              jnz 0x9895
00009830  57                push di
00009831  7785              ja 0x97b8
00009833  57                push di
00009834  79A5              jns 0x97db
00009836  57                push di
00009837  7BC5              jpo 0x97fe
00009839  57                push di
0000983A  7DE5              jnl 0x9821
0000983C  57                push di
0000983D  7F05              jg 0x9844
0000983F  58                pop ax
00009840  81255883          and word [di],0x8358
00009844  45                inc bp
00009845  58                pop ax
00009846  856558            test [di+0x58],sp
00009849  87855889          xchg ax,[di-0x76a8]
0000984D  A5                movsw
0000984E  58                pop ax
0000984F  8BC5              mov ax,bp
00009851  58                pop ax
00009852  8D                db 0x8d
00009853  E558              in ax,byte 0x58
00009855  8F05              pop word [di]
00009857  59                pop cx
00009858  91                xchg ax,cx
00009859  255993            and ax,0x9359
0000985C  45                inc bp
0000985D  59                pop cx
0000985E  95                xchg ax,bp
0000985F  6559              gs pop cx
00009861  97                xchg ax,di
00009862  855999            test [bx+di-0x67],bx
00009865  A5                movsw
00009866  59                pop cx
00009867  9BC5599D          wait lds bx,word [bx+di-0x63]
0000986B  E559              in ax,byte 0x59
0000986D  9F                lahf
0000986E  055AA1            add ax,0xa15a
00009871  255AA3            and ax,0xa35a
00009874  45                inc bp
00009875  5A                pop dx
00009876  A5                movsw
00009877  655A              gs pop dx
00009879  A7                cmpsw
0000987A  855AA9            test [bp+si-0x57],bx
0000987D  A5                movsw
0000987E  5A                pop dx
0000987F  AB                stosw
00009880  C55AAD            lds bx,word [bp+si-0x53]
00009883  E55A              in ax,byte 0x5a
00009885  AF                scasw
00009886  055BB1            add ax,0xb15b
00009889  255BB3            and ax,0xb35b
0000988C  45                inc bp
0000988D  5B                pop bx
0000988E  B565              mov ch,0x65
00009890  5B                pop bx
00009891  B785              mov bh,0x85
00009893  5B                pop bx
00009894  B9A55B            mov cx,0x5ba5
00009897  BBC55B            mov bx,0x5bc5
0000989A  BDE55B            mov bp,0x5be5
0000989D  BF055C            mov di,0x5c05
000098A0  C1255C            shl word [di],byte 0x5c
000098A3  C3                ret
000098A4  45                inc bp
000098A5  5C                pop sp
000098A6  C5655C            lds sp,word [di+0x5c]
000098A9  C7855CC9A55C      mov word [di-0x36a4],0x5ca5
000098AF  CB                retf
000098B0  C55CCD            lds bx,word [si-0x33]
000098B3  E55C              in ax,byte 0x5c
000098B5  CF                iret
000098B6  055DD1            add ax,0xd15d
000098B9  255DD3            and ax,0xd35d
000098BC  45                inc bp
000098BD  5D                pop bp
000098BE  D565              aad byte 0x65
000098C0  5D                pop bp
000098C1  D7                xlatb
000098C2  855DD9            test [di-0x27],bx
000098C5  A5                movsw
000098C6  5D                pop bp
000098C7  DBC5              fcmovnb st5
000098C9  5D                pop bp
000098CA  DDE5              fucom st5
000098CC  5D                pop bp
000098CD  DF05              fild word [di]
000098CF  5E                pop si
000098D0  E125              loope 0x98f7
000098D2  5E                pop si
000098D3  E345              jcxz 0x991a
000098D5  5E                pop si
000098D6  E565              in ax,byte 0x65
000098D8  5E                pop si
000098D9  E7F5              out byte 0xf5,ax
000098DB  FF                db 0xff
000098DC  E9A55E            jmp 0xf784
000098DF  EBC5              jmp 0x98a6
000098E1  5E                pop si
000098E2  ED                in ax,dx
000098E3  E55E              in ax,byte 0x5e
000098E5  EF                out dx,ax
000098E6  055FF1            add ax,0xf15f
000098E9  255FF3            and ax,0xf35f
000098EC  45                inc bp
000098ED  5F                pop di
000098EE  F5                cmc
000098EF  655F              gs pop di
000098F1  F7855FF9A55F      test word [di-0x6a1],0x5fa5
000098F7  FB                sti
000098F8  C55FFD            lds bx,word [bx-0x3]
000098FB  E55F              in ax,byte 0x5f
000098FD  FF05              inc word [di]
000098FF  60                pusha
00009900  01266003          add [0x360],sp
00009904  46                inc si
00009905  60                pusha
00009906  056660            add ax,0x6066
00009909  07                pop es
0000990A  866009            xchg ah,[bx+si+0x9]
0000990D  A6                cmpsb
0000990E  60                pusha
0000990F  0BC6              or ax,si
00009911  60                pusha
00009912  0DE660            or ax,0x60e6
00009915  0F06              clts
00009917  61                popa
00009918  11266113          adc [0x1361],sp
0000991C  46                inc si
0000991D  61                popa
0000991E  156661            adc ax,0x6166
00009921  17                pop ss
00009922  866119            xchg ah,[bx+di+0x19]
00009925  A6                cmpsb
00009926  61                popa
00009927  1BC6              sbb ax,si
00009929  61                popa
0000992A  1DE661            sbb ax,0x61e6
0000992D  1F                pop ds
0000992E  06                push es
0000992F  6221              bound sp,[bx+di]
00009931  266223            bound sp,[es:bp+di]
00009934  46                inc si
00009935  6225              bound sp,[di]
00009937  666227            bound esp,[bx]
0000993A  866229            xchg ah,[bp+si+0x29]
0000993D  A6                cmpsb
0000993E  622B              bound bp,[bp+di]
00009940  C6                db 0xc6
00009941  622D              bound bp,[di]
00009943  E662              out byte 0x62,al
00009945  2F                das
00009946  06                push es
00009947  6331              arpl [bx+di],si
00009949  266333            arpl [es:bp+di],si
0000994C  46                inc si
0000994D  6335              arpl [di],si
0000994F  666337            arpl word [bx],esi
00009952  866339            xchg ah,[bp+di+0x39]
00009955  A6                cmpsb
00009956  633B              arpl [bp+di],di
00009958  C6                db 0xc6
00009959  633D              arpl [di],di
0000995B  E663              out byte 0x63,al
0000995D  3F                aas
0000995E  06                push es
0000995F  6441              fs inc cx
00009961  266443            fs inc bx
00009964  46                inc si
00009965  6445              fs inc bp
00009967  666447            fs inc edi
0000996A  866449            xchg ah,[si+0x49]
0000996D  A6                cmpsb
0000996E  644B              fs dec bx
00009970  C6                db 0xc6
00009971  644D              fs dec bp
00009973  E664              out byte 0x64,al
00009975  4F                dec di
00009976  06                push es
00009977  6551              gs push cx
00009979  266553            gs push bx
0000997C  46                inc si
0000997D  6555              gs push bp
0000997F  666557            gs push edi
00009982  866559            xchg ah,[di+0x59]
00009985  A6                cmpsb
00009986  655B              gs pop bx
00009988  C6                db 0xc6
00009989  655D              gs pop bp
0000998B  E665              out byte 0x65,al
0000998D  5F                pop di
0000998E  06                push es
0000998F  6661              popad
00009991  2666634666        arpl word [es:bp+0x66],eax
00009996  65666667866669    o32 xchg ah,[gs:esi+0x69]
0000999D  A6                cmpsb
0000999E  666BC666          imul eax,esi,0x66
000099A2  6D                insw
000099A3  E666              out byte 0x66,al
000099A5  6F                outsw
000099A6  06                push es
000099A7  677126            a32 jno 0x99d0
000099AA  677346            a32 jnc 0x99f3
000099AD  677566            a32 jnz 0x9a16
000099B0  677786            a32 ja 0x9939
000099B3  6779A6            a32 jns 0x995c
000099B6  677BC6            a32 jpo 0x997f
000099B9  677DE6            a32 jnl 0x99a2
000099BC  677F06            a32 jg 0x99c5
000099BF  688126            push word 0x2681
000099C2  688346            push word 0x4683
000099C5  688566            push word 0x6685
000099C8  688786            push word 0x8687
000099CB  6889A6            push word 0xa689
000099CE  688BC6            push word 0xc68b
000099D1  688DE6            push word 0xe68d
000099D4  688F06            push word 0x68f
000099D7  699126699346      imul dx,[bx+di+0x6926],0x4693
000099DD  699566699786      imul dx,[di+0x6966],0x8697
000099E3  6999A6699BC6      imul bx,[bx+di+0x69a6],0xc69b
000099E9  699DE6699F06      imul bx,[di+0x69e6],0x69f
000099EF  6AA1              push word 0xffffffffffffffa1
000099F1  266AA3            es push word 0xffffffffffffffa3
000099F4  46                inc si
000099F5  6AA5              push word 0xffffffffffffffa5
000099F7  666AA7            push dword 0xffffffffffffffa7
000099FA  866AA9            xchg ch,[bp+si-0x57]
000099FD  A6                cmpsb
000099FE  6AAB              push word 0xffffffffffffffab
00009A00  C6                db 0xc6
00009A01  6AAD              push word 0xffffffffffffffad
00009A03  E66A              out byte 0x6a,al
00009A05  AF                scasw
00009A06  06                push es
00009A07  6BB1266BB3        imul si,[bx+di+0x6b26],0xffffffffffffffb3
00009A0C  46                inc si
00009A0D  6BB5666BB7        imul si,[di+0x6b66],0xffffffffffffffb7
00009A12  866BB9            xchg ch,[bp+di-0x47]
00009A15  A6                cmpsb
00009A16  6BBBC66BBD        imul di,[bp+di+0x6bc6],0xffffffffffffffbd
00009A1B  E66B              out byte 0x6b,al
00009A1D  BF066C            mov di,0x6c06
00009A20  C1266CC346        shl word [0xc36c],byte 0x46
00009A25  6C                insb
00009A26  C5666C            lds sp,word [bp+0x6c]
00009A29  C7866CC9A66C      mov word [bp-0x3694],0x6ca6
00009A2F  CB                retf
00009A30  C6                db 0xc6
00009A31  6C                insb
00009A32  CDE6              int byte 0xe6
00009A34  6C                insb
00009A35  CF                iret
00009A36  06                push es
00009A37  6D                insw
00009A38  D1266DD3          shl word [0xd36d],0x0
00009A3C  46                inc si
00009A3D  6D                insw
00009A3E  D566              aad byte 0x66
00009A40  6D                insw
00009A41  D7                xlatb
00009A42  866DD9            xchg ch,[di-0x27]
00009A45  A6                cmpsb
00009A46  6D                insw
00009A47  DBC6              fcmovnb st6
00009A49  6D                insw
00009A4A  DDE6              fucom st6
00009A4C  6D                insw
00009A4D  DF066EE1          fild word [0xe16e]
00009A51  266E              es outsb
00009A53  E346              jcxz 0x9a9b
00009A55  6E                outsb
00009A56  E566              in ax,byte 0x66
00009A58  6E                outsb
00009A59  E786              out byte 0x86,ax
00009A5B  6E                outsb
00009A5C  E9A66E            jmp 0x905
00009A5F  EBC6              jmp 0x9a27
00009A61  6E                outsb
00009A62  ED                in ax,dx
00009A63  E66E              out byte 0x6e,al
00009A65  EF                out dx,ax
00009A66  06                push es
00009A67  6F                outsw
00009A68  F1                int1
00009A69  266F              es outsw
00009A6B  F346              rep inc si
00009A6D  6F                outsw
00009A6E  F5                cmc
00009A6F  666F              outsd
00009A71  F7866FF9A66F      test word [bp-0x691],0x6fa6
00009A77  FB                sti
00009A78  C6                db 0xc6
00009A79  6F                outsw
00009A7A  FD                std
00009A7B  E66F              out byte 0x6f,al
00009A7D  FF067001          inc word [0x170]
00009A81  27                daa
00009A82  7003              jo 0x9a87
00009A84  47                inc di
00009A85  7005              jo 0x9a8c
00009A87  677007            a32 jo 0x9a91
00009A8A  877009            xchg si,[bx+si+0x9]
00009A8D  A7                cmpsw
00009A8E  700B              jo 0x9a9b
00009A90  C7                db 0xc7
00009A91  700D              jo 0x9aa0
00009A93  E770              out byte 0x70,ax
00009A95  0F07              sysret
00009A97  7111              jno 0x9aaa
00009A99  27                daa
00009A9A  7113              jno 0x9aaf
00009A9C  47                inc di
00009A9D  7115              jno 0x9ab4
00009A9F  677117            a32 jno 0x9ab9
00009AA2  877119            xchg si,[bx+di+0x19]
00009AA5  A7                cmpsw
00009AA6  711B              jno 0x9ac3
00009AA8  C7                db 0xc7
00009AA9  711D              jno 0x9ac8
00009AAB  E771              out byte 0x71,ax
00009AAD  1F                pop ds
00009AAE  07                pop es
00009AAF  7221              jc 0x9ad2
00009AB1  27                daa
00009AB2  7223              jc 0x9ad7
00009AB4  47                inc di
00009AB5  7225              jc 0x9adc
00009AB7  677227            a32 jc 0x9ae1
00009ABA  877229            xchg si,[bp+si+0x29]
00009ABD  A7                cmpsw
00009ABE  722B              jc 0x9aeb
00009AC0  C7                db 0xc7
00009AC1  722D              jc 0x9af0
00009AC3  E772              out byte 0x72,ax
00009AC5  2F                das
00009AC6  07                pop es
00009AC7  7331              jnc 0x9afa
00009AC9  27                daa
00009ACA  7333              jnc 0x9aff
00009ACC  47                inc di
00009ACD  7335              jnc 0x9b04
00009ACF  677337            a32 jnc 0x9b09
00009AD2  877339            xchg si,[bp+di+0x39]
00009AD5  A7                cmpsw
00009AD6  733B              jnc 0x9b13
00009AD8  C7                db 0xc7
00009AD9  733D              jnc 0x9b18
00009ADB  E773              out byte 0x73,ax
00009ADD  3F                aas
00009ADE  07                pop es
00009ADF  7441              jz 0x9b22
00009AE1  27                daa
00009AE2  7443              jz 0x9b27
00009AE4  47                inc di
00009AE5  7445              jz 0x9b2c
00009AE7  677447            a32 jz 0x9b31
00009AEA  877449            xchg si,[si+0x49]
00009AED  A7                cmpsw
00009AEE  744B              jz 0x9b3b
00009AF0  C7                db 0xc7
00009AF1  744D              jz 0x9b40
00009AF3  E774              out byte 0x74,ax
00009AF5  4F                dec di
00009AF6  07                pop es
00009AF7  7551              jnz 0x9b4a
00009AF9  27                daa
00009AFA  7553              jnz 0x9b4f
00009AFC  47                inc di
00009AFD  7555              jnz 0x9b54
00009AFF  677557            a32 jnz 0x9b59
00009B02  877559            xchg si,[di+0x59]
00009B05  A7                cmpsw
00009B06  755B              jnz 0x9b63
00009B08  C7                db 0xc7
00009B09  755D              jnz 0x9b68
00009B0B  E775              out byte 0x75,ax
00009B0D  5F                pop di
00009B0E  07                pop es
00009B0F  7661              jna 0x9b72
00009B11  27                daa
00009B12  7663              jna 0x9b77
00009B14  47                inc di
00009B15  7665              jna 0x9b7c
00009B17  677667            a32 jna 0x9b81
00009B1A  877669            xchg si,[bp+0x69]
00009B1D  A7                cmpsw
00009B1E  766B              jna 0x9b8b
00009B20  C7                db 0xc7
00009B21  766D              jna 0x9b90
00009B23  E776              out byte 0x76,ax
00009B25  6F                outsw
00009B26  07                pop es
00009B27  7771              ja 0x9b9a
00009B29  27                daa
00009B2A  7773              ja 0x9b9f
00009B2C  47                inc di
00009B2D  7775              ja 0x9ba4
00009B2F  677777            a32 ja 0x9ba9
00009B32  877779            xchg si,[bx+0x79]
00009B35  A7                cmpsw
00009B36  777B              ja 0x9bb3
00009B38  C7                db 0xc7
00009B39  777D              ja 0x9bb8
00009B3B  E777              out byte 0x77,ax
00009B3D  7F07              jg 0x9b46
00009B3F  7881              js 0x9ac2
00009B41  27                daa
00009B42  7883              js 0x9ac7
00009B44  47                inc di
00009B45  7885              js 0x9acc
00009B47  677887            a32 js 0x9ad1
00009B4A  877889            xchg di,[bx+si-0x77]
00009B4D  A7                cmpsw
00009B4E  788B              js 0x9adb
00009B50  C7                db 0xc7
00009B51  788D              js 0x9ae0
00009B53  E778              out byte 0x78,ax
00009B55  8F07              pop word [bx]
00009B57  7991              jns 0x9aea
00009B59  27                daa
00009B5A  7993              jns 0x9aef
00009B5C  47                inc di
00009B5D  7995              jns 0x9af4
00009B5F  F7FF              idiv di
00009B61  97                xchg ax,di
00009B62  8779FF            xchg di,[bx+di-0x1]
00009B65  AF                scasw
00009B66  799B              jns 0x9b03
00009B68  C7                db 0xc7
00009B69  799D              jns 0x9b08
00009B6B  E779              out byte 0x79,ax
00009B6D  9F                lahf
00009B6E  07                pop es
00009B6F  7AA1              jpe 0x9b12
00009B71  27                daa
00009B72  7AA3              jpe 0x9b17
00009B74  47                inc di
00009B75  7AA5              jpe 0x9b1c
00009B77  677AA7            a32 jpe 0x9b21
00009B7A  877AA9            xchg di,[bp+si-0x57]
00009B7D  A7                cmpsw
00009B7E  7AAB              jpe 0x9b2b
00009B80  C7                db 0xc7
00009B81  7AAD              jpe 0x9b30
00009B83  E77A              out byte 0x7a,ax
00009B85  AF                scasw
00009B86  07                pop es
00009B87  7BB1              jpo 0x9b3a
00009B89  27                daa
00009B8A  7BB3              jpo 0x9b3f
00009B8C  47                inc di
00009B8D  7BB5              jpo 0x9b44
00009B8F  677BB7            a32 jpo 0x9b49
00009B92  877BB9            xchg di,[bp+di-0x47]
00009B95  A7                cmpsw
00009B96  7BBB              jpo 0x9b53
00009B98  C7                db 0xc7
00009B99  7BBD              jpo 0x9b58
00009B9B  E77B              out byte 0x7b,ax
00009B9D  FF                db 0xff
00009B9E  FF                db 0xff
00009B9F  FFC1              inc cx
00009BA1  27                daa
00009BA2  7CC3              jl 0x9b67
00009BA4  47                inc di
00009BA5  7CC5              jl 0x9b6c
00009BA7  677CC7            a32 jl 0x9b71
00009BAA  877CC9            xchg di,[si-0x37]
00009BAD  A7                cmpsw
00009BAE  7CCB              jl 0x9b7b
00009BB0  C7                db 0xc7
00009BB1  7CCD              jl 0x9b80
00009BB3  E77C              out byte 0x7c,ax
00009BB5  CF                iret
00009BB6  07                pop es
00009BB7  7DD1              jnl 0x9b8a
00009BB9  27                daa
00009BBA  7DD3              jnl 0x9b8f
00009BBC  47                inc di
00009BBD  7DD5              jnl 0x9b94
00009BBF  677DD7            a32 jnl 0x9b99
00009BC2  877DD9            xchg di,[di-0x27]
00009BC5  A7                cmpsw
00009BC6  7DDB              jnl 0x9ba3
00009BC8  C7                db 0xc7
00009BC9  7DDD              jnl 0x9ba8
00009BCB  E77D              out byte 0x7d,ax
00009BCD  DF07              fild word [bx]
00009BCF  7EE1              jng 0x9bb2
00009BD1  27                daa
00009BD2  7EE3              jng 0x9bb7
00009BD4  47                inc di
00009BD5  7EE5              jng 0x9bbc
00009BD7  677EE7            a32 jng 0x9bc1
00009BDA  877EE9            xchg di,[bp-0x17]
00009BDD  A7                cmpsw
00009BDE  7EEB              jng 0x9bcb
00009BE0  C7                db 0xc7
00009BE1  7EED              jng 0x9bd0
00009BE3  E77E              out byte 0x7e,ax
00009BE5  EF                out dx,ax
00009BE6  07                pop es
00009BE7  7FF1              jg 0x9bda
00009BE9  27                daa
00009BEA  7FF3              jg 0x9bdf
00009BEC  47                inc di
00009BED  7FF5              jg 0x9be4
00009BEF  677FF7            a32 jg 0x9be9
00009BF2  877FF9            xchg di,[bx-0x7]
00009BF5  A7                cmpsw
00009BF6  7FFB              jg 0x9bf3
00009BF8  C7                db 0xc7
00009BF9  7FFD              jg 0x9bf8
00009BFB  E77F              out byte 0x7f,ax
00009BFD  FF07              inc word [bx]
00009BFF  800128            add byte [bx+di],0x28
00009C02  800348            add byte [bp+di],0x48
00009C05  800568            add byte [di],0x68
00009C08  800788            add byte [bx],0x88
00009C0B  8009A8            or byte [bx+di],0xa8
00009C0E  800BC8            or byte [bp+di],0xc8
00009C11  800DE8            or byte [di],0xe8
00009C14  800F08            or byte [bx],0x8
00009C17  81112881          adc word [bx+di],0x8128
00009C1B  134881            adc cx,[bx+si-0x7f]
00009C1E  156881            adc ax,0x8168
00009C21  17                pop ss
00009C22  888119A8          mov [bx+di-0x57e7],al
00009C26  811BC881          sbb word [bp+di],0x81c8
00009C2A  1DE881            sbb ax,0x81e8
00009C2D  1F                pop ds
00009C2E  08822128          or [bp+si+0x2821],al
00009C32  82                db 0x82
00009C33  234882            and cx,[bx+si-0x7e]
00009C36  256882            and ax,0x8268
00009C39  27                daa
00009C3A  888229A8          mov [bp+si-0x57d7],al
00009C3E  82                db 0x82
00009C3F  2BC8              sub cx,ax
00009C41  82                db 0x82
00009C42  2DE882            sub ax,0x82e8
00009C45  2F                das
00009C46  08833128          or [bp+di+0x2831],al
00009C4A  833348            xor word [bp+di],0x48
00009C4D  833568            xor word [di],0x68
00009C50  833788            xor word [bx],0xffffffffffffff88
00009C53  8339A8            cmp word [bx+di],0xffffffffffffffa8
00009C56  833BC8            cmp word [bp+di],0xffffffffffffffc8
00009C59  833DE8            cmp word [di],0xffffffffffffffe8
00009C5C  833F08            cmp word [bx],0x8
00009C5F  844128            test [bx+di+0x28],al
00009C62  844348            test [bp+di+0x48],al
00009C65  844568            test [di+0x68],al
00009C68  844788            test [bx-0x78],al
00009C6B  8449A8            test [bx+di-0x58],cl
00009C6E  844BC8            test [bp+di-0x38],cl
00009C71  844DE8            test [di-0x18],cl
00009C74  844F08            test [bx+0x8],cl
00009C77  855128            test [bx+di+0x28],dx
00009C7A  855348            test [bp+di+0x48],dx
00009C7D  855568            test [di+0x68],dx
00009C80  855788            test [bx-0x78],dx
00009C83  8559A8            test [bx+di-0x58],bx
00009C86  855BC8            test [bp+di-0x38],bx
00009C89  855DE8            test [di-0x18],bx
00009C8C  855F08            test [bx+0x8],bx
00009C8F  866128            xchg ah,[bx+di+0x28]
00009C92  866348            xchg ah,[bp+di+0x48]
00009C95  866568            xchg ah,[di+0x68]
00009C98  866788            xchg ah,[bx-0x78]
00009C9B  8669A8            xchg ch,[bx+di-0x58]
00009C9E  866BC8            xchg ch,[bp+di-0x38]
00009CA1  866DE8            xchg ch,[di-0x18]
00009CA4  866F08            xchg ch,[bx+0x8]
00009CA7  877128            xchg si,[bx+di+0x28]
00009CAA  877348            xchg si,[bp+di+0x48]
00009CAD  877568            xchg si,[di+0x68]
00009CB0  877788            xchg si,[bx-0x78]
00009CB3  8779A8            xchg di,[bx+di-0x58]
00009CB6  877BC8            xchg di,[bp+di-0x38]
00009CB9  877DE8            xchg di,[di-0x18]
00009CBC  877F08            xchg di,[bx+0x8]
00009CBF  88812888          mov [bx+di-0x77d8],al
00009CC3  83488885          or word [bx+si-0x78],0xffffffffffffff85
00009CC7  688887            push word 0x8788
00009CCA  888889A8          mov [bx+si-0x5777],cl
00009CCE  888BC888          mov [bp+di-0x7738],cl
00009CD2  8D                db 0x8d
00009CD3  E8888F            call 0x2c5e
00009CD6  08899128          or [bx+di+0x2891],cl
00009CDA  89934889          mov [bp+di-0x76b8],dx
00009CDE  95                xchg ax,bp
00009CDF  688997            push word 0x9789
00009CE2  888999A8          mov [bx+di-0x5767],cl
00009CE6  899BC889          mov [bp+di-0x7638],bx
00009CEA  9D                popf
00009CEB  E8899F            call 0x3c77
00009CEE  088AA128          or [bp+si+0x28a1],cl
00009CF2  8AA3488A          mov ah,[bp+di-0x75b8]
00009CF6  A5                movsw
00009CF7  688AA7            push word 0xa78a
00009CFA  888AA9A8          mov [bp+si-0x5757],cl
00009CFE  8AABC88A          mov ch,[bp+di-0x7538]
00009D02  AD                lodsw
00009D03  E88AAF            call 0x4c90
00009D06  088BB128          or [bp+di+0x28b1],cl
00009D0A  8BB3488B          mov si,[bp+di-0x74b8]
00009D0E  B568              mov ch,0x68
00009D10  8BB7888B          mov si,[bx-0x7478]
00009D14  B9A88B            mov cx,0x8ba8
00009D17  BBC88B            mov bx,0x8bc8
00009D1A  BDE88B            mov bp,0x8be8
00009D1D  BF088C            mov di,0x8c08
00009D20  C1288C            shr word [bx+si],byte 0x8c
00009D23  C3                ret
00009D24  48                dec ax
00009D25  8CC5              mov bp,es
00009D27  688CC7            push word 0xc78c
00009D2A  888CC9A8          mov [si-0x5737],cl
00009D2E  8CCB              mov bx,cs
00009D30  C88CCDE8          enter word 0xcd8c,byte 0xe8
00009D34  8CCF              mov di,cs
00009D36  088DD128          or [di+0x28d1],cl
00009D3A  8D                db 0x8d
00009D3B  D3488D            ror word [bx+si-0x73],cl
00009D3E  D568              aad byte 0x68
00009D40  8D                db 0x8d
00009D41  D7                xlatb
00009D42  888DD9A8          mov [di-0x5727],cl
00009D46  8D                db 0x8d
00009D47  DBC8              fcmovne st0
00009D49  8D                db 0x8d
00009D4A  DDE8              fucomp st0
00009D4C  8D                db 0x8d
00009D4D  DF08              fisttp word [bx+si]
00009D4F  8EE1              mov fs,cx
00009D51  288EE348          sub [bp+0x48e3],cl
00009D55  8EE5              mov fs,bp
00009D57  688EE7            push word 0xe78e
00009D5A  888EE9A8          mov [bp-0x5717],cl
00009D5E  8EEB              mov gs,bx
00009D60  C88EEDE8          enter word 0xed8e,byte 0xe8
00009D64  8EEF              mov gs,di
00009D66  088FF128          or [bx+0x28f1],cl
00009D6A  8F                db 0x8f
00009D6B  F348              rep dec ax
00009D6D  8F                db 0x8f
00009D6E  F5                cmc
00009D6F  688FF7            push word 0xf78f
00009D72  888FF9A8          mov [bx-0x5707],cl
00009D76  8F                db 0x8f
00009D77  FB                sti
00009D78  C88FFDE8          enter word 0xfd8f,byte 0xe8
00009D7C  8F                db 0x8f
00009D7D  FF08              dec word [bx+si]
00009D7F  90                nop
00009D80  0129              add [bx+di],bp
00009D82  90                nop
00009D83  034990            add cx,[bx+di-0x70]
00009D86  056990            add ax,0x9069
00009D89  07                pop es
00009D8A  899009A9          mov [bx+si-0x56f7],dx
00009D8E  90                nop
00009D8F  0BC9              or cx,cx
00009D91  90                nop
00009D92  0DE990            or ax,0x90e9
00009D95  0F09              wbinvd
00009D97  91                xchg ax,cx
00009D98  1129              adc [bx+di],bp
00009D9A  91                xchg ax,cx
00009D9B  134991            adc cx,[bx+di-0x6f]
00009D9E  156991            adc ax,0x9169
00009DA1  17                pop ss
00009DA2  899119A9          mov [bx+di-0x56e7],dx
00009DA6  91                xchg ax,cx
00009DA7  1BC9              sbb cx,cx
00009DA9  91                xchg ax,cx
00009DAA  1DE991            sbb ax,0x91e9
00009DAD  1F                pop ds
00009DAE  09922129          or [bp+si+0x2921],dx
00009DB2  92                xchg ax,dx
00009DB3  234992            and cx,[bx+di-0x6e]
00009DB6  256992            and ax,0x9269
00009DB9  27                daa
00009DBA  899229A9          mov [bp+si-0x56d7],dx
00009DBE  92                xchg ax,dx
00009DBF  2BC9              sub cx,cx
00009DC1  92                xchg ax,dx
00009DC2  2DE992            sub ax,0x92e9
00009DC5  2F                das
00009DC6  0993FF0F          or [bp+di+0xfff],dx
00009DCA  0000              add [bx+si],al
00009DCC  0000              add [bx+si],al
00009DCE  0000              add [bx+si],al
00009DD0  0000              add [bx+si],al
00009DD2  0000              add [bx+si],al
00009DD4  0000              add [bx+si],al
00009DD6  0000              add [bx+si],al
00009DD8  0000              add [bx+si],al
00009DDA  0000              add [bx+si],al
00009DDC  0000              add [bx+si],al
00009DDE  0000              add [bx+si],al
00009DE0  0000              add [bx+si],al
00009DE2  0000              add [bx+si],al
00009DE4  0000              add [bx+si],al
00009DE6  0000              add [bx+si],al
00009DE8  0000              add [bx+si],al
00009DEA  0000              add [bx+si],al
00009DEC  0000              add [bx+si],al
00009DEE  0000              add [bx+si],al
00009DF0  0000              add [bx+si],al
00009DF2  0000              add [bx+si],al
00009DF4  0000              add [bx+si],al
00009DF6  0000              add [bx+si],al
00009DF8  0000              add [bx+si],al
00009DFA  0000              add [bx+si],al
00009DFC  0000              add [bx+si],al
00009DFE  0000              add [bx+si],al
00009E00  0000              add [bx+si],al
00009E02  0000              add [bx+si],al
00009E04  0000              add [bx+si],al
00009E06  0000              add [bx+si],al
00009E08  0000              add [bx+si],al
00009E0A  0000              add [bx+si],al
00009E0C  0000              add [bx+si],al
00009E0E  0000              add [bx+si],al
00009E10  0000              add [bx+si],al
00009E12  0000              add [bx+si],al
00009E14  0000              add [bx+si],al
00009E16  0000              add [bx+si],al
00009E18  0000              add [bx+si],al
00009E1A  0000              add [bx+si],al
00009E1C  0000              add [bx+si],al
00009E1E  0000              add [bx+si],al
00009E20  0000              add [bx+si],al
00009E22  0000              add [bx+si],al
00009E24  0000              add [bx+si],al
00009E26  0000              add [bx+si],al
00009E28  0000              add [bx+si],al
00009E2A  0000              add [bx+si],al
00009E2C  0000              add [bx+si],al
00009E2E  0000              add [bx+si],al
00009E30  0000              add [bx+si],al
00009E32  0000              add [bx+si],al
00009E34  0000              add [bx+si],al
00009E36  0000              add [bx+si],al
00009E38  0000              add [bx+si],al
00009E3A  0000              add [bx+si],al
00009E3C  0000              add [bx+si],al
00009E3E  0000              add [bx+si],al
00009E40  0000              add [bx+si],al
00009E42  0000              add [bx+si],al
00009E44  0000              add [bx+si],al
00009E46  0000              add [bx+si],al
00009E48  0000              add [bx+si],al
00009E4A  0000              add [bx+si],al
00009E4C  0000              add [bx+si],al
00009E4E  0000              add [bx+si],al
00009E50  0000              add [bx+si],al
00009E52  0000              add [bx+si],al
00009E54  0000              add [bx+si],al
00009E56  0000              add [bx+si],al
00009E58  0000              add [bx+si],al
00009E5A  0000              add [bx+si],al
00009E5C  0000              add [bx+si],al
00009E5E  0000              add [bx+si],al
00009E60  0000              add [bx+si],al
00009E62  0000              add [bx+si],al
00009E64  0000              add [bx+si],al
00009E66  0000              add [bx+si],al
00009E68  0000              add [bx+si],al
00009E6A  0000              add [bx+si],al
00009E6C  0000              add [bx+si],al
00009E6E  0000              add [bx+si],al
00009E70  0000              add [bx+si],al
00009E72  0000              add [bx+si],al
00009E74  0000              add [bx+si],al
00009E76  0000              add [bx+si],al
00009E78  0000              add [bx+si],al
00009E7A  0000              add [bx+si],al
00009E7C  0000              add [bx+si],al
00009E7E  0000              add [bx+si],al
00009E80  0000              add [bx+si],al
00009E82  0000              add [bx+si],al
00009E84  0000              add [bx+si],al
00009E86  0000              add [bx+si],al
00009E88  0000              add [bx+si],al
00009E8A  0000              add [bx+si],al
00009E8C  0000              add [bx+si],al
00009E8E  0000              add [bx+si],al
00009E90  0000              add [bx+si],al
00009E92  0000              add [bx+si],al
00009E94  0000              add [bx+si],al
00009E96  0000              add [bx+si],al
00009E98  0000              add [bx+si],al
00009E9A  0000              add [bx+si],al
00009E9C  0000              add [bx+si],al
00009E9E  0000              add [bx+si],al
00009EA0  0000              add [bx+si],al
00009EA2  0000              add [bx+si],al
00009EA4  0000              add [bx+si],al
00009EA6  0000              add [bx+si],al
00009EA8  0000              add [bx+si],al
00009EAA  0000              add [bx+si],al
00009EAC  0000              add [bx+si],al
00009EAE  0000              add [bx+si],al
00009EB0  0000              add [bx+si],al
00009EB2  0000              add [bx+si],al
00009EB4  0000              add [bx+si],al
00009EB6  0000              add [bx+si],al
00009EB8  0000              add [bx+si],al
00009EBA  0000              add [bx+si],al
00009EBC  0000              add [bx+si],al
00009EBE  0000              add [bx+si],al
00009EC0  0000              add [bx+si],al
00009EC2  0000              add [bx+si],al
00009EC4  0000              add [bx+si],al
00009EC6  0000              add [bx+si],al
00009EC8  0000              add [bx+si],al
00009ECA  0000              add [bx+si],al
00009ECC  0000              add [bx+si],al
00009ECE  0000              add [bx+si],al
00009ED0  0000              add [bx+si],al
00009ED2  0000              add [bx+si],al
00009ED4  0000              add [bx+si],al
00009ED6  0000              add [bx+si],al
00009ED8  0000              add [bx+si],al
00009EDA  0000              add [bx+si],al
00009EDC  0000              add [bx+si],al
00009EDE  0000              add [bx+si],al
00009EE0  0000              add [bx+si],al
00009EE2  0000              add [bx+si],al
00009EE4  0000              add [bx+si],al
00009EE6  0000              add [bx+si],al
00009EE8  0000              add [bx+si],al
00009EEA  0000              add [bx+si],al
00009EEC  0000              add [bx+si],al
00009EEE  0000              add [bx+si],al
00009EF0  0000              add [bx+si],al
00009EF2  0000              add [bx+si],al
00009EF4  0000              add [bx+si],al
00009EF6  0000              add [bx+si],al
00009EF8  0000              add [bx+si],al
00009EFA  0000              add [bx+si],al
00009EFC  0000              add [bx+si],al
00009EFE  0000              add [bx+si],al
00009F00  0000              add [bx+si],al
00009F02  0000              add [bx+si],al
00009F04  0000              add [bx+si],al
00009F06  0000              add [bx+si],al
00009F08  0000              add [bx+si],al
00009F0A  0000              add [bx+si],al
00009F0C  0000              add [bx+si],al
00009F0E  0000              add [bx+si],al
00009F10  0000              add [bx+si],al
00009F12  0000              add [bx+si],al
00009F14  0000              add [bx+si],al
00009F16  0000              add [bx+si],al
00009F18  0000              add [bx+si],al
00009F1A  0000              add [bx+si],al
00009F1C  0000              add [bx+si],al
00009F1E  0000              add [bx+si],al
00009F20  0000              add [bx+si],al
00009F22  0000              add [bx+si],al
00009F24  0000              add [bx+si],al
00009F26  0000              add [bx+si],al
00009F28  0000              add [bx+si],al
00009F2A  0000              add [bx+si],al
00009F2C  0000              add [bx+si],al
00009F2E  0000              add [bx+si],al
00009F30  0000              add [bx+si],al
00009F32  0000              add [bx+si],al
00009F34  0000              add [bx+si],al
00009F36  0000              add [bx+si],al
00009F38  0000              add [bx+si],al
00009F3A  0000              add [bx+si],al
00009F3C  0000              add [bx+si],al
00009F3E  0000              add [bx+si],al
00009F40  0000              add [bx+si],al
00009F42  0000              add [bx+si],al
00009F44  0000              add [bx+si],al
00009F46  0000              add [bx+si],al
00009F48  0000              add [bx+si],al
00009F4A  0000              add [bx+si],al
00009F4C  0000              add [bx+si],al
00009F4E  0000              add [bx+si],al
00009F50  0000              add [bx+si],al
00009F52  0000              add [bx+si],al
00009F54  0000              add [bx+si],al
00009F56  0000              add [bx+si],al
00009F58  0000              add [bx+si],al
00009F5A  0000              add [bx+si],al
00009F5C  0000              add [bx+si],al
00009F5E  0000              add [bx+si],al
00009F60  0000              add [bx+si],al
00009F62  0000              add [bx+si],al
00009F64  0000              add [bx+si],al
00009F66  0000              add [bx+si],al
00009F68  0000              add [bx+si],al
00009F6A  0000              add [bx+si],al
00009F6C  0000              add [bx+si],al
00009F6E  0000              add [bx+si],al
00009F70  0000              add [bx+si],al
00009F72  0000              add [bx+si],al
00009F74  0000              add [bx+si],al
00009F76  0000              add [bx+si],al
00009F78  0000              add [bx+si],al
00009F7A  0000              add [bx+si],al
00009F7C  0000              add [bx+si],al
00009F7E  0000              add [bx+si],al
00009F80  0000              add [bx+si],al
00009F82  0000              add [bx+si],al
00009F84  0000              add [bx+si],al
00009F86  0000              add [bx+si],al
00009F88  0000              add [bx+si],al
00009F8A  0000              add [bx+si],al
00009F8C  0000              add [bx+si],al
00009F8E  0000              add [bx+si],al
00009F90  0000              add [bx+si],al
00009F92  0000              add [bx+si],al
00009F94  0000              add [bx+si],al
00009F96  0000              add [bx+si],al
00009F98  0000              add [bx+si],al
00009F9A  0000              add [bx+si],al
00009F9C  0000              add [bx+si],al
00009F9E  0000              add [bx+si],al
00009FA0  0000              add [bx+si],al
00009FA2  0000              add [bx+si],al
00009FA4  0000              add [bx+si],al
00009FA6  0000              add [bx+si],al
00009FA8  0000              add [bx+si],al
00009FAA  0000              add [bx+si],al
00009FAC  0000              add [bx+si],al
00009FAE  0000              add [bx+si],al
00009FB0  0000              add [bx+si],al
00009FB2  0000              add [bx+si],al
00009FB4  0000              add [bx+si],al
00009FB6  0000              add [bx+si],al
00009FB8  0000              add [bx+si],al
00009FBA  0000              add [bx+si],al
00009FBC  0000              add [bx+si],al
00009FBE  0000              add [bx+si],al
00009FC0  0000              add [bx+si],al
00009FC2  0000              add [bx+si],al
00009FC4  0000              add [bx+si],al
00009FC6  0000              add [bx+si],al
00009FC8  0000              add [bx+si],al
00009FCA  0000              add [bx+si],al
00009FCC  0000              add [bx+si],al
00009FCE  0000              add [bx+si],al
00009FD0  0000              add [bx+si],al
00009FD2  0000              add [bx+si],al
00009FD4  0000              add [bx+si],al
00009FD6  0000              add [bx+si],al
00009FD8  0000              add [bx+si],al
00009FDA  0000              add [bx+si],al
00009FDC  0000              add [bx+si],al
00009FDE  0000              add [bx+si],al
00009FE0  0000              add [bx+si],al
00009FE2  0000              add [bx+si],al
00009FE4  0000              add [bx+si],al
00009FE6  0000              add [bx+si],al
00009FE8  0000              add [bx+si],al
00009FEA  0000              add [bx+si],al
00009FEC  0000              add [bx+si],al
00009FEE  0000              add [bx+si],al
00009FF0  0000              add [bx+si],al
00009FF2  0000              add [bx+si],al
00009FF4  0000              add [bx+si],al
00009FF6  0000              add [bx+si],al
00009FF8  0000              add [bx+si],al
00009FFA  0000              add [bx+si],al
00009FFC  0000              add [bx+si],al
00009FFE  0000              add [bx+si],al
0000A000  0000              add [bx+si],al
0000A002  0000              add [bx+si],al
0000A004  0000              add [bx+si],al
0000A006  0000              add [bx+si],al
0000A008  0000              add [bx+si],al
0000A00A  0000              add [bx+si],al
0000A00C  0000              add [bx+si],al
0000A00E  0000              add [bx+si],al
0000A010  0000              add [bx+si],al
0000A012  0000              add [bx+si],al
0000A014  0000              add [bx+si],al
0000A016  0000              add [bx+si],al
0000A018  0000              add [bx+si],al
0000A01A  0000              add [bx+si],al
0000A01C  0000              add [bx+si],al
0000A01E  0000              add [bx+si],al
0000A020  0000              add [bx+si],al
0000A022  0000              add [bx+si],al
0000A024  0000              add [bx+si],al
0000A026  0000              add [bx+si],al
0000A028  0000              add [bx+si],al
0000A02A  0000              add [bx+si],al
0000A02C  0000              add [bx+si],al
0000A02E  0000              add [bx+si],al
0000A030  0000              add [bx+si],al
0000A032  0000              add [bx+si],al
0000A034  0000              add [bx+si],al
0000A036  0000              add [bx+si],al
0000A038  0000              add [bx+si],al
0000A03A  0000              add [bx+si],al
0000A03C  0000              add [bx+si],al
0000A03E  0000              add [bx+si],al
0000A040  0000              add [bx+si],al
0000A042  0000              add [bx+si],al
0000A044  0000              add [bx+si],al
0000A046  0000              add [bx+si],al
0000A048  0000              add [bx+si],al
0000A04A  0000              add [bx+si],al
0000A04C  0000              add [bx+si],al
0000A04E  0000              add [bx+si],al
0000A050  0000              add [bx+si],al
0000A052  0000              add [bx+si],al
0000A054  0000              add [bx+si],al
0000A056  0000              add [bx+si],al
0000A058  0000              add [bx+si],al
0000A05A  0000              add [bx+si],al
0000A05C  0000              add [bx+si],al
0000A05E  0000              add [bx+si],al
0000A060  0000              add [bx+si],al
0000A062  0000              add [bx+si],al
0000A064  0000              add [bx+si],al
0000A066  0000              add [bx+si],al
0000A068  0000              add [bx+si],al
0000A06A  0000              add [bx+si],al
0000A06C  0000              add [bx+si],al
0000A06E  0000              add [bx+si],al
0000A070  0000              add [bx+si],al
0000A072  0000              add [bx+si],al
0000A074  0000              add [bx+si],al
0000A076  0000              add [bx+si],al
0000A078  0000              add [bx+si],al
0000A07A  0000              add [bx+si],al
0000A07C  0000              add [bx+si],al
0000A07E  0000              add [bx+si],al
0000A080  0000              add [bx+si],al
0000A082  0000              add [bx+si],al
0000A084  0000              add [bx+si],al
0000A086  0000              add [bx+si],al
0000A088  0000              add [bx+si],al
0000A08A  0000              add [bx+si],al
0000A08C  0000              add [bx+si],al
0000A08E  0000              add [bx+si],al
0000A090  0000              add [bx+si],al
0000A092  0000              add [bx+si],al
0000A094  0000              add [bx+si],al
0000A096  0000              add [bx+si],al
0000A098  0000              add [bx+si],al
0000A09A  0000              add [bx+si],al
0000A09C  0000              add [bx+si],al
0000A09E  0000              add [bx+si],al
0000A0A0  0000              add [bx+si],al
0000A0A2  0000              add [bx+si],al
0000A0A4  0000              add [bx+si],al
0000A0A6  0000              add [bx+si],al
0000A0A8  0000              add [bx+si],al
0000A0AA  0000              add [bx+si],al
0000A0AC  0000              add [bx+si],al
0000A0AE  0000              add [bx+si],al
0000A0B0  0000              add [bx+si],al
0000A0B2  0000              add [bx+si],al
0000A0B4  0000              add [bx+si],al
0000A0B6  0000              add [bx+si],al
0000A0B8  0000              add [bx+si],al
0000A0BA  0000              add [bx+si],al
0000A0BC  0000              add [bx+si],al
0000A0BE  0000              add [bx+si],al
0000A0C0  0000              add [bx+si],al
0000A0C2  0000              add [bx+si],al
0000A0C4  0000              add [bx+si],al
0000A0C6  0000              add [bx+si],al
0000A0C8  0000              add [bx+si],al
0000A0CA  0000              add [bx+si],al
0000A0CC  0000              add [bx+si],al
0000A0CE  0000              add [bx+si],al
0000A0D0  0000              add [bx+si],al
0000A0D2  0000              add [bx+si],al
0000A0D4  0000              add [bx+si],al
0000A0D6  0000              add [bx+si],al
0000A0D8  0000              add [bx+si],al
0000A0DA  0000              add [bx+si],al
0000A0DC  0000              add [bx+si],al
0000A0DE  0000              add [bx+si],al
0000A0E0  0000              add [bx+si],al
0000A0E2  0000              add [bx+si],al
0000A0E4  0000              add [bx+si],al
0000A0E6  0000              add [bx+si],al
0000A0E8  0000              add [bx+si],al
0000A0EA  0000              add [bx+si],al
0000A0EC  0000              add [bx+si],al
0000A0EE  0000              add [bx+si],al
0000A0F0  0000              add [bx+si],al
0000A0F2  0000              add [bx+si],al
0000A0F4  0000              add [bx+si],al
0000A0F6  0000              add [bx+si],al
0000A0F8  0000              add [bx+si],al
0000A0FA  0000              add [bx+si],al
0000A0FC  0000              add [bx+si],al
0000A0FE  0000              add [bx+si],al
0000A100  0000              add [bx+si],al
0000A102  0000              add [bx+si],al
0000A104  0000              add [bx+si],al
0000A106  0000              add [bx+si],al
0000A108  0000              add [bx+si],al
0000A10A  0000              add [bx+si],al
0000A10C  0000              add [bx+si],al
0000A10E  0000              add [bx+si],al
0000A110  0000              add [bx+si],al
0000A112  0000              add [bx+si],al
0000A114  0000              add [bx+si],al
0000A116  0000              add [bx+si],al
0000A118  0000              add [bx+si],al
0000A11A  0000              add [bx+si],al
0000A11C  0000              add [bx+si],al
0000A11E  0000              add [bx+si],al
0000A120  0000              add [bx+si],al
0000A122  0000              add [bx+si],al
0000A124  0000              add [bx+si],al
0000A126  0000              add [bx+si],al
0000A128  0000              add [bx+si],al
0000A12A  0000              add [bx+si],al
0000A12C  0000              add [bx+si],al
0000A12E  0000              add [bx+si],al
0000A130  0000              add [bx+si],al
0000A132  0000              add [bx+si],al
0000A134  0000              add [bx+si],al
0000A136  0000              add [bx+si],al
0000A138  0000              add [bx+si],al
0000A13A  0000              add [bx+si],al
0000A13C  0000              add [bx+si],al
0000A13E  0000              add [bx+si],al
0000A140  0000              add [bx+si],al
0000A142  0000              add [bx+si],al
0000A144  0000              add [bx+si],al
0000A146  0000              add [bx+si],al
0000A148  0000              add [bx+si],al
0000A14A  0000              add [bx+si],al
0000A14C  0000              add [bx+si],al
0000A14E  0000              add [bx+si],al
0000A150  0000              add [bx+si],al
0000A152  0000              add [bx+si],al
0000A154  0000              add [bx+si],al
0000A156  0000              add [bx+si],al
0000A158  0000              add [bx+si],al
0000A15A  0000              add [bx+si],al
0000A15C  0000              add [bx+si],al
0000A15E  0000              add [bx+si],al
0000A160  0000              add [bx+si],al
0000A162  0000              add [bx+si],al
0000A164  0000              add [bx+si],al
0000A166  0000              add [bx+si],al
0000A168  0000              add [bx+si],al
0000A16A  0000              add [bx+si],al
0000A16C  0000              add [bx+si],al
0000A16E  0000              add [bx+si],al
0000A170  0000              add [bx+si],al
0000A172  0000              add [bx+si],al
0000A174  0000              add [bx+si],al
0000A176  0000              add [bx+si],al
0000A178  0000              add [bx+si],al
0000A17A  0000              add [bx+si],al
0000A17C  0000              add [bx+si],al
0000A17E  0000              add [bx+si],al
0000A180  0000              add [bx+si],al
0000A182  0000              add [bx+si],al
0000A184  0000              add [bx+si],al
0000A186  0000              add [bx+si],al
0000A188  0000              add [bx+si],al
0000A18A  0000              add [bx+si],al
0000A18C  0000              add [bx+si],al
0000A18E  0000              add [bx+si],al
0000A190  0000              add [bx+si],al
0000A192  0000              add [bx+si],al
0000A194  0000              add [bx+si],al
0000A196  0000              add [bx+si],al
0000A198  0000              add [bx+si],al
0000A19A  0000              add [bx+si],al
0000A19C  0000              add [bx+si],al
0000A19E  0000              add [bx+si],al
0000A1A0  0000              add [bx+si],al
0000A1A2  0000              add [bx+si],al
0000A1A4  0000              add [bx+si],al
0000A1A6  0000              add [bx+si],al
0000A1A8  0000              add [bx+si],al
0000A1AA  0000              add [bx+si],al
0000A1AC  0000              add [bx+si],al
0000A1AE  0000              add [bx+si],al
0000A1B0  0000              add [bx+si],al
0000A1B2  0000              add [bx+si],al
0000A1B4  0000              add [bx+si],al
0000A1B6  0000              add [bx+si],al
0000A1B8  0000              add [bx+si],al
0000A1BA  0000              add [bx+si],al
0000A1BC  0000              add [bx+si],al
0000A1BE  0000              add [bx+si],al
0000A1C0  0000              add [bx+si],al
0000A1C2  0000              add [bx+si],al
0000A1C4  0000              add [bx+si],al
0000A1C6  0000              add [bx+si],al
0000A1C8  0000              add [bx+si],al
0000A1CA  0000              add [bx+si],al
0000A1CC  0000              add [bx+si],al
0000A1CE  0000              add [bx+si],al
0000A1D0  0000              add [bx+si],al
0000A1D2  0000              add [bx+si],al
0000A1D4  0000              add [bx+si],al
0000A1D6  0000              add [bx+si],al
0000A1D8  0000              add [bx+si],al
0000A1DA  0000              add [bx+si],al
0000A1DC  0000              add [bx+si],al
0000A1DE  0000              add [bx+si],al
0000A1E0  0000              add [bx+si],al
0000A1E2  0000              add [bx+si],al
0000A1E4  0000              add [bx+si],al
0000A1E6  0000              add [bx+si],al
0000A1E8  0000              add [bx+si],al
0000A1EA  0000              add [bx+si],al
0000A1EC  0000              add [bx+si],al
0000A1EE  0000              add [bx+si],al
0000A1F0  0000              add [bx+si],al
0000A1F2  0000              add [bx+si],al
0000A1F4  0000              add [bx+si],al
0000A1F6  0000              add [bx+si],al
0000A1F8  0000              add [bx+si],al
0000A1FA  0000              add [bx+si],al
0000A1FC  0000              add [bx+si],al
0000A1FE  0000              add [bx+si],al
0000A200  49                dec cx
0000A201  4F                dec di
0000A202  2020              and [bx+si],ah
0000A204  2020              and [bx+si],ah
0000A206  2020              and [bx+si],ah
0000A208  53                push bx
0000A209  59                pop cx
0000A20A  53                push bx
0000A20B  2000              and [bx+si],al
0000A20D  29E6              sub si,sp
0000A20F  6225              bound sp,[di]
0000A211  2E252E00          cs and ax,0x2e
0000A215  0028              add [bx+si],ch
0000A217  53                push bx
0000A218  98                cbw
0000A219  150200            adc ax,0x2
0000A21C  55                push bp
0000A21D  57                push di
0000A21E  0000              add [bx+si],al
0000A220  4D                dec bp
0000A221  53                push bx
0000A222  44                inc sp
0000A223  4F                dec di
0000A224  53                push bx
0000A225  2020              and [bx+si],ah
0000A227  205359            and [bp+di+0x59],dl
0000A22A  53                push bx
0000A22B  2000              and [bx+si],al
0000A22D  6E                outsb
0000A22E  E96225            jmp 0xc793
0000A231  2E252E00          cs and ax,0x2e
0000A235  0001              add [bx+di],al
0000A237  00F8              add al,bh
0000A239  0E                push cs
0000A23A  2E00B07500        add [cs:bx+si+0x75],dh
0000A23F  004142            add [bx+di+0x42],al
0000A242  43                inc bx
0000A243  2020              and [bx+si],ah
0000A245  2020              and [bx+si],ah
0000A247  205458            and [si+0x58],dl
0000A24A  54                push sp
0000A24B  2000              and [bx+si],al
0000A24D  0204              add al,[si]
0000A24F  6325              arpl [di],sp
0000A251  2E252E00          cs and ax,0x2e
0000A255  005B2D            add [bp+di+0x2d],bl
0000A258  6F                outsw
0000A259  0B6900            or bp,[bx+di+0x0]
0000A25C  2A00              sub al,[bx+si]
0000A25E  0000              add [bx+si],al
0000A260  41                inc cx
0000A261  55                push bp
0000A262  54                push sp
0000A263  4F                dec di
0000A264  45                inc bp
0000A265  58                pop ax
0000A266  45                inc bp
0000A267  43                inc bx
0000A268  42                inc dx
0000A269  41                inc cx
0000A26A  54                push sp
0000A26B  2000              and [bx+si],al
0000A26D  050563            add ax,0x6305
0000A270  252E25            and ax,0x252e
0000A273  2E0000            add [cs:bx+si],al
0000A276  A6                cmpsb
0000A277  7524              jnz 0xa29d
0000A279  2E6A00            cs push word 0x0
0000A27C  0E                push cs
0000A27D  0000              add [bx+si],al
0000A27F  004341            add [bp+di+0x41],al
0000A282  4C                dec sp
0000A283  43                inc bx
0000A284  2020              and [bx+si],ah
0000A286  2020              and [bx+si],ah
0000A288  45                inc bp
0000A289  58                pop ax
0000A28A  45                inc bp
0000A28B  2000              and [bx+si],al
0000A28D  56                push si
0000A28E  056325            add ax,0x2563
0000A291  2E252E00          cs and ax,0x2e
0000A295  005C2D            add [si+0x2d],bl
0000A298  6F                outsw
0000A299  0B6B00            or bp,[bp+di+0x0]
0000A29C  A06100            mov al,[0x61]
0000A29F  004341            add [bp+di+0x41],al
0000A2A2  4C                dec sp
0000A2A3  45                inc bp
0000A2A4  4E                dec si
0000A2A5  44                inc sp
0000A2A6  41                inc cx
0000A2A7  52                push dx
0000A2A8  45                inc bp
0000A2A9  58                pop ax
0000A2AA  45                inc bp
0000A2AB  2000              and [bx+si],al
0000A2AD  3D0663            cmp ax,0x6306
0000A2B0  252E25            and ax,0x252e
0000A2B3  2E0000            add [cs:bx+si],al
0000A2B6  5C                pop sp
0000A2B7  2D6F0B            sub ax,0xb6f
0000A2BA  9C                pushf
0000A2BB  00F0              add al,dh
0000A2BD  91                xchg ax,cx
0000A2BE  0000              add [bx+si],al
0000A2C0  43                inc bx
0000A2C1  41                inc cx
0000A2C2  52                push dx
0000A2C3  44                inc sp
0000A2C4  46                inc si
0000A2C5  49                dec cx
0000A2C6  4C                dec sp
0000A2C7  45                inc bp
0000A2C8  45                inc bp
0000A2C9  58                pop ax
0000A2CA  45                inc bp
0000A2CB  2000              and [bx+si],al
0000A2CD  51                push cx
0000A2CE  07                pop es
0000A2CF  6325              arpl [di],sp
0000A2D1  2E252E00          cs and ax,0x2e
0000A2D5  005C2D            add [si+0x2d],bl
0000A2D8  6F                outsw
0000A2D9  0BE5              or sp,bp
0000A2DB  00B08E00          add [bx+si+0x8e],dh
0000A2DF  00434C            add [bp+di+0x4c],al
0000A2E2  49                dec cx
0000A2E3  50                push ax
0000A2E4  42                inc dx
0000A2E5  52                push dx
0000A2E6  44                inc sp
0000A2E7  204558            and [di+0x58],al
0000A2EA  45                inc bp
0000A2EB  2000              and [bx+si],al
0000A2ED  6308              arpl [bx+si],cx
0000A2EF  6325              arpl [di],sp
0000A2F1  2E252E00          cs and ax,0x2e
0000A2F5  005C2D            add [si+0x2d],bl
0000A2F8  6F                outsw
0000A2F9  0B2D              or bp,[di]
0000A2FB  01E0              add ax,sp
0000A2FD  250000            and ax,0x0
0000A300  43                inc bx
0000A301  4C                dec sp
0000A302  4F                dec di
0000A303  43                inc bx
0000A304  4B                dec bx
0000A305  2020              and [bx+si],ah
0000A307  204558            and [di+0x58],al
0000A30A  45                inc bp
0000A30B  2000              and [bx+si],al
0000A30D  0009              add [bx+di],cl
0000A30F  6325              arpl [di],sp
0000A311  2E252E00          cs and ax,0x2e
0000A315  005C2D            add [si+0x2d],bl
0000A318  6F                outsw
0000A319  0B4001            or ax,[bx+si+0x1]
0000A31C  F0                lock
0000A31D  1E                push ds
0000A31E  0000              add [bx+si],al
0000A320  43                inc bx
0000A321  4F                dec di
0000A322  4D                dec bp
0000A323  4D                dec bp
0000A324  41                inc cx
0000A325  4E                dec si
0000A326  44                inc sp
0000A327  20434F            and [bp+di+0x4f],al
0000A32A  4D                dec bp
0000A32B  2000              and [bx+si],al
0000A32D  7509              jnz 0xa338
0000A32F  6325              arpl [di],sp
0000A331  2E252E00          cs and ax,0x2e
0000A335  00BB7497          add [bp+di-0x688c],bh
0000A339  155001            adc ax,0x150
0000A33C  BC6200            mov sp,0x62
0000A33F  00434F            add [bp+di+0x4f],al
0000A342  4E                dec si
0000A343  54                push sp
0000A344  52                push dx
0000A345  4F                dec di
0000A346  4C                dec sp
0000A347  204558            and [di+0x58],al
0000A34A  45                inc bp
0000A34B  2000              and [bx+si],al
0000A34D  48                dec ax
0000A34E  0A6325            or ah,[bp+di+0x25]
0000A351  2E252E00          cs and ax,0x2e
0000A355  005C2D            add [si+0x2d],bl
0000A358  6F                outsw
0000A359  0B820170          or ax,[bp+si+0x7001]
0000A35D  D000              rol byte [bx+si],0x0
0000A35F  00434F            add [bp+di+0x4f],al
0000A362  55                push bp
0000A363  52                push dx
0000A364  41                inc cx
0000A365  2020              and [bx+si],ah
0000A367  20464F            and [bp+0x4f],al
0000A36A  4E                dec si
0000A36B  2000              and [bx+si],al
0000A36D  93                xchg ax,bx
0000A36E  0B6325            or sp,[bp+di+0x25]
0000A371  2E252E00          cs and ax,0x2e
0000A375  00542D            add [si+0x2d],dl
0000A378  6F                outsw
0000A379  0BEB              or bp,bx
0000A37B  0110              add [bx+si],dx
0000A37D  2200              and al,[bx+si]
0000A37F  00434F            add [bp+di+0x4f],al
0000A382  55                push bp
0000A383  52                push dx
0000A384  42                inc dx
0000A385  2020              and [bx+si],ah
0000A387  20464F            and [bp+0x4f],al
0000A38A  4E                dec si
0000A38B  2000              and [bx+si],al
0000A38D  42                inc dx
0000A38E  0C63              or al,0x63
0000A390  252E25            and ax,0x252e
0000A393  2E0000            add [cs:bx+si],al
0000A396  55                push bp
0000A397  2D6F0B            sub ax,0xb6f
0000A39A  FD                std
0000A39B  0110              add [bx+si],dx
0000A39D  3000              xor [bx+si],al
0000A39F  00444F            add [si+0x4f],al
0000A3A2  54                push sp
0000A3A3  48                dec ax
0000A3A4  49                dec cx
0000A3A5  53                push bx
0000A3A6  2020              and [bx+si],ah
0000A3A8  54                push sp
0000A3A9  58                pop ax
0000A3AA  54                push sp
0000A3AB  2000              and [bx+si],al
0000A3AD  C20C63            ret word 0x630c
0000A3B0  252E25            and ax,0x252e
0000A3B3  2E0000            add [cs:bx+si],al
0000A3B6  5C                pop sp
0000A3B7  2D6F0B            sub ax,0xb6f
0000A3BA  16                push ss
0000A3BB  02ED              add ch,ch
0000A3BD  0100              add [bx+si],ax
0000A3BF  004845            add [bx+si+0x45],cl
0000A3C2  4C                dec sp
0000A3C3  56                push si
0000A3C4  41                inc cx
0000A3C5  2020              and [bx+si],ah
0000A3C7  20464F            and [bp+0x4f],al
0000A3CA  4E                dec si
0000A3CB  2000              and [bx+si],al
0000A3CD  4B                dec bx
0000A3CE  0D6325            or ax,0x2563
0000A3D1  2E252E00          cs and ax,0x2e
0000A3D5  00552D            add [di+0x2d],dl
0000A3D8  6F                outsw
0000A3D9  0B17              or dx,[bx]
0000A3DB  02601F            add ah,[bx+si+0x1f]
0000A3DE  0000              add [bx+si],al
0000A3E0  48                dec ax
0000A3E1  45                inc bp
0000A3E2  4C                dec sp
0000A3E3  56                push si
0000A3E4  42                inc dx
0000A3E5  2020              and [bx+si],ah
0000A3E7  20464F            and [bp+0x4f],al
0000A3EA  4E                dec si
0000A3EB  2000              and [bx+si],al
0000A3ED  0C0E              or al,0xe
0000A3EF  6325              arpl [di],sp
0000A3F1  2E252E00          cs and ax,0x2e
0000A3F5  00552D            add [di+0x2d],dl
0000A3F8  6F                outsw
0000A3F9  0B27              or sp,[bx]
0000A3FB  02F0              add dh,al
0000A3FD  2800              sub [bx+si],al
0000A3FF  004849            add [bx+si+0x49],cl
0000A402  46                inc si
0000A403  4F                dec di
0000A404  4E                dec si
0000A405  54                push sp
0000A406  53                push bx
0000A407  20464F            and [bp+0x4f],al
0000A40A  4E                dec si
0000A40B  2000              and [bx+si],al
0000A40D  730E              jnc 0xa41d
0000A40F  6325              arpl [di],sp
0000A411  2E252E00          cs and ax,0x2e
0000A415  00402D            add [bx+si+0x2d],al
0000A418  6F                outsw
0000A419  0B3C              or di,[si]
0000A41B  0230              add dh,[bx+si]
0000A41D  1D0000            sbb ax,0x0
0000A420  48                dec ax
0000A421  50                push ax
0000A422  4C                dec sp
0000A423  41                inc cx
0000A424  53                push bx
0000A425  45                inc bp
0000A426  52                push dx
0000A427  204452            and [si+0x52],al
0000A42A  56                push si
0000A42B  2000              and [bx+si],al
0000A42D  330F              xor cx,[bx]
0000A42F  6325              arpl [di],sp
0000A431  2E252E00          cs and ax,0x2e
0000A435  00552D            add [di+0x2d],dl
0000A438  6F                outsw
0000A439  0B4B02            or cx,[bp+di+0x2]
0000A43C  F0                lock
0000A43D  3C00              cmp al,0x0
0000A43F  004C4F            add [si+0x4f],cl
0000A442  46                inc si
0000A443  4F                dec di
0000A444  4E                dec si
0000A445  54                push sp
0000A446  53                push bx
0000A447  20464F            and [bp+0x4f],al
0000A44A  4E                dec si
0000A44B  2000              and [bx+si],al
0000A44D  051063            add ax,0x6310
0000A450  252E25            and ax,0x252e
0000A453  2E0000            add [cs:bx+si],al
0000A456  41                inc cx
0000A457  2D6F0B            sub ax,0xb6f
0000A45A  6A02              push word 0x2
0000A45C  B015              mov al,0x15
0000A45E  0000              add [bx+si],al
0000A460  4D                dec bp
0000A461  4F                dec di
0000A462  44                inc sp
0000A463  45                inc bp
0000A464  52                push dx
0000A465  4E                dec si
0000A466  2020              and [bx+si],ah
0000A468  46                inc si
0000A469  4F                dec di
0000A46A  4E                dec si
0000A46B  2000              and [bx+si],al
0000A46D  7410              jz 0xa47f
0000A46F  6325              arpl [di],sp
0000A471  2E252E00          cs and ax,0x2e
0000A475  00562D            add [bp+0x2d],dl
0000A478  6F                outsw
0000A479  0B7502            or si,[di+0x2]
0000A47C  D025              shl byte [di],0x0
0000A47E  0000              add [bx+si],al
0000A480  E544              in ax,byte 0x44
0000A482  4F                dec di
0000A483  43                inc bx
0000A484  3334              xor si,[si]
0000A486  314354            xor [bp+di+0x54],ax
0000A489  4D                dec bp
0000A48A  50                push ax
0000A48B  2000              and [bx+si],al
0000A48D  0000              add [bx+si],al
0000A48F  0000              add [bx+si],al
0000A491  0000              add [bx+si],al
0000A493  0000              add [bx+si],al
0000A495  001A              add [bp+si],bl
0000A497  008F5C00          add [bx+0x5c],cl
0000A49B  0000              add [bx+si],al
0000A49D  0000              add [bx+si],al
0000A49F  004D53            add [di+0x53],cl
0000A4A2  44                inc sp
0000A4A3  4F                dec di
0000A4A4  53                push bx
0000A4A5  44                inc sp
0000A4A6  2020              and [bx+si],ah
0000A4A8  45                inc bp
0000A4A9  58                pop ax
0000A4AA  45                inc bp
0000A4AB  2000              and [bx+si],al
0000A4AD  8A11              mov dl,[bx+di]
0000A4AF  6325              arpl [di],sp
0000A4B1  2E252E00          cs and ax,0x2e
0000A4B5  004F2D            add [bx+0x2d],cl
0000A4B8  6F                outsw
0000A4B9  0B89022E          or cx,[bx+di+0x2e02]
0000A4BD  17                pop ss
0000A4BE  0000              add [bx+si],al
0000A4C0  4E                dec si
0000A4C1  4F                dec di
0000A4C2  54                push sp
0000A4C3  45                inc bp
0000A4C4  50                push ax
0000A4C5  41                inc cx
0000A4C6  44                inc sp
0000A4C7  204558            and [di+0x58],al
0000A4CA  45                inc bp
0000A4CB  2000              and [bx+si],al
0000A4CD  47                inc di
0000A4CE  126325            adc ah,[bp+di+0x25]
0000A4D1  2E252E00          cs and ax,0x2e
0000A4D5  005C2D            add [si+0x2d],bl
0000A4D8  6F                outsw
0000A4D9  0B950270          or dx,[di+0x7002]
0000A4DD  48                dec ax
0000A4DE  0000              add [bx+si],al
0000A4E0  50                push ax
0000A4E1  41                inc cx
0000A4E2  49                dec cx
0000A4E3  4E                dec si
0000A4E4  54                push sp
0000A4E5  2020              and [bx+si],ah
0000A4E7  204558            and [di+0x58],al
0000A4EA  45                inc bp
0000A4EB  2000              and [bx+si],al
0000A4ED  3313              xor dx,[bp+di]
0000A4EF  6325              arpl [di],sp
0000A4F1  2E252E00          cs and ax,0x2e
0000A4F5  005C2D            add [si+0x2d],bl
0000A4F8  6F                outsw
0000A4F9  0BBA02F0          or di,[bp+si-0xffe]
0000A4FD  5D                pop bp
0000A4FE  0100              add [bx+si],ax
0000A500  50                push ax
0000A501  52                push dx
0000A502  41                inc cx
0000A503  43                inc bx
0000A504  54                push sp
0000A505  49                dec cx
0000A506  43                inc bx
0000A507  45                inc bp
0000A508  44                inc sp
0000A509  4F                dec di
0000A50A  43                inc bx
0000A50B  2000              and [bx+si],al
0000A50D  53                push bx
0000A50E  156325            adc ax,0x2563
0000A511  2E252E00          cs and ax,0x2e
0000A515  00852D6F          add [di+0x6f2d],al
0000A519  0B6903            or bp,[bx+di+0x3]
0000A51C  800B00            or byte [bp+di],0x0
0000A51F  005245            add [bp+si+0x45],dl
0000A522  41                inc cx
0000A523  44                inc sp
0000A524  4D                dec bp
0000A525  45                inc bp
0000A526  2020              and [bx+si],ah
0000A528  44                inc sp
0000A529  4F                dec di
0000A52A  43                inc bx
0000A52B  2000              and [bx+si],al
0000A52D  09166325          or [0x2563],dx
0000A531  2E252E00          cs and ax,0x2e
0000A535  00852D6F          add [di+0x6f2d],al
0000A539  0B6F03            or bp,[bx+0x3]
0000A53C  6A0B              push word 0xb
0000A53E  0000              add [bx+si],al
0000A540  52                push dx
0000A541  45                inc bp
0000A542  56                push si
0000A543  45                inc bp
0000A544  52                push dx
0000A545  53                push bx
0000A546  49                dec cx
0000A547  204558            and [di+0x58],al
0000A54A  45                inc bp
0000A54B  2000              and [bx+si],al
0000A54D  88166325          mov [0x2563],dl
0000A551  2E252E00          cs and ax,0x2e
0000A555  005C2D            add [si+0x2d],bl
0000A558  6F                outsw
0000A559  0B7503            or si,[di+0x3]
0000A55C  E039              loopne 0xa597
0000A55E  0000              add [bx+si],al
0000A560  52                push dx
0000A561  4F                dec di
0000A562  4D                dec bp
0000A563  41                inc cx
0000A564  4E                dec si
0000A565  2020              and [bx+si],ah
0000A567  20464F            and [bp+0x4f],al
0000A56A  4E                dec si
0000A56B  2000              and [bx+si],al
0000A56D  57                push di
0000A56E  17                pop ss
0000A56F  6325              arpl [di],sp
0000A571  2E252E00          cs and ax,0x2e
0000A575  00562D            add [bp+0x2d],dl
0000A578  6F                outsw
0000A579  0B920380          or dx,[bp+si-0x7ffd]
0000A57D  6A00              push word 0x0
0000A57F  005343            add [bp+di+0x43],dl
0000A582  52                push dx
0000A583  49                dec cx
0000A584  50                push ax
0000A585  54                push sp
0000A586  2020              and [bx+si],ah
0000A588  46                inc si
0000A589  4F                dec di
0000A58A  4E                dec si
0000A58B  2000              and [bx+si],al
0000A58D  56                push si
0000A58E  186325            sbb [bp+di+0x25],ah
0000A591  2E252E00          cs and ax,0x2e
0000A595  00562D            add [bp+0x2d],dl
0000A598  6F                outsw
0000A599  0BC8              or cx,ax
0000A59B  037016            add si,[bx+si+0x16]
0000A59E  0000              add [bx+si],al
0000A5A0  53                push bx
0000A5A1  50                push ax
0000A5A2  4F                dec di
0000A5A3  4F                dec di
0000A5A4  4C                dec sp
0000A5A5  45                inc bp
0000A5A6  52                push dx
0000A5A7  204558            and [di+0x58],al
0000A5AA  45                inc bp
0000A5AB  2000              and [bx+si],al
0000A5AD  2819              sub [bx+di],bl
0000A5AF  6325              arpl [di],sp
0000A5B1  2E252E00          cs and ax,0x2e
0000A5B5  00502D            add [bx+si+0x2d],dl
0000A5B8  6F                outsw
0000A5B9  0BD4              or dx,sp
0000A5BB  03A03300          add sp,[bx+si+0x33]
0000A5BF  005445            add [si+0x45],dl
0000A5C2  52                push dx
0000A5C3  4D                dec bp
0000A5C4  49                dec cx
0000A5C5  4E                dec si
0000A5C6  41                inc cx
0000A5C7  4C                dec sp
0000A5C8  45                inc bp
0000A5C9  58                pop ax
0000A5CA  45                inc bp
0000A5CB  2000              and [bx+si],al
0000A5CD  BC1963            mov sp,0x6319
0000A5D0  252E25            and ax,0x252e
0000A5D3  2E0000            add [cs:bx+si],al
0000A5D6  5D                pop bp
0000A5D7  2D6F0B            sub ax,0xb6f
0000A5DA  EE                out dx,al
0000A5DB  03C0              add ax,ax
0000A5DD  AB                stosw
0000A5DE  0000              add [bx+si],al
0000A5E0  54                push sp
0000A5E1  4D                dec bp
0000A5E2  53                push bx
0000A5E3  52                push dx
0000A5E4  41                inc cx
0000A5E5  2020              and [bx+si],ah
0000A5E7  20464F            and [bp+0x4f],al
0000A5EA  4E                dec si
0000A5EB  2000              and [bx+si],al
0000A5ED  52                push dx
0000A5EE  1B6325            sbb sp,[bp+di+0x25]
0000A5F1  2E252E00          cs and ax,0x2e
0000A5F5  00572D            add [bx+0x2d],dl
0000A5F8  6F                outsw
0000A5F9  0B4404            or ax,[si+0x4]
0000A5FC  1020              adc [bx+si],ah
0000A5FE  0000              add [bx+si],al
0000A600  54                push sp
0000A601  4D                dec bp
0000A602  53                push bx
0000A603  52                push dx
0000A604  42                inc dx
0000A605  2020              and [bx+si],ah
0000A607  20464F            and [bp+0x4f],al
0000A60A  4E                dec si
0000A60B  2000              and [bx+si],al
0000A60D  151C63            adc ax,0x631c
0000A610  252E25            and ax,0x252e
0000A613  2E0000            add [cs:bx+si],al
0000A616  57                push di
0000A617  2D6F0B            sub ax,0xb6f
0000A61A  55                push bp
0000A61B  0420              add al,0x20
0000A61D  2A00              sub al,[bx+si]
0000A61F  005749            add [bx+0x49],dl
0000A622  4E                dec si
0000A623  2020              and [bx+si],ah
0000A625  2020              and [bx+si],ah
0000A627  20434E            and [bp+di+0x4e],al
0000A62A  46                inc si
0000A62B  2000              and [bx+si],al
0000A62D  B81C63            mov ax,0x631c
0000A630  252E25            and ax,0x252e
0000A633  2E0000            add [cs:bx+si],al
0000A636  50                push ax
0000A637  2D6F0B            sub ax,0xb6f
0000A63A  6B0490            imul ax,[si],0xffffffffffffff90
0000A63D  07                pop es
0000A63E  0000              add [bx+si],al
0000A640  57                push di
0000A641  49                dec cx
0000A642  4E                dec si
0000A643  2020              and [bx+si],ah
0000A645  2020              and [bx+si],ah
0000A647  20434F            and [bp+di+0x4f],al
0000A64A  4D                dec bp
0000A64B  2000              and [bx+si],al
0000A64D  6C                insb
0000A64E  1D6325            sbb ax,0x2563
0000A651  2E252E00          cs and ax,0x2e
0000A655  00412D            add [bx+di+0x2d],al
0000A658  6F                outsw
0000A659  0B6F04            or bp,[bx+0x4]
0000A65C  0313              add dx,[bp+di]
0000A65E  0000              add [bx+si],al
0000A660  57                push di
0000A661  49                dec cx
0000A662  4E                dec si
0000A663  2020              and [bx+si],ah
0000A665  2020              and [bx+si],ah
0000A667  20494E            and [bx+di+0x4e],cl
0000A66A  49                dec cx
0000A66B  2000              and [bx+si],al
0000A66D  26206325          and [es:bp+di+0x25],ah
0000A671  2E252E00          cs and ax,0x2e
0000A675  007A61            add [bp+si+0x61],bh
0000A678  252E79            and ax,0x792e
0000A67B  04F4              add al,0xf4
0000A67D  0800              or [bx+si],al
0000A67F  00E5              add ch,ah
0000A681  4D                dec bp
0000A682  53                push bx
0000A683  50                push ax
0000A684  3131              xor [bx+di],si
0000A686  3442              xor al,0x42
0000A688  54                push sp
0000A689  4D                dec bp
0000A68A  50                push ax
0000A68B  2000              and [bx+si],al
0000A68D  0000              add [bx+si],al
0000A68F  0000              add [bx+si],al
0000A691  0000              add [bx+si],al
0000A693  0000              add [bx+si],al
0000A695  00AD538F          add [di-0x70ad],ch
0000A699  5C                pop sp
0000A69A  7E04              jng 0xa6a0
0000A69C  20DE              and dh,bl
0000A69E  0000              add [bx+si],al
0000A6A0  57                push di
0000A6A1  49                dec cx
0000A6A2  4E                dec si
0000A6A3  3130              xor [bx+si],si
0000A6A5  3020              xor [bx+si],ah
0000A6A7  204249            and [bp+si+0x49],al
0000A6AA  4E                dec si
0000A6AB  2000              and [bx+si],al
0000A6AD  55                push bp
0000A6AE  216325            and [bp+di+0x25],sp
0000A6B1  2E252E00          cs and ax,0x2e
0000A6B5  00412D            add [bx+di+0x2d],al
0000A6B8  6F                outsw
0000A6B9  0B800480          or ax,[bx+si-0x7ffc]
0000A6BD  CE                into
0000A6BE  0200              add al,[bx+si]
0000A6C0  57                push di
0000A6C1  49                dec cx
0000A6C2  4E                dec si
0000A6C3  3130              xor [bx+si],si
0000A6C5  3020              xor [bx+si],ah
0000A6C7  204F56            and [bx+0x56],cl
0000A6CA  4C                dec sp
0000A6CB  2000              and [bx+si],al
0000A6CD  65256325          gs and ax,0x2563
0000A6D1  2E252E00          cs and ax,0x2e
0000A6D5  00412D            add [bx+di+0x2d],al
0000A6D8  6F                outsw
0000A6D9  0BE8              or bp,ax
0000A6DB  05005C            add ax,0x5c00
0000A6DE  0300              add ax,[bx+si]
0000A6E0  57                push di
0000A6E1  49                dec cx
0000A6E2  4E                dec si
0000A6E3  4F                dec di
0000A6E4  4C                dec sp
0000A6E5  44                inc sp
0000A6E6  41                inc cx
0000A6E7  50                push ax
0000A6E8  47                inc di
0000A6E9  52                push dx
0000A6EA  42                inc dx
0000A6EB  2000              and [bx+si],al
0000A6ED  4A                dec dx
0000A6EE  2A6325            sub ah,[bp+di+0x25]
0000A6F1  2E252E00          cs and ax,0x2e
0000A6F5  004F2D            add [bx+0x2d],cl
0000A6F8  6F                outsw
0000A6F9  0B9607BD          or dx,[bp-0x42f9]
0000A6FD  0400              add al,0x0
0000A6FF  005749            add [bx+0x49],dl
0000A702  4E                dec si
0000A703  4F                dec di
0000A704  4C                dec sp
0000A705  44                inc sp
0000A706  41                inc cx
0000A707  50                push ax
0000A708  4D                dec bp
0000A709  4F                dec di
0000A70A  44                inc sp
0000A70B  2000              and [bx+si],al
0000A70D  112B              adc [bp+di],bp
0000A70F  6325              arpl [di],sp
0000A711  2E252E00          cs and ax,0x2e
0000A715  00502D            add [bx+si+0x2d],dl
0000A718  6F                outsw
0000A719  0B9907C0          or bx,[bx+di-0x3ff9]
0000A71D  4B                dec bx
0000A71E  0000              add [bx+si],al
0000A720  57                push di
0000A721  52                push dx
0000A722  49                dec cx
0000A723  54                push sp
0000A724  45                inc bp
0000A725  2020              and [bx+si],ah
0000A727  204441            and [si+0x41],al
0000A72A  54                push sp
0000A72B  2000              and [bx+si],al
0000A72D  C6                db 0xc6
0000A72E  2B6325            sub sp,[bp+di+0x25]
0000A731  2E252E00          cs and ax,0x2e
0000A735  00422D            add [bp+si+0x2d],al
0000A738  6F                outsw
0000A739  0BBF072B          or di,[bx+0x2b07]
0000A73D  0000              add [bx+si],al
0000A73F  005752            add [bx+0x52],dl
0000A742  49                dec cx
0000A743  54                push sp
0000A744  45                inc bp
0000A745  2020              and [bx+si],ah
0000A747  204558            and [di+0x58],al
0000A74A  45                inc bp
0000A74B  2000              and [bx+si],al
0000A74D  772C              ja 0xa77b
0000A74F  6325              arpl [di],sp
0000A751  2E252E00          cs and ax,0x2e
0000A755  00852D6F          add [di+0x6f2d],al
0000A759  0BC0              or ax,ax
0000A75B  07                pop es
0000A75C  30E0              xor al,ah
0000A75E  0200              add al,[bx+si]
0000A760  57                push di
0000A761  49                dec cx
0000A762  4E                dec si
0000A763  3130              xor [bx+si],si
0000A765  3120              xor [bx+si],sp
0000A767  2020              and [bx+si],ah
0000A769  2020              and [bx+si],ah
0000A76B  2800              sub [bx+si],al
0000A76D  3EAD              ds lodsw
0000A76F  6325              arpl [di],sp
0000A771  2E252E00          cs and ax,0x2e
0000A775  00AE6325          add [bp+0x2563],ch
0000A779  2E0000            add [cs:bx+si],al
0000A77C  0000              add [bx+si],al
0000A77E  0000              add [bx+si],al
0000A780  E544              in ax,byte 0x44
0000A782  4F                dec di
0000A783  43                inc bx
0000A784  3032              xor [bp+si],dh
0000A786  3033              xor [bp+di],dh
0000A788  54                push sp
0000A789  4D                dec bp
0000A78A  50                push ax
0000A78B  2000              and [bx+si],al
0000A78D  0000              add [bx+si],al
0000A78F  0000              add [bx+si],al
0000A791  0000              add [bx+si],al
0000A793  0000              add [bx+si],al
0000A795  0004              add [si],al
0000A797  54                push sp
0000A798  8F                db 0x8f
0000A799  5C                pop sp
0000A79A  0000              add [bx+si],al
0000A79C  0000              add [bx+si],al
0000A79E  0000              add [bx+si],al
0000A7A0  0000              add [bx+si],al
0000A7A2  0000              add [bx+si],al
0000A7A4  0000              add [bx+si],al
0000A7A6  0000              add [bx+si],al
0000A7A8  0000              add [bx+si],al
0000A7AA  0000              add [bx+si],al
0000A7AC  0000              add [bx+si],al
0000A7AE  0000              add [bx+si],al
0000A7B0  0000              add [bx+si],al
0000A7B2  0000              add [bx+si],al
0000A7B4  0000              add [bx+si],al
0000A7B6  0000              add [bx+si],al
0000A7B8  0000              add [bx+si],al
0000A7BA  0000              add [bx+si],al
0000A7BC  0000              add [bx+si],al
0000A7BE  0000              add [bx+si],al
0000A7C0  0000              add [bx+si],al
0000A7C2  0000              add [bx+si],al
0000A7C4  0000              add [bx+si],al
0000A7C6  0000              add [bx+si],al
0000A7C8  0000              add [bx+si],al
0000A7CA  0000              add [bx+si],al
0000A7CC  0000              add [bx+si],al
0000A7CE  0000              add [bx+si],al
0000A7D0  0000              add [bx+si],al
0000A7D2  0000              add [bx+si],al
0000A7D4  0000              add [bx+si],al
0000A7D6  0000              add [bx+si],al
0000A7D8  0000              add [bx+si],al
0000A7DA  0000              add [bx+si],al
0000A7DC  0000              add [bx+si],al
0000A7DE  0000              add [bx+si],al
0000A7E0  0000              add [bx+si],al
0000A7E2  0000              add [bx+si],al
0000A7E4  0000              add [bx+si],al
0000A7E6  0000              add [bx+si],al
0000A7E8  0000              add [bx+si],al
0000A7EA  0000              add [bx+si],al
0000A7EC  0000              add [bx+si],al
0000A7EE  0000              add [bx+si],al
0000A7F0  0000              add [bx+si],al
0000A7F2  0000              add [bx+si],al
0000A7F4  0000              add [bx+si],al
0000A7F6  0000              add [bx+si],al
0000A7F8  0000              add [bx+si],al
0000A7FA  0000              add [bx+si],al
0000A7FC  0000              add [bx+si],al
0000A7FE  0000              add [bx+si],al
0000A800  0000              add [bx+si],al
0000A802  0000              add [bx+si],al
0000A804  0000              add [bx+si],al
0000A806  0000              add [bx+si],al
0000A808  0000              add [bx+si],al
0000A80A  0000              add [bx+si],al
0000A80C  0000              add [bx+si],al
0000A80E  0000              add [bx+si],al
0000A810  0000              add [bx+si],al
0000A812  0000              add [bx+si],al
0000A814  0000              add [bx+si],al
0000A816  0000              add [bx+si],al
0000A818  0000              add [bx+si],al
0000A81A  0000              add [bx+si],al
0000A81C  0000              add [bx+si],al
0000A81E  0000              add [bx+si],al
0000A820  0000              add [bx+si],al
0000A822  0000              add [bx+si],al
0000A824  0000              add [bx+si],al
0000A826  0000              add [bx+si],al
0000A828  0000              add [bx+si],al
0000A82A  0000              add [bx+si],al
0000A82C  0000              add [bx+si],al
0000A82E  0000              add [bx+si],al
0000A830  0000              add [bx+si],al
0000A832  0000              add [bx+si],al
0000A834  0000              add [bx+si],al
0000A836  0000              add [bx+si],al
0000A838  0000              add [bx+si],al
0000A83A  0000              add [bx+si],al
0000A83C  0000              add [bx+si],al
0000A83E  0000              add [bx+si],al
0000A840  0000              add [bx+si],al
0000A842  0000              add [bx+si],al
0000A844  0000              add [bx+si],al
0000A846  0000              add [bx+si],al
0000A848  0000              add [bx+si],al
0000A84A  0000              add [bx+si],al
0000A84C  0000              add [bx+si],al
0000A84E  0000              add [bx+si],al
0000A850  0000              add [bx+si],al
0000A852  0000              add [bx+si],al
0000A854  0000              add [bx+si],al
0000A856  0000              add [bx+si],al
0000A858  0000              add [bx+si],al
0000A85A  0000              add [bx+si],al
0000A85C  0000              add [bx+si],al
0000A85E  0000              add [bx+si],al
0000A860  0000              add [bx+si],al
0000A862  0000              add [bx+si],al
0000A864  0000              add [bx+si],al
0000A866  0000              add [bx+si],al
0000A868  0000              add [bx+si],al
0000A86A  0000              add [bx+si],al
0000A86C  0000              add [bx+si],al
0000A86E  0000              add [bx+si],al
0000A870  0000              add [bx+si],al
0000A872  0000              add [bx+si],al
0000A874  0000              add [bx+si],al
0000A876  0000              add [bx+si],al
0000A878  0000              add [bx+si],al
0000A87A  0000              add [bx+si],al
0000A87C  0000              add [bx+si],al
0000A87E  0000              add [bx+si],al
0000A880  0000              add [bx+si],al
0000A882  0000              add [bx+si],al
0000A884  0000              add [bx+si],al
0000A886  0000              add [bx+si],al
0000A888  0000              add [bx+si],al
0000A88A  0000              add [bx+si],al
0000A88C  0000              add [bx+si],al
0000A88E  0000              add [bx+si],al
0000A890  0000              add [bx+si],al
0000A892  0000              add [bx+si],al
0000A894  0000              add [bx+si],al
0000A896  0000              add [bx+si],al
0000A898  0000              add [bx+si],al
0000A89A  0000              add [bx+si],al
0000A89C  0000              add [bx+si],al
0000A89E  0000              add [bx+si],al
0000A8A0  0000              add [bx+si],al
0000A8A2  0000              add [bx+si],al
0000A8A4  0000              add [bx+si],al
0000A8A6  0000              add [bx+si],al
0000A8A8  0000              add [bx+si],al
0000A8AA  0000              add [bx+si],al
0000A8AC  0000              add [bx+si],al
0000A8AE  0000              add [bx+si],al
0000A8B0  0000              add [bx+si],al
0000A8B2  0000              add [bx+si],al
0000A8B4  0000              add [bx+si],al
0000A8B6  0000              add [bx+si],al
0000A8B8  0000              add [bx+si],al
0000A8BA  0000              add [bx+si],al
0000A8BC  0000              add [bx+si],al
0000A8BE  0000              add [bx+si],al
0000A8C0  0000              add [bx+si],al
0000A8C2  0000              add [bx+si],al
0000A8C4  0000              add [bx+si],al
0000A8C6  0000              add [bx+si],al
0000A8C8  0000              add [bx+si],al
0000A8CA  0000              add [bx+si],al
0000A8CC  0000              add [bx+si],al
0000A8CE  0000              add [bx+si],al
0000A8D0  0000              add [bx+si],al
0000A8D2  0000              add [bx+si],al
0000A8D4  0000              add [bx+si],al
0000A8D6  0000              add [bx+si],al
0000A8D8  0000              add [bx+si],al
0000A8DA  0000              add [bx+si],al
0000A8DC  0000              add [bx+si],al
0000A8DE  0000              add [bx+si],al
0000A8E0  0000              add [bx+si],al
0000A8E2  0000              add [bx+si],al
0000A8E4  0000              add [bx+si],al
0000A8E6  0000              add [bx+si],al
0000A8E8  0000              add [bx+si],al
0000A8EA  0000              add [bx+si],al
0000A8EC  0000              add [bx+si],al
0000A8EE  0000              add [bx+si],al
0000A8F0  0000              add [bx+si],al
0000A8F2  0000              add [bx+si],al
0000A8F4  0000              add [bx+si],al
0000A8F6  0000              add [bx+si],al
0000A8F8  0000              add [bx+si],al
0000A8FA  0000              add [bx+si],al
0000A8FC  0000              add [bx+si],al
0000A8FE  0000              add [bx+si],al
0000A900  0000              add [bx+si],al
0000A902  0000              add [bx+si],al
0000A904  0000              add [bx+si],al
0000A906  0000              add [bx+si],al
0000A908  0000              add [bx+si],al
0000A90A  0000              add [bx+si],al
0000A90C  0000              add [bx+si],al
0000A90E  0000              add [bx+si],al
0000A910  0000              add [bx+si],al
0000A912  0000              add [bx+si],al
0000A914  0000              add [bx+si],al
0000A916  0000              add [bx+si],al
0000A918  0000              add [bx+si],al
0000A91A  0000              add [bx+si],al
0000A91C  0000              add [bx+si],al
0000A91E  0000              add [bx+si],al
0000A920  0000              add [bx+si],al
0000A922  0000              add [bx+si],al
0000A924  0000              add [bx+si],al
0000A926  0000              add [bx+si],al
0000A928  0000              add [bx+si],al
0000A92A  0000              add [bx+si],al
0000A92C  0000              add [bx+si],al
0000A92E  0000              add [bx+si],al
0000A930  0000              add [bx+si],al
0000A932  0000              add [bx+si],al
0000A934  0000              add [bx+si],al
0000A936  0000              add [bx+si],al
0000A938  0000              add [bx+si],al
0000A93A  0000              add [bx+si],al
0000A93C  0000              add [bx+si],al
0000A93E  0000              add [bx+si],al
0000A940  0000              add [bx+si],al
0000A942  0000              add [bx+si],al
0000A944  0000              add [bx+si],al
0000A946  0000              add [bx+si],al
0000A948  0000              add [bx+si],al
0000A94A  0000              add [bx+si],al
0000A94C  0000              add [bx+si],al
0000A94E  0000              add [bx+si],al
0000A950  0000              add [bx+si],al
0000A952  0000              add [bx+si],al
0000A954  0000              add [bx+si],al
0000A956  0000              add [bx+si],al
0000A958  0000              add [bx+si],al
0000A95A  0000              add [bx+si],al
0000A95C  0000              add [bx+si],al
0000A95E  0000              add [bx+si],al
0000A960  0000              add [bx+si],al
0000A962  0000              add [bx+si],al
0000A964  0000              add [bx+si],al
0000A966  0000              add [bx+si],al
0000A968  0000              add [bx+si],al
0000A96A  0000              add [bx+si],al
0000A96C  0000              add [bx+si],al
0000A96E  0000              add [bx+si],al
0000A970  0000              add [bx+si],al
0000A972  0000              add [bx+si],al
0000A974  0000              add [bx+si],al
0000A976  0000              add [bx+si],al
0000A978  0000              add [bx+si],al
0000A97A  0000              add [bx+si],al
0000A97C  0000              add [bx+si],al
0000A97E  0000              add [bx+si],al
0000A980  0000              add [bx+si],al
0000A982  0000              add [bx+si],al
0000A984  0000              add [bx+si],al
0000A986  0000              add [bx+si],al
0000A988  0000              add [bx+si],al
0000A98A  0000              add [bx+si],al
0000A98C  0000              add [bx+si],al
0000A98E  0000              add [bx+si],al
0000A990  0000              add [bx+si],al
0000A992  0000              add [bx+si],al
0000A994  0000              add [bx+si],al
0000A996  0000              add [bx+si],al
0000A998  0000              add [bx+si],al
0000A99A  0000              add [bx+si],al
0000A99C  0000              add [bx+si],al
0000A99E  0000              add [bx+si],al
0000A9A0  0000              add [bx+si],al
0000A9A2  0000              add [bx+si],al
0000A9A4  0000              add [bx+si],al
0000A9A6  0000              add [bx+si],al
0000A9A8  0000              add [bx+si],al
0000A9AA  0000              add [bx+si],al
0000A9AC  0000              add [bx+si],al
0000A9AE  0000              add [bx+si],al
0000A9B0  0000              add [bx+si],al
0000A9B2  0000              add [bx+si],al
0000A9B4  0000              add [bx+si],al
0000A9B6  0000              add [bx+si],al
0000A9B8  0000              add [bx+si],al
0000A9BA  0000              add [bx+si],al
0000A9BC  0000              add [bx+si],al
0000A9BE  0000              add [bx+si],al
0000A9C0  0000              add [bx+si],al
0000A9C2  0000              add [bx+si],al
0000A9C4  0000              add [bx+si],al
0000A9C6  0000              add [bx+si],al
0000A9C8  0000              add [bx+si],al
0000A9CA  0000              add [bx+si],al
0000A9CC  0000              add [bx+si],al
0000A9CE  0000              add [bx+si],al
0000A9D0  0000              add [bx+si],al
0000A9D2  0000              add [bx+si],al
0000A9D4  0000              add [bx+si],al
0000A9D6  0000              add [bx+si],al
0000A9D8  0000              add [bx+si],al
0000A9DA  0000              add [bx+si],al
0000A9DC  0000              add [bx+si],al
0000A9DE  0000              add [bx+si],al
0000A9E0  0000              add [bx+si],al
0000A9E2  0000              add [bx+si],al
0000A9E4  0000              add [bx+si],al
0000A9E6  0000              add [bx+si],al
0000A9E8  0000              add [bx+si],al
0000A9EA  0000              add [bx+si],al
0000A9EC  0000              add [bx+si],al
0000A9EE  0000              add [bx+si],al
0000A9F0  0000              add [bx+si],al
0000A9F2  0000              add [bx+si],al
0000A9F4  0000              add [bx+si],al
0000A9F6  0000              add [bx+si],al
0000A9F8  0000              add [bx+si],al
0000A9FA  0000              add [bx+si],al
0000A9FC  0000              add [bx+si],al
0000A9FE  0000              add [bx+si],al
0000AA00  0000              add [bx+si],al
0000AA02  0000              add [bx+si],al
0000AA04  0000              add [bx+si],al
0000AA06  0000              add [bx+si],al
0000AA08  0000              add [bx+si],al
0000AA0A  0000              add [bx+si],al
0000AA0C  0000              add [bx+si],al
0000AA0E  0000              add [bx+si],al
0000AA10  0000              add [bx+si],al
0000AA12  0000              add [bx+si],al
0000AA14  0000              add [bx+si],al
0000AA16  0000              add [bx+si],al
0000AA18  0000              add [bx+si],al
0000AA1A  0000              add [bx+si],al
0000AA1C  0000              add [bx+si],al
0000AA1E  0000              add [bx+si],al
0000AA20  0000              add [bx+si],al
0000AA22  0000              add [bx+si],al
0000AA24  0000              add [bx+si],al
0000AA26  0000              add [bx+si],al
0000AA28  0000              add [bx+si],al
0000AA2A  0000              add [bx+si],al
0000AA2C  0000              add [bx+si],al
0000AA2E  0000              add [bx+si],al
0000AA30  0000              add [bx+si],al
0000AA32  0000              add [bx+si],al
0000AA34  0000              add [bx+si],al
0000AA36  0000              add [bx+si],al
0000AA38  0000              add [bx+si],al
0000AA3A  0000              add [bx+si],al
0000AA3C  0000              add [bx+si],al
0000AA3E  0000              add [bx+si],al
0000AA40  0000              add [bx+si],al
0000AA42  0000              add [bx+si],al
0000AA44  0000              add [bx+si],al
0000AA46  0000              add [bx+si],al
0000AA48  0000              add [bx+si],al
0000AA4A  0000              add [bx+si],al
0000AA4C  0000              add [bx+si],al
0000AA4E  0000              add [bx+si],al
0000AA50  0000              add [bx+si],al
0000AA52  0000              add [bx+si],al
0000AA54  0000              add [bx+si],al
0000AA56  0000              add [bx+si],al
0000AA58  0000              add [bx+si],al
0000AA5A  0000              add [bx+si],al
0000AA5C  0000              add [bx+si],al
0000AA5E  0000              add [bx+si],al
0000AA60  0000              add [bx+si],al
0000AA62  0000              add [bx+si],al
0000AA64  0000              add [bx+si],al
0000AA66  0000              add [bx+si],al
0000AA68  0000              add [bx+si],al
0000AA6A  0000              add [bx+si],al
0000AA6C  0000              add [bx+si],al
0000AA6E  0000              add [bx+si],al
0000AA70  0000              add [bx+si],al
0000AA72  0000              add [bx+si],al
0000AA74  0000              add [bx+si],al
0000AA76  0000              add [bx+si],al
0000AA78  0000              add [bx+si],al
0000AA7A  0000              add [bx+si],al
0000AA7C  0000              add [bx+si],al
0000AA7E  0000              add [bx+si],al
0000AA80  0000              add [bx+si],al
0000AA82  0000              add [bx+si],al
0000AA84  0000              add [bx+si],al
0000AA86  0000              add [bx+si],al
0000AA88  0000              add [bx+si],al
0000AA8A  0000              add [bx+si],al
0000AA8C  0000              add [bx+si],al
0000AA8E  0000              add [bx+si],al
0000AA90  0000              add [bx+si],al
0000AA92  0000              add [bx+si],al
0000AA94  0000              add [bx+si],al
0000AA96  0000              add [bx+si],al
0000AA98  0000              add [bx+si],al
0000AA9A  0000              add [bx+si],al
0000AA9C  0000              add [bx+si],al
0000AA9E  0000              add [bx+si],al
0000AAA0  0000              add [bx+si],al
0000AAA2  0000              add [bx+si],al
0000AAA4  0000              add [bx+si],al
0000AAA6  0000              add [bx+si],al
0000AAA8  0000              add [bx+si],al
0000AAAA  0000              add [bx+si],al
0000AAAC  0000              add [bx+si],al
0000AAAE  0000              add [bx+si],al
0000AAB0  0000              add [bx+si],al
0000AAB2  0000              add [bx+si],al
0000AAB4  0000              add [bx+si],al
0000AAB6  0000              add [bx+si],al
0000AAB8  0000              add [bx+si],al
0000AABA  0000              add [bx+si],al
0000AABC  0000              add [bx+si],al
0000AABE  0000              add [bx+si],al
0000AAC0  0000              add [bx+si],al
0000AAC2  0000              add [bx+si],al
0000AAC4  0000              add [bx+si],al
0000AAC6  0000              add [bx+si],al
0000AAC8  0000              add [bx+si],al
0000AACA  0000              add [bx+si],al
0000AACC  0000              add [bx+si],al
0000AACE  0000              add [bx+si],al
0000AAD0  0000              add [bx+si],al
0000AAD2  0000              add [bx+si],al
0000AAD4  0000              add [bx+si],al
0000AAD6  0000              add [bx+si],al
0000AAD8  0000              add [bx+si],al
0000AADA  0000              add [bx+si],al
0000AADC  0000              add [bx+si],al
0000AADE  0000              add [bx+si],al
0000AAE0  0000              add [bx+si],al
0000AAE2  0000              add [bx+si],al
0000AAE4  0000              add [bx+si],al
0000AAE6  0000              add [bx+si],al
0000AAE8  0000              add [bx+si],al
0000AAEA  0000              add [bx+si],al
0000AAEC  0000              add [bx+si],al
0000AAEE  0000              add [bx+si],al
0000AAF0  0000              add [bx+si],al
0000AAF2  0000              add [bx+si],al
0000AAF4  0000              add [bx+si],al
0000AAF6  0000              add [bx+si],al
0000AAF8  0000              add [bx+si],al
0000AAFA  0000              add [bx+si],al
0000AAFC  0000              add [bx+si],al
0000AAFE  0000              add [bx+si],al
0000AB00  0000              add [bx+si],al
0000AB02  0000              add [bx+si],al
0000AB04  0000              add [bx+si],al
0000AB06  0000              add [bx+si],al
0000AB08  0000              add [bx+si],al
0000AB0A  0000              add [bx+si],al
0000AB0C  0000              add [bx+si],al
0000AB0E  0000              add [bx+si],al
0000AB10  0000              add [bx+si],al
0000AB12  0000              add [bx+si],al
0000AB14  0000              add [bx+si],al
0000AB16  0000              add [bx+si],al
0000AB18  0000              add [bx+si],al
0000AB1A  0000              add [bx+si],al
0000AB1C  0000              add [bx+si],al
0000AB1E  0000              add [bx+si],al
0000AB20  0000              add [bx+si],al
0000AB22  0000              add [bx+si],al
0000AB24  0000              add [bx+si],al
0000AB26  0000              add [bx+si],al
0000AB28  0000              add [bx+si],al
0000AB2A  0000              add [bx+si],al
0000AB2C  0000              add [bx+si],al
0000AB2E  0000              add [bx+si],al
0000AB30  0000              add [bx+si],al
0000AB32  0000              add [bx+si],al
0000AB34  0000              add [bx+si],al
0000AB36  0000              add [bx+si],al
0000AB38  0000              add [bx+si],al
0000AB3A  0000              add [bx+si],al
0000AB3C  0000              add [bx+si],al
0000AB3E  0000              add [bx+si],al
0000AB40  0000              add [bx+si],al
0000AB42  0000              add [bx+si],al
0000AB44  0000              add [bx+si],al
0000AB46  0000              add [bx+si],al
0000AB48  0000              add [bx+si],al
0000AB4A  0000              add [bx+si],al
0000AB4C  0000              add [bx+si],al
0000AB4E  0000              add [bx+si],al
0000AB50  0000              add [bx+si],al
0000AB52  0000              add [bx+si],al
0000AB54  0000              add [bx+si],al
0000AB56  0000              add [bx+si],al
0000AB58  0000              add [bx+si],al
0000AB5A  0000              add [bx+si],al
0000AB5C  0000              add [bx+si],al
0000AB5E  0000              add [bx+si],al
0000AB60  0000              add [bx+si],al
0000AB62  0000              add [bx+si],al
0000AB64  0000              add [bx+si],al
0000AB66  0000              add [bx+si],al
0000AB68  0000              add [bx+si],al
0000AB6A  0000              add [bx+si],al
0000AB6C  0000              add [bx+si],al
0000AB6E  0000              add [bx+si],al
0000AB70  0000              add [bx+si],al
0000AB72  0000              add [bx+si],al
0000AB74  0000              add [bx+si],al
0000AB76  0000              add [bx+si],al
0000AB78  0000              add [bx+si],al
0000AB7A  0000              add [bx+si],al
0000AB7C  0000              add [bx+si],al
0000AB7E  0000              add [bx+si],al
0000AB80  0000              add [bx+si],al
0000AB82  0000              add [bx+si],al
0000AB84  0000              add [bx+si],al
0000AB86  0000              add [bx+si],al
0000AB88  0000              add [bx+si],al
0000AB8A  0000              add [bx+si],al
0000AB8C  0000              add [bx+si],al
0000AB8E  0000              add [bx+si],al
0000AB90  0000              add [bx+si],al
0000AB92  0000              add [bx+si],al
0000AB94  0000              add [bx+si],al
0000AB96  0000              add [bx+si],al
0000AB98  0000              add [bx+si],al
0000AB9A  0000              add [bx+si],al
0000AB9C  0000              add [bx+si],al
0000AB9E  0000              add [bx+si],al
0000ABA0  0000              add [bx+si],al
0000ABA2  0000              add [bx+si],al
0000ABA4  0000              add [bx+si],al
0000ABA6  0000              add [bx+si],al
0000ABA8  0000              add [bx+si],al
0000ABAA  0000              add [bx+si],al
0000ABAC  0000              add [bx+si],al
0000ABAE  0000              add [bx+si],al
0000ABB0  0000              add [bx+si],al
0000ABB2  0000              add [bx+si],al
0000ABB4  0000              add [bx+si],al
0000ABB6  0000              add [bx+si],al
0000ABB8  0000              add [bx+si],al
0000ABBA  0000              add [bx+si],al
0000ABBC  0000              add [bx+si],al
0000ABBE  0000              add [bx+si],al
0000ABC0  0000              add [bx+si],al
0000ABC2  0000              add [bx+si],al
0000ABC4  0000              add [bx+si],al
0000ABC6  0000              add [bx+si],al
0000ABC8  0000              add [bx+si],al
0000ABCA  0000              add [bx+si],al
0000ABCC  0000              add [bx+si],al
0000ABCE  0000              add [bx+si],al
0000ABD0  0000              add [bx+si],al
0000ABD2  0000              add [bx+si],al
0000ABD4  0000              add [bx+si],al
0000ABD6  0000              add [bx+si],al
0000ABD8  0000              add [bx+si],al
0000ABDA  0000              add [bx+si],al
0000ABDC  0000              add [bx+si],al
0000ABDE  0000              add [bx+si],al
0000ABE0  0000              add [bx+si],al
0000ABE2  0000              add [bx+si],al
0000ABE4  0000              add [bx+si],al
0000ABE6  0000              add [bx+si],al
0000ABE8  0000              add [bx+si],al
0000ABEA  0000              add [bx+si],al
0000ABEC  0000              add [bx+si],al
0000ABEE  0000              add [bx+si],al
0000ABF0  0000              add [bx+si],al
0000ABF2  0000              add [bx+si],al
0000ABF4  0000              add [bx+si],al
0000ABF6  0000              add [bx+si],al
0000ABF8  0000              add [bx+si],al
0000ABFA  0000              add [bx+si],al
0000ABFC  0000              add [bx+si],al
0000ABFE  0000              add [bx+si],al
0000AC00  0000              add [bx+si],al
0000AC02  0000              add [bx+si],al
0000AC04  0000              add [bx+si],al
0000AC06  0000              add [bx+si],al
0000AC08  0000              add [bx+si],al
0000AC0A  0000              add [bx+si],al
0000AC0C  0000              add [bx+si],al
0000AC0E  0000              add [bx+si],al
0000AC10  0000              add [bx+si],al
0000AC12  0000              add [bx+si],al
0000AC14  0000              add [bx+si],al
0000AC16  0000              add [bx+si],al
0000AC18  0000              add [bx+si],al
0000AC1A  0000              add [bx+si],al
0000AC1C  0000              add [bx+si],al
0000AC1E  0000              add [bx+si],al
0000AC20  0000              add [bx+si],al
0000AC22  0000              add [bx+si],al
0000AC24  0000              add [bx+si],al
0000AC26  0000              add [bx+si],al
0000AC28  0000              add [bx+si],al
0000AC2A  0000              add [bx+si],al
0000AC2C  0000              add [bx+si],al
0000AC2E  0000              add [bx+si],al
0000AC30  0000              add [bx+si],al
0000AC32  0000              add [bx+si],al
0000AC34  0000              add [bx+si],al
0000AC36  0000              add [bx+si],al
0000AC38  0000              add [bx+si],al
0000AC3A  0000              add [bx+si],al
0000AC3C  0000              add [bx+si],al
0000AC3E  0000              add [bx+si],al
0000AC40  0000              add [bx+si],al
0000AC42  0000              add [bx+si],al
0000AC44  0000              add [bx+si],al
0000AC46  0000              add [bx+si],al
0000AC48  0000              add [bx+si],al
0000AC4A  0000              add [bx+si],al
0000AC4C  0000              add [bx+si],al
0000AC4E  0000              add [bx+si],al
0000AC50  0000              add [bx+si],al
0000AC52  0000              add [bx+si],al
0000AC54  0000              add [bx+si],al
0000AC56  0000              add [bx+si],al
0000AC58  0000              add [bx+si],al
0000AC5A  0000              add [bx+si],al
0000AC5C  0000              add [bx+si],al
0000AC5E  0000              add [bx+si],al
0000AC60  0000              add [bx+si],al
0000AC62  0000              add [bx+si],al
0000AC64  0000              add [bx+si],al
0000AC66  0000              add [bx+si],al
0000AC68  0000              add [bx+si],al
0000AC6A  0000              add [bx+si],al
0000AC6C  0000              add [bx+si],al
0000AC6E  0000              add [bx+si],al
0000AC70  0000              add [bx+si],al
0000AC72  0000              add [bx+si],al
0000AC74  0000              add [bx+si],al
0000AC76  0000              add [bx+si],al
0000AC78  0000              add [bx+si],al
0000AC7A  0000              add [bx+si],al
0000AC7C  0000              add [bx+si],al
0000AC7E  0000              add [bx+si],al
0000AC80  0000              add [bx+si],al
0000AC82  0000              add [bx+si],al
0000AC84  0000              add [bx+si],al
0000AC86  0000              add [bx+si],al
0000AC88  0000              add [bx+si],al
0000AC8A  0000              add [bx+si],al
0000AC8C  0000              add [bx+si],al
0000AC8E  0000              add [bx+si],al
0000AC90  0000              add [bx+si],al
0000AC92  0000              add [bx+si],al
0000AC94  0000              add [bx+si],al
0000AC96  0000              add [bx+si],al
0000AC98  0000              add [bx+si],al
0000AC9A  0000              add [bx+si],al
0000AC9C  0000              add [bx+si],al
0000AC9E  0000              add [bx+si],al
0000ACA0  0000              add [bx+si],al
0000ACA2  0000              add [bx+si],al
0000ACA4  0000              add [bx+si],al
0000ACA6  0000              add [bx+si],al
0000ACA8  0000              add [bx+si],al
0000ACAA  0000              add [bx+si],al
0000ACAC  0000              add [bx+si],al
0000ACAE  0000              add [bx+si],al
0000ACB0  0000              add [bx+si],al
0000ACB2  0000              add [bx+si],al
0000ACB4  0000              add [bx+si],al
0000ACB6  0000              add [bx+si],al
0000ACB8  0000              add [bx+si],al
0000ACBA  0000              add [bx+si],al
0000ACBC  0000              add [bx+si],al
0000ACBE  0000              add [bx+si],al
0000ACC0  0000              add [bx+si],al
0000ACC2  0000              add [bx+si],al
0000ACC4  0000              add [bx+si],al
0000ACC6  0000              add [bx+si],al
0000ACC8  0000              add [bx+si],al
0000ACCA  0000              add [bx+si],al
0000ACCC  0000              add [bx+si],al
0000ACCE  0000              add [bx+si],al
0000ACD0  0000              add [bx+si],al
0000ACD2  0000              add [bx+si],al
0000ACD4  0000              add [bx+si],al
0000ACD6  0000              add [bx+si],al
0000ACD8  0000              add [bx+si],al
0000ACDA  0000              add [bx+si],al
0000ACDC  0000              add [bx+si],al
0000ACDE  0000              add [bx+si],al
0000ACE0  0000              add [bx+si],al
0000ACE2  0000              add [bx+si],al
0000ACE4  0000              add [bx+si],al
0000ACE6  0000              add [bx+si],al
0000ACE8  0000              add [bx+si],al
0000ACEA  0000              add [bx+si],al
0000ACEC  0000              add [bx+si],al
0000ACEE  0000              add [bx+si],al
0000ACF0  0000              add [bx+si],al
0000ACF2  0000              add [bx+si],al
0000ACF4  0000              add [bx+si],al
0000ACF6  0000              add [bx+si],al
0000ACF8  0000              add [bx+si],al
0000ACFA  0000              add [bx+si],al
0000ACFC  0000              add [bx+si],al
0000ACFE  0000              add [bx+si],al
0000AD00  0000              add [bx+si],al
0000AD02  0000              add [bx+si],al
0000AD04  0000              add [bx+si],al
0000AD06  0000              add [bx+si],al
0000AD08  0000              add [bx+si],al
0000AD0A  0000              add [bx+si],al
0000AD0C  0000              add [bx+si],al
0000AD0E  0000              add [bx+si],al
0000AD10  0000              add [bx+si],al
0000AD12  0000              add [bx+si],al
0000AD14  0000              add [bx+si],al
0000AD16  0000              add [bx+si],al
0000AD18  0000              add [bx+si],al
0000AD1A  0000              add [bx+si],al
0000AD1C  0000              add [bx+si],al
0000AD1E  0000              add [bx+si],al
0000AD20  0000              add [bx+si],al
0000AD22  0000              add [bx+si],al
0000AD24  0000              add [bx+si],al
0000AD26  0000              add [bx+si],al
0000AD28  0000              add [bx+si],al
0000AD2A  0000              add [bx+si],al
0000AD2C  0000              add [bx+si],al
0000AD2E  0000              add [bx+si],al
0000AD30  0000              add [bx+si],al
0000AD32  0000              add [bx+si],al
0000AD34  0000              add [bx+si],al
0000AD36  0000              add [bx+si],al
0000AD38  0000              add [bx+si],al
0000AD3A  0000              add [bx+si],al
0000AD3C  0000              add [bx+si],al
0000AD3E  0000              add [bx+si],al
0000AD40  0000              add [bx+si],al
0000AD42  0000              add [bx+si],al
0000AD44  0000              add [bx+si],al
0000AD46  0000              add [bx+si],al
0000AD48  0000              add [bx+si],al
0000AD4A  0000              add [bx+si],al
0000AD4C  0000              add [bx+si],al
0000AD4E  0000              add [bx+si],al
0000AD50  0000              add [bx+si],al
0000AD52  0000              add [bx+si],al
0000AD54  0000              add [bx+si],al
0000AD56  0000              add [bx+si],al
0000AD58  0000              add [bx+si],al
0000AD5A  0000              add [bx+si],al
0000AD5C  0000              add [bx+si],al
0000AD5E  0000              add [bx+si],al
0000AD60  0000              add [bx+si],al
0000AD62  0000              add [bx+si],al
0000AD64  0000              add [bx+si],al
0000AD66  0000              add [bx+si],al
0000AD68  0000              add [bx+si],al
0000AD6A  0000              add [bx+si],al
0000AD6C  0000              add [bx+si],al
0000AD6E  0000              add [bx+si],al
0000AD70  0000              add [bx+si],al
0000AD72  0000              add [bx+si],al
0000AD74  0000              add [bx+si],al
0000AD76  0000              add [bx+si],al
0000AD78  0000              add [bx+si],al
0000AD7A  0000              add [bx+si],al
0000AD7C  0000              add [bx+si],al
0000AD7E  0000              add [bx+si],al
0000AD80  0000              add [bx+si],al
0000AD82  0000              add [bx+si],al
0000AD84  0000              add [bx+si],al
0000AD86  0000              add [bx+si],al
0000AD88  0000              add [bx+si],al
0000AD8A  0000              add [bx+si],al
0000AD8C  0000              add [bx+si],al
0000AD8E  0000              add [bx+si],al
0000AD90  0000              add [bx+si],al
0000AD92  0000              add [bx+si],al
0000AD94  0000              add [bx+si],al
0000AD96  0000              add [bx+si],al
0000AD98  0000              add [bx+si],al
0000AD9A  0000              add [bx+si],al
0000AD9C  0000              add [bx+si],al
0000AD9E  0000              add [bx+si],al
0000ADA0  0000              add [bx+si],al
0000ADA2  0000              add [bx+si],al
0000ADA4  0000              add [bx+si],al
0000ADA6  0000              add [bx+si],al
0000ADA8  0000              add [bx+si],al
0000ADAA  0000              add [bx+si],al
0000ADAC  0000              add [bx+si],al
0000ADAE  0000              add [bx+si],al
0000ADB0  0000              add [bx+si],al
0000ADB2  0000              add [bx+si],al
0000ADB4  0000              add [bx+si],al
0000ADB6  0000              add [bx+si],al
0000ADB8  0000              add [bx+si],al
0000ADBA  0000              add [bx+si],al
0000ADBC  0000              add [bx+si],al
0000ADBE  0000              add [bx+si],al
0000ADC0  0000              add [bx+si],al
0000ADC2  0000              add [bx+si],al
0000ADC4  0000              add [bx+si],al
0000ADC6  0000              add [bx+si],al
0000ADC8  0000              add [bx+si],al
0000ADCA  0000              add [bx+si],al
0000ADCC  0000              add [bx+si],al
0000ADCE  0000              add [bx+si],al
0000ADD0  0000              add [bx+si],al
0000ADD2  0000              add [bx+si],al
0000ADD4  0000              add [bx+si],al
0000ADD6  0000              add [bx+si],al
0000ADD8  0000              add [bx+si],al
0000ADDA  0000              add [bx+si],al
0000ADDC  0000              add [bx+si],al
0000ADDE  0000              add [bx+si],al
0000ADE0  0000              add [bx+si],al
0000ADE2  0000              add [bx+si],al
0000ADE4  0000              add [bx+si],al
0000ADE6  0000              add [bx+si],al
0000ADE8  0000              add [bx+si],al
0000ADEA  0000              add [bx+si],al
0000ADEC  0000              add [bx+si],al
0000ADEE  0000              add [bx+si],al
0000ADF0  0000              add [bx+si],al
0000ADF2  0000              add [bx+si],al
0000ADF4  0000              add [bx+si],al
0000ADF6  0000              add [bx+si],al
0000ADF8  0000              add [bx+si],al
0000ADFA  0000              add [bx+si],al
0000ADFC  0000              add [bx+si],al
0000ADFE  0000              add [bx+si],al
0000AE00  0000              add [bx+si],al
0000AE02  0000              add [bx+si],al
0000AE04  0000              add [bx+si],al
0000AE06  0000              add [bx+si],al
0000AE08  0000              add [bx+si],al
0000AE0A  0000              add [bx+si],al
0000AE0C  0000              add [bx+si],al
0000AE0E  0000              add [bx+si],al
0000AE10  0000              add [bx+si],al
0000AE12  0000              add [bx+si],al
0000AE14  0000              add [bx+si],al
0000AE16  0000              add [bx+si],al
0000AE18  0000              add [bx+si],al
0000AE1A  0000              add [bx+si],al
0000AE1C  0000              add [bx+si],al
0000AE1E  0000              add [bx+si],al
0000AE20  0000              add [bx+si],al
0000AE22  0000              add [bx+si],al
0000AE24  0000              add [bx+si],al
0000AE26  0000              add [bx+si],al
0000AE28  0000              add [bx+si],al
0000AE2A  0000              add [bx+si],al
0000AE2C  0000              add [bx+si],al
0000AE2E  0000              add [bx+si],al
0000AE30  0000              add [bx+si],al
0000AE32  0000              add [bx+si],al
0000AE34  0000              add [bx+si],al
0000AE36  0000              add [bx+si],al
0000AE38  0000              add [bx+si],al
0000AE3A  0000              add [bx+si],al
0000AE3C  0000              add [bx+si],al
0000AE3E  0000              add [bx+si],al
0000AE40  0000              add [bx+si],al
0000AE42  0000              add [bx+si],al
0000AE44  0000              add [bx+si],al
0000AE46  0000              add [bx+si],al
0000AE48  0000              add [bx+si],al
0000AE4A  0000              add [bx+si],al
0000AE4C  0000              add [bx+si],al
0000AE4E  0000              add [bx+si],al
0000AE50  0000              add [bx+si],al
0000AE52  0000              add [bx+si],al
0000AE54  0000              add [bx+si],al
0000AE56  0000              add [bx+si],al
0000AE58  0000              add [bx+si],al
0000AE5A  0000              add [bx+si],al
0000AE5C  0000              add [bx+si],al
0000AE5E  0000              add [bx+si],al
0000AE60  0000              add [bx+si],al
0000AE62  0000              add [bx+si],al
0000AE64  0000              add [bx+si],al
0000AE66  0000              add [bx+si],al
0000AE68  0000              add [bx+si],al
0000AE6A  0000              add [bx+si],al
0000AE6C  0000              add [bx+si],al
0000AE6E  0000              add [bx+si],al
0000AE70  0000              add [bx+si],al
0000AE72  0000              add [bx+si],al
0000AE74  0000              add [bx+si],al
0000AE76  0000              add [bx+si],al
0000AE78  0000              add [bx+si],al
0000AE7A  0000              add [bx+si],al
0000AE7C  0000              add [bx+si],al
0000AE7E  0000              add [bx+si],al
0000AE80  0000              add [bx+si],al
0000AE82  0000              add [bx+si],al
0000AE84  0000              add [bx+si],al
0000AE86  0000              add [bx+si],al
0000AE88  0000              add [bx+si],al
0000AE8A  0000              add [bx+si],al
0000AE8C  0000              add [bx+si],al
0000AE8E  0000              add [bx+si],al
0000AE90  0000              add [bx+si],al
0000AE92  0000              add [bx+si],al
0000AE94  0000              add [bx+si],al
0000AE96  0000              add [bx+si],al
0000AE98  0000              add [bx+si],al
0000AE9A  0000              add [bx+si],al
0000AE9C  0000              add [bx+si],al
0000AE9E  0000              add [bx+si],al
0000AEA0  0000              add [bx+si],al
0000AEA2  0000              add [bx+si],al
0000AEA4  0000              add [bx+si],al
0000AEA6  0000              add [bx+si],al
0000AEA8  0000              add [bx+si],al
0000AEAA  0000              add [bx+si],al
0000AEAC  0000              add [bx+si],al
0000AEAE  0000              add [bx+si],al
0000AEB0  0000              add [bx+si],al
0000AEB2  0000              add [bx+si],al
0000AEB4  0000              add [bx+si],al
0000AEB6  0000              add [bx+si],al
0000AEB8  0000              add [bx+si],al
0000AEBA  0000              add [bx+si],al
0000AEBC  0000              add [bx+si],al
0000AEBE  0000              add [bx+si],al
0000AEC0  0000              add [bx+si],al
0000AEC2  0000              add [bx+si],al
0000AEC4  0000              add [bx+si],al
0000AEC6  0000              add [bx+si],al
0000AEC8  0000              add [bx+si],al
0000AECA  0000              add [bx+si],al
0000AECC  0000              add [bx+si],al
0000AECE  0000              add [bx+si],al
0000AED0  0000              add [bx+si],al
0000AED2  0000              add [bx+si],al
0000AED4  0000              add [bx+si],al
0000AED6  0000              add [bx+si],al
0000AED8  0000              add [bx+si],al
0000AEDA  0000              add [bx+si],al
0000AEDC  0000              add [bx+si],al
0000AEDE  0000              add [bx+si],al
0000AEE0  0000              add [bx+si],al
0000AEE2  0000              add [bx+si],al
0000AEE4  0000              add [bx+si],al
0000AEE6  0000              add [bx+si],al
0000AEE8  0000              add [bx+si],al
0000AEEA  0000              add [bx+si],al
0000AEEC  0000              add [bx+si],al
0000AEEE  0000              add [bx+si],al
0000AEF0  0000              add [bx+si],al
0000AEF2  0000              add [bx+si],al
0000AEF4  0000              add [bx+si],al
0000AEF6  0000              add [bx+si],al
0000AEF8  0000              add [bx+si],al
0000AEFA  0000              add [bx+si],al
0000AEFC  0000              add [bx+si],al
0000AEFE  0000              add [bx+si],al
0000AF00  0000              add [bx+si],al
0000AF02  0000              add [bx+si],al
0000AF04  0000              add [bx+si],al
0000AF06  0000              add [bx+si],al
0000AF08  0000              add [bx+si],al
0000AF0A  0000              add [bx+si],al
0000AF0C  0000              add [bx+si],al
0000AF0E  0000              add [bx+si],al
0000AF10  0000              add [bx+si],al
0000AF12  0000              add [bx+si],al
0000AF14  0000              add [bx+si],al
0000AF16  0000              add [bx+si],al
0000AF18  0000              add [bx+si],al
0000AF1A  0000              add [bx+si],al
0000AF1C  0000              add [bx+si],al
0000AF1E  0000              add [bx+si],al
0000AF20  0000              add [bx+si],al
0000AF22  0000              add [bx+si],al
0000AF24  0000              add [bx+si],al
0000AF26  0000              add [bx+si],al
0000AF28  0000              add [bx+si],al
0000AF2A  0000              add [bx+si],al
0000AF2C  0000              add [bx+si],al
0000AF2E  0000              add [bx+si],al
0000AF30  0000              add [bx+si],al
0000AF32  0000              add [bx+si],al
0000AF34  0000              add [bx+si],al
0000AF36  0000              add [bx+si],al
0000AF38  0000              add [bx+si],al
0000AF3A  0000              add [bx+si],al
0000AF3C  0000              add [bx+si],al
0000AF3E  0000              add [bx+si],al
0000AF40  0000              add [bx+si],al
0000AF42  0000              add [bx+si],al
0000AF44  0000              add [bx+si],al
0000AF46  0000              add [bx+si],al
0000AF48  0000              add [bx+si],al
0000AF4A  0000              add [bx+si],al
0000AF4C  0000              add [bx+si],al
0000AF4E  0000              add [bx+si],al
0000AF50  0000              add [bx+si],al
0000AF52  0000              add [bx+si],al
0000AF54  0000              add [bx+si],al
0000AF56  0000              add [bx+si],al
0000AF58  0000              add [bx+si],al
0000AF5A  0000              add [bx+si],al
0000AF5C  0000              add [bx+si],al
0000AF5E  0000              add [bx+si],al
0000AF60  0000              add [bx+si],al
0000AF62  0000              add [bx+si],al
0000AF64  0000              add [bx+si],al
0000AF66  0000              add [bx+si],al
0000AF68  0000              add [bx+si],al
0000AF6A  0000              add [bx+si],al
0000AF6C  0000              add [bx+si],al
0000AF6E  0000              add [bx+si],al
0000AF70  0000              add [bx+si],al
0000AF72  0000              add [bx+si],al
0000AF74  0000              add [bx+si],al
0000AF76  0000              add [bx+si],al
0000AF78  0000              add [bx+si],al
0000AF7A  0000              add [bx+si],al
0000AF7C  0000              add [bx+si],al
0000AF7E  0000              add [bx+si],al
0000AF80  0000              add [bx+si],al
0000AF82  0000              add [bx+si],al
0000AF84  0000              add [bx+si],al
0000AF86  0000              add [bx+si],al
0000AF88  0000              add [bx+si],al
0000AF8A  0000              add [bx+si],al
0000AF8C  0000              add [bx+si],al
0000AF8E  0000              add [bx+si],al
0000AF90  0000              add [bx+si],al
0000AF92  0000              add [bx+si],al
0000AF94  0000              add [bx+si],al
0000AF96  0000              add [bx+si],al
0000AF98  0000              add [bx+si],al
0000AF9A  0000              add [bx+si],al
0000AF9C  0000              add [bx+si],al
0000AF9E  0000              add [bx+si],al
0000AFA0  0000              add [bx+si],al
0000AFA2  0000              add [bx+si],al
0000AFA4  0000              add [bx+si],al
0000AFA6  0000              add [bx+si],al
0000AFA8  0000              add [bx+si],al
0000AFAA  0000              add [bx+si],al
0000AFAC  0000              add [bx+si],al
0000AFAE  0000              add [bx+si],al
0000AFB0  0000              add [bx+si],al
0000AFB2  0000              add [bx+si],al
0000AFB4  0000              add [bx+si],al
0000AFB6  0000              add [bx+si],al
0000AFB8  0000              add [bx+si],al
0000AFBA  0000              add [bx+si],al
0000AFBC  0000              add [bx+si],al
0000AFBE  0000              add [bx+si],al
0000AFC0  0000              add [bx+si],al
0000AFC2  0000              add [bx+si],al
0000AFC4  0000              add [bx+si],al
0000AFC6  0000              add [bx+si],al
0000AFC8  0000              add [bx+si],al
0000AFCA  0000              add [bx+si],al
0000AFCC  0000              add [bx+si],al
0000AFCE  0000              add [bx+si],al
0000AFD0  0000              add [bx+si],al
0000AFD2  0000              add [bx+si],al
0000AFD4  0000              add [bx+si],al
0000AFD6  0000              add [bx+si],al
0000AFD8  0000              add [bx+si],al
0000AFDA  0000              add [bx+si],al
0000AFDC  0000              add [bx+si],al
0000AFDE  0000              add [bx+si],al
0000AFE0  0000              add [bx+si],al
0000AFE2  0000              add [bx+si],al
0000AFE4  0000              add [bx+si],al
0000AFE6  0000              add [bx+si],al
0000AFE8  0000              add [bx+si],al
0000AFEA  0000              add [bx+si],al
0000AFEC  0000              add [bx+si],al
0000AFEE  0000              add [bx+si],al
0000AFF0  0000              add [bx+si],al
0000AFF2  0000              add [bx+si],al
0000AFF4  0000              add [bx+si],al
0000AFF6  0000              add [bx+si],al
0000AFF8  0000              add [bx+si],al
0000AFFA  0000              add [bx+si],al
0000AFFC  0000              add [bx+si],al
0000AFFE  0000              add [bx+si],al
0000B000  0000              add [bx+si],al
0000B002  0000              add [bx+si],al
0000B004  0000              add [bx+si],al
0000B006  0000              add [bx+si],al
0000B008  0000              add [bx+si],al
0000B00A  0000              add [bx+si],al
0000B00C  0000              add [bx+si],al
0000B00E  0000              add [bx+si],al
0000B010  0000              add [bx+si],al
0000B012  0000              add [bx+si],al
0000B014  0000              add [bx+si],al
0000B016  0000              add [bx+si],al
0000B018  0000              add [bx+si],al
0000B01A  0000              add [bx+si],al
0000B01C  0000              add [bx+si],al
0000B01E  0000              add [bx+si],al
0000B020  0000              add [bx+si],al
0000B022  0000              add [bx+si],al
0000B024  0000              add [bx+si],al
0000B026  0000              add [bx+si],al
0000B028  0000              add [bx+si],al
0000B02A  0000              add [bx+si],al
0000B02C  0000              add [bx+si],al
0000B02E  0000              add [bx+si],al
0000B030  0000              add [bx+si],al
0000B032  0000              add [bx+si],al
0000B034  0000              add [bx+si],al
0000B036  0000              add [bx+si],al
0000B038  0000              add [bx+si],al
0000B03A  0000              add [bx+si],al
0000B03C  0000              add [bx+si],al
0000B03E  0000              add [bx+si],al
0000B040  0000              add [bx+si],al
0000B042  0000              add [bx+si],al
0000B044  0000              add [bx+si],al
0000B046  0000              add [bx+si],al
0000B048  0000              add [bx+si],al
0000B04A  0000              add [bx+si],al
0000B04C  0000              add [bx+si],al
0000B04E  0000              add [bx+si],al
0000B050  0000              add [bx+si],al
0000B052  0000              add [bx+si],al
0000B054  0000              add [bx+si],al
0000B056  0000              add [bx+si],al
0000B058  0000              add [bx+si],al
0000B05A  0000              add [bx+si],al
0000B05C  0000              add [bx+si],al
0000B05E  0000              add [bx+si],al
0000B060  0000              add [bx+si],al
0000B062  0000              add [bx+si],al
0000B064  0000              add [bx+si],al
0000B066  0000              add [bx+si],al
0000B068  0000              add [bx+si],al
0000B06A  0000              add [bx+si],al
0000B06C  0000              add [bx+si],al
0000B06E  0000              add [bx+si],al
0000B070  0000              add [bx+si],al
0000B072  0000              add [bx+si],al
0000B074  0000              add [bx+si],al
0000B076  0000              add [bx+si],al
0000B078  0000              add [bx+si],al
0000B07A  0000              add [bx+si],al
0000B07C  0000              add [bx+si],al
0000B07E  0000              add [bx+si],al
0000B080  0000              add [bx+si],al
0000B082  0000              add [bx+si],al
0000B084  0000              add [bx+si],al
0000B086  0000              add [bx+si],al
0000B088  0000              add [bx+si],al
0000B08A  0000              add [bx+si],al
0000B08C  0000              add [bx+si],al
0000B08E  0000              add [bx+si],al
0000B090  0000              add [bx+si],al
0000B092  0000              add [bx+si],al
0000B094  0000              add [bx+si],al
0000B096  0000              add [bx+si],al
0000B098  0000              add [bx+si],al
0000B09A  0000              add [bx+si],al
0000B09C  0000              add [bx+si],al
0000B09E  0000              add [bx+si],al
0000B0A0  0000              add [bx+si],al
0000B0A2  0000              add [bx+si],al
0000B0A4  0000              add [bx+si],al
0000B0A6  0000              add [bx+si],al
0000B0A8  0000              add [bx+si],al
0000B0AA  0000              add [bx+si],al
0000B0AC  0000              add [bx+si],al
0000B0AE  0000              add [bx+si],al
0000B0B0  0000              add [bx+si],al
0000B0B2  0000              add [bx+si],al
0000B0B4  0000              add [bx+si],al
0000B0B6  0000              add [bx+si],al
0000B0B8  0000              add [bx+si],al
0000B0BA  0000              add [bx+si],al
0000B0BC  0000              add [bx+si],al
0000B0BE  0000              add [bx+si],al
0000B0C0  0000              add [bx+si],al
0000B0C2  0000              add [bx+si],al
0000B0C4  0000              add [bx+si],al
0000B0C6  0000              add [bx+si],al
0000B0C8  0000              add [bx+si],al
0000B0CA  0000              add [bx+si],al
0000B0CC  0000              add [bx+si],al
0000B0CE  0000              add [bx+si],al
0000B0D0  0000              add [bx+si],al
0000B0D2  0000              add [bx+si],al
0000B0D4  0000              add [bx+si],al
0000B0D6  0000              add [bx+si],al
0000B0D8  0000              add [bx+si],al
0000B0DA  0000              add [bx+si],al
0000B0DC  0000              add [bx+si],al
0000B0DE  0000              add [bx+si],al
0000B0E0  0000              add [bx+si],al
0000B0E2  0000              add [bx+si],al
0000B0E4  0000              add [bx+si],al
0000B0E6  0000              add [bx+si],al
0000B0E8  0000              add [bx+si],al
0000B0EA  0000              add [bx+si],al
0000B0EC  0000              add [bx+si],al
0000B0EE  0000              add [bx+si],al
0000B0F0  0000              add [bx+si],al
0000B0F2  0000              add [bx+si],al
0000B0F4  0000              add [bx+si],al
0000B0F6  0000              add [bx+si],al
0000B0F8  0000              add [bx+si],al
0000B0FA  0000              add [bx+si],al
0000B0FC  0000              add [bx+si],al
0000B0FE  0000              add [bx+si],al
0000B100  0000              add [bx+si],al
0000B102  0000              add [bx+si],al
0000B104  0000              add [bx+si],al
0000B106  0000              add [bx+si],al
0000B108  0000              add [bx+si],al
0000B10A  0000              add [bx+si],al
0000B10C  0000              add [bx+si],al
0000B10E  0000              add [bx+si],al
0000B110  0000              add [bx+si],al
0000B112  0000              add [bx+si],al
0000B114  0000              add [bx+si],al
0000B116  0000              add [bx+si],al
0000B118  0000              add [bx+si],al
0000B11A  0000              add [bx+si],al
0000B11C  0000              add [bx+si],al
0000B11E  0000              add [bx+si],al
0000B120  0000              add [bx+si],al
0000B122  0000              add [bx+si],al
0000B124  0000              add [bx+si],al
0000B126  0000              add [bx+si],al
0000B128  0000              add [bx+si],al
0000B12A  0000              add [bx+si],al
0000B12C  0000              add [bx+si],al
0000B12E  0000              add [bx+si],al
0000B130  0000              add [bx+si],al
0000B132  0000              add [bx+si],al
0000B134  0000              add [bx+si],al
0000B136  0000              add [bx+si],al
0000B138  0000              add [bx+si],al
0000B13A  0000              add [bx+si],al
0000B13C  0000              add [bx+si],al
0000B13E  0000              add [bx+si],al
0000B140  0000              add [bx+si],al
0000B142  0000              add [bx+si],al
0000B144  0000              add [bx+si],al
0000B146  0000              add [bx+si],al
0000B148  0000              add [bx+si],al
0000B14A  0000              add [bx+si],al
0000B14C  0000              add [bx+si],al
0000B14E  0000              add [bx+si],al
0000B150  0000              add [bx+si],al
0000B152  0000              add [bx+si],al
0000B154  0000              add [bx+si],al
0000B156  0000              add [bx+si],al
0000B158  0000              add [bx+si],al
0000B15A  0000              add [bx+si],al
0000B15C  0000              add [bx+si],al
0000B15E  0000              add [bx+si],al
0000B160  0000              add [bx+si],al
0000B162  0000              add [bx+si],al
0000B164  0000              add [bx+si],al
0000B166  0000              add [bx+si],al
0000B168  0000              add [bx+si],al
0000B16A  0000              add [bx+si],al
0000B16C  0000              add [bx+si],al
0000B16E  0000              add [bx+si],al
0000B170  0000              add [bx+si],al
0000B172  0000              add [bx+si],al
0000B174  0000              add [bx+si],al
0000B176  0000              add [bx+si],al
0000B178  0000              add [bx+si],al
0000B17A  0000              add [bx+si],al
0000B17C  0000              add [bx+si],al
0000B17E  0000              add [bx+si],al
0000B180  0000              add [bx+si],al
0000B182  0000              add [bx+si],al
0000B184  0000              add [bx+si],al
0000B186  0000              add [bx+si],al
0000B188  0000              add [bx+si],al
0000B18A  0000              add [bx+si],al
0000B18C  0000              add [bx+si],al
0000B18E  0000              add [bx+si],al
0000B190  0000              add [bx+si],al
0000B192  0000              add [bx+si],al
0000B194  0000              add [bx+si],al
0000B196  0000              add [bx+si],al
0000B198  0000              add [bx+si],al
0000B19A  0000              add [bx+si],al
0000B19C  0000              add [bx+si],al
0000B19E  0000              add [bx+si],al
0000B1A0  0000              add [bx+si],al
0000B1A2  0000              add [bx+si],al
0000B1A4  0000              add [bx+si],al
0000B1A6  0000              add [bx+si],al
0000B1A8  0000              add [bx+si],al
0000B1AA  0000              add [bx+si],al
0000B1AC  0000              add [bx+si],al
0000B1AE  0000              add [bx+si],al
0000B1B0  0000              add [bx+si],al
0000B1B2  0000              add [bx+si],al
0000B1B4  0000              add [bx+si],al
0000B1B6  0000              add [bx+si],al
0000B1B8  0000              add [bx+si],al
0000B1BA  0000              add [bx+si],al
0000B1BC  0000              add [bx+si],al
0000B1BE  0000              add [bx+si],al
0000B1C0  0000              add [bx+si],al
0000B1C2  0000              add [bx+si],al
0000B1C4  0000              add [bx+si],al
0000B1C6  0000              add [bx+si],al
0000B1C8  0000              add [bx+si],al
0000B1CA  0000              add [bx+si],al
0000B1CC  0000              add [bx+si],al
0000B1CE  0000              add [bx+si],al
0000B1D0  0000              add [bx+si],al
0000B1D2  0000              add [bx+si],al
0000B1D4  0000              add [bx+si],al
0000B1D6  0000              add [bx+si],al
0000B1D8  0000              add [bx+si],al
0000B1DA  0000              add [bx+si],al
0000B1DC  0000              add [bx+si],al
0000B1DE  0000              add [bx+si],al
0000B1E0  0000              add [bx+si],al
0000B1E2  0000              add [bx+si],al
0000B1E4  0000              add [bx+si],al
0000B1E6  0000              add [bx+si],al
0000B1E8  0000              add [bx+si],al
0000B1EA  0000              add [bx+si],al
0000B1EC  0000              add [bx+si],al
0000B1EE  0000              add [bx+si],al
0000B1F0  0000              add [bx+si],al
0000B1F2  0000              add [bx+si],al
0000B1F4  0000              add [bx+si],al
0000B1F6  0000              add [bx+si],al
0000B1F8  0000              add [bx+si],al
0000B1FA  0000              add [bx+si],al
0000B1FC  0000              add [bx+si],al
0000B1FE  0000              add [bx+si],al
0000B200  0000              add [bx+si],al
0000B202  0000              add [bx+si],al
0000B204  0000              add [bx+si],al
0000B206  0000              add [bx+si],al
0000B208  0000              add [bx+si],al
0000B20A  0000              add [bx+si],al
0000B20C  0000              add [bx+si],al
0000B20E  0000              add [bx+si],al
0000B210  0000              add [bx+si],al
0000B212  0000              add [bx+si],al
0000B214  0000              add [bx+si],al
0000B216  0000              add [bx+si],al
0000B218  0000              add [bx+si],al
0000B21A  0000              add [bx+si],al
0000B21C  0000              add [bx+si],al
0000B21E  0000              add [bx+si],al
0000B220  0000              add [bx+si],al
0000B222  0000              add [bx+si],al
0000B224  0000              add [bx+si],al
0000B226  0000              add [bx+si],al
0000B228  0000              add [bx+si],al
0000B22A  0000              add [bx+si],al
0000B22C  0000              add [bx+si],al
0000B22E  0000              add [bx+si],al
0000B230  0000              add [bx+si],al
0000B232  0000              add [bx+si],al
0000B234  0000              add [bx+si],al
0000B236  0000              add [bx+si],al
0000B238  0000              add [bx+si],al
0000B23A  0000              add [bx+si],al
0000B23C  0000              add [bx+si],al
0000B23E  0000              add [bx+si],al
0000B240  0000              add [bx+si],al
0000B242  0000              add [bx+si],al
0000B244  0000              add [bx+si],al
0000B246  0000              add [bx+si],al
0000B248  0000              add [bx+si],al
0000B24A  0000              add [bx+si],al
0000B24C  0000              add [bx+si],al
0000B24E  0000              add [bx+si],al
0000B250  0000              add [bx+si],al
0000B252  0000              add [bx+si],al
0000B254  0000              add [bx+si],al
0000B256  0000              add [bx+si],al
0000B258  0000              add [bx+si],al
0000B25A  0000              add [bx+si],al
0000B25C  0000              add [bx+si],al
0000B25E  0000              add [bx+si],al
0000B260  0000              add [bx+si],al
0000B262  0000              add [bx+si],al
0000B264  0000              add [bx+si],al
0000B266  0000              add [bx+si],al
0000B268  0000              add [bx+si],al
0000B26A  0000              add [bx+si],al
0000B26C  0000              add [bx+si],al
0000B26E  0000              add [bx+si],al
0000B270  0000              add [bx+si],al
0000B272  0000              add [bx+si],al
0000B274  0000              add [bx+si],al
0000B276  0000              add [bx+si],al
0000B278  0000              add [bx+si],al
0000B27A  0000              add [bx+si],al
0000B27C  0000              add [bx+si],al
0000B27E  0000              add [bx+si],al
0000B280  0000              add [bx+si],al
0000B282  0000              add [bx+si],al
0000B284  0000              add [bx+si],al
0000B286  0000              add [bx+si],al
0000B288  0000              add [bx+si],al
0000B28A  0000              add [bx+si],al
0000B28C  0000              add [bx+si],al
0000B28E  0000              add [bx+si],al
0000B290  0000              add [bx+si],al
0000B292  0000              add [bx+si],al
0000B294  0000              add [bx+si],al
0000B296  0000              add [bx+si],al
0000B298  0000              add [bx+si],al
0000B29A  0000              add [bx+si],al
0000B29C  0000              add [bx+si],al
0000B29E  0000              add [bx+si],al
0000B2A0  0000              add [bx+si],al
0000B2A2  0000              add [bx+si],al
0000B2A4  0000              add [bx+si],al
0000B2A6  0000              add [bx+si],al
0000B2A8  0000              add [bx+si],al
0000B2AA  0000              add [bx+si],al
0000B2AC  0000              add [bx+si],al
0000B2AE  0000              add [bx+si],al
0000B2B0  0000              add [bx+si],al
0000B2B2  0000              add [bx+si],al
0000B2B4  0000              add [bx+si],al
0000B2B6  0000              add [bx+si],al
0000B2B8  0000              add [bx+si],al
0000B2BA  0000              add [bx+si],al
0000B2BC  0000              add [bx+si],al
0000B2BE  0000              add [bx+si],al
0000B2C0  0000              add [bx+si],al
0000B2C2  0000              add [bx+si],al
0000B2C4  0000              add [bx+si],al
0000B2C6  0000              add [bx+si],al
0000B2C8  0000              add [bx+si],al
0000B2CA  0000              add [bx+si],al
0000B2CC  0000              add [bx+si],al
0000B2CE  0000              add [bx+si],al
0000B2D0  0000              add [bx+si],al
0000B2D2  0000              add [bx+si],al
0000B2D4  0000              add [bx+si],al
0000B2D6  0000              add [bx+si],al
0000B2D8  0000              add [bx+si],al
0000B2DA  0000              add [bx+si],al
0000B2DC  0000              add [bx+si],al
0000B2DE  0000              add [bx+si],al
0000B2E0  0000              add [bx+si],al
0000B2E2  0000              add [bx+si],al
0000B2E4  0000              add [bx+si],al
0000B2E6  0000              add [bx+si],al
0000B2E8  0000              add [bx+si],al
0000B2EA  0000              add [bx+si],al
0000B2EC  0000              add [bx+si],al
0000B2EE  0000              add [bx+si],al
0000B2F0  0000              add [bx+si],al
0000B2F2  0000              add [bx+si],al
0000B2F4  0000              add [bx+si],al
0000B2F6  0000              add [bx+si],al
0000B2F8  0000              add [bx+si],al
0000B2FA  0000              add [bx+si],al
0000B2FC  0000              add [bx+si],al
0000B2FE  0000              add [bx+si],al
0000B300  0000              add [bx+si],al
0000B302  0000              add [bx+si],al
0000B304  0000              add [bx+si],al
0000B306  0000              add [bx+si],al
0000B308  0000              add [bx+si],al
0000B30A  0000              add [bx+si],al
0000B30C  0000              add [bx+si],al
0000B30E  0000              add [bx+si],al
0000B310  0000              add [bx+si],al
0000B312  0000              add [bx+si],al
0000B314  0000              add [bx+si],al
0000B316  0000              add [bx+si],al
0000B318  0000              add [bx+si],al
0000B31A  0000              add [bx+si],al
0000B31C  0000              add [bx+si],al
0000B31E  0000              add [bx+si],al
0000B320  0000              add [bx+si],al
0000B322  0000              add [bx+si],al
0000B324  0000              add [bx+si],al
0000B326  0000              add [bx+si],al
0000B328  0000              add [bx+si],al
0000B32A  0000              add [bx+si],al
0000B32C  0000              add [bx+si],al
0000B32E  0000              add [bx+si],al
0000B330  0000              add [bx+si],al
0000B332  0000              add [bx+si],al
0000B334  0000              add [bx+si],al
0000B336  0000              add [bx+si],al
0000B338  0000              add [bx+si],al
0000B33A  0000              add [bx+si],al
0000B33C  0000              add [bx+si],al
0000B33E  0000              add [bx+si],al
0000B340  0000              add [bx+si],al
0000B342  0000              add [bx+si],al
0000B344  0000              add [bx+si],al
0000B346  0000              add [bx+si],al
0000B348  0000              add [bx+si],al
0000B34A  0000              add [bx+si],al
0000B34C  0000              add [bx+si],al
0000B34E  0000              add [bx+si],al
0000B350  0000              add [bx+si],al
0000B352  0000              add [bx+si],al
0000B354  0000              add [bx+si],al
0000B356  0000              add [bx+si],al
0000B358  0000              add [bx+si],al
0000B35A  0000              add [bx+si],al
0000B35C  0000              add [bx+si],al
0000B35E  0000              add [bx+si],al
0000B360  0000              add [bx+si],al
0000B362  0000              add [bx+si],al
0000B364  0000              add [bx+si],al
0000B366  0000              add [bx+si],al
0000B368  0000              add [bx+si],al
0000B36A  0000              add [bx+si],al
0000B36C  0000              add [bx+si],al
0000B36E  0000              add [bx+si],al
0000B370  0000              add [bx+si],al
0000B372  0000              add [bx+si],al
0000B374  0000              add [bx+si],al
0000B376  0000              add [bx+si],al
0000B378  0000              add [bx+si],al
0000B37A  0000              add [bx+si],al
0000B37C  0000              add [bx+si],al
0000B37E  0000              add [bx+si],al
0000B380  0000              add [bx+si],al
0000B382  0000              add [bx+si],al
0000B384  0000              add [bx+si],al
0000B386  0000              add [bx+si],al
0000B388  0000              add [bx+si],al
0000B38A  0000              add [bx+si],al
0000B38C  0000              add [bx+si],al
0000B38E  0000              add [bx+si],al
0000B390  0000              add [bx+si],al
0000B392  0000              add [bx+si],al
0000B394  0000              add [bx+si],al
0000B396  0000              add [bx+si],al
0000B398  0000              add [bx+si],al
0000B39A  0000              add [bx+si],al
0000B39C  0000              add [bx+si],al
0000B39E  0000              add [bx+si],al
0000B3A0  0000              add [bx+si],al
0000B3A2  0000              add [bx+si],al
0000B3A4  0000              add [bx+si],al
0000B3A6  0000              add [bx+si],al
0000B3A8  0000              add [bx+si],al
0000B3AA  0000              add [bx+si],al
0000B3AC  0000              add [bx+si],al
0000B3AE  0000              add [bx+si],al
0000B3B0  0000              add [bx+si],al
0000B3B2  0000              add [bx+si],al
0000B3B4  0000              add [bx+si],al
0000B3B6  0000              add [bx+si],al
0000B3B8  0000              add [bx+si],al
0000B3BA  0000              add [bx+si],al
0000B3BC  0000              add [bx+si],al
0000B3BE  0000              add [bx+si],al
0000B3C0  0000              add [bx+si],al
0000B3C2  0000              add [bx+si],al
0000B3C4  0000              add [bx+si],al
0000B3C6  0000              add [bx+si],al
0000B3C8  0000              add [bx+si],al
0000B3CA  0000              add [bx+si],al
0000B3CC  0000              add [bx+si],al
0000B3CE  0000              add [bx+si],al
0000B3D0  0000              add [bx+si],al
0000B3D2  0000              add [bx+si],al
0000B3D4  0000              add [bx+si],al
0000B3D6  0000              add [bx+si],al
0000B3D8  0000              add [bx+si],al
0000B3DA  0000              add [bx+si],al
0000B3DC  0000              add [bx+si],al
0000B3DE  0000              add [bx+si],al
0000B3E0  0000              add [bx+si],al
0000B3E2  0000              add [bx+si],al
0000B3E4  0000              add [bx+si],al
0000B3E6  0000              add [bx+si],al
0000B3E8  0000              add [bx+si],al
0000B3EA  0000              add [bx+si],al
0000B3EC  0000              add [bx+si],al
0000B3EE  0000              add [bx+si],al
0000B3F0  0000              add [bx+si],al
0000B3F2  0000              add [bx+si],al
0000B3F4  0000              add [bx+si],al
0000B3F6  0000              add [bx+si],al
0000B3F8  0000              add [bx+si],al
0000B3FA  0000              add [bx+si],al
0000B3FC  0000              add [bx+si],al
0000B3FE  0000              add [bx+si],al
0000B400  0000              add [bx+si],al
0000B402  0000              add [bx+si],al
0000B404  0000              add [bx+si],al
0000B406  0000              add [bx+si],al
0000B408  0000              add [bx+si],al
0000B40A  0000              add [bx+si],al
0000B40C  0000              add [bx+si],al
0000B40E  0000              add [bx+si],al
0000B410  0000              add [bx+si],al
0000B412  0000              add [bx+si],al
0000B414  0000              add [bx+si],al
0000B416  0000              add [bx+si],al
0000B418  0000              add [bx+si],al
0000B41A  0000              add [bx+si],al
0000B41C  0000              add [bx+si],al
0000B41E  0000              add [bx+si],al
0000B420  0000              add [bx+si],al
0000B422  0000              add [bx+si],al
0000B424  0000              add [bx+si],al
0000B426  0000              add [bx+si],al
0000B428  0000              add [bx+si],al
0000B42A  0000              add [bx+si],al
0000B42C  0000              add [bx+si],al
0000B42E  0000              add [bx+si],al
0000B430  0000              add [bx+si],al
0000B432  0000              add [bx+si],al
0000B434  0000              add [bx+si],al
0000B436  0000              add [bx+si],al
0000B438  0000              add [bx+si],al
0000B43A  0000              add [bx+si],al
0000B43C  0000              add [bx+si],al
0000B43E  0000              add [bx+si],al
0000B440  0000              add [bx+si],al
0000B442  0000              add [bx+si],al
0000B444  0000              add [bx+si],al
0000B446  0000              add [bx+si],al
0000B448  0000              add [bx+si],al
0000B44A  0000              add [bx+si],al
0000B44C  0000              add [bx+si],al
0000B44E  0000              add [bx+si],al
0000B450  0000              add [bx+si],al
0000B452  0000              add [bx+si],al
0000B454  0000              add [bx+si],al
0000B456  0000              add [bx+si],al
0000B458  0000              add [bx+si],al
0000B45A  0000              add [bx+si],al
0000B45C  0000              add [bx+si],al
0000B45E  0000              add [bx+si],al
0000B460  0000              add [bx+si],al
0000B462  0000              add [bx+si],al
0000B464  0000              add [bx+si],al
0000B466  0000              add [bx+si],al
0000B468  0000              add [bx+si],al
0000B46A  0000              add [bx+si],al
0000B46C  0000              add [bx+si],al
0000B46E  0000              add [bx+si],al
0000B470  0000              add [bx+si],al
0000B472  0000              add [bx+si],al
0000B474  0000              add [bx+si],al
0000B476  0000              add [bx+si],al
0000B478  0000              add [bx+si],al
0000B47A  0000              add [bx+si],al
0000B47C  0000              add [bx+si],al
0000B47E  0000              add [bx+si],al
0000B480  0000              add [bx+si],al
0000B482  0000              add [bx+si],al
0000B484  0000              add [bx+si],al
0000B486  0000              add [bx+si],al
0000B488  0000              add [bx+si],al
0000B48A  0000              add [bx+si],al
0000B48C  0000              add [bx+si],al
0000B48E  0000              add [bx+si],al
0000B490  0000              add [bx+si],al
0000B492  0000              add [bx+si],al
0000B494  0000              add [bx+si],al
0000B496  0000              add [bx+si],al
0000B498  0000              add [bx+si],al
0000B49A  0000              add [bx+si],al
0000B49C  0000              add [bx+si],al
0000B49E  0000              add [bx+si],al
0000B4A0  0000              add [bx+si],al
0000B4A2  0000              add [bx+si],al
0000B4A4  0000              add [bx+si],al
0000B4A6  0000              add [bx+si],al
0000B4A8  0000              add [bx+si],al
0000B4AA  0000              add [bx+si],al
0000B4AC  0000              add [bx+si],al
0000B4AE  0000              add [bx+si],al
0000B4B0  0000              add [bx+si],al
0000B4B2  0000              add [bx+si],al
0000B4B4  0000              add [bx+si],al
0000B4B6  0000              add [bx+si],al
0000B4B8  0000              add [bx+si],al
0000B4BA  0000              add [bx+si],al
0000B4BC  0000              add [bx+si],al
0000B4BE  0000              add [bx+si],al
0000B4C0  0000              add [bx+si],al
0000B4C2  0000              add [bx+si],al
0000B4C4  0000              add [bx+si],al
0000B4C6  0000              add [bx+si],al
0000B4C8  0000              add [bx+si],al
0000B4CA  0000              add [bx+si],al
0000B4CC  0000              add [bx+si],al
0000B4CE  0000              add [bx+si],al
0000B4D0  0000              add [bx+si],al
0000B4D2  0000              add [bx+si],al
0000B4D4  0000              add [bx+si],al
0000B4D6  0000              add [bx+si],al
0000B4D8  0000              add [bx+si],al
0000B4DA  0000              add [bx+si],al
0000B4DC  0000              add [bx+si],al
0000B4DE  0000              add [bx+si],al
0000B4E0  0000              add [bx+si],al
0000B4E2  0000              add [bx+si],al
0000B4E4  0000              add [bx+si],al
0000B4E6  0000              add [bx+si],al
0000B4E8  0000              add [bx+si],al
0000B4EA  0000              add [bx+si],al
0000B4EC  0000              add [bx+si],al
0000B4EE  0000              add [bx+si],al
0000B4F0  0000              add [bx+si],al
0000B4F2  0000              add [bx+si],al
0000B4F4  0000              add [bx+si],al
0000B4F6  0000              add [bx+si],al
0000B4F8  0000              add [bx+si],al
0000B4FA  0000              add [bx+si],al
0000B4FC  0000              add [bx+si],al
0000B4FE  0000              add [bx+si],al
0000B500  0000              add [bx+si],al
0000B502  0000              add [bx+si],al
0000B504  0000              add [bx+si],al
0000B506  0000              add [bx+si],al
0000B508  0000              add [bx+si],al
0000B50A  0000              add [bx+si],al
0000B50C  0000              add [bx+si],al
0000B50E  0000              add [bx+si],al
0000B510  0000              add [bx+si],al
0000B512  0000              add [bx+si],al
0000B514  0000              add [bx+si],al
0000B516  0000              add [bx+si],al
0000B518  0000              add [bx+si],al
0000B51A  0000              add [bx+si],al
0000B51C  0000              add [bx+si],al
0000B51E  0000              add [bx+si],al
0000B520  0000              add [bx+si],al
0000B522  0000              add [bx+si],al
0000B524  0000              add [bx+si],al
0000B526  0000              add [bx+si],al
0000B528  0000              add [bx+si],al
0000B52A  0000              add [bx+si],al
0000B52C  0000              add [bx+si],al
0000B52E  0000              add [bx+si],al
0000B530  0000              add [bx+si],al
0000B532  0000              add [bx+si],al
0000B534  0000              add [bx+si],al
0000B536  0000              add [bx+si],al
0000B538  0000              add [bx+si],al
0000B53A  0000              add [bx+si],al
0000B53C  0000              add [bx+si],al
0000B53E  0000              add [bx+si],al
0000B540  0000              add [bx+si],al
0000B542  0000              add [bx+si],al
0000B544  0000              add [bx+si],al
0000B546  0000              add [bx+si],al
0000B548  0000              add [bx+si],al
0000B54A  0000              add [bx+si],al
0000B54C  0000              add [bx+si],al
0000B54E  0000              add [bx+si],al
0000B550  0000              add [bx+si],al
0000B552  0000              add [bx+si],al
0000B554  0000              add [bx+si],al
0000B556  0000              add [bx+si],al
0000B558  0000              add [bx+si],al
0000B55A  0000              add [bx+si],al
0000B55C  0000              add [bx+si],al
0000B55E  0000              add [bx+si],al
0000B560  0000              add [bx+si],al
0000B562  0000              add [bx+si],al
0000B564  0000              add [bx+si],al
0000B566  0000              add [bx+si],al
0000B568  0000              add [bx+si],al
0000B56A  0000              add [bx+si],al
0000B56C  0000              add [bx+si],al
0000B56E  0000              add [bx+si],al
0000B570  0000              add [bx+si],al
0000B572  0000              add [bx+si],al
0000B574  0000              add [bx+si],al
0000B576  0000              add [bx+si],al
0000B578  0000              add [bx+si],al
0000B57A  0000              add [bx+si],al
0000B57C  0000              add [bx+si],al
0000B57E  0000              add [bx+si],al
0000B580  0000              add [bx+si],al
0000B582  0000              add [bx+si],al
0000B584  0000              add [bx+si],al
0000B586  0000              add [bx+si],al
0000B588  0000              add [bx+si],al
0000B58A  0000              add [bx+si],al
0000B58C  0000              add [bx+si],al
0000B58E  0000              add [bx+si],al
0000B590  0000              add [bx+si],al
0000B592  0000              add [bx+si],al
0000B594  0000              add [bx+si],al
0000B596  0000              add [bx+si],al
0000B598  0000              add [bx+si],al
0000B59A  0000              add [bx+si],al
0000B59C  0000              add [bx+si],al
0000B59E  0000              add [bx+si],al
0000B5A0  0000              add [bx+si],al
0000B5A2  0000              add [bx+si],al
0000B5A4  0000              add [bx+si],al
0000B5A6  0000              add [bx+si],al
0000B5A8  0000              add [bx+si],al
0000B5AA  0000              add [bx+si],al
0000B5AC  0000              add [bx+si],al
0000B5AE  0000              add [bx+si],al
0000B5B0  0000              add [bx+si],al
0000B5B2  0000              add [bx+si],al
0000B5B4  0000              add [bx+si],al
0000B5B6  0000              add [bx+si],al
0000B5B8  0000              add [bx+si],al
0000B5BA  0000              add [bx+si],al
0000B5BC  0000              add [bx+si],al
0000B5BE  0000              add [bx+si],al
0000B5C0  0000              add [bx+si],al
0000B5C2  0000              add [bx+si],al
0000B5C4  0000              add [bx+si],al
0000B5C6  0000              add [bx+si],al
0000B5C8  0000              add [bx+si],al
0000B5CA  0000              add [bx+si],al
0000B5CC  0000              add [bx+si],al
0000B5CE  0000              add [bx+si],al
0000B5D0  0000              add [bx+si],al
0000B5D2  0000              add [bx+si],al
0000B5D4  0000              add [bx+si],al
0000B5D6  0000              add [bx+si],al
0000B5D8  0000              add [bx+si],al
0000B5DA  0000              add [bx+si],al
0000B5DC  0000              add [bx+si],al
0000B5DE  0000              add [bx+si],al
0000B5E0  0000              add [bx+si],al
0000B5E2  0000              add [bx+si],al
0000B5E4  0000              add [bx+si],al
0000B5E6  0000              add [bx+si],al
0000B5E8  0000              add [bx+si],al
0000B5EA  0000              add [bx+si],al
0000B5EC  0000              add [bx+si],al
0000B5EE  0000              add [bx+si],al
0000B5F0  0000              add [bx+si],al
0000B5F2  0000              add [bx+si],al
0000B5F4  0000              add [bx+si],al
0000B5F6  0000              add [bx+si],al
0000B5F8  0000              add [bx+si],al
0000B5FA  0000              add [bx+si],al
0000B5FC  0000              add [bx+si],al
0000B5FE  0000              add [bx+si],al
0000B600  0000              add [bx+si],al
0000B602  0000              add [bx+si],al
0000B604  0000              add [bx+si],al
0000B606  0000              add [bx+si],al
0000B608  0000              add [bx+si],al
0000B60A  0000              add [bx+si],al
0000B60C  0000              add [bx+si],al
0000B60E  0000              add [bx+si],al
0000B610  0000              add [bx+si],al
0000B612  0000              add [bx+si],al
0000B614  0000              add [bx+si],al
0000B616  0000              add [bx+si],al
0000B618  0000              add [bx+si],al
0000B61A  0000              add [bx+si],al
0000B61C  0000              add [bx+si],al
0000B61E  0000              add [bx+si],al
0000B620  0000              add [bx+si],al
0000B622  0000              add [bx+si],al
0000B624  0000              add [bx+si],al
0000B626  0000              add [bx+si],al
0000B628  0000              add [bx+si],al
0000B62A  0000              add [bx+si],al
0000B62C  0000              add [bx+si],al
0000B62E  0000              add [bx+si],al
0000B630  0000              add [bx+si],al
0000B632  0000              add [bx+si],al
0000B634  0000              add [bx+si],al
0000B636  0000              add [bx+si],al
0000B638  0000              add [bx+si],al
0000B63A  0000              add [bx+si],al
0000B63C  0000              add [bx+si],al
0000B63E  0000              add [bx+si],al
0000B640  0000              add [bx+si],al
0000B642  0000              add [bx+si],al
0000B644  0000              add [bx+si],al
0000B646  0000              add [bx+si],al
0000B648  0000              add [bx+si],al
0000B64A  0000              add [bx+si],al
0000B64C  0000              add [bx+si],al
0000B64E  0000              add [bx+si],al
0000B650  0000              add [bx+si],al
0000B652  0000              add [bx+si],al
0000B654  0000              add [bx+si],al
0000B656  0000              add [bx+si],al
0000B658  0000              add [bx+si],al
0000B65A  0000              add [bx+si],al
0000B65C  0000              add [bx+si],al
0000B65E  0000              add [bx+si],al
0000B660  0000              add [bx+si],al
0000B662  0000              add [bx+si],al
0000B664  0000              add [bx+si],al
0000B666  0000              add [bx+si],al
0000B668  0000              add [bx+si],al
0000B66A  0000              add [bx+si],al
0000B66C  0000              add [bx+si],al
0000B66E  0000              add [bx+si],al
0000B670  0000              add [bx+si],al
0000B672  0000              add [bx+si],al
0000B674  0000              add [bx+si],al
0000B676  0000              add [bx+si],al
0000B678  0000              add [bx+si],al
0000B67A  0000              add [bx+si],al
0000B67C  0000              add [bx+si],al
0000B67E  0000              add [bx+si],al
0000B680  0000              add [bx+si],al
0000B682  0000              add [bx+si],al
0000B684  0000              add [bx+si],al
0000B686  0000              add [bx+si],al
0000B688  0000              add [bx+si],al
0000B68A  0000              add [bx+si],al
0000B68C  0000              add [bx+si],al
0000B68E  0000              add [bx+si],al
0000B690  0000              add [bx+si],al
0000B692  0000              add [bx+si],al
0000B694  0000              add [bx+si],al
0000B696  0000              add [bx+si],al
0000B698  0000              add [bx+si],al
0000B69A  0000              add [bx+si],al
0000B69C  0000              add [bx+si],al
0000B69E  0000              add [bx+si],al
0000B6A0  0000              add [bx+si],al
0000B6A2  0000              add [bx+si],al
0000B6A4  0000              add [bx+si],al
0000B6A6  0000              add [bx+si],al
0000B6A8  0000              add [bx+si],al
0000B6AA  0000              add [bx+si],al
0000B6AC  0000              add [bx+si],al
0000B6AE  0000              add [bx+si],al
0000B6B0  0000              add [bx+si],al
0000B6B2  0000              add [bx+si],al
0000B6B4  0000              add [bx+si],al
0000B6B6  0000              add [bx+si],al
0000B6B8  0000              add [bx+si],al
0000B6BA  0000              add [bx+si],al
0000B6BC  0000              add [bx+si],al
0000B6BE  0000              add [bx+si],al
0000B6C0  0000              add [bx+si],al
0000B6C2  0000              add [bx+si],al
0000B6C4  0000              add [bx+si],al
0000B6C6  0000              add [bx+si],al
0000B6C8  0000              add [bx+si],al
0000B6CA  0000              add [bx+si],al
0000B6CC  0000              add [bx+si],al
0000B6CE  0000              add [bx+si],al
0000B6D0  0000              add [bx+si],al
0000B6D2  0000              add [bx+si],al
0000B6D4  0000              add [bx+si],al
0000B6D6  0000              add [bx+si],al
0000B6D8  0000              add [bx+si],al
0000B6DA  0000              add [bx+si],al
0000B6DC  0000              add [bx+si],al
0000B6DE  0000              add [bx+si],al
0000B6E0  0000              add [bx+si],al
0000B6E2  0000              add [bx+si],al
0000B6E4  0000              add [bx+si],al
0000B6E6  0000              add [bx+si],al
0000B6E8  0000              add [bx+si],al
0000B6EA  0000              add [bx+si],al
0000B6EC  0000              add [bx+si],al
0000B6EE  0000              add [bx+si],al
0000B6F0  0000              add [bx+si],al
0000B6F2  0000              add [bx+si],al
0000B6F4  0000              add [bx+si],al
0000B6F6  0000              add [bx+si],al
0000B6F8  0000              add [bx+si],al
0000B6FA  0000              add [bx+si],al
0000B6FC  0000              add [bx+si],al
0000B6FE  0000              add [bx+si],al
0000B700  0000              add [bx+si],al
0000B702  0000              add [bx+si],al
0000B704  0000              add [bx+si],al
0000B706  0000              add [bx+si],al
0000B708  0000              add [bx+si],al
0000B70A  0000              add [bx+si],al
0000B70C  0000              add [bx+si],al
0000B70E  0000              add [bx+si],al
0000B710  0000              add [bx+si],al
0000B712  0000              add [bx+si],al
0000B714  0000              add [bx+si],al
0000B716  0000              add [bx+si],al
0000B718  0000              add [bx+si],al
0000B71A  0000              add [bx+si],al
0000B71C  0000              add [bx+si],al
0000B71E  0000              add [bx+si],al
0000B720  0000              add [bx+si],al
0000B722  0000              add [bx+si],al
0000B724  0000              add [bx+si],al
0000B726  0000              add [bx+si],al
0000B728  0000              add [bx+si],al
0000B72A  0000              add [bx+si],al
0000B72C  0000              add [bx+si],al
0000B72E  0000              add [bx+si],al
0000B730  0000              add [bx+si],al
0000B732  0000              add [bx+si],al
0000B734  0000              add [bx+si],al
0000B736  0000              add [bx+si],al
0000B738  0000              add [bx+si],al
0000B73A  0000              add [bx+si],al
0000B73C  0000              add [bx+si],al
0000B73E  0000              add [bx+si],al
0000B740  0000              add [bx+si],al
0000B742  0000              add [bx+si],al
0000B744  0000              add [bx+si],al
0000B746  0000              add [bx+si],al
0000B748  0000              add [bx+si],al
0000B74A  0000              add [bx+si],al
0000B74C  0000              add [bx+si],al
0000B74E  0000              add [bx+si],al
0000B750  0000              add [bx+si],al
0000B752  0000              add [bx+si],al
0000B754  0000              add [bx+si],al
0000B756  0000              add [bx+si],al
0000B758  0000              add [bx+si],al
0000B75A  0000              add [bx+si],al
0000B75C  0000              add [bx+si],al
0000B75E  0000              add [bx+si],al
0000B760  0000              add [bx+si],al
0000B762  0000              add [bx+si],al
0000B764  0000              add [bx+si],al
0000B766  0000              add [bx+si],al
0000B768  0000              add [bx+si],al
0000B76A  0000              add [bx+si],al
0000B76C  0000              add [bx+si],al
0000B76E  0000              add [bx+si],al
0000B770  0000              add [bx+si],al
0000B772  0000              add [bx+si],al
0000B774  0000              add [bx+si],al
0000B776  0000              add [bx+si],al
0000B778  0000              add [bx+si],al
0000B77A  0000              add [bx+si],al
0000B77C  0000              add [bx+si],al
0000B77E  0000              add [bx+si],al
0000B780  0000              add [bx+si],al
0000B782  0000              add [bx+si],al
0000B784  0000              add [bx+si],al
0000B786  0000              add [bx+si],al
0000B788  0000              add [bx+si],al
0000B78A  0000              add [bx+si],al
0000B78C  0000              add [bx+si],al
0000B78E  0000              add [bx+si],al
0000B790  0000              add [bx+si],al
0000B792  0000              add [bx+si],al
0000B794  0000              add [bx+si],al
0000B796  0000              add [bx+si],al
0000B798  0000              add [bx+si],al
0000B79A  0000              add [bx+si],al
0000B79C  0000              add [bx+si],al
0000B79E  0000              add [bx+si],al
0000B7A0  0000              add [bx+si],al
0000B7A2  0000              add [bx+si],al
0000B7A4  0000              add [bx+si],al
0000B7A6  0000              add [bx+si],al
0000B7A8  0000              add [bx+si],al
0000B7AA  0000              add [bx+si],al
0000B7AC  0000              add [bx+si],al
0000B7AE  0000              add [bx+si],al
0000B7B0  0000              add [bx+si],al
0000B7B2  0000              add [bx+si],al
0000B7B4  0000              add [bx+si],al
0000B7B6  0000              add [bx+si],al
0000B7B8  0000              add [bx+si],al
0000B7BA  0000              add [bx+si],al
0000B7BC  0000              add [bx+si],al
0000B7BE  0000              add [bx+si],al
0000B7C0  0000              add [bx+si],al
0000B7C2  0000              add [bx+si],al
0000B7C4  0000              add [bx+si],al
0000B7C6  0000              add [bx+si],al
0000B7C8  0000              add [bx+si],al
0000B7CA  0000              add [bx+si],al
0000B7CC  0000              add [bx+si],al
0000B7CE  0000              add [bx+si],al
0000B7D0  0000              add [bx+si],al
0000B7D2  0000              add [bx+si],al
0000B7D4  0000              add [bx+si],al
0000B7D6  0000              add [bx+si],al
0000B7D8  0000              add [bx+si],al
0000B7DA  0000              add [bx+si],al
0000B7DC  0000              add [bx+si],al
0000B7DE  0000              add [bx+si],al
0000B7E0  0000              add [bx+si],al
0000B7E2  0000              add [bx+si],al
0000B7E4  0000              add [bx+si],al
0000B7E6  0000              add [bx+si],al
0000B7E8  0000              add [bx+si],al
0000B7EA  0000              add [bx+si],al
0000B7EC  0000              add [bx+si],al
0000B7EE  0000              add [bx+si],al
0000B7F0  0000              add [bx+si],al
0000B7F2  0000              add [bx+si],al
0000B7F4  0000              add [bx+si],al
0000B7F6  0000              add [bx+si],al
0000B7F8  0000              add [bx+si],al
0000B7FA  0000              add [bx+si],al
0000B7FC  0000              add [bx+si],al
0000B7FE  0000              add [bx+si],al
0000B800  0000              add [bx+si],al
0000B802  0000              add [bx+si],al
0000B804  0000              add [bx+si],al
0000B806  0000              add [bx+si],al
0000B808  0000              add [bx+si],al
0000B80A  0000              add [bx+si],al
0000B80C  0000              add [bx+si],al
0000B80E  0000              add [bx+si],al
0000B810  0000              add [bx+si],al
0000B812  0000              add [bx+si],al
0000B814  0000              add [bx+si],al
0000B816  0000              add [bx+si],al
0000B818  0000              add [bx+si],al
0000B81A  0000              add [bx+si],al
0000B81C  0000              add [bx+si],al
0000B81E  0000              add [bx+si],al
0000B820  0000              add [bx+si],al
0000B822  0000              add [bx+si],al
0000B824  0000              add [bx+si],al
0000B826  0000              add [bx+si],al
0000B828  0000              add [bx+si],al
0000B82A  0000              add [bx+si],al
0000B82C  0000              add [bx+si],al
0000B82E  0000              add [bx+si],al
0000B830  0000              add [bx+si],al
0000B832  0000              add [bx+si],al
0000B834  0000              add [bx+si],al
0000B836  0000              add [bx+si],al
0000B838  0000              add [bx+si],al
0000B83A  0000              add [bx+si],al
0000B83C  0000              add [bx+si],al
0000B83E  0000              add [bx+si],al
0000B840  0000              add [bx+si],al
0000B842  0000              add [bx+si],al
0000B844  0000              add [bx+si],al
0000B846  0000              add [bx+si],al
0000B848  0000              add [bx+si],al
0000B84A  0000              add [bx+si],al
0000B84C  0000              add [bx+si],al
0000B84E  0000              add [bx+si],al
0000B850  0000              add [bx+si],al
0000B852  0000              add [bx+si],al
0000B854  0000              add [bx+si],al
0000B856  0000              add [bx+si],al
0000B858  0000              add [bx+si],al
0000B85A  0000              add [bx+si],al
0000B85C  0000              add [bx+si],al
0000B85E  0000              add [bx+si],al
0000B860  0000              add [bx+si],al
0000B862  0000              add [bx+si],al
0000B864  0000              add [bx+si],al
0000B866  0000              add [bx+si],al
0000B868  0000              add [bx+si],al
0000B86A  0000              add [bx+si],al
0000B86C  0000              add [bx+si],al
0000B86E  0000              add [bx+si],al
0000B870  0000              add [bx+si],al
0000B872  0000              add [bx+si],al
0000B874  0000              add [bx+si],al
0000B876  0000              add [bx+si],al
0000B878  0000              add [bx+si],al
0000B87A  0000              add [bx+si],al
0000B87C  0000              add [bx+si],al
0000B87E  0000              add [bx+si],al
0000B880  0000              add [bx+si],al
0000B882  0000              add [bx+si],al
0000B884  0000              add [bx+si],al
0000B886  0000              add [bx+si],al
0000B888  0000              add [bx+si],al
0000B88A  0000              add [bx+si],al
0000B88C  0000              add [bx+si],al
0000B88E  0000              add [bx+si],al
0000B890  0000              add [bx+si],al
0000B892  0000              add [bx+si],al
0000B894  0000              add [bx+si],al
0000B896  0000              add [bx+si],al
0000B898  0000              add [bx+si],al
0000B89A  0000              add [bx+si],al
0000B89C  0000              add [bx+si],al
0000B89E  0000              add [bx+si],al
0000B8A0  0000              add [bx+si],al
0000B8A2  0000              add [bx+si],al
0000B8A4  0000              add [bx+si],al
0000B8A6  0000              add [bx+si],al
0000B8A8  0000              add [bx+si],al
0000B8AA  0000              add [bx+si],al
0000B8AC  0000              add [bx+si],al
0000B8AE  0000              add [bx+si],al
0000B8B0  0000              add [bx+si],al
0000B8B2  0000              add [bx+si],al
0000B8B4  0000              add [bx+si],al
0000B8B6  0000              add [bx+si],al
0000B8B8  0000              add [bx+si],al
0000B8BA  0000              add [bx+si],al
0000B8BC  0000              add [bx+si],al
0000B8BE  0000              add [bx+si],al
0000B8C0  0000              add [bx+si],al
0000B8C2  0000              add [bx+si],al
0000B8C4  0000              add [bx+si],al
0000B8C6  0000              add [bx+si],al
0000B8C8  0000              add [bx+si],al
0000B8CA  0000              add [bx+si],al
0000B8CC  0000              add [bx+si],al
0000B8CE  0000              add [bx+si],al
0000B8D0  0000              add [bx+si],al
0000B8D2  0000              add [bx+si],al
0000B8D4  0000              add [bx+si],al
0000B8D6  0000              add [bx+si],al
0000B8D8  0000              add [bx+si],al
0000B8DA  0000              add [bx+si],al
0000B8DC  0000              add [bx+si],al
0000B8DE  0000              add [bx+si],al
0000B8E0  0000              add [bx+si],al
0000B8E2  0000              add [bx+si],al
0000B8E4  0000              add [bx+si],al
0000B8E6  0000              add [bx+si],al
0000B8E8  0000              add [bx+si],al
0000B8EA  0000              add [bx+si],al
0000B8EC  0000              add [bx+si],al
0000B8EE  0000              add [bx+si],al
0000B8F0  0000              add [bx+si],al
0000B8F2  0000              add [bx+si],al
0000B8F4  0000              add [bx+si],al
0000B8F6  0000              add [bx+si],al
0000B8F8  0000              add [bx+si],al
0000B8FA  0000              add [bx+si],al
0000B8FC  0000              add [bx+si],al
0000B8FE  0000              add [bx+si],al
0000B900  0000              add [bx+si],al
0000B902  0000              add [bx+si],al
0000B904  0000              add [bx+si],al
0000B906  0000              add [bx+si],al
0000B908  0000              add [bx+si],al
0000B90A  0000              add [bx+si],al
0000B90C  0000              add [bx+si],al
0000B90E  0000              add [bx+si],al
0000B910  0000              add [bx+si],al
0000B912  0000              add [bx+si],al
0000B914  0000              add [bx+si],al
0000B916  0000              add [bx+si],al
0000B918  0000              add [bx+si],al
0000B91A  0000              add [bx+si],al
0000B91C  0000              add [bx+si],al
0000B91E  0000              add [bx+si],al
0000B920  0000              add [bx+si],al
0000B922  0000              add [bx+si],al
0000B924  0000              add [bx+si],al
0000B926  0000              add [bx+si],al
0000B928  0000              add [bx+si],al
0000B92A  0000              add [bx+si],al
0000B92C  0000              add [bx+si],al
0000B92E  0000              add [bx+si],al
0000B930  0000              add [bx+si],al
0000B932  0000              add [bx+si],al
0000B934  0000              add [bx+si],al
0000B936  0000              add [bx+si],al
0000B938  0000              add [bx+si],al
0000B93A  0000              add [bx+si],al
0000B93C  0000              add [bx+si],al
0000B93E  0000              add [bx+si],al
0000B940  0000              add [bx+si],al
0000B942  0000              add [bx+si],al
0000B944  0000              add [bx+si],al
0000B946  0000              add [bx+si],al
0000B948  0000              add [bx+si],al
0000B94A  0000              add [bx+si],al
0000B94C  0000              add [bx+si],al
0000B94E  0000              add [bx+si],al
0000B950  0000              add [bx+si],al
0000B952  0000              add [bx+si],al
0000B954  0000              add [bx+si],al
0000B956  0000              add [bx+si],al
0000B958  0000              add [bx+si],al
0000B95A  0000              add [bx+si],al
0000B95C  0000              add [bx+si],al
0000B95E  0000              add [bx+si],al
0000B960  0000              add [bx+si],al
0000B962  0000              add [bx+si],al
0000B964  0000              add [bx+si],al
0000B966  0000              add [bx+si],al
0000B968  0000              add [bx+si],al
0000B96A  0000              add [bx+si],al
0000B96C  0000              add [bx+si],al
0000B96E  0000              add [bx+si],al
0000B970  0000              add [bx+si],al
0000B972  0000              add [bx+si],al
0000B974  0000              add [bx+si],al
0000B976  0000              add [bx+si],al
0000B978  0000              add [bx+si],al
0000B97A  0000              add [bx+si],al
0000B97C  0000              add [bx+si],al
0000B97E  0000              add [bx+si],al
0000B980  0000              add [bx+si],al
0000B982  0000              add [bx+si],al
0000B984  0000              add [bx+si],al
0000B986  0000              add [bx+si],al
0000B988  0000              add [bx+si],al
0000B98A  0000              add [bx+si],al
0000B98C  0000              add [bx+si],al
0000B98E  0000              add [bx+si],al
0000B990  0000              add [bx+si],al
0000B992  0000              add [bx+si],al
0000B994  0000              add [bx+si],al
0000B996  0000              add [bx+si],al
0000B998  0000              add [bx+si],al
0000B99A  0000              add [bx+si],al
0000B99C  0000              add [bx+si],al
0000B99E  0000              add [bx+si],al
0000B9A0  0000              add [bx+si],al
0000B9A2  0000              add [bx+si],al
0000B9A4  0000              add [bx+si],al
0000B9A6  0000              add [bx+si],al
0000B9A8  0000              add [bx+si],al
0000B9AA  0000              add [bx+si],al
0000B9AC  0000              add [bx+si],al
0000B9AE  0000              add [bx+si],al
0000B9B0  0000              add [bx+si],al
0000B9B2  0000              add [bx+si],al
0000B9B4  0000              add [bx+si],al
0000B9B6  0000              add [bx+si],al
0000B9B8  0000              add [bx+si],al
0000B9BA  0000              add [bx+si],al
0000B9BC  0000              add [bx+si],al
0000B9BE  0000              add [bx+si],al
0000B9C0  0000              add [bx+si],al
0000B9C2  0000              add [bx+si],al
0000B9C4  0000              add [bx+si],al
0000B9C6  0000              add [bx+si],al
0000B9C8  0000              add [bx+si],al
0000B9CA  0000              add [bx+si],al
0000B9CC  0000              add [bx+si],al
0000B9CE  0000              add [bx+si],al
0000B9D0  0000              add [bx+si],al
0000B9D2  0000              add [bx+si],al
0000B9D4  0000              add [bx+si],al
0000B9D6  0000              add [bx+si],al
0000B9D8  0000              add [bx+si],al
0000B9DA  0000              add [bx+si],al
0000B9DC  0000              add [bx+si],al
0000B9DE  0000              add [bx+si],al
0000B9E0  0000              add [bx+si],al
0000B9E2  0000              add [bx+si],al
0000B9E4  0000              add [bx+si],al
0000B9E6  0000              add [bx+si],al
0000B9E8  0000              add [bx+si],al
0000B9EA  0000              add [bx+si],al
0000B9EC  0000              add [bx+si],al
0000B9EE  0000              add [bx+si],al
0000B9F0  0000              add [bx+si],al
0000B9F2  0000              add [bx+si],al
0000B9F4  0000              add [bx+si],al
0000B9F6  0000              add [bx+si],al
0000B9F8  0000              add [bx+si],al
0000B9FA  0000              add [bx+si],al
0000B9FC  0000              add [bx+si],al
0000B9FE  0000              add [bx+si],al
0000BA00  0000              add [bx+si],al
0000BA02  0000              add [bx+si],al
0000BA04  0000              add [bx+si],al
0000BA06  0000              add [bx+si],al
0000BA08  0000              add [bx+si],al
0000BA0A  0000              add [bx+si],al
0000BA0C  0000              add [bx+si],al
0000BA0E  0000              add [bx+si],al
0000BA10  0000              add [bx+si],al
0000BA12  0000              add [bx+si],al
0000BA14  0000              add [bx+si],al
0000BA16  0000              add [bx+si],al
0000BA18  0000              add [bx+si],al
0000BA1A  0000              add [bx+si],al
0000BA1C  0000              add [bx+si],al
0000BA1E  0000              add [bx+si],al
0000BA20  0000              add [bx+si],al
0000BA22  0000              add [bx+si],al
0000BA24  0000              add [bx+si],al
0000BA26  0000              add [bx+si],al
0000BA28  0000              add [bx+si],al
0000BA2A  0000              add [bx+si],al
0000BA2C  0000              add [bx+si],al
0000BA2E  0000              add [bx+si],al
0000BA30  0000              add [bx+si],al
0000BA32  0000              add [bx+si],al
0000BA34  0000              add [bx+si],al
0000BA36  0000              add [bx+si],al
0000BA38  0000              add [bx+si],al
0000BA3A  0000              add [bx+si],al
0000BA3C  0000              add [bx+si],al
0000BA3E  0000              add [bx+si],al
0000BA40  0000              add [bx+si],al
0000BA42  0000              add [bx+si],al
0000BA44  0000              add [bx+si],al
0000BA46  0000              add [bx+si],al
0000BA48  0000              add [bx+si],al
0000BA4A  0000              add [bx+si],al
0000BA4C  0000              add [bx+si],al
0000BA4E  0000              add [bx+si],al
0000BA50  0000              add [bx+si],al
0000BA52  0000              add [bx+si],al
0000BA54  0000              add [bx+si],al
0000BA56  0000              add [bx+si],al
0000BA58  0000              add [bx+si],al
0000BA5A  0000              add [bx+si],al
0000BA5C  0000              add [bx+si],al
0000BA5E  0000              add [bx+si],al
0000BA60  0000              add [bx+si],al
0000BA62  0000              add [bx+si],al
0000BA64  0000              add [bx+si],al
0000BA66  0000              add [bx+si],al
0000BA68  0000              add [bx+si],al
0000BA6A  0000              add [bx+si],al
0000BA6C  0000              add [bx+si],al
0000BA6E  0000              add [bx+si],al
0000BA70  0000              add [bx+si],al
0000BA72  0000              add [bx+si],al
0000BA74  0000              add [bx+si],al
0000BA76  0000              add [bx+si],al
0000BA78  0000              add [bx+si],al
0000BA7A  0000              add [bx+si],al
0000BA7C  0000              add [bx+si],al
0000BA7E  0000              add [bx+si],al
0000BA80  0000              add [bx+si],al
0000BA82  0000              add [bx+si],al
0000BA84  0000              add [bx+si],al
0000BA86  0000              add [bx+si],al
0000BA88  0000              add [bx+si],al
0000BA8A  0000              add [bx+si],al
0000BA8C  0000              add [bx+si],al
0000BA8E  0000              add [bx+si],al
0000BA90  0000              add [bx+si],al
0000BA92  0000              add [bx+si],al
0000BA94  0000              add [bx+si],al
0000BA96  0000              add [bx+si],al
0000BA98  0000              add [bx+si],al
0000BA9A  0000              add [bx+si],al
0000BA9C  0000              add [bx+si],al
0000BA9E  0000              add [bx+si],al
0000BAA0  0000              add [bx+si],al
0000BAA2  0000              add [bx+si],al
0000BAA4  0000              add [bx+si],al
0000BAA6  0000              add [bx+si],al
0000BAA8  0000              add [bx+si],al
0000BAAA  0000              add [bx+si],al
0000BAAC  0000              add [bx+si],al
0000BAAE  0000              add [bx+si],al
0000BAB0  0000              add [bx+si],al
0000BAB2  0000              add [bx+si],al
0000BAB4  0000              add [bx+si],al
0000BAB6  0000              add [bx+si],al
0000BAB8  0000              add [bx+si],al
0000BABA  0000              add [bx+si],al
0000BABC  0000              add [bx+si],al
0000BABE  0000              add [bx+si],al
0000BAC0  0000              add [bx+si],al
0000BAC2  0000              add [bx+si],al
0000BAC4  0000              add [bx+si],al
0000BAC6  0000              add [bx+si],al
0000BAC8  0000              add [bx+si],al
0000BACA  0000              add [bx+si],al
0000BACC  0000              add [bx+si],al
0000BACE  0000              add [bx+si],al
0000BAD0  0000              add [bx+si],al
0000BAD2  0000              add [bx+si],al
0000BAD4  0000              add [bx+si],al
0000BAD6  0000              add [bx+si],al
0000BAD8  0000              add [bx+si],al
0000BADA  0000              add [bx+si],al
0000BADC  0000              add [bx+si],al
0000BADE  0000              add [bx+si],al
0000BAE0  0000              add [bx+si],al
0000BAE2  0000              add [bx+si],al
0000BAE4  0000              add [bx+si],al
0000BAE6  0000              add [bx+si],al
0000BAE8  0000              add [bx+si],al
0000BAEA  0000              add [bx+si],al
0000BAEC  0000              add [bx+si],al
0000BAEE  0000              add [bx+si],al
0000BAF0  0000              add [bx+si],al
0000BAF2  0000              add [bx+si],al
0000BAF4  0000              add [bx+si],al
0000BAF6  0000              add [bx+si],al
0000BAF8  0000              add [bx+si],al
0000BAFA  0000              add [bx+si],al
0000BAFC  0000              add [bx+si],al
0000BAFE  0000              add [bx+si],al
0000BB00  0000              add [bx+si],al
0000BB02  0000              add [bx+si],al
0000BB04  0000              add [bx+si],al
0000BB06  0000              add [bx+si],al
0000BB08  0000              add [bx+si],al
0000BB0A  0000              add [bx+si],al
0000BB0C  0000              add [bx+si],al
0000BB0E  0000              add [bx+si],al
0000BB10  0000              add [bx+si],al
0000BB12  0000              add [bx+si],al
0000BB14  0000              add [bx+si],al
0000BB16  0000              add [bx+si],al
0000BB18  0000              add [bx+si],al
0000BB1A  0000              add [bx+si],al
0000BB1C  0000              add [bx+si],al
0000BB1E  0000              add [bx+si],al
0000BB20  0000              add [bx+si],al
0000BB22  0000              add [bx+si],al
0000BB24  0000              add [bx+si],al
0000BB26  0000              add [bx+si],al
0000BB28  0000              add [bx+si],al
0000BB2A  0000              add [bx+si],al
0000BB2C  0000              add [bx+si],al
0000BB2E  0000              add [bx+si],al
0000BB30  0000              add [bx+si],al
0000BB32  0000              add [bx+si],al
0000BB34  0000              add [bx+si],al
0000BB36  0000              add [bx+si],al
0000BB38  0000              add [bx+si],al
0000BB3A  0000              add [bx+si],al
0000BB3C  0000              add [bx+si],al
0000BB3E  0000              add [bx+si],al
0000BB40  0000              add [bx+si],al
0000BB42  0000              add [bx+si],al
0000BB44  0000              add [bx+si],al
0000BB46  0000              add [bx+si],al
0000BB48  0000              add [bx+si],al
0000BB4A  0000              add [bx+si],al
0000BB4C  0000              add [bx+si],al
0000BB4E  0000              add [bx+si],al
0000BB50  0000              add [bx+si],al
0000BB52  0000              add [bx+si],al
0000BB54  0000              add [bx+si],al
0000BB56  0000              add [bx+si],al
0000BB58  0000              add [bx+si],al
0000BB5A  0000              add [bx+si],al
0000BB5C  0000              add [bx+si],al
0000BB5E  0000              add [bx+si],al
0000BB60  0000              add [bx+si],al
0000BB62  0000              add [bx+si],al
0000BB64  0000              add [bx+si],al
0000BB66  0000              add [bx+si],al
0000BB68  0000              add [bx+si],al
0000BB6A  0000              add [bx+si],al
0000BB6C  0000              add [bx+si],al
0000BB6E  0000              add [bx+si],al
0000BB70  0000              add [bx+si],al
0000BB72  0000              add [bx+si],al
0000BB74  0000              add [bx+si],al
0000BB76  0000              add [bx+si],al
0000BB78  0000              add [bx+si],al
0000BB7A  0000              add [bx+si],al
0000BB7C  0000              add [bx+si],al
0000BB7E  0000              add [bx+si],al
0000BB80  0000              add [bx+si],al
0000BB82  0000              add [bx+si],al
0000BB84  0000              add [bx+si],al
0000BB86  0000              add [bx+si],al
0000BB88  0000              add [bx+si],al
0000BB8A  0000              add [bx+si],al
0000BB8C  0000              add [bx+si],al
0000BB8E  0000              add [bx+si],al
0000BB90  0000              add [bx+si],al
0000BB92  0000              add [bx+si],al
0000BB94  0000              add [bx+si],al
0000BB96  0000              add [bx+si],al
0000BB98  0000              add [bx+si],al
0000BB9A  0000              add [bx+si],al
0000BB9C  0000              add [bx+si],al
0000BB9E  0000              add [bx+si],al
0000BBA0  0000              add [bx+si],al
0000BBA2  0000              add [bx+si],al
0000BBA4  0000              add [bx+si],al
0000BBA6  0000              add [bx+si],al
0000BBA8  0000              add [bx+si],al
0000BBAA  0000              add [bx+si],al
0000BBAC  0000              add [bx+si],al
0000BBAE  0000              add [bx+si],al
0000BBB0  0000              add [bx+si],al
0000BBB2  0000              add [bx+si],al
0000BBB4  0000              add [bx+si],al
0000BBB6  0000              add [bx+si],al
0000BBB8  0000              add [bx+si],al
0000BBBA  0000              add [bx+si],al
0000BBBC  0000              add [bx+si],al
0000BBBE  0000              add [bx+si],al
0000BBC0  0000              add [bx+si],al
0000BBC2  0000              add [bx+si],al
0000BBC4  0000              add [bx+si],al
0000BBC6  0000              add [bx+si],al
0000BBC8  0000              add [bx+si],al
0000BBCA  0000              add [bx+si],al
0000BBCC  0000              add [bx+si],al
0000BBCE  0000              add [bx+si],al
0000BBD0  0000              add [bx+si],al
0000BBD2  0000              add [bx+si],al
0000BBD4  0000              add [bx+si],al
0000BBD6  0000              add [bx+si],al
0000BBD8  0000              add [bx+si],al
0000BBDA  0000              add [bx+si],al
0000BBDC  0000              add [bx+si],al
0000BBDE  0000              add [bx+si],al
0000BBE0  0000              add [bx+si],al
0000BBE2  0000              add [bx+si],al
0000BBE4  0000              add [bx+si],al
0000BBE6  0000              add [bx+si],al
0000BBE8  0000              add [bx+si],al
0000BBEA  0000              add [bx+si],al
0000BBEC  0000              add [bx+si],al
0000BBEE  0000              add [bx+si],al
0000BBF0  0000              add [bx+si],al
0000BBF2  0000              add [bx+si],al
0000BBF4  0000              add [bx+si],al
0000BBF6  0000              add [bx+si],al
0000BBF8  0000              add [bx+si],al
0000BBFA  0000              add [bx+si],al
0000BBFC  0000              add [bx+si],al
0000BBFE  0000              add [bx+si],al
0000BC00  0000              add [bx+si],al
0000BC02  0000              add [bx+si],al
0000BC04  0000              add [bx+si],al
0000BC06  0000              add [bx+si],al
0000BC08  0000              add [bx+si],al
0000BC0A  0000              add [bx+si],al
0000BC0C  0000              add [bx+si],al
0000BC0E  0000              add [bx+si],al
0000BC10  0000              add [bx+si],al
0000BC12  0000              add [bx+si],al
0000BC14  0000              add [bx+si],al
0000BC16  0000              add [bx+si],al
0000BC18  0000              add [bx+si],al
0000BC1A  0000              add [bx+si],al
0000BC1C  0000              add [bx+si],al
0000BC1E  0000              add [bx+si],al
0000BC20  0000              add [bx+si],al
0000BC22  0000              add [bx+si],al
0000BC24  0000              add [bx+si],al
0000BC26  0000              add [bx+si],al
0000BC28  0000              add [bx+si],al
0000BC2A  0000              add [bx+si],al
0000BC2C  0000              add [bx+si],al
0000BC2E  0000              add [bx+si],al
0000BC30  0000              add [bx+si],al
0000BC32  0000              add [bx+si],al
0000BC34  0000              add [bx+si],al
0000BC36  0000              add [bx+si],al
0000BC38  0000              add [bx+si],al
0000BC3A  0000              add [bx+si],al
0000BC3C  0000              add [bx+si],al
0000BC3E  0000              add [bx+si],al
0000BC40  0000              add [bx+si],al
0000BC42  0000              add [bx+si],al
0000BC44  0000              add [bx+si],al
0000BC46  0000              add [bx+si],al
0000BC48  0000              add [bx+si],al
0000BC4A  0000              add [bx+si],al
0000BC4C  0000              add [bx+si],al
0000BC4E  0000              add [bx+si],al
0000BC50  0000              add [bx+si],al
0000BC52  0000              add [bx+si],al
0000BC54  0000              add [bx+si],al
0000BC56  0000              add [bx+si],al
0000BC58  0000              add [bx+si],al
0000BC5A  0000              add [bx+si],al
0000BC5C  0000              add [bx+si],al
0000BC5E  0000              add [bx+si],al
0000BC60  0000              add [bx+si],al
0000BC62  0000              add [bx+si],al
0000BC64  0000              add [bx+si],al
0000BC66  0000              add [bx+si],al
0000BC68  0000              add [bx+si],al
0000BC6A  0000              add [bx+si],al
0000BC6C  0000              add [bx+si],al
0000BC6E  0000              add [bx+si],al
0000BC70  0000              add [bx+si],al
0000BC72  0000              add [bx+si],al
0000BC74  0000              add [bx+si],al
0000BC76  0000              add [bx+si],al
0000BC78  0000              add [bx+si],al
0000BC7A  0000              add [bx+si],al
0000BC7C  0000              add [bx+si],al
0000BC7E  0000              add [bx+si],al
0000BC80  0000              add [bx+si],al
0000BC82  0000              add [bx+si],al
0000BC84  0000              add [bx+si],al
0000BC86  0000              add [bx+si],al
0000BC88  0000              add [bx+si],al
0000BC8A  0000              add [bx+si],al
0000BC8C  0000              add [bx+si],al
0000BC8E  0000              add [bx+si],al
0000BC90  0000              add [bx+si],al
0000BC92  0000              add [bx+si],al
0000BC94  0000              add [bx+si],al
0000BC96  0000              add [bx+si],al
0000BC98  0000              add [bx+si],al
0000BC9A  0000              add [bx+si],al
0000BC9C  0000              add [bx+si],al
0000BC9E  0000              add [bx+si],al
0000BCA0  0000              add [bx+si],al
0000BCA2  0000              add [bx+si],al
0000BCA4  0000              add [bx+si],al
0000BCA6  0000              add [bx+si],al
0000BCA8  0000              add [bx+si],al
0000BCAA  0000              add [bx+si],al
0000BCAC  0000              add [bx+si],al
0000BCAE  0000              add [bx+si],al
0000BCB0  0000              add [bx+si],al
0000BCB2  0000              add [bx+si],al
0000BCB4  0000              add [bx+si],al
0000BCB6  0000              add [bx+si],al
0000BCB8  0000              add [bx+si],al
0000BCBA  0000              add [bx+si],al
0000BCBC  0000              add [bx+si],al
0000BCBE  0000              add [bx+si],al
0000BCC0  0000              add [bx+si],al
0000BCC2  0000              add [bx+si],al
0000BCC4  0000              add [bx+si],al
0000BCC6  0000              add [bx+si],al
0000BCC8  0000              add [bx+si],al
0000BCCA  0000              add [bx+si],al
0000BCCC  0000              add [bx+si],al
0000BCCE  0000              add [bx+si],al
0000BCD0  0000              add [bx+si],al
0000BCD2  0000              add [bx+si],al
0000BCD4  0000              add [bx+si],al
0000BCD6  0000              add [bx+si],al
0000BCD8  0000              add [bx+si],al
0000BCDA  0000              add [bx+si],al
0000BCDC  0000              add [bx+si],al
0000BCDE  0000              add [bx+si],al
0000BCE0  0000              add [bx+si],al
0000BCE2  0000              add [bx+si],al
0000BCE4  0000              add [bx+si],al
0000BCE6  0000              add [bx+si],al
0000BCE8  0000              add [bx+si],al
0000BCEA  0000              add [bx+si],al
0000BCEC  0000              add [bx+si],al
0000BCEE  0000              add [bx+si],al
0000BCF0  0000              add [bx+si],al
0000BCF2  0000              add [bx+si],al
0000BCF4  0000              add [bx+si],al
0000BCF6  0000              add [bx+si],al
0000BCF8  0000              add [bx+si],al
0000BCFA  0000              add [bx+si],al
0000BCFC  0000              add [bx+si],al
0000BCFE  0000              add [bx+si],al
0000BD00  0000              add [bx+si],al
0000BD02  0000              add [bx+si],al
0000BD04  0000              add [bx+si],al
0000BD06  0000              add [bx+si],al
0000BD08  0000              add [bx+si],al
0000BD0A  0000              add [bx+si],al
0000BD0C  0000              add [bx+si],al
0000BD0E  0000              add [bx+si],al
0000BD10  0000              add [bx+si],al
0000BD12  0000              add [bx+si],al
0000BD14  0000              add [bx+si],al
0000BD16  0000              add [bx+si],al
0000BD18  0000              add [bx+si],al
0000BD1A  0000              add [bx+si],al
0000BD1C  0000              add [bx+si],al
0000BD1E  0000              add [bx+si],al
0000BD20  0000              add [bx+si],al
0000BD22  0000              add [bx+si],al
0000BD24  0000              add [bx+si],al
0000BD26  0000              add [bx+si],al
0000BD28  0000              add [bx+si],al
0000BD2A  0000              add [bx+si],al
0000BD2C  0000              add [bx+si],al
0000BD2E  0000              add [bx+si],al
0000BD30  0000              add [bx+si],al
0000BD32  0000              add [bx+si],al
0000BD34  0000              add [bx+si],al
0000BD36  0000              add [bx+si],al
0000BD38  0000              add [bx+si],al
0000BD3A  0000              add [bx+si],al
0000BD3C  0000              add [bx+si],al
0000BD3E  0000              add [bx+si],al
0000BD40  0000              add [bx+si],al
0000BD42  0000              add [bx+si],al
0000BD44  0000              add [bx+si],al
0000BD46  0000              add [bx+si],al
0000BD48  0000              add [bx+si],al
0000BD4A  0000              add [bx+si],al
0000BD4C  0000              add [bx+si],al
0000BD4E  0000              add [bx+si],al
0000BD50  0000              add [bx+si],al
0000BD52  0000              add [bx+si],al
0000BD54  0000              add [bx+si],al
0000BD56  0000              add [bx+si],al
0000BD58  0000              add [bx+si],al
0000BD5A  0000              add [bx+si],al
0000BD5C  0000              add [bx+si],al
0000BD5E  0000              add [bx+si],al
0000BD60  0000              add [bx+si],al
0000BD62  0000              add [bx+si],al
0000BD64  0000              add [bx+si],al
0000BD66  0000              add [bx+si],al
0000BD68  0000              add [bx+si],al
0000BD6A  0000              add [bx+si],al
0000BD6C  0000              add [bx+si],al
0000BD6E  0000              add [bx+si],al
0000BD70  0000              add [bx+si],al
0000BD72  0000              add [bx+si],al
0000BD74  0000              add [bx+si],al
0000BD76  0000              add [bx+si],al
0000BD78  0000              add [bx+si],al
0000BD7A  0000              add [bx+si],al
0000BD7C  0000              add [bx+si],al
0000BD7E  0000              add [bx+si],al
0000BD80  0000              add [bx+si],al
0000BD82  0000              add [bx+si],al
0000BD84  0000              add [bx+si],al
0000BD86  0000              add [bx+si],al
0000BD88  0000              add [bx+si],al
0000BD8A  0000              add [bx+si],al
0000BD8C  0000              add [bx+si],al
0000BD8E  0000              add [bx+si],al
0000BD90  0000              add [bx+si],al
0000BD92  0000              add [bx+si],al
0000BD94  0000              add [bx+si],al
0000BD96  0000              add [bx+si],al
0000BD98  0000              add [bx+si],al
0000BD9A  0000              add [bx+si],al
0000BD9C  0000              add [bx+si],al
0000BD9E  0000              add [bx+si],al
0000BDA0  0000              add [bx+si],al
0000BDA2  0000              add [bx+si],al
0000BDA4  0000              add [bx+si],al
0000BDA6  0000              add [bx+si],al
0000BDA8  0000              add [bx+si],al
0000BDAA  0000              add [bx+si],al
0000BDAC  0000              add [bx+si],al
0000BDAE  0000              add [bx+si],al
0000BDB0  0000              add [bx+si],al
0000BDB2  0000              add [bx+si],al
0000BDB4  0000              add [bx+si],al
0000BDB6  0000              add [bx+si],al
0000BDB8  0000              add [bx+si],al
0000BDBA  0000              add [bx+si],al
0000BDBC  0000              add [bx+si],al
0000BDBE  0000              add [bx+si],al
0000BDC0  0000              add [bx+si],al
0000BDC2  0000              add [bx+si],al
0000BDC4  0000              add [bx+si],al
0000BDC6  0000              add [bx+si],al
0000BDC8  0000              add [bx+si],al
0000BDCA  0000              add [bx+si],al
0000BDCC  0000              add [bx+si],al
0000BDCE  0000              add [bx+si],al
0000BDD0  0000              add [bx+si],al
0000BDD2  0000              add [bx+si],al
0000BDD4  0000              add [bx+si],al
0000BDD6  0000              add [bx+si],al
0000BDD8  0000              add [bx+si],al
0000BDDA  0000              add [bx+si],al
0000BDDC  0000              add [bx+si],al
0000BDDE  0000              add [bx+si],al
0000BDE0  0000              add [bx+si],al
0000BDE2  0000              add [bx+si],al
0000BDE4  0000              add [bx+si],al
0000BDE6  0000              add [bx+si],al
0000BDE8  0000              add [bx+si],al
0000BDEA  0000              add [bx+si],al
0000BDEC  0000              add [bx+si],al
0000BDEE  0000              add [bx+si],al
0000BDF0  0000              add [bx+si],al
0000BDF2  0000              add [bx+si],al
0000BDF4  0000              add [bx+si],al
0000BDF6  0000              add [bx+si],al
0000BDF8  0000              add [bx+si],al
0000BDFA  0000              add [bx+si],al
0000BDFC  0000              add [bx+si],al
0000BDFE  0000              add [bx+si],al
0000BE00  FA                cli
0000BE01  33C0              xor ax,ax
0000BE03  8ED0              mov ss,ax
0000BE05  BCE27B            mov sp,0x7be2
0000BE08  BDE27B            mov bp,0x7be2
0000BE0B  FB                sti
0000BE0C  895E14            mov [bp+0x14],bx
0000BE0F  886E1A            mov [bp+0x1a],ch
0000BE12  885618            mov [bp+0x18],dl
0000BE15  33C0              xor ax,ax
0000BE17  8ED8              mov ds,ax
0000BE19  A1187C            mov ax,[0x7c18]
0000BE1C  894616            mov [bp+0x16],ax
0000BE1F  A11A7C            mov ax,[0x7c1a]
0000BE22  894600            mov [bp+0x0],ax
0000BE25  A1167C            mov ax,[0x7c16]
0000BE28  894608            mov [bp+0x8],ax
0000BE2B  A11C7C            mov ax,[0x7c1c]
0000BE2E  89460A            mov [bp+0xa],ax
0000BE31  A10E7C            mov ax,[0x7c0e]
0000BE34  89460E            mov [bp+0xe],ax
0000BE37  33C0              xor ax,ax
0000BE39  8ED8              mov ds,ax
0000BE3B  A10B7C            mov ax,[0x7c0b]
0000BE3E  33DB              xor bx,bx
0000BE40  8A1E0D7C          mov bl,[0x7c0d]
0000BE44  F7E3              mul bx
0000BE46  894602            mov [bp+0x2],ax
0000BE49  C6461901          mov byte [bp+0x19],0x1
0000BE4D  807E1AF8          cmp byte [bp+0x1a],0xf8
0000BE51  7535              jnz 0xbe88
0000BE53  C746040000        mov word [bp+0x4],0x0
0000BE58  33C0              xor ax,ax
0000BE5A  8EC0              mov es,ax
0000BE5C  BF007D            mov di,0x7d00
0000BE5F  C746060100        mov word [bp+0x6],0x1
0000BE64  E8DB00            call 0xbf42
0000BE67  BEC27E            mov si,0x7ec2
0000BE6A  B90400            mov cx,0x4
0000BE6D  33C0              xor ax,ax
0000BE6F  8ED8              mov ds,ax
0000BE71  C6461901          mov byte [bp+0x19],0x1
0000BE75  803C01            cmp byte [si],0x1
0000BE78  740E              jz 0xbe88
0000BE7A  C6461904          mov byte [bp+0x19],0x4
0000BE7E  803C04            cmp byte [si],0x4
0000BE81  7405              jz 0xbe88
0000BE83  83C610            add si,0x10
0000BE86  E2E9              loop 0xbe71
0000BE88  C746100100        mov word [bp+0x10],0x1
0000BE8D  B8EF01            mov ax,0x1ef
0000BE90  33D2              xor dx,dx
0000BE92  F77602            div word [bp+0x2]
0000BE95  014610            add [bp+0x10],ax
0000BE98  83FA00            cmp dx,0x0
0000BE9B  7403              jz 0xbea0
0000BE9D  FF4610            inc word [bp+0x10]
0000BEA0  0E                push cs
0000BEA1  1F                pop ds
0000BEA2  33C0              xor ax,ax
0000BEA4  8EC0              mov es,ax
0000BEA6  BEB700            mov si,0xb7
0000BEA9  BF007D            mov di,0x7d00
0000BEAC  B93801            mov cx,0x138
0000BEAF  90                nop
0000BEB0  F3A4              rep movsb
0000BEB2  EA007D0000        jmp word 0x0:word 0x7d00
0000BEB7  33C0              xor ax,ax
0000BEB9  8ED8              mov ds,ax
0000BEBB  8B4608            mov ax,[bp+0x8]
0000BEBE  894606            mov [bp+0x6],ax
0000BEC1  8B460A            mov ax,[bp+0xa]
0000BEC4  03460E            add ax,[bp+0xe]
0000BEC7  894604            mov [bp+0x4],ax
0000BECA  33C0              xor ax,ax
0000BECC  8EC0              mov es,ax
0000BECE  BF0080            mov di,0x8000
0000BED1  E86E00            call 0xbf42
0000BED4  1E                push ds
0000BED5  8B4610            mov ax,[bp+0x10]
0000BED8  2D0100            sub ax,0x1
0000BEDB  F76602            mul word [bp+0x2]
0000BEDE  2DEF01            sub ax,0x1ef
0000BEE1  90                nop
0000BEE2  8BC8              mov cx,ax
0000BEE4  B87000            mov ax,0x70
0000BEE7  8ED8              mov ds,ax
0000BEE9  8EC0              mov es,ax
0000BEEB  BEEF01            mov si,0x1ef
0000BEEE  BF0000            mov di,0x0
0000BEF1  F3A4              rep movsb
0000BEF3  897E12            mov [bp+0x12],di
0000BEF6  1F                pop ds
0000BEF7  32E4              xor ah,ah
0000BEF9  A00D7C            mov al,[0x7c0d]
0000BEFC  894606            mov [bp+0x6],ax
0000BEFF  E8A900            call 0xbfab
0000BF02  894610            mov [bp+0x10],ax
0000BF05  807E1BFF          cmp byte [bp+0x1b],0xff
0000BF09  7429              jz 0xbf34
0000BF0B  2D0200            sub ax,0x2
0000BF0E  32ED              xor ch,ch
0000BF10  8A0E0D7C          mov cl,[0x7c0d]
0000BF14  F7E1              mul cx
0000BF16  034614            add ax,[bp+0x14]
0000BF19  894604            mov [bp+0x4],ax
0000BF1C  8B7E12            mov di,[bp+0x12]
0000BF1F  FF7606            push word [bp+0x6]
0000BF22  B87000            mov ax,0x70
0000BF25  8EC0              mov es,ax
0000BF27  E81800            call 0xbf42
0000BF2A  58                pop ax
0000BF2B  F7260B7C          mul word [0x7c0b]
0000BF2F  014612            add [bp+0x12],ax
0000BF32  EBC3              jmp 0xbef7
0000BF34  8A6E1A            mov ch,[bp+0x1a]
0000BF37  8A5618            mov dl,[bp+0x18]
0000BF3A  8B5E14            mov bx,[bp+0x14]
0000BF3D  EA00007000        jmp word 0x70:word 0x0
0000BF42  B90500            mov cx,0x5
0000BF45  51                push cx
0000BF46  8B4604            mov ax,[bp+0x4]
0000BF49  33D2              xor dx,dx
0000BF4B  F77616            div word [bp+0x16]
0000BF4E  8B5E16            mov bx,[bp+0x16]
0000BF51  2BDA              sub bx,dx
0000BF53  8BF3              mov si,bx
0000BF55  397606            cmp [bp+0x6],si
0000BF58  7303              jnc 0xbf5d
0000BF5A  8B7606            mov si,[bp+0x6]
0000BF5D  FEC2              inc dl
0000BF5F  8ADA              mov bl,dl
0000BF61  33D2              xor dx,dx
0000BF63  F77600            div word [bp+0x0]
0000BF66  8AF2              mov dh,dl
0000BF68  8ACB              mov cl,bl
0000BF6A  D0CC              ror ah,0x0
0000BF6C  D0CC              ror ah,0x0
0000BF6E  0ACC              or cl,ah
0000BF70  8AE8              mov ch,al
0000BF72  8BDF              mov bx,di
0000BF74  8A5618            mov dl,[bp+0x18]
0000BF77  8BC6              mov ax,si
0000BF79  B402              mov ah,0x2
0000BF7B  50                push ax
0000BF7C  57                push di
0000BF7D  CD13              int byte 0x13
0000BF7F  5F                pop di
0000BF80  58                pop ax
0000BF81  59                pop cx
0000BF82  730F              jnc 0xbf93
0000BF84  51                push cx
0000BF85  8BDF              mov bx,di
0000BF87  57                push di
0000BF88  8A5618            mov dl,[bp+0x18]
0000BF8B  B400              mov ah,0x0
0000BF8D  CD13              int byte 0x13
0000BF8F  5F                pop di
0000BF90  59                pop cx
0000BF91  E2B2              loop 0xbf45
0000BF93  32E4              xor ah,ah
0000BF95  294606            sub [bp+0x6],ax
0000BF98  7410              jz 0xbfaa
0000BF9A  014604            add [bp+0x4],ax
0000BF9D  33DB              xor bx,bx
0000BF9F  8AD8              mov bl,al
0000BFA1  A10B7C            mov ax,[0x7c0b]
0000BFA4  F7E3              mul bx
0000BFA6  03F8              add di,ax
0000BFA8  EB98              jmp 0xbf42
0000BFAA  C3                ret
0000BFAB  C6461BFF          mov byte [bp+0x1b],0xff
0000BFAF  8B4610            mov ax,[bp+0x10]
0000BFB2  807E1901          cmp byte [bp+0x19],0x1
0000BFB6  7525              jnz 0xbfdd
0000BFB8  33DB              xor bx,bx
0000BFBA  B303              mov bl,0x3
0000BFBC  F7E3              mul bx
0000BFBE  D1E8              shr ax,0x0
0000BFC0  8BF0              mov si,ax
0000BFC2  8B840080          mov ax,[si-0x8000]
0000BFC6  F746100100        test word [bp+0x10],0x1
0000BFCB  7505              jnz 0xbfd2
0000BFCD  25FF0F            and ax,0xfff
0000BFD0  EB04              jmp 0xbfd6
0000BFD2  B104              mov cl,0x4
0000BFD4  D3E8              shr ax,cl
0000BFD6  3DF80F            cmp ax,0xff8
0000BFD9  7313              jnc 0xbfee
0000BFDB  EB0D              jmp 0xbfea
0000BFDD  D1E0              shl ax,0x0
0000BFDF  8BF0              mov si,ax
0000BFE1  8B840080          mov ax,[si-0x8000]
0000BFE5  3DF8FF            cmp ax,0xfff8
0000BFE8  7304              jnc 0xbfee
0000BFEA  C6461B00          mov byte [bp+0x1b],0x0
0000BFEE  C3                ret
0000BFEF  E95D2B            jmp 0xeb4f
0000BFF2  18A91ACE          sbb [bx+di-0x31e6],ch
0000BFF6  097E0A            or [bp+0xa],di
0000BFF9  7306              jnc 0xc001
0000BFFB  96                xchg ax,si
0000BFFC  0C6F              or al,0x6f
0000BFFE  06                push es
0000BFFF  8A068A06          mov al,[0x68a]
0000C003  840C              test [si],cl
0000C005  7B0C              jpo 0xc013
0000C007  8A068A06          mov al,[0x68a]
0000C00B  7306              jnc 0xc013
0000C00D  8B1C              mov bx,[si]
0000C00F  94                xchg ax,sp
0000C010  1C41              sbb al,0x41
0000C012  0C8A              or al,0x8a
0000C014  06                push es
0000C015  8A068A06          mov al,[0x68a]
0000C019  F5                cmc
0000C01A  128A068A          adc cl,[bp+si-0x75fa]
0000C01E  06                push es
0000C01F  8A064117          mov al,[0x1741]
0000C023  6517              gs pop ss
0000C025  000A              add [bp+si],cl
0000C027  8A068A06          mov al,[0x68a]
0000C02B  8A067306          mov al,[0x673]
0000C02F  B806E6            mov ax,0xe606
0000C032  06                push es
0000C033  8A063107          mov al,[0x731]
0000C037  49                dec cx
0000C038  07                pop es
0000C039  49                dec cx
0000C03A  07                pop es
0000C03B  8A06000A          mov al,[0xa00]
0000C03F  8A068A06          mov al,[0x68a]
0000C043  8A067306          mov al,[0x673]
0000C047  5E                pop si
0000C048  07                pop es
0000C049  8907              mov [bx],ax
0000C04B  8A06C707          mov al,[0x7c7]
0000C04F  D007              rol byte [bx],0x0
0000C051  D007              rol byte [bx],0x0
0000C053  AC                lodsb
0000C054  07                pop es
0000C055  0009              add [bx+di],cl
0000C057  8A068A06          mov al,[0x68a]
0000C05B  8A067306          mov al,[0x673]
0000C05F  7209              jc 0xc06a
0000C061  6F                outsw
0000C062  06                push es
0000C063  8A068A06          mov al,[0x68a]
0000C067  D308              ror word [bx+si],cl
0000C069  D308              ror word [bx+si],cl
0000C06B  0018              add [bx+si],bl
0000C06D  8A068A06          mov al,[0x68a]
0000C071  8A067306          mov al,[0x673]
0000C075  81066F068A06      add word [0x66f],0x68a
0000C07B  8A06F407          mov al,[0x7f4]
0000C07F  F4                hlt
0000C080  07                pop es
0000C081  1008              adc [bx+si],cl
0000C083  8A068A06          mov al,[0x68a]
0000C087  8A068A06          mov al,[0x68a]
0000C08B  8A064008          mov al,[0x840]
0000C08F  8A068A06          mov al,[0x68a]
0000C093  8608              xchg cl,[bx+si]
0000C095  8A068A06          mov al,[0x68a]
0000C099  8A067306          mov al,[0x673]
0000C09D  7306              jnc 0xc0a5
0000C09F  353938            xor ax,0x3839
0000C0A2  363231            xor dh,[ss:bx+di]
0000C0A5  0000              add [bx+si],al
0000C0A7  0000              add [bx+si],al
0000C0A9  0000              add [bx+si],al
0000C0AB  0000              add [bx+si],al
0000C0AD  0000              add [bx+si],al
0000C0AF  0000              add [bx+si],al
0000C0B1  0000              add [bx+si],al
0000C0B3  0000              add [bx+si],al
0000C0B5  0000              add [bx+si],al
0000C0B7  0000              add [bx+si],al
0000C0B9  0000              add [bx+si],al
0000C0BB  0000              add [bx+si],al
0000C0BD  0000              add [bx+si],al
0000C0BF  0000              add [bx+si],al
0000C0C1  0000              add [bx+si],al
0000C0C3  0000              add [bx+si],al
0000C0C5  0000              add [bx+si],al
0000C0C7  0000              add [bx+si],al
0000C0C9  0000              add [bx+si],al
0000C0CB  0000              add [bx+si],al
0000C0CD  0000              add [bx+si],al
0000C0CF  0000              add [bx+si],al
0000C0D1  0000              add [bx+si],al
0000C0D3  0000              add [bx+si],al
0000C0D5  0000              add [bx+si],al
0000C0D7  0000              add [bx+si],al
0000C0D9  0000              add [bx+si],al
0000C0DB  0000              add [bx+si],al
0000C0DD  0000              add [bx+si],al
0000C0DF  0000              add [bx+si],al
0000C0E1  0000              add [bx+si],al
0000C0E3  0000              add [bx+si],al
0000C0E5  0000              add [bx+si],al
0000C0E7  0000              add [bx+si],al
0000C0E9  0000              add [bx+si],al
0000C0EB  0000              add [bx+si],al
0000C0ED  0000              add [bx+si],al
0000C0EF  0000              add [bx+si],al
0000C0F1  0000              add [bx+si],al
0000C0F3  0000              add [bx+si],al
0000C0F5  0000              add [bx+si],al
0000C0F7  0000              add [bx+si],al
0000C0F9  0000              add [bx+si],al
0000C0FB  0000              add [bx+si],al
0000C0FD  0000              add [bx+si],al
0000C0FF  0000              add [bx+si],al
0000C101  0000              add [bx+si],al
0000C103  0000              add [bx+si],al
0000C105  0000              add [bx+si],al
0000C107  0000              add [bx+si],al
0000C109  0000              add [bx+si],al
0000C10B  0000              add [bx+si],al
0000C10D  0000              add [bx+si],al
0000C10F  0000              add [bx+si],al
0000C111  0000              add [bx+si],al
0000C113  0000              add [bx+si],al
0000C115  0000              add [bx+si],al
0000C117  0000              add [bx+si],al
0000C119  0000              add [bx+si],al
0000C11B  0000              add [bx+si],al
0000C11D  0000              add [bx+si],al
0000C11F  0000              add [bx+si],al
0000C121  0000              add [bx+si],al
0000C123  0000              add [bx+si],al
0000C125  0000              add [bx+si],al
0000C127  0000              add [bx+si],al
0000C129  0000              add [bx+si],al
0000C12B  0000              add [bx+si],al
0000C12D  0000              add [bx+si],al
0000C12F  0000              add [bx+si],al
0000C131  0000              add [bx+si],al
0000C133  0000              add [bx+si],al
0000C135  0000              add [bx+si],al
0000C137  0000              add [bx+si],al
0000C139  0000              add [bx+si],al
0000C13B  0000              add [bx+si],al
0000C13D  0000              add [bx+si],al
0000C13F  0000              add [bx+si],al
0000C141  0000              add [bx+si],al
0000C143  0000              add [bx+si],al
0000C145  0000              add [bx+si],al
0000C147  0000              add [bx+si],al
0000C149  0000              add [bx+si],al
0000C14B  0000              add [bx+si],al
0000C14D  0000              add [bx+si],al
0000C14F  0000              add [bx+si],al
0000C151  0000              add [bx+si],al
0000C153  0000              add [bx+si],al
0000C155  0000              add [bx+si],al
0000C157  0000              add [bx+si],al
0000C159  0000              add [bx+si],al
0000C15B  0000              add [bx+si],al
0000C15D  800170            add byte [bx+di],0x70
0000C160  0013              add [bp+di],dl
0000C162  80DC05            sbb ah,0x5
0000C165  E705              out byte 0x5,ax
0000C167  43                inc bx
0000C168  4F                dec di
0000C169  4E                dec si
0000C16A  2020              and [bx+si],ah
0000C16C  2020              and [bx+si],ah
0000C16E  20920170          and [bp+si+0x7001],dl
0000C172  0000              add [bx+si],al
0000C174  80DC05            sbb ah,0x5
0000C177  ED                in ax,dx
0000C178  054155            add ax,0x5541
0000C17B  58                pop ax
0000C17C  2020              and [bx+si],ah
0000C17E  2020              and [bx+si],ah
0000C180  20A40170          and [si+0x7001],ah
0000C184  0040A0            add [bx+si-0x60],al
0000C187  DC05              fadd qword [di]
0000C189  0A065052          or al,[0x5250]
0000C18D  4E                dec si
0000C18E  2020              and [bx+si],ah
0000C190  2020              and [bx+si],ah
0000C192  20B60170          and [bp+0x7001],dh
0000C196  0008              add [bx+si],cl
0000C198  80DC05            sbb ah,0x5
0000C19B  3006434C          xor [0x4c43],al
0000C19F  4F                dec di
0000C1A0  43                inc bx
0000C1A1  4B                dec bx
0000C1A2  2420              and al,0x20
0000C1A4  20CA              and dl,cl
0000C1A6  017000            add [bx+si+0x0],si
0000C1A9  40                inc ax
0000C1AA  08DC              or ah,bl
0000C1AC  053606            add ax,0x636
0000C1AF  04FE              add al,0xfe
0000C1B1  0000              add [bx+si],al
0000C1B3  0000              add [bx+si],al
0000C1B5  0000              add [bx+si],al
0000C1B7  6B6ADC01          imul bp,[bp+si-0x24],0x1
0000C1BB  7000              jo 0xc1bd
0000C1BD  0080DC05          add [bx+si+0x5dc],al
0000C1C1  ED                in ax,dx
0000C1C2  05434F            add ax,0x4f43
0000C1C5  4D                dec bp
0000C1C6  3120              xor [bx+si],sp
0000C1C8  2020              and [bx+si],ah
0000C1CA  20EE              and dh,ch
0000C1CC  017000            add [bx+si+0x0],si
0000C1CF  40                inc ax
0000C1D0  A0DC05            mov al,[0x5dc]
0000C1D3  10064C50          adc [0x504c],al
0000C1D7  54                push sp
0000C1D8  3120              xor [bx+si],sp
0000C1DA  2020              and [bx+si],ah
0000C1DC  2000              and [bx+si],al
0000C1DE  027000            add dh,[bx+si+0x0]
0000C1E1  40                inc ax
0000C1E2  A0DC05            mov al,[0x5dc]
0000C1E5  18064C50          sbb [0x504c],al
0000C1E9  54                push sp
0000C1EA  3220              xor ah,[bx+si]
0000C1EC  2020              and [bx+si],ah
0000C1EE  2012              and [bp+si],dl
0000C1F0  027000            add dh,[bx+si+0x0]
0000C1F3  40                inc ax
0000C1F4  A0DC05            mov al,[0x5dc]
0000C1F7  20064C50          and [0x504c],al
0000C1FB  54                push sp
0000C1FC  3320              xor sp,[bx+si]
0000C1FE  2020              and [bx+si],ah
0000C200  2024              and [si],ah
0000C202  027000            add dh,[bx+si+0x0]
0000C205  0080DC05          add [bx+si+0x5dc],al
0000C209  F305434F          rep add ax,0x4f43
0000C20D  4D                dec bp
0000C20E  3220              xor ah,[bx+si]
0000C210  2020              and [bx+si],ah
0000C212  20360270          and [0x7002],dh
0000C216  0000              add [bx+si],al
0000C218  80DC05            sbb ah,0x5
0000C21B  F9                stc
0000C21C  05434F            add ax,0x4f43
0000C21F  4D                dec bp
0000C220  3320              xor sp,[bx+si]
0000C222  2020              and [bx+si],ah
0000C224  20FF              and bh,bh
0000C226  FF7000            push word [bx+si+0x0]
0000C229  0080DC05          add [bx+si+0x5dc],al
0000C22D  FF05              inc word [di]
0000C22F  43                inc bx
0000C230  4F                dec di
0000C231  4D                dec bp
0000C232  3420              xor al,0x20
0000C234  2020              and [bx+si],ah
0000C236  20B51A70          and [di+0x701a],dh
0000C23A  00820470          add [bp+si+0x7004],al
0000C23E  0000              add [bx+si],al
0000C240  FF00              inc word [bx+si]
0000C242  0000              add [bx+si],al
0000C244  90                nop
0000C245  0200              add al,[bx+si]
0000C247  0000              add [bx+si],al
0000C249  6300              arpl [bx+si],ax
0000C24B  0000              add [bx+si],al
0000C24D  0000              add [bx+si],al
0000C24F  09900000          or [bx+si+0x0],dx
0000C253  0000              add [bx+si],al
0000C255  0000              add [bx+si],al
0000C257  0000              add [bx+si],al
0000C259  0000              add [bx+si],al
0000C25B  0800              or [bx+si],al
0000C25D  0000              add [bx+si],al
0000C25F  50                push ax
0000C260  80401008          add byte [bx+si+0x10],0x8
0000C264  06                push es
0000C265  0403              add al,0x3
0000C267  0002              add [bp+si],al
0000C269  06                push es
0000C26A  0404              add al,0x4
0000C26C  0F08              invd
0000C26E  000C              add [si],cl
0000C270  0000              add [bx+si],al
0000C272  0000              add [bx+si],al
0000C274  0000              add [bx+si],al
0000C276  0000              add [bx+si],al
0000C278  0000              add [bx+si],al
0000C27A  0000              add [bx+si],al
0000C27C  0000              add [bx+si],al
0000C27E  0000              add [bx+si],al
0000C280  0000              add [bx+si],al
0000C282  0000              add [bx+si],al
0000C284  0000              add [bx+si],al
0000C286  0000              add [bx+si],al
0000C288  0000              add [bx+si],al
0000C28A  0000              add [bx+si],al
0000C28C  0000              add [bx+si],al
0000C28E  0000              add [bx+si],al
0000C290  0000              add [bx+si],al
0000C292  0000              add [bx+si],al
0000C294  0000              add [bx+si],al
0000C296  0000              add [bx+si],al
0000C298  0000              add [bx+si],al
0000C29A  0000              add [bx+si],al
0000C29C  0000              add [bx+si],al
0000C29E  0000              add [bx+si],al
0000C2A0  0000              add [bx+si],al
0000C2A2  0000              add [bx+si],al
0000C2A4  0000              add [bx+si],al
0000C2A6  0000              add [bx+si],al
0000C2A8  0000              add [bx+si],al
0000C2AA  0000              add [bx+si],al
0000C2AC  0000              add [bx+si],al
0000C2AE  0000              add [bx+si],al
0000C2B0  0000              add [bx+si],al
0000C2B2  0000              add [bx+si],al
0000C2B4  0000              add [bx+si],al
0000C2B6  0000              add [bx+si],al
0000C2B8  0000              add [bx+si],al
0000C2BA  0000              add [bx+si],al
0000C2BC  0000              add [bx+si],al
0000C2BE  0000              add [bx+si],al
0000C2C0  0000              add [bx+si],al
0000C2C2  0000              add [bx+si],al
0000C2C4  0000              add [bx+si],al
0000C2C6  0000              add [bx+si],al
0000C2C8  0000              add [bx+si],al
0000C2CA  0000              add [bx+si],al
0000C2CC  0000              add [bx+si],al
0000C2CE  0000              add [bx+si],al
0000C2D0  0000              add [bx+si],al
0000C2D2  0000              add [bx+si],al
0000C2D4  0000              add [bx+si],al
0000C2D6  0000              add [bx+si],al
0000C2D8  0000              add [bx+si],al
0000C2DA  0000              add [bx+si],al
0000C2DC  0000              add [bx+si],al
0000C2DE  0000              add [bx+si],al
0000C2E0  0000              add [bx+si],al
0000C2E2  0000              add [bx+si],al
0000C2E4  0000              add [bx+si],al
0000C2E6  0000              add [bx+si],al
0000C2E8  0000              add [bx+si],al
0000C2EA  0000              add [bx+si],al
0000C2EC  0000              add [bx+si],al
0000C2EE  0000              add [bx+si],al
0000C2F0  0000              add [bx+si],al
0000C2F2  0000              add [bx+si],al
0000C2F4  0000              add [bx+si],al
0000C2F6  0000              add [bx+si],al
0000C2F8  0000              add [bx+si],al
0000C2FA  0000              add [bx+si],al
0000C2FC  0000              add [bx+si],al
0000C2FE  0000              add [bx+si],al
0000C300  0000              add [bx+si],al
0000C302  0000              add [bx+si],al
0000C304  0000              add [bx+si],al
0000C306  0000              add [bx+si],al
0000C308  0000              add [bx+si],al
0000C30A  0000              add [bx+si],al
0000C30C  0000              add [bx+si],al
0000C30E  0000              add [bx+si],al
0000C310  0000              add [bx+si],al
0000C312  0000              add [bx+si],al
0000C314  0000              add [bx+si],al
0000C316  0000              add [bx+si],al
0000C318  0000              add [bx+si],al
0000C31A  0000              add [bx+si],al
0000C31C  0000              add [bx+si],al
0000C31E  0000              add [bx+si],al
0000C320  0000              add [bx+si],al
0000C322  0000              add [bx+si],al
0000C324  0000              add [bx+si],al
0000C326  0000              add [bx+si],al
0000C328  0000              add [bx+si],al
0000C32A  0000              add [bx+si],al
0000C32C  0000              add [bx+si],al
0000C32E  0000              add [bx+si],al
0000C330  0000              add [bx+si],al
0000C332  0000              add [bx+si],al
0000C334  0000              add [bx+si],al
0000C336  0000              add [bx+si],al
0000C338  0000              add [bx+si],al
0000C33A  0000              add [bx+si],al
0000C33C  0000              add [bx+si],al
0000C33E  0000              add [bx+si],al
0000C340  0000              add [bx+si],al
0000C342  0000              add [bx+si],al
0000C344  0000              add [bx+si],al
0000C346  0000              add [bx+si],al
0000C348  0000              add [bx+si],al
0000C34A  0000              add [bx+si],al
0000C34C  0000              add [bx+si],al
0000C34E  0000              add [bx+si],al
0000C350  0000              add [bx+si],al
0000C352  0000              add [bx+si],al
0000C354  0000              add [bx+si],al
0000C356  0000              add [bx+si],al
0000C358  0000              add [bx+si],al
0000C35A  0000              add [bx+si],al
0000C35C  0000              add [bx+si],al
0000C35E  0000              add [bx+si],al
0000C360  0000              add [bx+si],al
0000C362  0000              add [bx+si],al
0000C364  0000              add [bx+si],al
0000C366  0000              add [bx+si],al
0000C368  0000              add [bx+si],al
0000C36A  0000              add [bx+si],al
0000C36C  0000              add [bx+si],al
0000C36E  0000              add [bx+si],al
0000C370  0000              add [bx+si],al
0000C372  0000              add [bx+si],al
0000C374  0000              add [bx+si],al
0000C376  0000              add [bx+si],al
0000C378  0000              add [bx+si],al
0000C37A  0000              add [bx+si],al
0000C37C  0000              add [bx+si],al
0000C37E  0000              add [bx+si],al
0000C380  0000              add [bx+si],al
0000C382  0000              add [bx+si],al
0000C384  0000              add [bx+si],al
0000C386  0000              add [bx+si],al
0000C388  0000              add [bx+si],al
0000C38A  0000              add [bx+si],al
0000C38C  0000              add [bx+si],al
0000C38E  0000              add [bx+si],al
0000C390  0000              add [bx+si],al
0000C392  0000              add [bx+si],al
0000C394  0000              add [bx+si],al
0000C396  0000              add [bx+si],al
0000C398  0000              add [bx+si],al
0000C39A  0000              add [bx+si],al
0000C39C  0000              add [bx+si],al
0000C39E  0000              add [bx+si],al
0000C3A0  0000              add [bx+si],al
0000C3A2  0000              add [bx+si],al
0000C3A4  0000              add [bx+si],al
0000C3A6  0000              add [bx+si],al
0000C3A8  0000              add [bx+si],al
0000C3AA  0000              add [bx+si],al
0000C3AC  0000              add [bx+si],al
0000C3AE  0000              add [bx+si],al
0000C3B0  0000              add [bx+si],al
0000C3B2  0000              add [bx+si],al
0000C3B4  0000              add [bx+si],al
0000C3B6  0000              add [bx+si],al
0000C3B8  0000              add [bx+si],al
0000C3BA  0000              add [bx+si],al
0000C3BC  0000              add [bx+si],al
0000C3BE  0000              add [bx+si],al
0000C3C0  0000              add [bx+si],al
0000C3C2  0000              add [bx+si],al
0000C3C4  0000              add [bx+si],al
0000C3C6  0000              add [bx+si],al
0000C3C8  0000              add [bx+si],al
0000C3CA  0000              add [bx+si],al
0000C3CC  0000              add [bx+si],al
0000C3CE  0000              add [bx+si],al
0000C3D0  0000              add [bx+si],al
0000C3D2  0000              add [bx+si],al
0000C3D4  0000              add [bx+si],al
0000C3D6  0000              add [bx+si],al
0000C3D8  0000              add [bx+si],al
0000C3DA  0000              add [bx+si],al
0000C3DC  0000              add [bx+si],al
0000C3DE  0000              add [bx+si],al
0000C3E0  0000              add [bx+si],al
0000C3E2  0000              add [bx+si],al
0000C3E4  0000              add [bx+si],al
0000C3E6  0000              add [bx+si],al
0000C3E8  0000              add [bx+si],al
0000C3EA  0000              add [bx+si],al
0000C3EC  0000              add [bx+si],al
0000C3EE  0000              add [bx+si],al
0000C3F0  0000              add [bx+si],al
0000C3F2  0000              add [bx+si],al
0000C3F4  0000              add [bx+si],al
0000C3F6  0000              add [bx+si],al
0000C3F8  0000              add [bx+si],al
0000C3FA  0000              add [bx+si],al
0000C3FC  0000              add [bx+si],al
0000C3FE  0000              add [bx+si],al
0000C400  0000              add [bx+si],al
0000C402  0000              add [bx+si],al
0000C404  0000              add [bx+si],al
0000C406  0000              add [bx+si],al
0000C408  0000              add [bx+si],al
0000C40A  0000              add [bx+si],al
0000C40C  0000              add [bx+si],al
0000C40E  0000              add [bx+si],al
0000C410  0000              add [bx+si],al
0000C412  0000              add [bx+si],al
0000C414  0000              add [bx+si],al
0000C416  0000              add [bx+si],al
0000C418  0000              add [bx+si],al
0000C41A  0000              add [bx+si],al
0000C41C  0000              add [bx+si],al
0000C41E  0000              add [bx+si],al
0000C420  0000              add [bx+si],al
0000C422  0000              add [bx+si],al
0000C424  0000              add [bx+si],al
0000C426  0000              add [bx+si],al
0000C428  0000              add [bx+si],al
0000C42A  0000              add [bx+si],al
0000C42C  0000              add [bx+si],al
0000C42E  0000              add [bx+si],al
0000C430  0000              add [bx+si],al
0000C432  0000              add [bx+si],al
0000C434  0000              add [bx+si],al
0000C436  0000              add [bx+si],al
0000C438  0000              add [bx+si],al
0000C43A  0000              add [bx+si],al
0000C43C  0000              add [bx+si],al
0000C43E  0000              add [bx+si],al
0000C440  0000              add [bx+si],al
0000C442  0000              add [bx+si],al
0000C444  0000              add [bx+si],al
0000C446  0000              add [bx+si],al
0000C448  0000              add [bx+si],al
0000C44A  0000              add [bx+si],al
0000C44C  0000              add [bx+si],al
0000C44E  0000              add [bx+si],al
0000C450  0000              add [bx+si],al
0000C452  0000              add [bx+si],al
0000C454  0000              add [bx+si],al
0000C456  0000              add [bx+si],al
0000C458  0000              add [bx+si],al
0000C45A  0000              add [bx+si],al
0000C45C  0000              add [bx+si],al
0000C45E  0000              add [bx+si],al
0000C460  0000              add [bx+si],al
0000C462  0000              add [bx+si],al
0000C464  0000              add [bx+si],al
0000C466  0000              add [bx+si],al
0000C468  0000              add [bx+si],al
0000C46A  0000              add [bx+si],al
0000C46C  0000              add [bx+si],al
0000C46E  0000              add [bx+si],al
0000C470  90                nop
0000C471  D404              aam byte 0x4
0000C473  7000              jo 0xc475
0000C475  0000              add [bx+si],al
0000C477  0002              add [bp+si],al
0000C479  FF01              inc word [bx+di]
0000C47B  0002              add [bp+si],al
0000C47D  40                inc ax
0000C47E  006801            add [bx+si+0x1],ch
0000C481  0002              add [bp+si],al
0000C483  0009              add [bx+di],cl
0000C485  0001              add [bx+di],al
0000C487  0000              add [bx+si],al
0000C489  0000              add [bx+si],al
0000C48B  0000              add [bx+si],al
0000C48D  4E                dec si
0000C48E  4F                dec di
0000C48F  204E41            and [bp+0x41],cl
0000C492  4D                dec bp
0000C493  45                inc bp
0000C494  2020              and [bx+si],ah
0000C496  2020              and [bx+si],ah
0000C498  0003              add [bp+di],al
0000C49A  2000              and [bx+si],al
0000C49C  2800              sub [bx+si],al
0000C49E  0002              add [bp+si],al
0000C4A0  0101              add [bx+di],ax
0000C4A2  0002              add [bp+si],al
0000C4A4  E000              loopne 0xc4a6
0000C4A6  6801F0            push word 0xf001
0000C4A9  0200              add al,[bx+si]
0000C4AB  0900              or [bx+si],ax
0000C4AD  0200              add al,[bx+si]
0000C4AF  0000              add [bx+si],al
0000C4B1  0000              add [bx+si],al
0000C4B3  0000              add [bx+si],al
0000C4B5  0000              add [bx+si],al
0000C4B7  0000              add [bx+si],al
0000C4B9  0000              add [bx+si],al
0000C4BB  0000              add [bx+si],al
0000C4BD  FF                db 0xff
0000C4BE  FF                db 0xff
0000C4BF  FF                db 0xff
0000C4C0  FF                db 0xff
0000C4C1  FF902605          call word near [bx+si+0x526]
0000C4C5  7000              jo 0xc4c7
0000C4C7  0000              add [bx+si],al
0000C4C9  0002              add [bp+si],al
0000C4CB  FF01              inc word [bx+di]
0000C4CD  0002              add [bp+si],al
0000C4CF  40                inc ax
0000C4D0  006801            add [bx+si+0x1],ch
0000C4D3  0002              add [bp+si],al
0000C4D5  0009              add [bx+di],cl
0000C4D7  0001              add [bx+di],al
0000C4D9  0000              add [bx+si],al
0000C4DB  0000              add [bx+si],al
0000C4DD  0000              add [bx+si],al
0000C4DF  4E                dec si
0000C4E0  4F                dec di
0000C4E1  204E41            and [bp+0x41],cl
0000C4E4  4D                dec bp
0000C4E5  45                inc bp
0000C4E6  2020              and [bx+si],ah
0000C4E8  2020              and [bx+si],ah
0000C4EA  0003              add [bp+di],al
0000C4EC  2000              and [bx+si],al
0000C4EE  2800              sub [bx+si],al
0000C4F0  0002              add [bp+si],al
0000C4F2  0101              add [bx+di],ax
0000C4F4  0002              add [bp+si],al
0000C4F6  E000              loopne 0xc4f8
0000C4F8  6801F0            push word 0xf001
0000C4FB  0200              add al,[bx+si]
0000C4FD  0900              or [bx+si],ax
0000C4FF  0200              add al,[bx+si]
0000C501  0000              add [bx+si],al
0000C503  0000              add [bx+si],al
0000C505  0000              add [bx+si],al
0000C507  0000              add [bx+si],al
0000C509  0000              add [bx+si],al
0000C50B  0000              add [bx+si],al
0000C50D  0000              add [bx+si],al
0000C50F  FF                db 0xff
0000C510  FF                db 0xff
0000C511  FF                db 0xff
0000C512  FF                db 0xff
0000C513  FF907805          call word near [bx+si+0x578]
0000C517  7000              jo 0xc519
0000C519  0000              add [bx+si],al
0000C51B  0002              add [bp+si],al
0000C51D  FF01              inc word [bx+di]
0000C51F  0002              add [bp+si],al
0000C521  40                inc ax
0000C522  006801            add [bx+si+0x1],ch
0000C525  0002              add [bp+si],al
0000C527  0009              add [bx+di],cl
0000C529  0001              add [bx+di],al
0000C52B  0000              add [bx+si],al
0000C52D  0000              add [bx+si],al
0000C52F  0000              add [bx+si],al
0000C531  4E                dec si
0000C532  4F                dec di
0000C533  204E41            and [bp+0x41],cl
0000C536  4D                dec bp
0000C537  45                inc bp
0000C538  2020              and [bx+si],ah
0000C53A  2020              and [bx+si],ah
0000C53C  0003              add [bp+di],al
0000C53E  2000              and [bx+si],al
0000C540  2800              sub [bx+si],al
0000C542  0002              add [bp+si],al
0000C544  0101              add [bx+di],ax
0000C546  0002              add [bp+si],al
0000C548  E000              loopne 0xc54a
0000C54A  6801F0            push word 0xf001
0000C54D  0200              add al,[bx+si]
0000C54F  0900              or [bx+si],ax
0000C551  0200              add al,[bx+si]
0000C553  0000              add [bx+si],al
0000C555  0000              add [bx+si],al
0000C557  0000              add [bx+si],al
0000C559  0000              add [bx+si],al
0000C55B  0000              add [bx+si],al
0000C55D  0000              add [bx+si],al
0000C55F  0000              add [bx+si],al
0000C561  FF                db 0xff
0000C562  FF                db 0xff
0000C563  FF                db 0xff
0000C564  FF                db 0xff
0000C565  FF90FFFF          call word near [bx+si-0x1]
0000C569  7000              jo 0xc56b
0000C56B  0000              add [bx+si],al
0000C56D  0002              add [bp+si],al
0000C56F  FF01              inc word [bx+di]
0000C571  0002              add [bp+si],al
0000C573  40                inc ax
0000C574  006801            add [bx+si+0x1],ch
0000C577  0002              add [bp+si],al
0000C579  0009              add [bx+di],cl
0000C57B  0001              add [bx+di],al
0000C57D  0000              add [bx+si],al
0000C57F  0000              add [bx+si],al
0000C581  0000              add [bx+si],al
0000C583  4E                dec si
0000C584  4F                dec di
0000C585  204E41            and [bp+0x41],cl
0000C588  4D                dec bp
0000C589  45                inc bp
0000C58A  2020              and [bx+si],ah
0000C58C  2020              and [bx+si],ah
0000C58E  0003              add [bp+di],al
0000C590  2000              and [bx+si],al
0000C592  2800              sub [bx+si],al
0000C594  0002              add [bp+si],al
0000C596  0101              add [bx+di],ax
0000C598  0002              add [bp+si],al
0000C59A  E000              loopne 0xc59c
0000C59C  6801F0            push word 0xf001
0000C59F  0200              add al,[bx+si]
0000C5A1  0900              or [bx+si],ax
0000C5A3  0200              add al,[bx+si]
0000C5A5  0000              add [bx+si],al
0000C5A7  0000              add [bx+si],al
0000C5A9  0000              add [bx+si],al
0000C5AB  0000              add [bx+si],al
0000C5AD  0000              add [bx+si],al
0000C5AF  0000              add [bx+si],al
0000C5B1  0000              add [bx+si],al
0000C5B3  FF                db 0xff
0000C5B4  FF                db 0xff
0000C5B5  FF                db 0xff
0000C5B6  FF                db 0xff
0000C5B7  FF03              inc word [bp+di]
0000C5B9  0970A0            or [bx+si-0x60],si
0000C5BC  050202            add ax,0x202
0000C5BF  0000              add [bx+si],al
0000C5C1  50                push ax
0000C5C2  005000            add [bx+si+0x0],dl
0000C5C5  50                push ax
0000C5C6  005000            add [bx+si+0x0],dl
0000C5C9  0000              add [bx+si],al
0000C5CB  2E891EB800        mov [cs:0xb8],bx
0000C5D0  2E8C06BA00        mov word [cs:0xba],es
0000C5D5  CB                retf
0000C5D6  56                push si
0000C5D7  BE3700            mov si,0x37
0000C5DA  EB4D              jmp 0xc629
0000C5DC  56                push si
0000C5DD  50                push ax
0000C5DE  32C0              xor al,al
0000C5E0  EB12              jmp 0xc5f4
0000C5E2  56                push si
0000C5E3  50                push ax
0000C5E4  B001              mov al,0x1
0000C5E6  EB0C              jmp 0xc5f4
0000C5E8  56                push si
0000C5E9  50                push ax
0000C5EA  B002              mov al,0x2
0000C5EC  EB06              jmp 0xc5f4
0000C5EE  56                push si
0000C5EF  50                push ax
0000C5F0  B003              mov al,0x3
0000C5F2  EB00              jmp 0xc5f4
0000C5F4  BE4F00            mov si,0x4f
0000C5F7  EB31              jmp 0xc62a
0000C5F9  56                push si
0000C5FA  50                push ax
0000C5FB  33C0              xor ax,ax
0000C5FD  EB16              jmp 0xc615
0000C5FF  56                push si
0000C600  50                push ax
0000C601  32C0              xor al,al
0000C603  B401              mov ah,0x1
0000C605  EB0E              jmp 0xc615
0000C607  56                push si
0000C608  50                push ax
0000C609  B001              mov al,0x1
0000C60B  B402              mov ah,0x2
0000C60D  EB06              jmp 0xc615
0000C60F  56                push si
0000C610  50                push ax
0000C611  B002              mov al,0x2
0000C613  B403              mov ah,0x3
0000C615  BE7D00            mov si,0x7d
0000C618  2E8826D105        mov [cs:0x5d1],ah
0000C61D  EB0B              jmp 0xc62a
0000C61F  56                push si
0000C620  BE6700            mov si,0x67
0000C623  EB04              jmp 0xc629
0000C625  56                push si
0000C626  BE0300            mov si,0x3
0000C629  50                push ax
0000C62A  51                push cx
0000C62B  52                push dx
0000C62C  57                push di
0000C62D  55                push bp
0000C62E  1E                push ds
0000C62F  06                push es
0000C630  53                push bx
0000C631  2EA26C01          mov [cs:0x16c],al
0000C635  2EC51EB800        lds bx,word [cs:0xb8]
0000C63A  8A4701            mov al,[bx+0x1]
0000C63D  8A670D            mov ah,[bx+0xd]
0000C640  8B4F12            mov cx,[bx+0x12]
0000C643  8B5714            mov dx,[bx+0x14]
0000C646  97                xchg ax,di
0000C647  8A4702            mov al,[bx+0x2]
0000C64A  2E3A04            cmp al,[cs:si]
0000C64D  7713              ja 0xc662
0000C64F  98                cbw
0000C650  D1E0              shl ax,0x0
0000C652  03F0              add si,ax
0000C654  97                xchg ax,di
0000C655  C47F0E            les di,word [bx+0xe]
0000C658  0E                push cs
0000C659  1F                pop ds
0000C65A  FC                cld
0000C65B  FF6401            jmp word near [si+0x1]
0000C65E  B403              mov ah,0x3
0000C660  EB19              jmp 0xc67b
0000C662  B003              mov al,0x3
0000C664  2EC51EB800        lds bx,word [cs:0xb8]
0000C669  294F12            sub [bx+0x12],cx
0000C66C  B481              mov ah,0x81
0000C66E  EB0B              jmp 0xc67b
0000C670  C51EB800          lds bx,word [0xb8]
0000C674  33C0              xor ax,ax
0000C676  894712            mov [bx+0x12],ax
0000C679  B401              mov ah,0x1
0000C67B  2EC51EB800        lds bx,word [cs:0xb8]
0000C680  894703            mov [bx+0x3],ax
0000C683  5B                pop bx
0000C684  07                pop es
0000C685  1F                pop ds
0000C686  5D                pop bp
0000C687  5F                pop di
0000C688  5A                pop dx
0000C689  59                pop cx
0000C68A  58                pop ax
0000C68B  5E                pop si
0000C68C  CB                retf
0000C68D  50                push ax
0000C68E  56                push si
0000C68F  57                push di
0000C690  55                push bp
0000C691  53                push bx
0000C692  B40E              mov ah,0xe
0000C694  B700              mov bh,0x0
0000C696  B307              mov bl,0x7
0000C698  CD10              int byte 0x10
0000C69A  5B                pop bx
0000C69B  5D                pop bp
0000C69C  5F                pop di
0000C69D  5E                pop si
0000C69E  58                pop ax
0000C69F  CF                iret
0000C6A0  2E8B166C01        mov dx,[cs:0x16c]
0000C6A5  C3                ret
0000C6A6  00E3              add bl,ah
0000C6A8  06                push es
0000C6A9  E80600            call 0xc6b2
0000C6AC  AA                stosb
0000C6AD  E2FA              loop 0xc6a9
0000C6AF  E9C7FF            jmp 0xc679
0000C6B2  33C0              xor ax,ax
0000C6B4  8606D005          xchg al,[0x5d0]
0000C6B8  0AC0              or al,al
0000C6BA  7515              jnz 0xc6d1
0000C6BC  CD16              int byte 0x16
0000C6BE  0BC0              or ax,ax
0000C6C0  74F0              jz 0xc6b2
0000C6C2  3D0072            cmp ax,0x7200
0000C6C5  7502              jnz 0xc6c9
0000C6C7  B010              mov al,0x10
0000C6C9  0AC0              or al,al
0000C6CB  7504              jnz 0xc6d1
0000C6CD  8826D005          mov [0x5d0],ah
0000C6D1  C3                ret
0000C6D2  EB49              jmp 0xc71d
0000C6D4  90                nop
0000C6D5  A0D005            mov al,[0x5d0]
0000C6D8  0AC0              or al,al
0000C6DA  7403              jz 0xc6df
0000C6DC  EB35              jmp 0xc713
0000C6DE  90                nop
0000C6DF  B401              mov ah,0x1
0000C6E1  CD16              int byte 0x16
0000C6E3  7403              jz 0xc6e8
0000C6E5  EB1D              jmp 0xc704
0000C6E7  90                nop
0000C6E8  803EC50100        cmp byte [0x1c5],0x0
0000C6ED  74E3              jz 0xc6d2
0000C6EF  C51EB800          lds bx,word [0xb8]
0000C6F3  F747030004        test word [bx+0x3],0x400
0000C6F8  74D8              jz 0xc6d2
0000C6FA  B80041            mov ax,0x4100
0000C6FD  32DB              xor bl,bl
0000C6FF  CD15              int byte 0x15
0000C701  EB1A              jmp 0xc71d
0000C703  90                nop
0000C704  0BC0              or ax,ax
0000C706  7504              jnz 0xc70c
0000C708  CD16              int byte 0x16
0000C70A  EBC9              jmp 0xc6d5
0000C70C  3D0072            cmp ax,0x7200
0000C70F  7502              jnz 0xc713
0000C711  B010              mov al,0x10
0000C713  C51EB800          lds bx,word [0xb8]
0000C717  88470D            mov [bx+0xd],al
0000C71A  E95CFF            jmp 0xc679
0000C71D  E93EFF            jmp 0xc65e
0000C720  E80300            call 0xc726
0000C723  E953FF            jmp 0xc679
0000C726  C606D00500        mov byte [0x5d0],0x0
0000C72B  B401              mov ah,0x1
0000C72D  CD16              int byte 0x16
0000C72F  7406              jz 0xc737
0000C731  32E4              xor ah,ah
0000C733  CD16              int byte 0x16
0000C735  EBF4              jmp 0xc72b
0000C737  C3                ret
0000C738  E3E0              jcxz 0xc71a
0000C73A  268A05            mov al,[es:di]
0000C73D  47                inc di
0000C73E  CD29              int byte 0x29
0000C740  E2F8              loop 0xc73a
0000C742  E934FF            jmp 0xc679
0000C745  2EC606D00503      mov byte [cs:0x5d0],0x3
0000C74B  CF                iret
0000C74C  00E3              add bl,ah
0000C74E  11E8              adc ax,bp
0000C750  8700              xchg ax,[bx+si]
0000C752  33C0              xor ax,ax
0000C754  8607              xchg al,[bx]
0000C756  0AC0              or al,al
0000C758  7503              jnz 0xc75d
0000C75A  E80600            call 0xc763
0000C75D  AA                stosb
0000C75E  E2FA              loop 0xc75a
0000C760  E916FF            jmp 0xc679
0000C763  B402              mov ah,0x2
0000C765  E84800            call 0xc7b0
0000C768  F6C40E            test ah,0xe
0000C76B  740A              jz 0xc777
0000C76D  83C402            add sp,0x2
0000C770  32C0              xor al,al
0000C772  0CB0              or al,0xb0
0000C774  E9EDFE            jmp 0xc664
0000C777  C3                ret
0000C778  E85E00            call 0xc7d9
0000C77B  8A07              mov al,[bx]
0000C77D  0AC0              or al,al
0000C77F  7514              jnz 0xc795
0000C781  E82600            call 0xc7aa
0000C784  F6C401            test ah,0x1
0000C787  740F              jz 0xc798
0000C789  A820              test al,0x20
0000C78B  740B              jz 0xc798
0000C78D  E8D3FF            call 0xc763
0000C790  E84600            call 0xc7d9
0000C793  8807              mov [bx],al
0000C795  E97BFF            jmp 0xc713
0000C798  E9C3FE            jmp 0xc65e
0000C79B  E80C00            call 0xc7aa
0000C79E  A820              test al,0x20
0000C7A0  74F6              jz 0xc798
0000C7A2  F6C420            test ah,0x20
0000C7A5  74F1              jz 0xc798
0000C7A7  E9CFFE            jmp 0xc679
0000C7AA  B403              mov ah,0x3
0000C7AC  E80100            call 0xc7b0
0000C7AF  C3                ret
0000C7B0  E8EDFE            call 0xc6a0
0000C7B3  CD14              int byte 0x14
0000C7B5  C3                ret
0000C7B6  E82000            call 0xc7d9
0000C7B9  C60700            mov byte [bx],0x0
0000C7BC  E9BAFE            jmp 0xc679
0000C7BF  E39F              jcxz 0xc760
0000C7C1  268A05            mov al,[es:di]
0000C7C4  47                inc di
0000C7C5  B401              mov ah,0x1
0000C7C7  E8E6FF            call 0xc7b0
0000C7CA  F6C480            test ah,0x80
0000C7CD  7405              jz 0xc7d4
0000C7CF  B00A              mov al,0xa
0000C7D1  E990FE            jmp 0xc664
0000C7D4  E2EB              loop 0xc7c1
0000C7D6  E9A0FE            jmp 0xc679
0000C7D9  E8C4FE            call 0xc6a0
0000C7DC  8BDA              mov bx,dx
0000C7DE  81C3BC00          add bx,0xbc
0000C7E2  C3                ret
0000C7E3  E310              jcxz 0xc7f5
0000C7E5  BB0200            mov bx,0x2
0000C7E8  268A05            mov al,[es:di]
0000C7EB  47                inc di
0000C7EC  32E4              xor ah,ah
0000C7EE  E82400            call 0xc815
0000C7F1  7505              jnz 0xc7f8
0000C7F3  E2F0              loop 0xc7e5
0000C7F5  E981FE            jmp 0xc679
0000C7F8  4F                dec di
0000C7F9  4B                dec bx
0000C7FA  75EC              jnz 0xc7e8
0000C7FC  E965FE            jmp 0xc664
0000C7FF  E81100            call 0xc813
0000C802  75F8              jnz 0xc7fc
0000C804  B009              mov al,0x9
0000C806  F6C420            test ah,0x20
0000C809  75F1              jnz 0xc7fc
0000C80B  F6C480            test ah,0x80
0000C80E  75E5              jnz 0xc7f5
0000C810  E94BFE            jmp 0xc65e
0000C813  B402              mov ah,0x2
0000C815  E888FE            call 0xc6a0
0000C818  CD17              int byte 0x17
0000C81A  F6C408            test ah,0x8
0000C81D  740A              jz 0xc829
0000C81F  B009              mov al,0x9
0000C821  F6C420            test ah,0x20
0000C824  7502              jnz 0xc828
0000C826  FEC0              inc al
0000C828  C3                ret
0000C829  B002              mov al,0x2
0000C82B  F6C401            test ah,0x1
0000C82E  C3                ret
0000C82F  1E                push ds
0000C830  06                push es
0000C831  1F                pop ds
0000C832  8BF7              mov si,di
0000C834  51                push cx
0000C835  53                push bx
0000C836  33DB              xor bx,bx
0000C838  2E8A1ED105        mov bl,[cs:0x5d1]
0000C83D  D1E3              shl bx,0x0
0000C83F  2E8B8FD205        mov cx,[cs:bx+0x5d2]
0000C844  5B                pop bx
0000C845  E8CBFF            call 0xc813
0000C848  751E              jnz 0xc868
0000C84A  F6C480            test ah,0x80
0000C84D  E1F6              loope 0xc845
0000C84F  59                pop cx
0000C850  7417              jz 0xc869
0000C852  AC                lodsb
0000C853  32E4              xor ah,ah
0000C855  E8BDFF            call 0xc815
0000C858  750F              jnz 0xc869
0000C85A  E2D8              loop 0xc834
0000C85C  1F                pop ds
0000C85D  2EC51EB800        lds bx,word [cs:0xb8]
0000C862  294F12            sub [bx+0x12],cx
0000C865  E911FE            jmp 0xc679
0000C868  59                pop cx
0000C869  1F                pop ds
0000C86A  2EC51EB800        lds bx,word [cs:0xb8]
0000C86F  294F12            sub [bx+0x12],cx
0000C872  E9F7FD            jmp 0xc66c
0000C875  C43EB800          les di,word [0xb8]
0000C879  26807D0D05        cmp byte [es:di+0xd],0x5
0000C87E  7403              jz 0xc883
0000C880  E9DFFD            jmp 0xc662
0000C883  268A450E          mov al,[es:di+0xe]
0000C887  26C47D13          les di,word [es:di+0x13]
0000C88B  33DB              xor bx,bx
0000C88D  8A1ED105          mov bl,[0x5d1]
0000C891  D1E3              shl bx,0x0
0000C893  8B8FD205          mov cx,[bx+0x5d2]
0000C897  3C65              cmp al,0x65
0000C899  7407              jz 0xc8a2
0000C89B  3C45              cmp al,0x45
0000C89D  75E1              jnz 0xc880
0000C89F  268B0D            mov cx,[es:di]
0000C8A2  898FD205          mov [bx+0x5d2],cx
0000C8A6  26890D            mov [es:di],cx
0000C8A9  E9CDFD            jmp 0xc679
0000C8AC  0000              add [bx+si],al
0000C8AE  13501F            adc dx,[bx+si+0x1f]
0000C8B1  1C1F              sbb al,0x1f
0000C8B3  1E                push ds
0000C8B4  1F                pop ds
0000C8B5  1E                push ds
0000C8B6  1F                pop ds
0000C8B7  1F                pop ds
0000C8B8  1E                push ds
0000C8B9  1F                pop ds
0000C8BA  1E                push ds
0000C8BB  1F                pop ds
0000C8BC  0000              add [bx+si],al
0000C8BE  0000              add [bx+si],al
0000C8C0  2D0926            sub ax,0x2609
0000C8C3  8B05              mov ax,[di]
0000C8C5  50                push ax
0000C8C6  803EBE0800        cmp byte [0x8be],0x0
0000C8CB  7426              jz 0xc8f3
0000C8CD  268A4503          mov al,[es:di+0x3]
0000C8D1  FF16CD08          call word near [0x8cd]
0000C8D5  8AE8              mov ch,al
0000C8D7  268A4502          mov al,[es:di+0x2]
0000C8DB  FF16CD08          call word near [0x8cd]
0000C8DF  8AC8              mov cl,al
0000C8E1  268A4505          mov al,[es:di+0x5]
0000C8E5  FF16CD08          call word near [0x8cd]
0000C8E9  8AF0              mov dh,al
0000C8EB  B200              mov dl,0x0
0000C8ED  FA                cli
0000C8EE  B403              mov ah,0x3
0000C8F0  CD1A              int byte 0x1a
0000C8F2  FB                sti
0000C8F3  268B4D02          mov cx,[es:di+0x2]
0000C8F7  268B5504          mov dx,[es:di+0x4]
0000C8FB  E81E00            call 0xc91c
0000C8FE  FA                cli
0000C8FF  B401              mov ah,0x1
0000C901  CD1A              int byte 0x1a
0000C903  8F06DA05          pop word [0x5da]
0000C907  FB                sti
0000C908  803EBE0800        cmp byte [0x8be],0x0
0000C90D  740A              jz 0xc919
0000C90F  FF16CF08          call word near [0x8cf]
0000C913  FA                cli
0000C914  B405              mov ah,0x5
0000C916  CD1A              int byte 0x1a
0000C918  FB                sti
0000C919  E95DFD            jmp 0xc679
0000C91C  B03C              mov al,0x3c
0000C91E  F6E5              mul ch
0000C920  B500              mov ch,0x0
0000C922  03C1              add ax,cx
0000C924  B97017            mov cx,0x1770
0000C927  8BDA              mov bx,dx
0000C929  F7E1              mul cx
0000C92B  8BC8              mov cx,ax
0000C92D  B064              mov al,0x64
0000C92F  F6E7              mul bh
0000C931  03C8              add cx,ax
0000C933  83D200            adc dx,0x0
0000C936  B700              mov bh,0x0
0000C938  03CB              add cx,bx
0000C93A  83D200            adc dx,0x0
0000C93D  92                xchg ax,dx
0000C93E  91                xchg ax,cx
0000C93F  BB0BE9            mov bx,0xe90b
0000C942  F7E3              mul bx
0000C944  87D1              xchg dx,cx
0000C946  92                xchg ax,dx
0000C947  F7E3              mul bx
0000C949  03C1              add ax,cx
0000C94B  83D200            adc dx,0x0
0000C94E  92                xchg ax,dx
0000C94F  BB0500            mov bx,0x5
0000C952  F6F3              div bl
0000C954  8AC8              mov cl,al
0000C956  B500              mov ch,0x0
0000C958  8AC4              mov al,ah
0000C95A  98                cbw
0000C95B  92                xchg ax,dx
0000C95C  F7F3              div bx
0000C95E  8BD0              mov dx,ax
0000C960  C3                ret
0000C961  32E4              xor ah,ah
0000C963  CD1A              int byte 0x1a
0000C965  0AC0              or al,al
0000C967  7404              jz 0xc96d
0000C969  FF06DA05          inc word [0x5da]
0000C96D  8B36DA05          mov si,[0x5da]
0000C971  8BC1              mov ax,cx
0000C973  8BDA              mov bx,dx
0000C975  D1E2              shl dx,0x0
0000C977  D1D1              rcl cx,0x0
0000C979  D1E2              shl dx,0x0
0000C97B  D1D1              rcl cx,0x0
0000C97D  03D3              add dx,bx
0000C97F  13C1              adc ax,cx
0000C981  92                xchg ax,dx
0000C982  B90BE9            mov cx,0xe90b
0000C985  F7F1              div cx
0000C987  8BD8              mov bx,ax
0000C989  33C0              xor ax,ax
0000C98B  F7F1              div cx
0000C98D  8BD3              mov dx,bx
0000C98F  B9C800            mov cx,0xc8
0000C992  F7F1              div cx
0000C994  80FA64            cmp dl,0x64
0000C997  7203              jc 0xc99c
0000C999  80EA64            sub dl,0x64
0000C99C  F5                cmc
0000C99D  8ADA              mov bl,dl
0000C99F  D1D0              rcl ax,0x0
0000C9A1  B200              mov dl,0x0
0000C9A3  D1D2              rcl dx,0x0
0000C9A5  B93C00            mov cx,0x3c
0000C9A8  F7F1              div cx
0000C9AA  8AFA              mov bh,dl
0000C9AC  F6F1              div cl
0000C9AE  86C4              xchg al,ah
0000C9B0  50                push ax
0000C9B1  8BC6              mov ax,si
0000C9B3  AB                stosw
0000C9B4  58                pop ax
0000C9B5  AB                stosw
0000C9B6  8BC3              mov ax,bx
0000C9B8  AB                stosw
0000C9B9  E9BDFC            jmp 0xc679
0000C9BC  00E8              add al,ch
0000C9BE  80022E            add byte [bp+si],0x2e
0000C9C1  813EC8016B6A      cmp word [0x1c8],0x6a6b
0000C9C7  7546              jnz 0xca0f
0000C9C9  BE0100            mov si,0x1
0000C9CC  F745290001        test word [di+0x29],0x100
0000C9D1  7417              jz 0xc9ea
0000C9D3  816529FFFE        and word [di+0x29],0xfeff
0000C9D8  2EC6065102FF      mov byte [cs:0x251],0xff
0000C9DE  F745290100        test word [di+0x29],0x1
0000C9E3  740C              jz 0xc9f1
0000C9E5  BEFFFF            mov si,0xffff
0000C9E8  EB25              jmp 0xca0f
0000C9EA  F745290100        test word [di+0x29],0x1
0000C9EF  751E              jnz 0xca0f
0000C9F1  33F6              xor si,si
0000C9F3  E8A112            call 0xdc97
0000C9F6  7233              jc 0xca2b
0000C9F8  E81414            call 0xde0f
0000C9FB  7512              jnz 0xca0f
0000C9FD  BE0100            mov si,0x1
0000CA00  2EA05102          mov al,[cs:0x251]
0000CA04  3A4504            cmp al,[di+0x4]
0000CA07  7505              jnz 0xca0e
0000CA09  E82500            call 0xca31
0000CA0C  EB01              jmp 0xca0f
0000CA0E  4E                dec si
0000CA0F  2EC41EB800        les bx,word [cs:0xb8]
0000CA14  2689770E          mov [es:bx+0xe],si
0000CA18  0BF6              or si,si
0000CA1A  7803              js 0xca1f
0000CA1C  E95AFC            jmp 0xc679
0000CA1F  E83D13            call 0xdd5f
0000CA22  2EC6065102FF      mov byte [cs:0x251],0xff
0000CA28  E94EFC            jmp 0xc679
0000CA2B  E8FD04            call 0xcf2b
0000CA2E  E93BFC            jmp 0xc66c
0000CA31  BE0100            mov si,0x1
0000CA34  32E4              xor ah,ah
0000CA36  CD1A              int byte 0x1a
0000CA38  D0E8              shr al,0x0
0000CA3A  2E8316DA0500      adc word [cs:0x5da],0x0
0000CA40  8B454D            mov ax,[di+0x4d]
0000CA43  2BD0              sub dx,ax
0000CA45  8B454F            mov ax,[di+0x4f]
0000CA48  1BC8              sbb cx,ax
0000CA4A  751D              jnz 0xca69
0000CA4C  0BD2              or dx,dx
0000CA4E  7514              jnz 0xca64
0000CA50  2EFE065002        inc byte [cs:0x250]
0000CA55  2E803E500205      cmp byte [cs:0x250],0x5
0000CA5B  720D              jc 0xca6a
0000CA5D  2EFE0E5002        dec byte [cs:0x250]
0000CA62  EB05              jmp 0xca69
0000CA64  83FA24            cmp dx,0x24
0000CA67  7601              jna 0xca6a
0000CA69  4E                dec si
0000CA6A  C3                ret
0000CA6B  EBBE              jmp 0xca2b
0000CA6D  268A25            mov ah,[es:di]
0000CA70  E8CD01            call 0xcc40
0000CA73  F745290100        test word [di+0x29],0x1
0000CA78  7508              jnz 0xca82
0000CA7A  E81C00            call 0xca99
0000CA7D  72EC              jc 0xca6b
0000CA7F  E8AB13            call 0xde2d
0000CA82  83C706            add di,0x6
0000CA85  2EC41EB800        les bx,word [cs:0xb8]
0000CA8A  2688670D          mov [es:bx+0xd],ah
0000CA8E  26897F12          mov [es:bx+0x12],di
0000CA92  268C5F14          mov word [es:bx+0x14],ds
0000CA96  E9E0FB            jmp 0xc679
0000CA99  F745290500        test word [di+0x29],0x5
0000CA9E  7403              jz 0xcaa3
0000CAA0  E98E00            jmp 0xcb31
0000CAA3  51                push cx
0000CAA4  52                push dx
0000CAA5  06                push es
0000CAA6  53                push bx
0000CAA7  E89200            call 0xcb3c
0000CAAA  7303              jnc 0xcaaf
0000CAAC  E98300            jmp 0xcb32
0000CAAF  83FB00            cmp bx,0x0
0000CAB2  7506              jnz 0xcaba
0000CAB4  E8E000            call 0xcb97
0000CAB7  EB5C              jmp 0xcb15
0000CAB9  90                nop
0000CABA  E8FC00            call 0xcbb9
0000CABD  7273              jc 0xcb32
0000CABF  E8AC12            call 0xdd6e
0000CAC2  807D2802          cmp byte [di+0x28],0x2
0000CAC6  751C              jnz 0xcae4
0000CAC8  80FCF9            cmp ah,0xf9
0000CACB  756A              jnz 0xcb37
0000CACD  BBC905            mov bx,0x5c9
0000CAD0  0E                push cs
0000CAD1  07                pop es
0000CAD2  8A870000          mov al,[bx+0x0]
0000CAD6  8B8F0300          mov cx,[bx+0x3]
0000CADA  8B970500          mov dx,[bx+0x5]
0000CADE  8B9F0100          mov bx,[bx+0x1]
0000CAE2  EB2E              jmp 0xcb12
0000CAE4  8ACC              mov cl,ah
0000CAE6  80E1F8            and cl,0xf8
0000CAE9  80F9F8            cmp cl,0xf8
0000CAEC  7549              jnz 0xcb37
0000CAEE  B001              mov al,0x1
0000CAF0  BB0840            mov bx,0x4008
0000CAF3  B94001            mov cx,0x140
0000CAF6  BA0101            mov dx,0x101
0000CAF9  F6C402            test ah,0x2
0000CAFC  7507              jnz 0xcb05
0000CAFE  FEC0              inc al
0000CB00  FEC3              inc bl
0000CB02  83C128            add cx,0x28
0000CB05  F6C401            test ah,0x1
0000CB08  7408              jz 0xcb12
0000CB0A  03C9              add cx,cx
0000CB0C  B770              mov bh,0x70
0000CB0E  FEC6              inc dh
0000CB10  FEC2              inc dl
0000CB12  8B7509            mov si,[di+0x9]
0000CB15  887508            mov [di+0x8],dh
0000CB18  887D0C            mov [di+0xc],bh
0000CB1B  894D0E            mov [di+0xe],cx
0000CB1E  886510            mov [di+0x10],ah
0000CB21  884511            mov [di+0x11],al
0000CB24  885D13            mov [di+0x13],bl
0000CB27  885515            mov [di+0x15],dl
0000CB2A  897509            mov [di+0x9],si
0000CB2D  5B                pop bx
0000CB2E  07                pop es
0000CB2F  5A                pop dx
0000CB30  59                pop cx
0000CB31  C3                ret
0000CB32  E8F603            call 0xcf2b
0000CB35  EBF6              jmp 0xcb2d
0000CB37  B007              mov al,0x7
0000CB39  F9                stc
0000CB3A  EBF1              jmp 0xcb2d
0000CB3C  B90100            mov cx,0x1
0000CB3F  32F6              xor dh,dh
0000CB41  E88700            call 0xcbcb
0000CB44  7250              jc 0xcb96
0000CB46  33DB              xor bx,bx
0000CB48  2E803E810269      cmp byte [cs:0x281],0x69
0000CB4E  7418              jz 0xcb68
0000CB50  2E803E8102E9      cmp byte [cs:0x281],0xe9
0000CB56  7410              jz 0xcb68
0000CB58  2E803E8102EB      cmp byte [cs:0x281],0xeb
0000CB5E  7533              jnz 0xcb93
0000CB60  2E803E830290      cmp byte [cs:0x283],0x90
0000CB66  752B              jnz 0xcb93
0000CB68  2EA09602          mov al,[cs:0x296]
0000CB6C  24F0              and al,0xf0
0000CB6E  3CF0              cmp al,0xf0
0000CB70  7521              jnz 0xcb93
0000CB72  2EA09602          mov al,[cs:0x296]
0000CB76  A801              test al,0x1
0000CB78  751A              jnz 0xcb94
0000CB7A  2E813E8902332E    cmp word [cs:0x289],0x2e33
0000CB81  7508              jnz 0xcb8b
0000CB83  2E803E8B0232      cmp byte [cs:0x28b],0x32
0000CB89  7309              jnc 0xcb94
0000CB8B  2EC6068E0201      mov byte [cs:0x28e],0x1
0000CB91  EB01              jmp 0xcb94
0000CB93  43                inc bx
0000CB94  F8                clc
0000CB95  C3                ret
0000CB96  C3                ret
0000CB97  1E                push ds
0000CB98  57                push di
0000CB99  0E                push cs
0000CB9A  1F                pop ds
0000CB9B  BF8C02            mov di,0x28c
0000CB9E  8A7502            mov dh,[di+0x2]
0000CBA1  8A7D06            mov bh,[di+0x6]
0000CBA4  8B4D08            mov cx,[di+0x8]
0000CBA7  8A650A            mov ah,[di+0xa]
0000CBAA  8A450B            mov al,[di+0xb]
0000CBAD  8A5D0D            mov bl,[di+0xd]
0000CBB0  8A550F            mov dl,[di+0xf]
0000CBB3  8B7503            mov si,[di+0x3]
0000CBB6  5F                pop di
0000CBB7  1F                pop ds
0000CBB8  C3                ret
0000CBB9  50                push ax
0000CBBA  B600              mov dh,0x0
0000CBBC  B90200            mov cx,0x2
0000CBBF  E80900            call 0xcbcb
0000CBC2  7205              jc 0xcbc9
0000CBC4  58                pop ax
0000CBC5  2E8A27            mov ah,[cs:bx]
0000CBC8  C3                ret
0000CBC9  59                pop cx
0000CBCA  C3                ret
0000CBCB  55                push bp
0000CBCC  BD0300            mov bp,0x3
0000CBCF  06                push es
0000CBD0  8A5504            mov dl,[di+0x4]
0000CBD3  BB8102            mov bx,0x281
0000CBD6  0E                push cs
0000CBD7  07                pop es
0000CBD8  B80102            mov ax,0x201
0000CBDB  CD13              int byte 0x13
0000CBDD  733C              jnc 0xcc1b
0000CBDF  E8D70A            call 0xd6b9
0000CBE2  7434              jz 0xcc18
0000CBE4  F745290100        test word [di+0x29],0x1
0000CBE9  75ED              jnz 0xcbd8
0000CBEB  1E                push ds
0000CBEC  50                push ax
0000CBED  2EC5366202        lds si,word [cs:0x262]
0000CBF2  8A4409            mov al,[si+0x9]
0000CBF5  2EA25F02          mov [cs:0x25f],al
0000CBF9  C644090F          mov byte [si+0x9],0xf
0000CBFD  58                pop ax
0000CBFE  1F                pop ds
0000CBFF  B80102            mov ax,0x201
0000CC02  CD13              int byte 0x13
0000CC04  1E                push ds
0000CC05  50                push ax
0000CC06  2EC5366202        lds si,word [cs:0x262]
0000CC0B  2EA05F02          mov al,[cs:0x25f]
0000CC0F  884409            mov [si+0x9],al
0000CC12  58                pop ax
0000CC13  1F                pop ds
0000CC14  7305              jnc 0xcc1b
0000CC16  EBC7              jmp 0xcbdf
0000CC18  B2FF              mov dl,0xff
0000CC1A  F9                stc
0000CC1B  2E8816C101        mov [cs:0x1c1],dl
0000CC20  2E88165102        mov [cs:0x251],dl
0000CC25  886D4C            mov [di+0x4c],ch
0000CC28  9C                pushf
0000CC29  E81803            call 0xcf44
0000CC2C  9D                popf
0000CC2D  07                pop es
0000CC2E  5D                pop bp
0000CC2F  C3                ret
0000CC30  E80D00            call 0xcc40
0000CC33  F745290100        test word [di+0x29],0x1
0000CC38  7503              jnz 0xcc3d
0000CC3A  E93CFA            jmp 0xc679
0000CC3D  E91EFA            jmp 0xc65e
0000CC40  53                push bx
0000CC41  0E                push cs
0000CC42  1F                pop ds
0000CC43  8B3E4C02          mov di,[0x24c]
0000CC47  2E803EC20101      cmp byte [cs:0x1c2],0x1
0000CC4D  7207              jc 0xcc56
0000CC4F  384504            cmp [di+0x4],al
0000CC52  7414              jz 0xcc68
0000CC54  EB05              jmp 0xcc5b
0000CC56  384505            cmp [di+0x5],al
0000CC59  740D              jz 0xcc68
0000CC5B  8B5D02            mov bx,[di+0x2]
0000CC5E  8B3D              mov di,[di]
0000CC60  8EDB              mov ds,bx
0000CC62  83FFFF            cmp di,0xffffffffffffffff
0000CC65  75E0              jnz 0xcc47
0000CC67  F9                stc
0000CC68  5B                pop bx
0000CC69  C3                ret
0000CC6A  2EC70656020301    mov word [cs:0x256],0x103
0000CC71  EB07              jmp 0xcc7a
0000CC73  2EC70656020300    mov word [cs:0x256],0x3
0000CC7A  E89000            call 0xcd0d
0000CC7D  7203              jc 0xcc82
0000CC7F  E9F7F9            jmp 0xc679
0000CC82  E9DFF9            jmp 0xc664
0000CC85  E87F00            call 0xcd07
0000CC88  EBF3              jmp 0xcc7d
0000CC8A  50                push ax
0000CC8B  53                push bx
0000CC8C  8B5D29            mov bx,[di+0x29]
0000CC8F  F6C321            test bl,0x21
0000CC92  7562              jnz 0xccf6
0000CC94  F6C310            test bl,0x10
0000CC97  745D              jz 0xccf6
0000CC99  8A4504            mov al,[di+0x4]
0000CC9C  1E                push ds
0000CC9D  57                push di
0000CC9E  0E                push cs
0000CC9F  1F                pop ds
0000CCA0  BF4C02            mov di,0x24c
0000CCA3  8B5D02            mov bx,[di+0x2]
0000CCA6  8B3D              mov di,[di]
0000CCA8  8EDB              mov ds,bx
0000CCAA  83FFFF            cmp di,0xffffffffffffffff
0000CCAD  744A              jz 0xccf9
0000CCAF  384504            cmp [di+0x4],al
0000CCB2  75EF              jnz 0xcca3
0000CCB4  8B5D29            mov bx,[di+0x29]
0000CCB7  F6C320            test bl,0x20
0000CCBA  74E7              jz 0xcca3
0000CCBC  80F320            xor bl,0x20
0000CCBF  895D29            mov [di+0x29],bx
0000CCC2  5F                pop di
0000CCC3  1F                pop ds
0000CCC4  33DB              xor bx,bx
0000CCC6  80CB20            or bl,0x20
0000CCC9  095D29            or [di+0x29],bx
0000CCCC  2E803EC70101      cmp byte [cs:0x1c7],0x1
0000CCD2  7422              jz 0xccf6
0000CCD4  2E803EC40102      cmp byte [cs:0x1c4],0x2
0000CCDA  7517              jnz 0xccf3
0000CCDC  1E                push ds
0000CCDD  57                push di
0000CCDE  50                push ax
0000CCDF  8A4505            mov al,[di+0x5]
0000CCE2  8AE0              mov ah,al
0000CCE4  33FF              xor di,di
0000CCE6  8EDF              mov ds,di
0000CCE8  86060405          xchg al,[0x504]
0000CCEC  3AE0              cmp ah,al
0000CCEE  58                pop ax
0000CCEF  5F                pop di
0000CCF0  1F                pop ds
0000CCF1  7403              jz 0xccf6
0000CCF3  E8510E            call 0xdb47
0000CCF6  5B                pop bx
0000CCF7  58                pop ax
0000CCF8  C3                ret
0000CCF9  F9                stc
0000CCFA  5F                pop di
0000CCFB  1F                pop ds
0000CCFC  EBF8              jmp 0xccf6
0000CCFE  B008              mov al,0x8
0000CD00  F9                stc
0000CD01  C3                ret
0000CD02  B00F              mov al,0xf
0000CD04  E9B200            jmp 0xcdb9
0000CD07  2EC606560202      mov byte [cs:0x256],0x2
0000CD0D  8BDF              mov bx,di
0000CD0F  E82EFF            call 0xcc40
0000CD12  72EA              jc 0xccfe
0000CD14  8A4510            mov al,[di+0x10]
0000CD17  2EA25402          mov [cs:0x254],al
0000CD1B  E3E4              jcxz 0xcd01
0000CD1D  2E89266A02        mov [cs:0x26a],sp
0000CD22  8BF2              mov si,dx
0000CD24  03F1              add si,cx
0000CD26  035517            add dx,[di+0x17]
0000CD29  3B750E            cmp si,[di+0xe]
0000CD2C  77D0              ja 0xccfe
0000CD2E  2E890E5802        mov [cs:0x258],cx
0000CD33  1E                push ds
0000CD34  33C0              xor ax,ax
0000CD36  8ED8              mov ds,ax
0000CD38  C5367800          lds si,word [0x78]
0000CD3C  2E89366202        mov [cs:0x262],si
0000CD41  2E8C1E6402        mov word [cs:0x264],ds
0000CD46  1F                pop ds
0000CD47  F745290100        test word [di+0x29],0x1
0000CD4C  7509              jnz 0xcd57
0000CD4E  E839FF            call 0xcc8a
0000CD51  E88A0F            call 0xdcde
0000CD54  E82900            call 0xcd80
0000CD57  8BC2              mov ax,dx
0000CD59  33D2              xor dx,dx
0000CD5B  F77513            div word [di+0x13]
0000CD5E  FEC2              inc dl
0000CD60  2E88166602        mov [cs:0x266],dl
0000CD65  8B4D15            mov cx,[di+0x15]
0000CD68  33D2              xor dx,dx
0000CD6A  F7F1              div cx
0000CD6C  2E88166702        mov [cs:0x267],dl
0000CD71  2EA36802          mov [cs:0x268],ax
0000CD75  2EA15802          mov ax,[cs:0x258]
0000CD79  E87100            call 0xcded
0000CD7C  E84100            call 0xcdc0
0000CD7F  C3                ret
0000CD80  8A4504            mov al,[di+0x4]
0000CD83  2EA25102          mov [cs:0x251],al
0000CD87  8CD9              mov cx,ds
0000CD89  2EC5366202        lds si,word [cs:0x262]
0000CD8E  2EA06002          mov al,[cs:0x260]
0000CD92  884404            mov [si+0x4],al
0000CD95  8A440A            mov al,[si+0xa]
0000CD98  2EA25B02          mov [cs:0x25b],al
0000CD9C  06                push es
0000CD9D  8EC1              mov es,cx
0000CD9F  26807D2802        cmp byte [es:di+0x28],0x2
0000CDA4  7505              jnz 0xcdab
0000CDA6  B004              mov al,0x4
0000CDA8  86440A            xchg al,[si+0xa]
0000CDAB  07                pop es
0000CDAC  32C0              xor al,al
0000CDAE  FEC0              inc al
0000CDB0  864409            xchg al,[si+0x9]
0000CDB3  2EA25C02          mov [cs:0x25c],al
0000CDB7  B00F              mov al,0xf
0000CDB9  8ED9              mov ds,cx
0000CDBB  2EA25D02          mov [cs:0x25d],al
0000CDBF  C3                ret
0000CDC0  F745290100        test word [di+0x29],0x1
0000CDC5  7525              jnz 0xcdec
0000CDC7  E87A01            call 0xcf44
0000CDCA  50                push ax
0000CDCB  8CDA              mov dx,ds
0000CDCD  2EA05C02          mov al,[cs:0x25c]
0000CDD1  2E8A265B02        mov ah,[cs:0x25b]
0000CDD6  2EC5366202        lds si,word [cs:0x262]
0000CDDB  C6440409          mov byte [si+0x4],0x9
0000CDDF  884409            mov [si+0x9],al
0000CDE2  C6440302          mov byte [si+0x3],0x2
0000CDE6  88640A            mov [si+0xa],ah
0000CDE9  8EDA              mov ds,dx
0000CDEB  58                pop ax
0000CDEC  C3                ret
0000CDED  0BC0              or ax,ax
0000CDEF  74FB              jz 0xcdec
0000CDF1  F745290100        test word [di+0x29],0x1
0000CDF6  7406              jz 0xcdfe
0000CDF8  E82600            call 0xce21
0000CDFB  33C0              xor ax,ax
0000CDFD  C3                ret
0000CDFE  8A4D13            mov cl,[di+0x13]
0000CE01  FEC1              inc cl
0000CE03  2E2A0E6602        sub cl,[cs:0x266]
0000CE08  32ED              xor ch,ch
0000CE0A  3BC1              cmp ax,cx
0000CE0C  7302              jnc 0xce10
0000CE0E  8BC8              mov cx,ax
0000CE10  50                push ax
0000CE11  51                push cx
0000CE12  8BC1              mov ax,cx
0000CE14  E80A00            call 0xce21
0000CE17  59                pop cx
0000CE18  58                pop ax
0000CE19  2BC1              sub ax,cx
0000CE1B  D0E1              shl cl,0x0
0000CE1D  02F9              add bh,cl
0000CE1F  EBCC              jmp 0xcded
0000CE21  BD0500            mov bp,0x5
0000CE24  2E8A265602        mov ah,[cs:0x256]
0000CE29  50                push ax
0000CE2A  2E8B166802        mov dx,[cs:0x268]
0000CE2F  F745290100        test word [di+0x29],0x1
0000CE34  7409              jz 0xce3f
0000CE36  837D4D01          cmp word [di+0x4d],0x1
0000CE3A  7503              jnz 0xce3f
0000CE3C  03554F            add dx,[di+0x4f]
0000CE3F  D0CE              ror dh,0x0
0000CE41  D0CE              ror dh,0x0
0000CE43  2E0A366602        or dh,[cs:0x266]
0000CE48  8BCA              mov cx,dx
0000CE4A  86E9              xchg ch,cl
0000CE4C  2E8A366702        mov dh,[cs:0x267]
0000CE51  8A5504            mov dl,[di+0x4]
0000CE54  807D2805          cmp byte [di+0x28],0x5
0000CE58  7415              jz 0xce6f
0000CE5A  2E803EC101FF      cmp byte [cs:0x1c1],0xff
0000CE60  740A              jz 0xce6c
0000CE62  80FC02            cmp ah,0x2
0000CE65  7408              jz 0xce6f
0000CE67  80FC04            cmp ah,0x4
0000CE6A  7403              jz 0xce6f
0000CE6C  EB4E              jmp 0xcebc
0000CE6E  90                nop
0000CE6F  E8AB00            call 0xcf1d
0000CE72  7262              jc 0xced6
0000CE74  2E8816C101        mov [cs:0x1c1],dl
0000CE79  886D4C            mov [di+0x4c],ch
0000CE7C  2E813E56020301    cmp word [cs:0x256],0x103
0000CE83  7448              jz 0xcecd
0000CE85  58                pop ax
0000CE86  80E13F            and cl,0x3f
0000CE89  32E4              xor ah,ah
0000CE8B  2E29065802        sub [cs:0x258],ax
0000CE90  02C8              add cl,al
0000CE92  2E880E6602        mov [cs:0x266],cl
0000CE97  3A4D13            cmp cl,[di+0x13]
0000CE9A  761E              jna 0xceba
0000CE9C  2EC606660201      mov byte [cs:0x266],0x1
0000CEA2  2E8A366702        mov dh,[cs:0x267]
0000CEA7  FEC6              inc dh
0000CEA9  3A7515            cmp dh,[di+0x15]
0000CEAC  7207              jc 0xceb5
0000CEAE  32F6              xor dh,dh
0000CEB0  2EFF066802        inc word [cs:0x268]
0000CEB5  2E88366702        mov [cs:0x267],dh
0000CEBA  F8                clc
0000CEBB  C3                ret
0000CEBC  2E3A16C101        cmp dl,[cs:0x1c1]
0000CEC1  7505              jnz 0xcec8
0000CEC3  3A6D4C            cmp ch,[di+0x4c]
0000CEC6  74A7              jz 0xce6f
0000CEC8  E83300            call 0xcefe
0000CECB  EBA5              jmp 0xce72
0000CECD  58                pop ax
0000CECE  50                push ax
0000CECF  B404              mov ah,0x4
0000CED1  E84900            call 0xcf1d
0000CED4  73AF              jnc 0xce85
0000CED6  E84A0E            call 0xdd23
0000CED9  E8DD07            call 0xd6b9
0000CEDC  7409              jz 0xcee7
0000CEDE  80FC80            cmp ah,0x80
0000CEE1  7404              jz 0xcee7
0000CEE3  58                pop ax
0000CEE4  E942FF            jmp 0xce29
0000CEE7  E84100            call 0xcf2b
0000CEEA  2EC6065102FF      mov byte [cs:0x251],0xff
0000CEF0  2E8B0E5802        mov cx,[cs:0x258]
0000CEF5  2E8B266A02        mov sp,[cs:0x26a]
0000CEFA  E8CDFE            call 0xcdca
0000CEFD  C3                ret
0000CEFE  1E                push ds
0000CEFF  50                push ax
0000CF00  2EA05D02          mov al,[cs:0x25d]
0000CF04  2EC5366202        lds si,word [cs:0x262]
0000CF09  884409            mov [si+0x9],al
0000CF0C  58                pop ax
0000CF0D  1F                pop ds
0000CF0E  E80C00            call 0xcf1d
0000CF11  1E                push ds
0000CF12  2EC5366202        lds si,word [cs:0x262]
0000CF17  C6440901          mov byte [si+0x9],0x1
0000CF1B  1F                pop ds
0000CF1C  C3                ret
0000CF1D  F6451980          test byte [di+0x19],0x80
0000CF21  7503              jnz 0xcf26
0000CF23  CD13              int byte 0x13
0000CF25  C3                ret
0000CF26  F9                stc
0000CF27  B480              mov ah,0x80
0000CF29  EBFA              jmp 0xcf25
0000CF2B  51                push cx
0000CF2C  0E                push cs
0000CF2D  07                pop es
0000CF2E  8AC4              mov al,ah
0000CF30  2EA27802          mov [cs:0x278],al
0000CF34  B90800            mov cx,0x8
0000CF37  BF7102            mov di,0x271
0000CF3A  F2AE              repne scasb
0000CF3C  2E8A850700        mov al,[cs:di+0x7]
0000CF41  59                pop cx
0000CF42  F9                stc
0000CF43  C3                ret
0000CF44  50                push ax
0000CF45  32E4              xor ah,ah
0000CF47  CD1A              int byte 0x1a
0000CF49  0AC0              or al,al
0000CF4B  7405              jz 0xcf52
0000CF4D  2EFF06DA05        inc word [cs:0x5da]
0000CF52  3B554D            cmp dx,[di+0x4d]
0000CF55  7505              jnz 0xcf5c
0000CF57  3B4D4F            cmp cx,[di+0x4f]
0000CF5A  740C              jz 0xcf68
0000CF5C  2EC606500200      mov byte [cs:0x250],0x0
0000CF62  89554D            mov [di+0x4d],dx
0000CF65  894D4F            mov [di+0x4f],cx
0000CF68  F8                clc
0000CF69  58                pop ax
0000CF6A  C3                ret
0000CF6B  0000              add [bx+si],al
0000CF6D  0000              add [bx+si],al
0000CF6F  0000              add [bx+si],al
0000CF71  0000              add [bx+si],al
0000CF73  0000              add [bx+si],al
0000CF75  0000              add [bx+si],al
0000CF77  0000              add [bx+si],al
0000CF79  0000              add [bx+si],al
0000CF7B  0000              add [bx+si],al
0000CF7D  0000              add [bx+si],al
0000CF7F  0000              add [bx+si],al
0000CF81  2EA3C000          mov [cs:0xc0],ax
0000CF85  9C                pushf
0000CF86  80FC05            cmp ah,0x5
0000CF89  750A              jnz 0xcf95
0000CF8B  2EC70652024001    mov word [cs:0x252],0x140
0000CF92  E83F0E            call 0xddd4
0000CF95  80FC08            cmp ah,0x8
0000CF98  7412              jz 0xcfac
0000CF9A  80FC15            cmp ah,0x15
0000CF9D  740D              jz 0xcfac
0000CF9F  2EFF1EB400        call word far [cs:0xb4]
0000CFA4  7203              jc 0xcfa9
0000CFA6  CA0200            retf word 0x2
0000CFA9  E98000            jmp 0xd02c
0000CFAC  2E89168E0F        mov [cs:0xf8e],dx
0000CFB1  2EFF1EB400        call word far [cs:0xb4]
0000CFB6  2EA37C0F          mov [cs:0xf7c],ax
0000CFBA  2E891E7E0F        mov [cs:0xf7e],bx
0000CFBF  2E890E800F        mov [cs:0xf80],cx
0000CFC4  2E8916820F        mov [cs:0xf82],dx
0000CFC9  2E893E840F        mov [cs:0xf84],di
0000CFCE  2E8936860F        mov [cs:0xf86],si
0000CFD3  2E892E880F        mov [cs:0xf88],bp
0000CFD8  2E8C1E8A0F        mov word [cs:0xf8a],ds
0000CFDD  2E8C068C0F        mov word [cs:0xf8c],es
0000CFE2  9C                pushf
0000CFE3  2E8F06900F        pop word [cs:0xf90]
0000CFE8  2E8B168E0F        mov dx,[cs:0xf8e]
0000CFED  9C                pushf
0000CFEE  B401              mov ah,0x1
0000CFF0  2EFF1EB400        call word far [cs:0xb4]
0000CFF5  2EA17C0F          mov ax,[cs:0xf7c]
0000CFF9  2E8B1E7E0F        mov bx,[cs:0xf7e]
0000CFFE  2E8B0E800F        mov cx,[cs:0xf80]
0000D003  2E8B16820F        mov dx,[cs:0xf82]
0000D008  2E8B3E840F        mov di,[cs:0xf84]
0000D00D  2E8B36860F        mov si,[cs:0xf86]
0000D012  2E8B2E880F        mov bp,[cs:0xf88]
0000D017  2E8E1E8A0F        mov ds,word [cs:0xf8a]
0000D01C  2E8E068C0F        mov es,word [cs:0xf8c]
0000D021  2EFF36900F        push word [cs:0xf90]
0000D026  9D                popf
0000D027  7203              jc 0xd02c
0000D029  CA0200            retf word 0x2
0000D02C  9C                pushf
0000D02D  80FC09            cmp ah,0x9
0000D030  7503              jnz 0xd035
0000D032  EB59              jmp 0xd08d
0000D034  90                nop
0000D035  80FC11            cmp ah,0x11
0000D038  7404              jz 0xd03e
0000D03A  9D                popf
0000D03B  CA0200            retf word 0x2
0000D03E  B400              mov ah,0x0
0000D040  2EFF1EB400        call word far [cs:0xb4]
0000D045  2EA1C000          mov ax,[cs:0xc0]
0000D049  3C01              cmp al,0x1
0000D04B  7505              jnz 0xd052
0000D04D  32E4              xor ah,ah
0000D04F  CA0200            retf word 0x2
0000D052  53                push bx
0000D053  51                push cx
0000D054  52                push dx
0000D055  2EA2C200          mov [cs:0xc2],al
0000D059  2EA1C000          mov ax,[cs:0xc0]
0000D05D  B001              mov al,0x1
0000D05F  E85407            call 0xd7b6
0000D062  9C                pushf
0000D063  2EFF1EB400        call word far [cs:0xb4]
0000D068  730D              jnc 0xd077
0000D06A  80FC11            cmp ah,0x11
0000D06D  7517              jnz 0xd086
0000D06F  B400              mov ah,0x0
0000D071  9C                pushf
0000D072  2EFF1EB400        call word far [cs:0xb4]
0000D077  2EFE0EC200        dec byte [cs:0xc2]
0000D07C  7409              jz 0xd087
0000D07E  FEC1              inc cl
0000D080  FEC7              inc bh
0000D082  FEC7              inc bh
0000D084  EBD3              jmp 0xd059
0000D086  F9                stc
0000D087  5A                pop dx
0000D088  59                pop cx
0000D089  5B                pop bx
0000D08A  CA0200            retf word 0x2
0000D08D  58                pop ax
0000D08E  2EA1C000          mov ax,[cs:0xc0]
0000D092  FB                sti
0000D093  80FC02            cmp ah,0x2
0000D096  7266              jc 0xd0fe
0000D098  80FC04            cmp ah,0x4
0000D09B  7439              jz 0xd0d6
0000D09D  80FC05            cmp ah,0x5
0000D0A0  7446              jz 0xd0e8
0000D0A2  775A              ja 0xd0fe
0000D0A4  52                push dx
0000D0A5  51                push cx
0000D0A6  53                push bx
0000D0A7  50                push ax
0000D0A8  55                push bp
0000D0A9  8BEC              mov bp,sp
0000D0AB  8CC2              mov dx,es
0000D0AD  D1E2              shl dx,0x0
0000D0AF  D1E2              shl dx,0x0
0000D0B1  D1E2              shl dx,0x0
0000D0B3  D1E2              shl dx,0x0
0000D0B5  03D3              add dx,bx
0000D0B7  81C2FF01          add dx,0x1ff
0000D0BB  7306              jnc 0xd0c3
0000D0BD  8A7609            mov dh,[bp+0x9]
0000D0C0  E99A00            jmp 0xd15d
0000D0C3  D0EE              shr dh,0x0
0000D0C5  B480              mov ah,0x80
0000D0C7  2AE6              sub ah,dh
0000D0C9  3AE0              cmp ah,al
0000D0CB  7236              jc 0xd103
0000D0CD  8A7609            mov dh,[bp+0x9]
0000D0D0  E8A407            call 0xd877
0000D0D3  E9F100            jmp 0xd1c7
0000D0D6  06                push es
0000D0D7  53                push bx
0000D0D8  0E                push cs
0000D0D9  07                pop es
0000D0DA  BB8102            mov bx,0x281
0000D0DD  9C                pushf
0000D0DE  2EFF1EB400        call word far [cs:0xb4]
0000D0E3  5B                pop bx
0000D0E4  07                pop es
0000D0E5  CA0200            retf word 0x2
0000D0E8  06                push es
0000D0E9  53                push bx
0000D0EA  56                push si
0000D0EB  57                push di
0000D0EC  1E                push ds
0000D0ED  06                push es
0000D0EE  0E                push cs
0000D0EF  07                pop es
0000D0F0  1F                pop ds
0000D0F1  8BF3              mov si,bx
0000D0F3  BF8102            mov di,0x281
0000D0F6  E87507            call 0xd86e
0000D0F9  1F                pop ds
0000D0FA  5F                pop di
0000D0FB  5E                pop si
0000D0FC  EBDC              jmp 0xd0da
0000D0FE  2EFF2EB400        jmp word far [cs:0xb4]
0000D103  8B5608            mov dx,[bp+0x8]
0000D106  57                push di
0000D107  1E                push ds
0000D108  50                push ax
0000D109  2EC606C20101      mov byte [cs:0x1c2],0x1
0000D10F  8AC2              mov al,dl
0000D111  E82CFB            call 0xcc40
0000D114  58                pop ax
0000D115  2EC606C20100      mov byte [cs:0x1c2],0x0
0000D11B  F745290100        test word [di+0x29],0x1
0000D120  7504              jnz 0xd126
0000D122  8AC4              mov al,ah
0000D124  EB0F              jmp 0xd135
0000D126  51                push cx
0000D127  33C9              xor cx,cx
0000D129  8B4D13            mov cx,[di+0x13]
0000D12C  B53F              mov ch,0x3f
0000D12E  2AE9              sub ch,cl
0000D130  8AC5              mov al,ch
0000D132  86E0              xchg ah,al
0000D134  59                pop cx
0000D135  1F                pop ds
0000D136  5F                pop di
0000D137  3AE0              cmp ah,al
0000D139  7305              jnc 0xd140
0000D13B  50                push ax
0000D13C  8AC4              mov al,ah
0000D13E  EB03              jmp 0xd143
0000D140  8AE0              mov ah,al
0000D142  50                push ax
0000D143  E83107            call 0xd877
0000D146  727F              jc 0xd1c7
0000D148  58                pop ax
0000D149  286602            sub [bp+0x2],ah
0000D14C  02CC              add cl,ah
0000D14E  02FC              add bh,ah
0000D150  02FC              add bh,ah
0000D152  3AE0              cmp ah,al
0000D154  7407              jz 0xd15d
0000D156  2AC4              sub al,ah
0000D158  E85B06            call 0xd7b6
0000D15B  EBDA              jmp 0xd137
0000D15D  53                push bx
0000D15E  8A6603            mov ah,[bp+0x3]
0000D161  80FC03            cmp ah,0x3
0000D164  7525              jnz 0xd18b
0000D166  1E                push ds
0000D167  06                push es
0000D168  56                push si
0000D169  57                push di
0000D16A  0E                push cs
0000D16B  06                push es
0000D16C  1F                pop ds
0000D16D  07                pop es
0000D16E  BF8102            mov di,0x281
0000D171  57                push di
0000D172  8BF3              mov si,bx
0000D174  E8F706            call 0xd86e
0000D177  5B                pop bx
0000D178  5F                pop di
0000D179  5E                pop si
0000D17A  B001              mov al,0x1
0000D17C  8A5608            mov dl,[bp+0x8]
0000D17F  E83406            call 0xd7b6
0000D182  E8F206            call 0xd877
0000D185  07                pop es
0000D186  1F                pop ds
0000D187  723E              jc 0xd1c7
0000D189  EB26              jmp 0xd1b1
0000D18B  06                push es
0000D18C  53                push bx
0000D18D  0E                push cs
0000D18E  07                pop es
0000D18F  BB8102            mov bx,0x281
0000D192  B001              mov al,0x1
0000D194  8A5608            mov dl,[bp+0x8]
0000D197  E81C06            call 0xd7b6
0000D19A  E8DA06            call 0xd877
0000D19D  5B                pop bx
0000D19E  07                pop es
0000D19F  7226              jc 0xd1c7
0000D1A1  1E                push ds
0000D1A2  56                push si
0000D1A3  57                push di
0000D1A4  0E                push cs
0000D1A5  1F                pop ds
0000D1A6  8BFB              mov di,bx
0000D1A8  BE8102            mov si,0x281
0000D1AB  E8C006            call 0xd86e
0000D1AE  5F                pop di
0000D1AF  5E                pop si
0000D1B0  1F                pop ds
0000D1B1  5B                pop bx
0000D1B2  80C702            add bh,0x2
0000D1B5  41                inc cx
0000D1B6  8A4602            mov al,[bp+0x2]
0000D1B9  F8                clc
0000D1BA  FEC8              dec al
0000D1BC  7409              jz 0xd1c7
0000D1BE  8A5608            mov dl,[bp+0x8]
0000D1C1  E8F205            call 0xd7b6
0000D1C4  E8B006            call 0xd877
0000D1C7  8BE5              mov sp,bp
0000D1C9  5D                pop bp
0000D1CA  5B                pop bx
0000D1CB  5B                pop bx
0000D1CC  59                pop cx
0000D1CD  5A                pop dx
0000D1CE  CA0200            retf word 0x2
0000D1D1  0231              add dh,[bx+di]
0000D1D3  13A91584          adc bp,[bx+di-0x7beb]
0000D1D7  15026D            adc ax,0x6d02
0000D1DA  13B21536          adc si,[bp+si+0x3615]
0000D1DE  1400              adc al,0x0
0000D1E0  0001              add [bx+di],al
0000D1E2  0200              add al,[bx+si]
0000D1E4  0001              add [bx+di],al
0000D1E6  0200              add al,[bx+si]
0000D1E8  0003              add [bp+di],al
0000D1EA  0200              add al,[bx+si]
0000D1EC  0004              add [si],al
0000D1EE  0200              add al,[bx+si]
0000D1F0  0005              add [di],al
0000D1F2  0200              add al,[bx+si]
0000D1F4  00060200          add [0x2],al
0000D1F8  0007              add [bx],al
0000D1FA  0200              add al,[bx+si]
0000D1FC  0008              add [bx+si],cl
0000D1FE  0200              add al,[bx+si]
0000D200  0009              add [bx+di],cl
0000D202  0200              add al,[bx+si]
0000D204  000A              add [bp+si],cl
0000D206  0200              add al,[bx+si]
0000D208  000B              add [bp+di],cl
0000D20A  0200              add al,[bx+si]
0000D20C  000C              add [si],cl
0000D20E  0200              add al,[bx+si]
0000D210  000D              add [di],cl
0000D212  0200              add al,[bx+si]
0000D214  000E0200          add [0x2],cl
0000D218  000F              add [bx],cl
0000D21A  0200              add al,[bx+si]
0000D21C  0000              add [bx+si],al
0000D21E  0000              add [bx+si],al
0000D220  0000              add [bx+si],al
0000D222  0000              add [bx+si],al
0000D224  0000              add [bx+si],al
0000D226  0000              add [bx+si],al
0000D228  0000              add [bx+si],al
0000D22A  0000              add [bx+si],al
0000D22C  0000              add [bx+si],al
0000D22E  0000              add [bx+si],al
0000D230  0000              add [bx+si],al
0000D232  0000              add [bx+si],al
0000D234  0000              add [bx+si],al
0000D236  0000              add [bx+si],al
0000D238  0000              add [bx+si],al
0000D23A  0000              add [bx+si],al
0000D23C  0000              add [bx+si],al
0000D23E  0000              add [bx+si],al
0000D240  0000              add [bx+si],al
0000D242  0000              add [bx+si],al
0000D244  0000              add [bx+si],al
0000D246  0000              add [bx+si],al
0000D248  0000              add [bx+si],al
0000D24A  0000              add [bx+si],al
0000D24C  0000              add [bx+si],al
0000D24E  0000              add [bx+si],al
0000D250  0000              add [bx+si],al
0000D252  0000              add [bx+si],al
0000D254  0000              add [bx+si],al
0000D256  0000              add [bx+si],al
0000D258  0000              add [bx+si],al
0000D25A  0000              add [bx+si],al
0000D25C  0000              add [bx+si],al
0000D25E  0000              add [bx+si],al
0000D260  0000              add [bx+si],al
0000D262  0000              add [bx+si],al
0000D264  0000              add [bx+si],al
0000D266  0000              add [bx+si],al
0000D268  0000              add [bx+si],al
0000D26A  0000              add [bx+si],al
0000D26C  0000              add [bx+si],al
0000D26E  0000              add [bx+si],al
0000D270  0000              add [bx+si],al
0000D272  0000              add [bx+si],al
0000D274  0000              add [bx+si],al
0000D276  0000              add [bx+si],al
0000D278  0000              add [bx+si],al
0000D27A  0000              add [bx+si],al
0000D27C  0000              add [bx+si],al
0000D27E  0000              add [bx+si],al
0000D280  0000              add [bx+si],al
0000D282  0000              add [bx+si],al
0000D284  0000              add [bx+si],al
0000D286  0000              add [bx+si],al
0000D288  0000              add [bx+si],al
0000D28A  0000              add [bx+si],al
0000D28C  0000              add [bx+si],al
0000D28E  0000              add [bx+si],al
0000D290  0000              add [bx+si],al
0000D292  0000              add [bx+si],al
0000D294  0000              add [bx+si],al
0000D296  0000              add [bx+si],al
0000D298  0000              add [bx+si],al
0000D29A  0000              add [bx+si],al
0000D29C  0000              add [bx+si],al
0000D29E  0000              add [bx+si],al
0000D2A0  0000              add [bx+si],al
0000D2A2  0000              add [bx+si],al
0000D2A4  0000              add [bx+si],al
0000D2A6  0000              add [bx+si],al
0000D2A8  0000              add [bx+si],al
0000D2AA  0000              add [bx+si],al
0000D2AC  0000              add [bx+si],al
0000D2AE  0000              add [bx+si],al
0000D2B0  0000              add [bx+si],al
0000D2B2  0000              add [bx+si],al
0000D2B4  0000              add [bx+si],al
0000D2B6  0000              add [bx+si],al
0000D2B8  0000              add [bx+si],al
0000D2BA  0000              add [bx+si],al
0000D2BC  0000              add [bx+si],al
0000D2BE  0000              add [bx+si],al
0000D2C0  0000              add [bx+si],al
0000D2C2  0000              add [bx+si],al
0000D2C4  0000              add [bx+si],al
0000D2C6  0000              add [bx+si],al
0000D2C8  0000              add [bx+si],al
0000D2CA  0000              add [bx+si],al
0000D2CC  0000              add [bx+si],al
0000D2CE  0000              add [bx+si],al
0000D2D0  0000              add [bx+si],al
0000D2D2  0000              add [bx+si],al
0000D2D4  0000              add [bx+si],al
0000D2D6  0000              add [bx+si],al
0000D2D8  0000              add [bx+si],al
0000D2DA  000F              add [bx],cl
0000D2DC  0000              add [bx+si],al
0000D2DE  0000              add [bx+si],al
0000D2E0  FF                db 0xff
0000D2E1  FF                db 0xff
0000D2E2  FF                db 0xff
0000D2E3  FF2EC41E          jmp word far [0x1ec4]
0000D2E7  B800E8            mov ax,0xe800
0000D2EA  54                push sp
0000D2EB  F9                stc
0000D2EC  26807F0D08        cmp byte [es:bx+0xd],0x8
0000D2F1  752A              jnz 0xd31d
0000D2F3  268A470E          mov al,[es:bx+0xe]
0000D2F7  BEE211            mov si,0x11e2
0000D2FA  A820              test al,0x20
0000D2FC  7503              jnz 0xd301
0000D2FE  BEE911            mov si,0x11e9
0000D301  240F              and al,0xf
0000D303  2E3A04            cmp al,[cs:si]
0000D306  7715              ja 0xd31d
0000D308  98                cbw
0000D309  D1E0              shl ax,0x0
0000D30B  46                inc si
0000D30C  03F0              add si,ax
0000D30E  26C45F13          les bx,word [es:bx+0x13]
0000D312  2EFF14            call word near [cs:si]
0000D315  7203              jc 0xd31a
0000D317  E95FF3            jmp 0xc679
0000D31A  E94FF3            jmp 0xc66c
0000D31D  E942F3            jmp 0xc662
0000D320  8A4528            mov al,[di+0x28]
0000D323  26884701          mov [es:bx+0x1],al
0000D327  8B4529            mov ax,[di+0x29]
0000D32A  250300            and ax,0x3
0000D32D  26894702          mov [es:bx+0x2],ax
0000D331  8B452B            mov ax,[di+0x2b]
0000D334  26894704          mov [es:bx+0x4],ax
0000D338  32C0              xor al,al
0000D33A  26884706          mov [es:bx+0x6],al
0000D33E  8D752D            lea si,[di+0x2d]
0000D341  26F60701          test byte [es:bx],0x1
0000D345  740B              jz 0xd352
0000D347  E840F9            call 0xcc8a
0000D34A  E84CF7            call 0xca99
0000D34D  720C              jc 0xd35b
0000D34F  8D7506            lea si,[di+0x6]
0000D352  8D7F07            lea di,[bx+0x7]
0000D355  B91300            mov cx,0x13
0000D358  F3A4              rep movsb
0000D35A  F8                clc
0000D35B  C3                ret
0000D35C  814D294001        or word [di+0x29],0x140
0000D361  26F60702          test byte [es:bx],0x2
0000D365  7403              jz 0xd36a
0000D367  EB71              jmp 0xd3da
0000D369  90                nop
0000D36A  268A4701          mov al,[es:bx+0x1]
0000D36E  884528            mov [di+0x28],al
0000D371  268B4704          mov ax,[es:bx+0x4]
0000D375  89452B            mov [di+0x2b],ax
0000D378  268B4702          mov ax,[es:bx+0x2]
0000D37C  2E803EC30100      cmp byte [cs:0x1c3],0x0
0000D382  7503              jnz 0xd387
0000D384  25FDFF            and ax,0xfffd
0000D387  250300            and ax,0x3
0000D38A  8B4D29            mov cx,[di+0x29]
0000D38D  81E1F4FF          and cx,0xfff4
0000D391  0BC1              or ax,cx
0000D393  894529            mov [di+0x29],ax
0000D396  268A4706          mov al,[es:bx+0x6]
0000D39A  2EA2EE12          mov [cs:0x12ee],al
0000D39E  814D298000        or word [di+0x29],0x80
0000D3A3  1E                push ds
0000D3A4  57                push di
0000D3A5  06                push es
0000D3A6  53                push bx
0000D3A7  26F60701          test byte [es:bx],0x1
0000D3AB  7517              jnz 0xd3c4
0000D3AD  F745290400        test word [di+0x29],0x4
0000D3B2  7408              jz 0xd3bc
0000D3B4  816529FBFF        and word [di+0x29],0xfffb
0000D3B9  EB18              jmp 0xd3d3
0000D3BB  90                nop
0000D3BC  B91F00            mov cx,0x1f
0000D3BF  8D7D2D            lea di,[di+0x2d]
0000D3C2  EB06              jmp 0xd3ca
0000D3C4  B91300            mov cx,0x13
0000D3C7  8D7D06            lea di,[di+0x6]
0000D3CA  8D7707            lea si,[bx+0x7]
0000D3CD  06                push es
0000D3CE  1E                push ds
0000D3CF  07                pop es
0000D3D0  1F                pop ds
0000D3D1  F3A4              rep movsb
0000D3D3  E8B403            call 0xd78a
0000D3D6  5B                pop bx
0000D3D7  07                pop es
0000D3D8  5F                pop di
0000D3D9  1F                pop ds
0000D3DA  268B4F26          mov cx,[es:bx+0x26]
0000D3DE  2E890EEC12        mov [cs:0x12ec],cx
0000D3E3  816529F7FF        and word [di+0x29],0xfff7
0000D3E8  26F60704          test byte [es:bx],0x4
0000D3EC  7405              jz 0xd3f3
0000D3EE  814D290800        or word [di+0x29],0x8
0000D3F3  83F93F            cmp cx,0x3f
0000D3F6  7729              ja 0xd421
0000D3F8  E325              jcxz 0xd41f
0000D3FA  53                push bx
0000D3FB  83C328            add bx,0x28
0000D3FE  57                push di
0000D3FF  BFF211            mov di,0x11f2
0000D402  50                push ax
0000D403  268B07            mov ax,[es:bx]
0000D406  2E8805            mov [cs:di],al
0000D409  268B4702          mov ax,[es:bx+0x2]
0000D40D  E83902            call 0xd649
0000D410  2E884501          mov [cs:di+0x1],al
0000D414  83C304            add bx,0x4
0000D417  83C704            add di,0x4
0000D41A  E0E7              loopne 0xd403
0000D41C  58                pop ax
0000D41D  5F                pop di
0000D41E  5B                pop bx
0000D41F  F8                clc
0000D420  C3                ret
0000D421  B00C              mov al,0xc
0000D423  F9                stc
0000D424  C3                ret
0000D425  26F60701          test byte [es:bx],0x1
0000D429  7407              jz 0xd432
0000D42B  E89900            call 0xd4c7
0000D42E  268807            mov [es:bx],al
0000D431  C3                ret
0000D432  807D2805          cmp byte [di+0x28],0x5
0000D436  7503              jnz 0xd43b
0000D438  E98800            jmp 0xd4c3
0000D43B  1E                push ds
0000D43C  57                push di
0000D43D  06                push es
0000D43E  53                push bx
0000D43F  E88500            call 0xd4c7
0000D442  3C03              cmp al,0x3
0000D444  745D              jz 0xd4a3
0000D446  E81602            call 0xd65f
0000D449  E83EF8            call 0xcc8a
0000D44C  268B4703          mov ax,[es:bx+0x3]
0000D450  2EA36E02          mov [cs:0x26e],ax
0000D454  268B4F01          mov cx,[es:bx+0x1]
0000D458  2E880E6D02        mov [cs:0x26d],cl
0000D45D  8AE1              mov ah,cl
0000D45F  57                push di
0000D460  BFF011            mov di,0x11f0
0000D463  2E8B0EEC12        mov cx,[cs:0x12ec]
0000D468  E308              jcxz 0xd472
0000D46A  2E8905            mov [cs:di],ax
0000D46D  83C704            add di,0x4
0000D470  E0F8              loopne 0xd46a
0000D472  5F                pop di
0000D473  B90500            mov cx,0x5
0000D476  51                push cx
0000D477  2EA1EC12          mov ax,[cs:0x12ec]
0000D47B  B405              mov ah,0x5
0000D47D  0E                push cs
0000D47E  07                pop es
0000D47F  BBF011            mov bx,0x11f0
0000D482  E84602            call 0xd6cb
0000D485  7331              jnc 0xd4b8
0000D487  59                pop cx
0000D488  2EC606F01201      mov byte [cs:0x12f0],0x1
0000D48E  50                push ax
0000D48F  51                push cx
0000D490  52                push dx
0000D491  E82A02            call 0xd6be
0000D494  E83000            call 0xd4c7
0000D497  3C01              cmp al,0x1
0000D499  7503              jnz 0xd49e
0000D49B  E8C101            call 0xd65f
0000D49E  5A                pop dx
0000D49F  59                pop cx
0000D4A0  58                pop ax
0000D4A1  E2D3              loop 0xd476
0000D4A3  2EC606F01201      mov byte [cs:0x12f0],0x1
0000D4A9  80FC06            cmp ah,0x6
0000D4AC  7502              jnz 0xd4b0
0000D4AE  B480              mov ah,0x80
0000D4B0  E878FA            call 0xcf2b
0000D4B3  5B                pop bx
0000D4B4  07                pop es
0000D4B5  5F                pop di
0000D4B6  1F                pop ds
0000D4B7  C3                ret
0000D4B8  2EC606F01200      mov byte [cs:0x12f0],0x0
0000D4BE  59                pop cx
0000D4BF  5B                pop bx
0000D4C0  07                pop es
0000D4C1  5F                pop di
0000D4C2  1F                pop ds
0000D4C3  E8AD00            call 0xd573
0000D4C6  C3                ret
0000D4C7  51                push cx
0000D4C8  52                push dx
0000D4C9  2E803EF01201      cmp byte [cs:0x12f0],0x1
0000D4CF  7411              jz 0xd4e2
0000D4D1  2E803EEF1201      cmp byte [cs:0x12ef],0x1
0000D4D7  7503              jnz 0xd4dc
0000D4D9  E99300            jmp 0xd56f
0000D4DC  2EC606EF1200      mov byte [cs:0x12ef],0x0
0000D4E2  1E                push ds
0000D4E3  56                push si
0000D4E4  33C0              xor ax,ax
0000D4E6  8ED8              mov ds,ax
0000D4E8  C5367800          lds si,word [0x78]
0000D4EC  2E89366202        mov [cs:0x262],si
0000D4F1  2E8C1E6402        mov word [cs:0x264],ds
0000D4F6  5E                pop si
0000D4F7  1F                pop ds
0000D4F8  2EC606C60101      mov byte [cs:0x1c6],0x1
0000D4FE  8B452B            mov ax,[di+0x2b]
0000D501  8B4D13            mov cx,[di+0x13]
0000D504  80E403            and ah,0x3
0000D507  D0CC              ror ah,0x0
0000D509  D0CC              ror ah,0x0
0000D50B  0AE1              or ah,cl
0000D50D  86E0              xchg ah,al
0000D50F  8BC8              mov cx,ax
0000D511  FECD              dec ch
0000D513  8A5504            mov dl,[di+0x4]
0000D516  B418              mov ah,0x18
0000D518  06                push es
0000D519  57                push di
0000D51A  1E                push ds
0000D51B  56                push si
0000D51C  CD13              int byte 0x13
0000D51E  7235              jc 0xd555
0000D520  2E803EF01201      cmp byte [cs:0x12f0],0x1
0000D526  7509              jnz 0xd531
0000D528  32C0              xor al,al
0000D52A  2EA2F012          mov [cs:0x12f0],al
0000D52E  EB3B              jmp 0xd56b
0000D530  90                nop
0000D531  33C0              xor ax,ax
0000D533  8ED8              mov ds,ax
0000D535  C5367800          lds si,word [0x78]
0000D539  2E8936F112        mov [cs:0x12f1],si
0000D53E  2E8C1EF312        mov word [cs:0x12f3],ds
0000D543  893E7800          mov [0x78],di
0000D547  8C067A00          mov word [0x7a],es
0000D54B  2EC606EF1201      mov byte [cs:0x12ef],0x1
0000D551  32C0              xor al,al
0000D553  EB16              jmp 0xd56b
0000D555  B003              mov al,0x3
0000D557  80FC80            cmp ah,0x80
0000D55A  740F              jz 0xd56b
0000D55C  FEC8              dec al
0000D55E  80FC0C            cmp ah,0xc
0000D561  7408              jz 0xd56b
0000D563  FEC8              dec al
0000D565  2EC606C60100      mov byte [cs:0x1c6],0x0
0000D56B  5E                pop si
0000D56C  1F                pop ds
0000D56D  5F                pop di
0000D56E  07                pop es
0000D56F  F8                clc
0000D570  5A                pop dx
0000D571  59                pop cx
0000D572  C3                ret
0000D573  2EC606560204      mov byte [cs:0x256],0x4
0000D579  268B4703          mov ax,[es:bx+0x3]
0000D57D  2EA36802          mov [cs:0x268],ax
0000D581  268B4701          mov ax,[es:bx+0x1]
0000D585  2EA26702          mov [cs:0x267],al
0000D589  33C0              xor ax,ax
0000D58B  2E8B0EEC12        mov cx,[cs:0x12ec]
0000D590  33DB              xor bx,bx
0000D592  8EC3              mov es,bx
0000D594  E83300            call 0xd5ca
0000D597  C3                ret
0000D598  2EC606560202      mov byte [cs:0x256],0x2
0000D59E  EB0A              jmp 0xd5aa
0000D5A0  90                nop
0000D5A1  2EC606560203      mov byte [cs:0x256],0x3
0000D5A7  EB01              jmp 0xd5aa
0000D5A9  90                nop
0000D5AA  268B4703          mov ax,[es:bx+0x3]
0000D5AE  2EA36802          mov [cs:0x268],ax
0000D5B2  268B4701          mov ax,[es:bx+0x1]
0000D5B6  2EA26702          mov [cs:0x267],al
0000D5BA  268B4705          mov ax,[es:bx+0x5]
0000D5BE  268B4F07          mov cx,[es:bx+0x7]
0000D5C2  26C45F09          les bx,word [es:bx+0x9]
0000D5C6  E80100            call 0xd5ca
0000D5C9  C3                ret
0000D5CA  2E89266A02        mov [cs:0x26a],sp
0000D5CF  E8B8F6            call 0xcc8a
0000D5D2  2E803EEF1201      cmp byte [cs:0x12ef],0x1
0000D5D8  7407              jz 0xd5e1
0000D5DA  50                push ax
0000D5DB  51                push cx
0000D5DC  E8A1F7            call 0xcd80
0000D5DF  59                pop cx
0000D5E0  58                pop ax
0000D5E1  BEF011            mov si,0x11f0
0000D5E4  D1E0              shl ax,0x0
0000D5E6  D1E0              shl ax,0x0
0000D5E8  03F0              add si,ax
0000D5EA  BA0100            mov dx,0x1
0000D5ED  F745290800        test word [di+0x29],0x8
0000D5F2  7402              jz 0xd5f6
0000D5F4  87D1              xchg dx,cx
0000D5F6  51                push cx
0000D5F7  52                push dx
0000D5F8  46                inc si
0000D5F9  46                inc si
0000D5FA  2E8A04            mov al,[cs:si]
0000D5FD  2EA26602          mov [cs:0x266],al
0000D601  F745290100        test word [di+0x29],0x1
0000D606  740E              jz 0xd616
0000D608  2E89165802        mov [cs:0x258],dx
0000D60D  8BC2              mov ax,dx
0000D60F  E80FF8            call 0xce21
0000D612  5A                pop dx
0000D613  59                pop cx
0000D614  F8                clc
0000D615  C3                ret
0000D616  2E8A4401          mov al,[cs:si+0x1]
0000D61A  06                push es
0000D61B  56                push si
0000D61C  50                push ax
0000D61D  2EC4366202        les si,word [cs:0x262]
0000D622  26884403          mov [es:si+0x3],al
0000D626  8B4513            mov ax,[di+0x13]
0000D629  26884404          mov [es:si+0x4],al
0000D62D  58                pop ax
0000D62E  5E                pop si
0000D62F  07                pop es
0000D630  E82200            call 0xd655
0000D633  50                push ax
0000D634  8BC2              mov ax,dx
0000D636  2EA35802          mov [cs:0x258],ax
0000D63A  E8E4F7            call 0xce21
0000D63D  58                pop ax
0000D63E  03D8              add bx,ax
0000D640  5A                pop dx
0000D641  59                pop cx
0000D642  E2B2              loop 0xd5f6
0000D644  E879F7            call 0xcdc0
0000D647  F8                clc
0000D648  C3                ret
0000D649  80E407            and ah,0x7
0000D64C  8AC4              mov al,ah
0000D64E  3C04              cmp al,0x4
0000D650  7502              jnz 0xd654
0000D652  2C01              sub al,0x1
0000D654  C3                ret
0000D655  51                push cx
0000D656  8AC8              mov cl,al
0000D658  B88000            mov ax,0x80
0000D65B  D3E0              shl ax,cl
0000D65D  59                pop cx
0000D65E  C3                ret
0000D65F  2EF606EF1201      test byte [cs:0x12ef],0x1
0000D665  7549              jnz 0xd6b0
0000D667  2E803EF01201      cmp byte [cs:0x12f0],0x1
0000D66D  740C              jz 0xd67b
0000D66F  F745298000        test word [di+0x29],0x80
0000D674  743A              jz 0xd6b0
0000D676  8165297FFF        and word [di+0x29],0xff7f
0000D67B  2EC606F01200      mov byte [cs:0x12f0],0x0
0000D681  2EC606700250      mov byte [cs:0x270],0x50
0000D687  807D2802          cmp byte [di+0x28],0x2
0000D68B  7504              jnz 0xd691
0000D68D  B004              mov al,0x4
0000D68F  EB18              jmp 0xd6a9
0000D691  B001              mov al,0x1
0000D693  807D2801          cmp byte [di+0x28],0x1
0000D697  7510              jnz 0xd6a9
0000D699  FEC0              inc al
0000D69B  837D130F          cmp word [di+0x13],0xf
0000D69F  7508              jnz 0xd6a9
0000D6A1  FEC0              inc al
0000D6A3  2EC606700254      mov byte [cs:0x270],0x54
0000D6A9  B417              mov ah,0x17
0000D6AB  8A5504            mov dl,[di+0x4]
0000D6AE  CD13              int byte 0x13
0000D6B0  8A6513            mov ah,[di+0x13]
0000D6B3  2E88266C02        mov [cs:0x26c],ah
0000D6B8  C3                ret
0000D6B9  E80200            call 0xd6be
0000D6BC  4D                dec bp
0000D6BD  C3                ret
0000D6BE  50                push ax
0000D6BF  32E4              xor ah,ah
0000D6C1  CD13              int byte 0x13
0000D6C3  58                pop ax
0000D6C4  2EC606C101FF      mov byte [cs:0x1c1],0xff
0000D6CA  C3                ret
0000D6CB  1E                push ds
0000D6CC  57                push di
0000D6CD  06                push es
0000D6CE  53                push bx
0000D6CF  56                push si
0000D6D0  2EF606EF1201      test byte [cs:0x12ef],0x1
0000D6D6  753D              jnz 0xd715
0000D6D8  50                push ax
0000D6D9  1E                push ds
0000D6DA  33C0              xor ax,ax
0000D6DC  8ED8              mov ds,ax
0000D6DE  C5367800          lds si,word [0x78]
0000D6E2  2E89366202        mov [cs:0x262],si
0000D6E7  2E8C1E6402        mov word [cs:0x264],ds
0000D6EC  1F                pop ds
0000D6ED  06                push es
0000D6EE  2EC4366202        les si,word [cs:0x262]
0000D6F3  8B5513            mov dx,[di+0x13]
0000D6F6  26885404          mov [es:si+0x4],dl
0000D6FA  83FA0F            cmp dx,0xf
0000D6FD  7409              jz 0xd708
0000D6FF  2E8A0E7002        mov cl,[cs:0x270]
0000D704  26884C07          mov [es:si+0x7],cl
0000D708  807D2802          cmp byte [di+0x28],0x2
0000D70C  7505              jnz 0xd713
0000D70E  26C6440A04        mov byte [es:si+0xa],0x4
0000D713  07                pop es
0000D714  58                pop ax
0000D715  8A5504            mov dl,[di+0x4]
0000D718  2E8A366D02        mov dh,[cs:0x26d]
0000D71D  2E8B0E6E02        mov cx,[cs:0x26e]
0000D722  D0CD              ror ch,0x0
0000D724  D0CD              ror ch,0x0
0000D726  86E9              xchg ch,cl
0000D728  CD13              int byte 0x13
0000D72A  5E                pop si
0000D72B  5B                pop bx
0000D72C  07                pop es
0000D72D  5F                pop di
0000D72E  1F                pop ds
0000D72F  C3                ret
0000D730  E80DF5            call 0xcc40
0000D733  8A4504            mov al,[di+0x4]
0000D736  0E                push cs
0000D737  1F                pop ds
0000D738  2E8B3E4C02        mov di,[cs:0x24c]
0000D73D  384504            cmp [di+0x4],al
0000D740  7507              jnz 0xd749
0000D742  F745292000        test word [di+0x29],0x20
0000D747  7509              jnz 0xd752
0000D749  8B5D02            mov bx,[di+0x2]
0000D74C  8B3D              mov di,[di]
0000D74E  8EDB              mov ds,bx
0000D750  EBEB              jmp 0xd73d
0000D752  EB1D              jmp 0xd771
0000D754  E8E9F4            call 0xcc40
0000D757  2EC606C70101      mov byte [cs:0x1c7],0x1
0000D75D  E82AF5            call 0xcc8a
0000D760  2EC606C70100      mov byte [cs:0x1c7],0x0
0000D766  33DB              xor bx,bx
0000D768  8EC3              mov es,bx
0000D76A  B1FF              mov cl,0xff
0000D76C  26880E0405        mov [es:0x504],cl
0000D771  32C9              xor cl,cl
0000D773  F745291000        test word [di+0x29],0x10
0000D778  7405              jz 0xd77f
0000D77A  8A4D05            mov cl,[di+0x5]
0000D77D  FEC1              inc cl
0000D77F  2EC51EB800        lds bx,word [cs:0xb8]
0000D784  884F01            mov [bx+0x1],cl
0000D787  E9EFEE            jmp 0xc679
0000D78A  50                push ax
0000D78B  32C0              xor al,al
0000D78D  2EA2F012          mov [cs:0x12f0],al
0000D791  2E8606EF12        xchg al,[cs:0x12ef]
0000D796  0AC0              or al,al
0000D798  7419              jz 0xd7b3
0000D79A  56                push si
0000D79B  1E                push ds
0000D79C  06                push es
0000D79D  2EC536F112        lds si,word [cs:0x12f1]
0000D7A2  33C0              xor ax,ax
0000D7A4  8EC0              mov es,ax
0000D7A6  2689367800        mov [es:0x78],si
0000D7AB  268C1E7A00        mov word [es:0x7a],ds
0000D7B0  07                pop es
0000D7B1  1F                pop ds
0000D7B2  5E                pop si
0000D7B3  58                pop ax
0000D7B4  F8                clc
0000D7B5  C3                ret
0000D7B6  50                push ax
0000D7B7  53                push bx
0000D7B8  1E                push ds
0000D7B9  57                push di
0000D7BA  2EC606C20101      mov byte [cs:0x1c2],0x1
0000D7C0  8AC2              mov al,dl
0000D7C2  E87BF4            call 0xcc40
0000D7C5  2EC606C20100      mov byte [cs:0x1c2],0x0
0000D7CB  725E              jc 0xd82b
0000D7CD  F745290100        test word [di+0x29],0x1
0000D7D2  7457              jz 0xd82b
0000D7D4  8B5D13            mov bx,[di+0x13]
0000D7D7  8BC1              mov ax,cx
0000D7D9  253F00            and ax,0x3f
0000D7DC  3BC3              cmp ax,bx
0000D7DE  764B              jna 0xd82b
0000D7E0  F6F3              div bl
0000D7E2  0AE4              or ah,ah
0000D7E4  7504              jnz 0xd7ea
0000D7E6  8AE3              mov ah,bl
0000D7E8  FEC8              dec al
0000D7EA  80E1C0            and cl,0xc0
0000D7ED  0ACC              or cl,ah
0000D7EF  32E4              xor ah,ah
0000D7F1  40                inc ax
0000D7F2  02C6              add al,dh
0000D7F4  80D400            adc ah,0x0
0000D7F7  3B4515            cmp ax,[di+0x15]
0000D7FA  7635              jna 0xd831
0000D7FC  52                push dx
0000D7FD  33D2              xor dx,dx
0000D7FF  8B5D15            mov bx,[di+0x15]
0000D802  F7F3              div bx
0000D804  0BD2              or dx,dx
0000D806  7507              jnz 0xd80f
0000D808  8BD3              mov dx,bx
0000D80A  0BC0              or ax,ax
0000D80C  7401              jz 0xd80f
0000D80E  48                dec ax
0000D80F  8AFA              mov bh,dl
0000D811  5A                pop dx
0000D812  FECF              dec bh
0000D814  8AF7              mov dh,bh
0000D816  8AF9              mov bh,cl
0000D818  80E73F            and bh,0x3f
0000D81B  B306              mov bl,0x6
0000D81D  86CB              xchg cl,bl
0000D81F  D2EB              shr bl,cl
0000D821  02E8              add ch,al
0000D823  12DC              adc bl,ah
0000D825  D2E3              shl bl,cl
0000D827  86D9              xchg bl,cl
0000D829  0ACF              or cl,bh
0000D82B  F8                clc
0000D82C  5F                pop di
0000D82D  1F                pop ds
0000D82E  5B                pop bx
0000D82F  58                pop ax
0000D830  C3                ret
0000D831  8AF0              mov dh,al
0000D833  FECE              dec dh
0000D835  EBF4              jmp 0xd82b
0000D837  80FC13            cmp ah,0x13
0000D83A  7405              jz 0xd841
0000D83C  2EFF264802        jmp word near [cs:0x248]
0000D841  2EFF36B400        push word [cs:0xb4]
0000D846  2EFF36B600        push word [cs:0xb6]
0000D84B  2EFF36B000        push word [cs:0xb0]
0000D850  2EFF36B200        push word [cs:0xb2]
0000D855  2E8916B400        mov [cs:0xb4],dx
0000D85A  2E8C1EB600        mov word [cs:0xb6],ds
0000D85F  2E891EB000        mov [cs:0xb0],bx
0000D864  2E8C06B200        mov word [cs:0xb2],es
0000D869  07                pop es
0000D86A  5B                pop bx
0000D86B  1F                pop ds
0000D86C  5A                pop dx
0000D86D  CF                iret
0000D86E  51                push cx
0000D86F  B90001            mov cx,0x100
0000D872  FC                cld
0000D873  F3A5              rep movsw
0000D875  59                pop cx
0000D876  C3                ret
0000D877  8A5608            mov dl,[bp+0x8]
0000D87A  32E4              xor ah,ah
0000D87C  0AC0              or al,al
0000D87E  740F              jz 0xd88f
0000D880  8A6603            mov ah,[bp+0x3]
0000D883  FF760E            push word [bp+0xe]
0000D886  2EFF1EB400        call word far [cs:0xb4]
0000D88B  9C                pushf
0000D88C  8F460E            pop word [bp+0xe]
0000D88F  C3                ret
0000D890  0000              add [bx+si],al
0000D892  0000              add [bx+si],al
0000D894  0000              add [bx+si],al
0000D896  FF                db 0xff
0000D897  FF                db 0xff
0000D898  FF                db 0xff
0000D899  FF                db 0xff
0000D89A  FF                db 0xff
0000D89B  FF                db 0xff
0000D89C  FF                db 0xff
0000D89D  FF                db 0xff
0000D89E  FF                db 0xff
0000D89F  FF                db 0xff
0000D8A0  FF                db 0xff
0000D8A1  FF                db 0xff
0000D8A2  FF                db 0xff
0000D8A3  FF                db 0xff
0000D8A4  FF                db 0xff
0000D8A5  FF                db 0xff
0000D8A6  FF                db 0xff
0000D8A7  FF                db 0xff
0000D8A8  FF                db 0xff
0000D8A9  FF                db 0xff
0000D8AA  FF                db 0xff
0000D8AB  FF                db 0xff
0000D8AC  FF                db 0xff
0000D8AD  FF                db 0xff
0000D8AE  FF                db 0xff
0000D8AF  FF                db 0xff
0000D8B0  FF                db 0xff
0000D8B1  FF                db 0xff
0000D8B2  FF                db 0xff
0000D8B3  FF                db 0xff
0000D8B4  FF                db 0xff
0000D8B5  FF                db 0xff
0000D8B6  FF                db 0xff
0000D8B7  FF                db 0xff
0000D8B8  FF                db 0xff
0000D8B9  FF                db 0xff
0000D8BA  FF                db 0xff
0000D8BB  FF                db 0xff
0000D8BC  FF                db 0xff
0000D8BD  FF                db 0xff
0000D8BE  FF                db 0xff
0000D8BF  FF                db 0xff
0000D8C0  FF                db 0xff
0000D8C1  FF                db 0xff
0000D8C2  FF                db 0xff
0000D8C3  FF                db 0xff
0000D8C4  FF                db 0xff
0000D8C5  FF                db 0xff
0000D8C6  FF                db 0xff
0000D8C7  FF                db 0xff
0000D8C8  FF                db 0xff
0000D8C9  FF                db 0xff
0000D8CA  FF                db 0xff
0000D8CB  FF                db 0xff
0000D8CC  FF                db 0xff
0000D8CD  FF908804          call word near [bx+si+0x488]
0000D8D1  DA04              fiadd dword [si]
0000D8D3  2C05              sub al,0x5
0000D8D5  7E05              jng 0xd8dc
0000D8D7  EE                out dx,al
0000D8D8  1B401C            sbb ax,[bx+si+0x1c]
0000D8DB  0000              add [bx+si],al
0000D8DD  0000              add [bx+si],al
0000D8DF  0000              add [bx+si],al
0000D8E1  0000              add [bx+si],al
0000D8E3  0000              add [bx+si],al
0000D8E5  0000              add [bx+si],al
0000D8E7  0000              add [bx+si],al
0000D8E9  0000              add [bx+si],al
0000D8EB  0000              add [bx+si],al
0000D8ED  0000              add [bx+si],al
0000D8EF  0000              add [bx+si],al
0000D8F1  0000              add [bx+si],al
0000D8F3  0000              add [bx+si],al
0000D8F5  0000              add [bx+si],al
0000D8F7  0000              add [bx+si],al
0000D8F9  0000              add [bx+si],al
0000D8FB  0000              add [bx+si],al
0000D8FD  0000              add [bx+si],al
0000D8FF  0000              add [bx+si],al
0000D901  0000              add [bx+si],al
0000D903  0000              add [bx+si],al
0000D905  0000              add [bx+si],al
0000D907  0000              add [bx+si],al
0000D909  0000              add [bx+si],al
0000D90B  33C0              xor ax,ax
0000D90D  8ED8              mov ds,ax
0000D90F  2EC43EB000        les di,word [cs:0xb0]
0000D914  893E4C00          mov [0x4c],di
0000D918  8C064E00          mov word [0x4e],es
0000D91C  2E803EA61800      cmp byte [cs:0x18a6],0x0
0000D922  7503              jnz 0xd927
0000D924  E96201            jmp 0xda89
0000D927  33C0              xor ax,ax
0000D929  8ED8              mov ds,ax
0000D92B  2EC43EA718        les di,word [cs:0x18a7]
0000D930  8CC0              mov ax,es
0000D932  3DFFFF            cmp ax,0xffff
0000D935  740D              jz 0xd944
0000D937  83FFFF            cmp di,0xffffffffffffffff
0000D93A  7408              jz 0xd944
0000D93C  893E0800          mov [0x8],di
0000D940  8C060A00          mov word [0xa],es
0000D944  2EC43EAB18        les di,word [cs:0x18ab]
0000D949  8CC0              mov ax,es
0000D94B  3DFFFF            cmp ax,0xffff
0000D94E  740D              jz 0xd95d
0000D950  83FFFF            cmp di,0xffffffffffffffff
0000D953  7408              jz 0xd95d
0000D955  893E2000          mov [0x20],di
0000D959  8C062200          mov word [0x22],es
0000D95D  2EC43EAF18        les di,word [cs:0x18af]
0000D962  8CC0              mov ax,es
0000D964  3DFFFF            cmp ax,0xffff
0000D967  740D              jz 0xd976
0000D969  83FFFF            cmp di,0xffffffffffffffff
0000D96C  7408              jz 0xd976
0000D96E  893E2400          mov [0x24],di
0000D972  8C062600          mov word [0x26],es
0000D976  2EC43EB318        les di,word [cs:0x18b3]
0000D97B  8CC0              mov ax,es
0000D97D  3DFFFF            cmp ax,0xffff
0000D980  740D              jz 0xd98f
0000D982  83FFFF            cmp di,0xffffffffffffffff
0000D985  7408              jz 0xd98f
0000D987  893E2800          mov [0x28],di
0000D98B  8C062A00          mov word [0x2a],es
0000D98F  2EC43EB718        les di,word [cs:0x18b7]
0000D994  8CC0              mov ax,es
0000D996  3DFFFF            cmp ax,0xffff
0000D999  740D              jz 0xd9a8
0000D99B  83FFFF            cmp di,0xffffffffffffffff
0000D99E  7408              jz 0xd9a8
0000D9A0  893E2C00          mov [0x2c],di
0000D9A4  8C062E00          mov word [0x2e],es
0000D9A8  2EC43EBB18        les di,word [cs:0x18bb]
0000D9AD  8CC0              mov ax,es
0000D9AF  3DFFFF            cmp ax,0xffff
0000D9B2  740D              jz 0xd9c1
0000D9B4  83FFFF            cmp di,0xffffffffffffffff
0000D9B7  7408              jz 0xd9c1
0000D9B9  893E3000          mov [0x30],di
0000D9BD  8C063200          mov word [0x32],es
0000D9C1  2EC43EBF18        les di,word [cs:0x18bf]
0000D9C6  8CC0              mov ax,es
0000D9C8  3DFFFF            cmp ax,0xffff
0000D9CB  740D              jz 0xd9da
0000D9CD  83FFFF            cmp di,0xffffffffffffffff
0000D9D0  7408              jz 0xd9da
0000D9D2  893E3400          mov [0x34],di
0000D9D6  8C063600          mov word [0x36],es
0000D9DA  2EC43EC318        les di,word [cs:0x18c3]
0000D9DF  8CC0              mov ax,es
0000D9E1  3DFFFF            cmp ax,0xffff
0000D9E4  740D              jz 0xd9f3
0000D9E6  83FFFF            cmp di,0xffffffffffffffff
0000D9E9  7408              jz 0xd9f3
0000D9EB  893E3800          mov [0x38],di
0000D9EF  8C063A00          mov word [0x3a],es
0000D9F3  2EC43EC718        les di,word [cs:0x18c7]
0000D9F8  8CC0              mov ax,es
0000D9FA  3DFFFF            cmp ax,0xffff
0000D9FD  740D              jz 0xda0c
0000D9FF  83FFFF            cmp di,0xffffffffffffffff
0000DA02  7408              jz 0xda0c
0000DA04  893EC001          mov [0x1c0],di
0000DA08  8C06C201          mov word [0x1c2],es
0000DA0C  2EC43ECB18        les di,word [cs:0x18cb]
0000DA11  8CC0              mov ax,es
0000DA13  3DFFFF            cmp ax,0xffff
0000DA16  740D              jz 0xda25
0000DA18  83FFFF            cmp di,0xffffffffffffffff
0000DA1B  7408              jz 0xda25
0000DA1D  893EC801          mov [0x1c8],di
0000DA21  8C06CA01          mov word [0x1ca],es
0000DA25  2EC43ECF18        les di,word [cs:0x18cf]
0000DA2A  8CC0              mov ax,es
0000DA2C  3DFFFF            cmp ax,0xffff
0000DA2F  740D              jz 0xda3e
0000DA31  83FFFF            cmp di,0xffffffffffffffff
0000DA34  7408              jz 0xda3e
0000DA36  893ECC01          mov [0x1cc],di
0000DA3A  8C06CE01          mov word [0x1ce],es
0000DA3E  2EC43ED318        les di,word [cs:0x18d3]
0000DA43  8CC0              mov ax,es
0000DA45  3DFFFF            cmp ax,0xffff
0000DA48  740D              jz 0xda57
0000DA4A  83FFFF            cmp di,0xffffffffffffffff
0000DA4D  7408              jz 0xda57
0000DA4F  893ED001          mov [0x1d0],di
0000DA53  8C06D201          mov word [0x1d2],es
0000DA57  2EC43ED718        les di,word [cs:0x18d7]
0000DA5C  8CC0              mov ax,es
0000DA5E  3DFFFF            cmp ax,0xffff
0000DA61  740D              jz 0xda70
0000DA63  83FFFF            cmp di,0xffffffffffffffff
0000DA66  7408              jz 0xda70
0000DA68  893ED801          mov [0x1d8],di
0000DA6C  8C06DA01          mov word [0x1da],es
0000DA70  2EC43EDB18        les di,word [cs:0x18db]
0000DA75  8CC0              mov ax,es
0000DA77  3DFFFF            cmp ax,0xffff
0000DA7A  740D              jz 0xda89
0000DA7C  83FFFF            cmp di,0xffffffffffffffff
0000DA7F  7408              jz 0xda89
0000DA81  893EDC01          mov [0x1dc],di
0000DA85  8C06DE01          mov word [0x1de],es
0000DA89  2EC43EA218        les di,word [cs:0x18a2]
0000DA8E  893E6400          mov [0x64],di
0000DA92  8C066600          mov word [0x66],es
0000DA96  CD19              int byte 0x19
0000DA98  0E                push cs
0000DA99  1F                pop ds
0000DA9A  8A26C001          mov ah,[0x1c0]
0000DA9E  BFE018            mov di,0x18e0
0000DAA1  E9E1EF            jmp 0xca85
0000DAA4  80FC08            cmp ah,0x8
0000DAA7  7405              jz 0xdaae
0000DAA9  2EFF2E1419        jmp word far [cs:0x1914]
0000DAAE  3CF8              cmp al,0xf8
0000DAB0  7201              jc 0xdab3
0000DAB2  CF                iret
0000DAB3  0AC0              or al,al
0000DAB5  7503              jnz 0xdaba
0000DAB7  B0FF              mov al,0xff
0000DAB9  CF                iret
0000DABA  3C01              cmp al,0x1
0000DABC  7504              jnz 0xdac2
0000DABE  E80E00            call 0xdacf
0000DAC1  CF                iret
0000DAC2  2E891EB800        mov [cs:0xb8],bx
0000DAC7  2E8C06BA00        mov word [cs:0xba],es
0000DACC  E956EB            jmp 0xc625
0000DACF  2EC4364C02        les si,word [cs:0x24c]
0000DAD4  06                push es
0000DAD5  56                push si
0000DAD6  83FEFF            cmp si,0xffffffffffffffff
0000DAD9  7438              jz 0xdb13
0000DADB  8A4504            mov al,[di+0x4]
0000DADE  26384404          cmp [es:si+0x4],al
0000DAE2  7520              jnz 0xdb04
0000DAE4  33DB              xor bx,bx
0000DAE6  B310              mov bl,0x10
0000DAE8  095D29            or [di+0x29],bx
0000DAEB  26095C29          or [es:si+0x29],bx
0000DAEF  B320              mov bl,0x20
0000DAF1  81F3FFFF          xor bx,0xffff
0000DAF5  215D29            and [di+0x29],bx
0000DAF8  268B5C29          mov bx,[es:si+0x29]
0000DAFC  80E302            and bl,0x2
0000DAFF  32FF              xor bh,bh
0000DB01  095D29            or [di+0x29],bx
0000DB04  5B                pop bx
0000DB05  5B                pop bx
0000DB06  06                push es
0000DB07  56                push si
0000DB08  268B5C02          mov bx,[es:si+0x2]
0000DB0C  268B34            mov si,[es:si]
0000DB0F  8EC3              mov es,bx
0000DB11  EBC3              jmp 0xdad6
0000DB13  5E                pop si
0000DB14  07                pop es
0000DB15  8CD8              mov ax,ds
0000DB17  26894402          mov [es:si+0x2],ax
0000DB1B  26893C            mov [es:si],di
0000DB1E  C705FFFF          mov word [di],0xffff
0000DB22  C3                ret
0000DB23  50                push ax
0000DB24  1E                push ds
0000DB25  57                push di
0000DB26  33FF              xor di,di
0000DB28  8EDF              mov ds,di
0000DB2A  BFBC00            mov di,0xbc
0000DB2D  8B05              mov ax,[di]
0000DB2F  2EA31419          mov [cs:0x1914],ax
0000DB33  8B4502            mov ax,[di+0x2]
0000DB36  2EA31619          mov [cs:0x1916],ax
0000DB3A  FA                cli
0000DB3B  C7054818          mov word [di],0x1848
0000DB3F  8C4D02            mov word [di+0x2],cs
0000DB42  FB                sti
0000DB43  5F                pop di
0000DB44  1F                pop ds
0000DB45  58                pop ax
0000DB46  CB                retf
0000DB47  8A4505            mov al,[di+0x5]
0000DB4A  0441              add al,0x41
0000DB4C  2EA29D1B          mov [cs:0x1b9d],al
0000DB50  1E                push ds
0000DB51  0E                push cs
0000DB52  1F                pop ds
0000DB53  BE811B            mov si,0x1b81
0000DB56  53                push bx
0000DB57  E80A00            call 0xdb64
0000DB5A  E8C9EB            call 0xc726
0000DB5D  32E4              xor ah,ah
0000DB5F  CD16              int byte 0x16
0000DB61  5B                pop bx
0000DB62  1F                pop ds
0000DB63  C3                ret
0000DB64  AC                lodsb
0000DB65  0AC0              or al,al
0000DB67  74FA              jz 0xdb63
0000DB69  9C                pushf
0000DB6A  0E                push cs
0000DB6B  E81FEB            call 0xc68d
0000DB6E  EBF4              jmp 0xdb64
0000DB70  0D0A49            or ax,0x490a
0000DB73  6E                outsb
0000DB74  7365              jnc 0xdbdb
0000DB76  7274              jc 0xdbec
0000DB78  206469            and [si+0x69],ah
0000DB7B  736B              jnc 0xdbe8
0000DB7D  657474            gs jz 0xdbf4
0000DB80  6520666F          and [gs:bp+0x6f],ah
0000DB84  7220              jc 0xdba6
0000DB86  647269            fs jc 0xdbf2
0000DB89  7665              jna 0xdbf0
0000DB8B  20413A            and [bx+di+0x3a],al
0000DB8E  20616E            and [bx+di+0x6e],ah
0000DB91  64207374          and [fs:bp+di+0x74],dh
0000DB95  7269              jc 0xdc00
0000DB97  6B650D0A          imul sp,[di+0xd],0xa
0000DB9B  61                popa
0000DB9C  6E                outsb
0000DB9D  7920              jns 0xdbbf
0000DB9F  6B657920          imul sp,[di+0x79],0x20
0000DBA3  7768              ja 0xdc0d
0000DBA5  656E              gs outsb
0000DBA7  207265            and [bp+si+0x65],dh
0000DBAA  61                popa
0000DBAB  64790D            fs jns 0xdbbb
0000DBAE  0A0A              or cl,[bp+si]
0000DBB0  0000              add [bx+si],al
0000DBB2  0000              add [bx+si],al
0000DBB4  0000              add [bx+si],al
0000DBB6  0000              add [bx+si],al
0000DBB8  0000              add [bx+si],al
0000DBBA  001F              add [bx],bl
0000DBBC  003B              add [bp+di],bh
0000DBBE  005A00            add [bp+si+0x0],bl
0000DBC1  7800              js 0xdbc3
0000DBC3  97                xchg ax,di
0000DBC4  00B500D4          add [di-0x2c00],dh
0000DBC8  00F3              add bl,dh
0000DBCA  0011              add [bx+di],dl
0000DBCC  0130              add [bx+si],si
0000DBCE  014E01            add [bp+0x1],cx
0000DBD1  0000              add [bx+si],al
0000DBD3  0000              add [bx+si],al
0000DBD5  8090FFFF70        adc byte [bx+si-0x1],0x70
0000DBDA  00804300          add [bx+si+0x43],al
0000DBDE  0201              add al,[bx+di]
0000DBE0  0100              add [bx+si],ax
0000DBE2  0210              add dl,[bx+si]
0000DBE4  0000              add [bx+si],al
0000DBE6  00F8              add al,bh
0000DBE8  0100              add [bx+si],ax
0000DBEA  0000              add [bx+si],al
0000DBEC  0000              add [bx+si],al
0000DBEE  0000              add [bx+si],al
0000DBF0  0000              add [bx+si],al
0000DBF2  004E4F            add [bp+0x4f],cl
0000DBF5  204E41            and [bp+0x41],cl
0000DBF8  4D                dec bp
0000DBF9  45                inc bp
0000DBFA  2020              and [bx+si],ah
0000DBFC  2020              and [bx+si],ah
0000DBFE  0003              add [bp+di],al
0000DC00  2000              and [bx+si],al
0000DC02  2800              sub [bx+si],al
0000DC04  0000              add [bx+si],al
0000DC06  0000              add [bx+si],al
0000DC08  0000              add [bx+si],al
0000DC0A  0000              add [bx+si],al
0000DC0C  0000              add [bx+si],al
0000DC0E  0000              add [bx+si],al
0000DC10  0000              add [bx+si],al
0000DC12  0000              add [bx+si],al
0000DC14  0000              add [bx+si],al
0000DC16  0000              add [bx+si],al
0000DC18  0000              add [bx+si],al
0000DC1A  0000              add [bx+si],al
0000DC1C  0000              add [bx+si],al
0000DC1E  0000              add [bx+si],al
0000DC20  0000              add [bx+si],al
0000DC22  00FF              add bh,bh
0000DC24  FF                db 0xff
0000DC25  FF                db 0xff
0000DC26  FF                db 0xff
0000DC27  FF90FFFF          call word near [bx+si-0x1]
0000DC2B  7000              jo 0xdc2d
0000DC2D  8144000200        add word [si+0x0],0x2
0000DC32  0100              add [bx+si],ax
0000DC34  0200              add al,[bx+si]
0000DC36  0000              add [bx+si],al
0000DC38  00F8              add al,bh
0000DC3A  0000              add [bx+si],al
0000DC3C  0000              add [bx+si],al
0000DC3E  0000              add [bx+si],al
0000DC40  0000              add [bx+si],al
0000DC42  0000              add [bx+si],al
0000DC44  004E4F            add [bp+0x4f],cl
0000DC47  204E41            and [bp+0x41],cl
0000DC4A  4D                dec bp
0000DC4B  45                inc bp
0000DC4C  2020              and [bx+si],ah
0000DC4E  2020              and [bx+si],ah
0000DC50  0003              add [bp+di],al
0000DC52  2000              and [bx+si],al
0000DC54  2800              sub [bx+si],al
0000DC56  0000              add [bx+si],al
0000DC58  0000              add [bx+si],al
0000DC5A  0000              add [bx+si],al
0000DC5C  0000              add [bx+si],al
0000DC5E  0000              add [bx+si],al
0000DC60  0000              add [bx+si],al
0000DC62  0000              add [bx+si],al
0000DC64  0000              add [bx+si],al
0000DC66  0000              add [bx+si],al
0000DC68  0000              add [bx+si],al
0000DC6A  0000              add [bx+si],al
0000DC6C  0000              add [bx+si],al
0000DC6E  0000              add [bx+si],al
0000DC70  0000              add [bx+si],al
0000DC72  0000              add [bx+si],al
0000DC74  00FF              add bh,bh
0000DC76  FF                db 0xff
0000DC77  FF                db 0xff
0000DC78  FF                db 0xff
0000DC79  FF                db 0xff
0000DC7A  E8C3EF            call 0xcc40
0000DC7D  FF451A            inc word [di+0x1a]
0000DC80  E9F6E9            jmp 0xc679
0000DC83  E8BAEF            call 0xcc40
0000DC86  837D1A00          cmp word [di+0x1a],0x0
0000DC8A  7403              jz 0xdc8f
0000DC8C  FF4D1A            dec word [di+0x1a]
0000DC8F  E9E7E9            jmp 0xc679
0000DC92  837D1A00          cmp word [di+0x1a],0x0
0000DC96  C3                ret
0000DC97  E8F0EF            call 0xcc8a
0000DC9A  33F6              xor si,si
0000DC9C  E87001            call 0xde0f
0000DC9F  742E              jz 0xdccf
0000DCA1  E85F01            call 0xde03
0000DCA4  752A              jnz 0xdcd0
0000DCA6  50                push ax
0000DCA7  52                push dx
0000DCA8  8A5504            mov dl,[di+0x4]
0000DCAB  B416              mov ah,0x16
0000DCAD  CD13              int byte 0x13
0000DCAF  5A                pop dx
0000DCB0  58                pop ax
0000DCB1  721D              jc 0xdcd0
0000DCB3  BE0100            mov si,0x1
0000DCB6  2E8A1E5102        mov bl,[cs:0x251]
0000DCBB  385D04            cmp [di+0x4],bl
0000DCBE  740F              jz 0xdccf
0000DCC0  50                push ax
0000DCC1  51                push cx
0000DCC2  52                push dx
0000DCC3  E86BED            call 0xca31
0000DCC6  5A                pop dx
0000DCC7  59                pop cx
0000DCC8  58                pop ax
0000DCC9  0BF6              or si,si
0000DCCB  7403              jz 0xdcd0
0000DCCD  33F6              xor si,si
0000DCCF  C3                ret
0000DCD0  E8C6ED            call 0xca99
0000DCD3  72FA              jc 0xdccf
0000DCD5  E83400            call 0xdd0c
0000DCD8  73F5              jnc 0xdccf
0000DCDA  E84EF2            call 0xcf2b
0000DCDD  C3                ret
0000DCDE  E82E01            call 0xde0f
0000DCE1  7405              jz 0xdce8
0000DCE3  E8ACFF            call 0xdc92
0000DCE6  7501              jnz 0xdce9
0000DCE8  C3                ret
0000DCE9  E81701            call 0xde03
0000DCEC  74FA              jz 0xdce8
0000DCEE  E8A8ED            call 0xca99
0000DCF1  720F              jc 0xdd02
0000DCF3  E81600            call 0xdd0c
0000DCF6  7207              jc 0xdcff
0000DCF8  0BF6              or si,si
0000DCFA  79EC              jns 0xdce8
0000DCFC  E84800            call 0xdd47
0000DCFF  E829F2            call 0xcf2b
0000DD02  F9                stc
0000DD03  5E                pop si
0000DD04  C3                ret
0000DD05  E80502            call 0xdf0d
0000DD08  0BF6              or si,si
0000DD0A  7810              js 0xdd1c
0000DD0C  E83B01            call 0xde4a
0000DD0F  720A              jc 0xdd1b
0000DD11  E8E201            call 0xdef6
0000DD14  0BF6              or si,si
0000DD16  7504              jnz 0xdd1c
0000DD18  E8EE00            call 0xde09
0000DD1B  C3                ret
0000DD1C  2EC6065102FF      mov byte [cs:0x251],0xff
0000DD22  C3                ret
0000DD23  80FC06            cmp ah,0x6
0000DD26  75F3              jnz 0xdd1b
0000DD28  E867FF            call 0xdc92
0000DD2B  74EE              jz 0xdd1b
0000DD2D  E869ED            call 0xca99
0000DD30  7212              jc 0xdd44
0000DD32  E8D0FF            call 0xdd05
0000DD35  7209              jc 0xdd40
0000DD37  0BF6              or si,si
0000DD39  7802              js 0xdd3d
0000DD3B  45                inc bp
0000DD3C  C3                ret
0000DD3D  E80700            call 0xdd47
0000DD40  F9                stc
0000DD41  E9A3F1            jmp 0xcee7
0000DD44  E9A3F1            jmp 0xceea
0000DD47  1E                push ds
0000DD48  57                push di
0000DD49  51                push cx
0000DD4A  E8D001            call 0xdf1d
0000DD4D  2EC51EB800        lds bx,word [cs:0xb8]
0000DD52  897F16            mov [bx+0x16],di
0000DD55  8C4718            mov word [bx+0x18],es
0000DD58  59                pop cx
0000DD59  5F                pop di
0000DD5A  1F                pop ds
0000DD5B  B40F              mov ah,0xf
0000DD5D  F9                stc
0000DD5E  C3                ret
0000DD5F  E8BB01            call 0xdf1d
0000DD62  2EC51EB800        lds bx,word [cs:0xb8]
0000DD67  897F0F            mov [bx+0xf],di
0000DD6A  8C4711            mov word [bx+0x11],es
0000DD6D  C3                ret
0000DD6E  F745290200        test word [di+0x29],0x2
0000DD73  741C              jz 0xdd91
0000DD75  807D2802          cmp byte [di+0x28],0x2
0000DD79  7416              jz 0xdd91
0000DD7B  80FCF9            cmp ah,0xf9
0000DD7E  7511              jnz 0xdd91
0000DD80  B007              mov al,0x7
0000DD82  BB0FE0            mov bx,0xe00f
0000DD85  B96009            mov cx,0x960
0000DD88  BA0201            mov dx,0x102
0000DD8B  83C402            add sp,0x2
0000DD8E  E981ED            jmp 0xcb12
0000DD91  C3                ret
0000DD92  0000              add [bx+si],al
0000DD94  0000              add [bx+si],al
0000DD96  0000              add [bx+si],al
0000DD98  0000              add [bx+si],al
0000DD9A  0000              add [bx+si],al
0000DD9C  2E8F06A71D        pop word [cs:0x1da7]
0000DDA1  2E8F06A91D        pop word [cs:0x1da9]
0000DDA6  2E8F06AB1D        pop word [cs:0x1dab]
0000DDAB  9C                pushf
0000DDAC  2EFF1EA31D        call word far [cs:0x1da3]
0000DDB1  7205              jc 0xddb8
0000DDB3  2EFF2EA71D        jmp word far [cs:0x1da7]
0000DDB8  9C                pushf
0000DDB9  80FC06            cmp ah,0x6
0000DDBC  7406              jz 0xddc4
0000DDBE  9D                popf
0000DDBF  2EFF2EA71D        jmp word far [cs:0x1da7]
0000DDC4  0AD2              or dl,dl
0000DDC6  78F6              js 0xddbe
0000DDC8  2EC70652024000    mov word [cs:0x252],0x40
0000DDCF  E80200            call 0xddd4
0000DDD2  EBEA              jmp 0xddbe
0000DDD4  53                push bx
0000DDD5  52                push dx
0000DDD6  8ADA              mov bl,dl
0000DDD8  2E8B165202        mov dx,[cs:0x252]
0000DDDD  32FF              xor bh,bh
0000DDDF  50                push ax
0000DDE0  1E                push ds
0000DDE1  57                push di
0000DDE2  2EC53E4C02        lds di,word [cs:0x24c]
0000DDE7  83FFFF            cmp di,0xffffffffffffffff
0000DDEA  7411              jz 0xddfd
0000DDEC  385D04            cmp [di+0x4],bl
0000DDEF  7503              jnz 0xddf4
0000DDF1  095529            or [di+0x29],dx
0000DDF4  8B4502            mov ax,[di+0x2]
0000DDF7  8B3D              mov di,[di]
0000DDF9  8ED8              mov ds,ax
0000DDFB  EBEA              jmp 0xdde7
0000DDFD  5F                pop di
0000DDFE  1F                pop ds
0000DDFF  58                pop ax
0000DE00  5A                pop dx
0000DE01  5B                pop bx
0000DE02  C3                ret
0000DE03  F745294000        test word [di+0x29],0x40
0000DE08  C3                ret
0000DE09  816529BFFF        and word [di+0x29],0xffbf
0000DE0E  C3                ret
0000DE0F  F745290200        test word [di+0x29],0x2
0000DE14  C3                ret
0000DE15  4E                dec si
0000DE16  4F                dec di
0000DE17  204E41            and [bp+0x41],cl
0000DE1A  4D                dec bp
0000DE1B  45                inc bp
0000DE1C  2020              and [bx+si],ah
0000DE1E  2020              and [bx+si],ah
0000DE20  004E4F            add [bp+0x4f],cl
0000DE23  204E41            and [bp+0x41],cl
0000DE26  4D                dec bp
0000DE27  45                inc bp
0000DE28  2020              and [bx+si],ah
0000DE2A  2020              and [bx+si],ah
0000DE2C  005250            add [bp+si+0x50],dl
0000DE2F  E8DDFF            call 0xde0f
0000DE32  740D              jz 0xde41
0000DE34  57                push di
0000DE35  E81200            call 0xde4a
0000DE38  5F                pop di
0000DE39  720A              jc 0xde45
0000DE3B  E8A700            call 0xdee5
0000DE3E  E8C8FF            call 0xde09
0000DE41  F8                clc
0000DE42  58                pop ax
0000DE43  5A                pop dx
0000DE44  C3                ret
0000DE45  5A                pop dx
0000DE46  5A                pop dx
0000DE47  C3                ret
0000DE48  0000              add [bx+si],al
0000DE4A  06                push es
0000DE4B  52                push dx
0000DE4C  51                push cx
0000DE4D  53                push bx
0000DE4E  50                push ax
0000DE4F  1E                push ds
0000DE50  57                push di
0000DE51  0E                push cs
0000DE52  07                pop es
0000DE53  0E                push cs
0000DE54  1F                pop ds
0000DE55  BF321E            mov di,0x1e32
0000DE58  BE261E            mov si,0x1e26
0000DE5B  B90C00            mov cx,0xc
0000DE5E  F3A4              rep movsb
0000DE60  5F                pop di
0000DE61  1F                pop ds
0000DE62  8A450B            mov al,[di+0xb]
0000DE65  8B4D11            mov cx,[di+0x11]
0000DE68  F6E1              mul cl
0000DE6A  034509            add ax,[di+0x9]
0000DE6D  2EA3591E          mov [cs:0x1e59],ax
0000DE71  8B450C            mov ax,[di+0xc]
0000DE74  B104              mov cl,0x4
0000DE76  D3E8              shr ax,cl
0000DE78  8BC8              mov cx,ax
0000DE7A  51                push cx
0000DE7B  2EA1591E          mov ax,[cs:0x1e59]
0000DE7F  8B4D13            mov cx,[di+0x13]
0000DE82  33D2              xor dx,dx
0000DE84  F7F1              div cx
0000DE86  42                inc dx
0000DE87  8ACA              mov cl,dl
0000DE89  33D2              xor dx,dx
0000DE8B  F77515            div word [di+0x15]
0000DE8E  8AF2              mov dh,dl
0000DE90  8AE8              mov ch,al
0000DE92  E836ED            call 0xcbcb
0000DE95  724A              jc 0xdee1
0000DE97  B91000            mov cx,0x10
0000DE9A  B008              mov al,0x8
0000DE9C  26803F00          cmp byte [es:bx],0x0
0000DEA0  743C              jz 0xdede
0000DEA2  26803FE5          cmp byte [es:bx],0xe5
0000DEA6  7406              jz 0xdeae
0000DEA8  2684470B          test [es:bx+0xb],al
0000DEAC  7511              jnz 0xdebf
0000DEAE  83C320            add bx,0x20
0000DEB1  E2E9              loop 0xde9c
0000DEB3  59                pop cx
0000DEB4  2EFF06591E        inc word [cs:0x1e59]
0000DEB9  E2BF              loop 0xde7a
0000DEBB  33F6              xor si,si
0000DEBD  EB18              jmp 0xded7
0000DEBF  59                pop cx
0000DEC0  8BF3              mov si,bx
0000DEC2  1E                push ds
0000DEC3  57                push di
0000DEC4  06                push es
0000DEC5  1F                pop ds
0000DEC6  0E                push cs
0000DEC7  07                pop es
0000DEC8  BF321E            mov di,0x1e32
0000DECB  B90B00            mov cx,0xb
0000DECE  F3A4              rep movsb
0000DED0  32C0              xor al,al
0000DED2  AA                stosb
0000DED3  33F6              xor si,si
0000DED5  5F                pop di
0000DED6  1F                pop ds
0000DED7  58                pop ax
0000DED8  F8                clc
0000DED9  5B                pop bx
0000DEDA  59                pop cx
0000DEDB  5A                pop dx
0000DEDC  07                pop es
0000DEDD  C3                ret
0000DEDE  59                pop cx
0000DEDF  EBDA              jmp 0xdebb
0000DEE1  5E                pop si
0000DEE2  5E                pop si
0000DEE3  EBF4              jmp 0xded9
0000DEE5  1E                push ds
0000DEE6  57                push di
0000DEE7  06                push es
0000DEE8  56                push si
0000DEE9  51                push cx
0000DEEA  E83000            call 0xdf1d
0000DEED  FC                cld
0000DEEE  F3A4              rep movsb
0000DEF0  59                pop cx
0000DEF1  5E                pop si
0000DEF2  07                pop es
0000DEF3  5F                pop di
0000DEF4  1F                pop ds
0000DEF5  C3                ret
0000DEF6  1E                push ds
0000DEF7  57                push di
0000DEF8  06                push es
0000DEF9  51                push cx
0000DEFA  E82000            call 0xdf1d
0000DEFD  FC                cld
0000DEFE  F3A6              repe cmpsb
0000DF00  BE0000            mov si,0x0
0000DF03  7403              jz 0xdf08
0000DF05  BEFFFF            mov si,0xffff
0000DF08  59                pop cx
0000DF09  07                pop es
0000DF0A  5F                pop di
0000DF0B  1F                pop ds
0000DF0C  C3                ret
0000DF0D  50                push ax
0000DF0E  33F6              xor si,si
0000DF10  2EA05402          mov al,[cs:0x254]
0000DF14  3A4510            cmp al,[di+0x10]
0000DF17  7401              jz 0xdf1a
0000DF19  4E                dec si
0000DF1A  F8                clc
0000DF1B  58                pop ax
0000DF1C  C3                ret
0000DF1D  50                push ax
0000DF1E  1E                push ds
0000DF1F  07                pop es
0000DF20  0E                push cs
0000DF21  1F                pop ds
0000DF22  BE321E            mov si,0x1e32
0000DF25  83C71C            add di,0x1c
0000DF28  B90C00            mov cx,0xc
0000DF2B  58                pop ax
0000DF2C  C3                ret
0000DF2D  FF                db 0xff
0000DF2E  FF00              inc word [bx+si]
0000DF30  005003            add [bx+si+0x3],dl
0000DF33  0002              add [bp+si],al
0000DF35  0101              add [bx+di],ax
0000DF37  0002              add [bp+si],al
0000DF39  1000              adc [bx+si],al
0000DF3B  0000              add [bx+si],al
0000DF3D  F8                clc
0000DF3E  0100              add [bx+si],ax
0000DF40  0000              add [bx+si],al
0000DF42  0000              add [bx+si],al
0000DF44  0000              add [bx+si],al
0000DF46  0000              add [bx+si],al
0000DF48  004E4F            add [bp+0x4f],cl
0000DF4B  204E41            and [bp+0x41],cl
0000DF4E  4D                dec bp
0000DF4F  45                inc bp
0000DF50  2020              and [bx+si],ah
0000DF52  2020              and [bx+si],ah
0000DF54  0003              add [bp+di],al
0000DF56  2000              and [bx+si],al
0000DF58  2800              sub [bx+si],al
0000DF5A  0000              add [bx+si],al
0000DF5C  0000              add [bx+si],al
0000DF5E  0000              add [bx+si],al
0000DF60  0000              add [bx+si],al
0000DF62  0000              add [bx+si],al
0000DF64  0000              add [bx+si],al
0000DF66  0000              add [bx+si],al
0000DF68  0000              add [bx+si],al
0000DF6A  0000              add [bx+si],al
0000DF6C  0000              add [bx+si],al
0000DF6E  0000              add [bx+si],al
0000DF70  0000              add [bx+si],al
0000DF72  0000              add [bx+si],al
0000DF74  0000              add [bx+si],al
0000DF76  0000              add [bx+si],al
0000DF78  00FF              add bh,bh
0000DF7A  0100              add [bx+si],ax
0000DF7C  0000              add [bx+si],al
0000DF7E  FF                db 0xff
0000DF7F  FF00              inc word [bx+si]
0000DF81  005003            add [bx+si+0x3],dl
0000DF84  0002              add [bp+si],al
0000DF86  0101              add [bx+di],ax
0000DF88  0002              add [bp+si],al
0000DF8A  1000              adc [bx+si],al
0000DF8C  0000              add [bx+si],al
0000DF8E  F8                clc
0000DF8F  0100              add [bx+si],ax
0000DF91  0000              add [bx+si],al
0000DF93  0000              add [bx+si],al
0000DF95  0000              add [bx+si],al
0000DF97  0000              add [bx+si],al
0000DF99  004E4F            add [bp+0x4f],cl
0000DF9C  204E41            and [bp+0x41],cl
0000DF9F  4D                dec bp
0000DFA0  45                inc bp
0000DFA1  2020              and [bx+si],ah
0000DFA3  2020              and [bx+si],ah
0000DFA5  0003              add [bp+di],al
0000DFA7  2000              and [bx+si],al
0000DFA9  2800              sub [bx+si],al
0000DFAB  0000              add [bx+si],al
0000DFAD  0000              add [bx+si],al
0000DFAF  0000              add [bx+si],al
0000DFB1  0000              add [bx+si],al
0000DFB3  0000              add [bx+si],al
0000DFB5  0000              add [bx+si],al
0000DFB7  0000              add [bx+si],al
0000DFB9  0000              add [bx+si],al
0000DFBB  0000              add [bx+si],al
0000DFBD  0000              add [bx+si],al
0000DFBF  0000              add [bx+si],al
0000DFC1  0000              add [bx+si],al
0000DFC3  0000              add [bx+si],al
0000DFC5  0000              add [bx+si],al
0000DFC7  0000              add [bx+si],al
0000DFC9  00FF              add bh,bh
0000DFCB  0100              add [bx+si],ax
0000DFCD  0000              add [bx+si],al
0000DFCF  FF                db 0xff
0000DFD0  FF00              inc word [bx+si]
0000DFD2  005003            add [bx+si+0x3],dl
0000DFD5  0002              add [bp+si],al
0000DFD7  0101              add [bx+di],ax
0000DFD9  0002              add [bp+si],al
0000DFDB  1000              adc [bx+si],al
0000DFDD  0000              add [bx+si],al
0000DFDF  F8                clc
0000DFE0  0100              add [bx+si],ax
0000DFE2  0000              add [bx+si],al
0000DFE4  0000              add [bx+si],al
0000DFE6  0000              add [bx+si],al
0000DFE8  0000              add [bx+si],al
0000DFEA  004E4F            add [bp+0x4f],cl
0000DFED  204E41            and [bp+0x41],cl
0000DFF0  4D                dec bp
0000DFF1  45                inc bp
0000DFF2  2020              and [bx+si],ah
0000DFF4  2020              and [bx+si],ah
0000DFF6  0003              add [bp+di],al
0000DFF8  2000              and [bx+si],al
0000DFFA  2800              sub [bx+si],al
0000DFFC  0000              add [bx+si],al
0000DFFE  0000              add [bx+si],al
0000E000  0000              add [bx+si],al
0000E002  0000              add [bx+si],al
0000E004  0000              add [bx+si],al
0000E006  0000              add [bx+si],al
0000E008  0000              add [bx+si],al
0000E00A  0000              add [bx+si],al
0000E00C  0000              add [bx+si],al
0000E00E  0000              add [bx+si],al
0000E010  0000              add [bx+si],al
0000E012  0000              add [bx+si],al
0000E014  0000              add [bx+si],al
0000E016  0000              add [bx+si],al
0000E018  0000              add [bx+si],al
0000E01A  00FF              add bh,bh
0000E01C  0100              add [bx+si],ax
0000E01E  0000              add [bx+si],al
0000E020  FF                db 0xff
0000E021  FF00              inc word [bx+si]
0000E023  005003            add [bx+si+0x3],dl
0000E026  0002              add [bp+si],al
0000E028  0101              add [bx+di],ax
0000E02A  0002              add [bp+si],al
0000E02C  1000              adc [bx+si],al
0000E02E  0000              add [bx+si],al
0000E030  F8                clc
0000E031  0100              add [bx+si],ax
0000E033  0000              add [bx+si],al
0000E035  0000              add [bx+si],al
0000E037  0000              add [bx+si],al
0000E039  0000              add [bx+si],al
0000E03B  004E4F            add [bp+0x4f],cl
0000E03E  204E41            and [bp+0x41],cl
0000E041  4D                dec bp
0000E042  45                inc bp
0000E043  2020              and [bx+si],ah
0000E045  2020              and [bx+si],ah
0000E047  0003              add [bp+di],al
0000E049  2000              and [bx+si],al
0000E04B  2800              sub [bx+si],al
0000E04D  0000              add [bx+si],al
0000E04F  0000              add [bx+si],al
0000E051  0000              add [bx+si],al
0000E053  0000              add [bx+si],al
0000E055  0000              add [bx+si],al
0000E057  0000              add [bx+si],al
0000E059  0000              add [bx+si],al
0000E05B  0000              add [bx+si],al
0000E05D  0000              add [bx+si],al
0000E05F  0000              add [bx+si],al
0000E061  0000              add [bx+si],al
0000E063  0000              add [bx+si],al
0000E065  0000              add [bx+si],al
0000E067  0000              add [bx+si],al
0000E069  0000              add [bx+si],al
0000E06B  00FF              add bh,bh
0000E06D  0100              add [bx+si],ax
0000E06F  0000              add [bx+si],al
0000E071  FF                db 0xff
0000E072  FF00              inc word [bx+si]
0000E074  005003            add [bx+si+0x3],dl
0000E077  0002              add [bp+si],al
0000E079  0101              add [bx+di],ax
0000E07B  0002              add [bp+si],al
0000E07D  1000              adc [bx+si],al
0000E07F  0000              add [bx+si],al
0000E081  F8                clc
0000E082  0100              add [bx+si],ax
0000E084  0000              add [bx+si],al
0000E086  0000              add [bx+si],al
0000E088  0000              add [bx+si],al
0000E08A  0000              add [bx+si],al
0000E08C  004E4F            add [bp+0x4f],cl
0000E08F  204E41            and [bp+0x41],cl
0000E092  4D                dec bp
0000E093  45                inc bp
0000E094  2020              and [bx+si],ah
0000E096  2020              and [bx+si],ah
0000E098  0003              add [bp+di],al
0000E09A  2000              and [bx+si],al
0000E09C  2800              sub [bx+si],al
0000E09E  0000              add [bx+si],al
0000E0A0  0000              add [bx+si],al
0000E0A2  0000              add [bx+si],al
0000E0A4  0000              add [bx+si],al
0000E0A6  0000              add [bx+si],al
0000E0A8  0000              add [bx+si],al
0000E0AA  0000              add [bx+si],al
0000E0AC  0000              add [bx+si],al
0000E0AE  0000              add [bx+si],al
0000E0B0  0000              add [bx+si],al
0000E0B2  0000              add [bx+si],al
0000E0B4  0000              add [bx+si],al
0000E0B6  0000              add [bx+si],al
0000E0B8  0000              add [bx+si],al
0000E0BA  0000              add [bx+si],al
0000E0BC  00FF              add bh,bh
0000E0BE  0100              add [bx+si],ax
0000E0C0  0000              add [bx+si],al
0000E0C2  FF                db 0xff
0000E0C3  FF00              inc word [bx+si]
0000E0C5  005003            add [bx+si+0x3],dl
0000E0C8  0002              add [bp+si],al
0000E0CA  0101              add [bx+di],ax
0000E0CC  0002              add [bp+si],al
0000E0CE  1000              adc [bx+si],al
0000E0D0  0000              add [bx+si],al
0000E0D2  F8                clc
0000E0D3  0100              add [bx+si],ax
0000E0D5  0000              add [bx+si],al
0000E0D7  0000              add [bx+si],al
0000E0D9  0000              add [bx+si],al
0000E0DB  0000              add [bx+si],al
0000E0DD  004E4F            add [bp+0x4f],cl
0000E0E0  204E41            and [bp+0x41],cl
0000E0E3  4D                dec bp
0000E0E4  45                inc bp
0000E0E5  2020              and [bx+si],ah
0000E0E7  2020              and [bx+si],ah
0000E0E9  0003              add [bp+di],al
0000E0EB  2000              and [bx+si],al
0000E0ED  2800              sub [bx+si],al
0000E0EF  0000              add [bx+si],al
0000E0F1  0000              add [bx+si],al
0000E0F3  0000              add [bx+si],al
0000E0F5  0000              add [bx+si],al
0000E0F7  0000              add [bx+si],al
0000E0F9  0000              add [bx+si],al
0000E0FB  0000              add [bx+si],al
0000E0FD  0000              add [bx+si],al
0000E0FF  0000              add [bx+si],al
0000E101  0000              add [bx+si],al
0000E103  0000              add [bx+si],al
0000E105  0000              add [bx+si],al
0000E107  0000              add [bx+si],al
0000E109  0000              add [bx+si],al
0000E10B  0000              add [bx+si],al
0000E10D  00FF              add bh,bh
0000E10F  0100              add [bx+si],ax
0000E111  0000              add [bx+si],al
0000E113  FF                db 0xff
0000E114  FF00              inc word [bx+si]
0000E116  005003            add [bx+si+0x3],dl
0000E119  0002              add [bp+si],al
0000E11B  0101              add [bx+di],ax
0000E11D  0002              add [bp+si],al
0000E11F  1000              adc [bx+si],al
0000E121  0000              add [bx+si],al
0000E123  F8                clc
0000E124  0100              add [bx+si],ax
0000E126  0000              add [bx+si],al
0000E128  0000              add [bx+si],al
0000E12A  0000              add [bx+si],al
0000E12C  0000              add [bx+si],al
0000E12E  004E4F            add [bp+0x4f],cl
0000E131  204E41            and [bp+0x41],cl
0000E134  4D                dec bp
0000E135  45                inc bp
0000E136  2020              and [bx+si],ah
0000E138  2020              and [bx+si],ah
0000E13A  0003              add [bp+di],al
0000E13C  2000              and [bx+si],al
0000E13E  2800              sub [bx+si],al
0000E140  0000              add [bx+si],al
0000E142  0000              add [bx+si],al
0000E144  0000              add [bx+si],al
0000E146  0000              add [bx+si],al
0000E148  0000              add [bx+si],al
0000E14A  0000              add [bx+si],al
0000E14C  0000              add [bx+si],al
0000E14E  0000              add [bx+si],al
0000E150  0000              add [bx+si],al
0000E152  0000              add [bx+si],al
0000E154  0000              add [bx+si],al
0000E156  0000              add [bx+si],al
0000E158  0000              add [bx+si],al
0000E15A  0000              add [bx+si],al
0000E15C  0000              add [bx+si],al
0000E15E  00FF              add bh,bh
0000E160  0100              add [bx+si],ax
0000E162  0000              add [bx+si],al
0000E164  FF                db 0xff
0000E165  FF00              inc word [bx+si]
0000E167  005003            add [bx+si+0x3],dl
0000E16A  0002              add [bp+si],al
0000E16C  0101              add [bx+di],ax
0000E16E  0002              add [bp+si],al
0000E170  1000              adc [bx+si],al
0000E172  0000              add [bx+si],al
0000E174  F8                clc
0000E175  0100              add [bx+si],ax
0000E177  0000              add [bx+si],al
0000E179  0000              add [bx+si],al
0000E17B  0000              add [bx+si],al
0000E17D  0000              add [bx+si],al
0000E17F  004E4F            add [bp+0x4f],cl
0000E182  204E41            and [bp+0x41],cl
0000E185  4D                dec bp
0000E186  45                inc bp
0000E187  2020              and [bx+si],ah
0000E189  2020              and [bx+si],ah
0000E18B  0003              add [bp+di],al
0000E18D  2000              and [bx+si],al
0000E18F  2800              sub [bx+si],al
0000E191  0000              add [bx+si],al
0000E193  0000              add [bx+si],al
0000E195  0000              add [bx+si],al
0000E197  0000              add [bx+si],al
0000E199  0000              add [bx+si],al
0000E19B  0000              add [bx+si],al
0000E19D  0000              add [bx+si],al
0000E19F  0000              add [bx+si],al
0000E1A1  0000              add [bx+si],al
0000E1A3  0000              add [bx+si],al
0000E1A5  0000              add [bx+si],al
0000E1A7  0000              add [bx+si],al
0000E1A9  0000              add [bx+si],al
0000E1AB  0000              add [bx+si],al
0000E1AD  0000              add [bx+si],al
0000E1AF  00FF              add bh,bh
0000E1B1  0100              add [bx+si],ax
0000E1B3  0000              add [bx+si],al
0000E1B5  FF                db 0xff
0000E1B6  FF00              inc word [bx+si]
0000E1B8  005003            add [bx+si+0x3],dl
0000E1BB  0002              add [bp+si],al
0000E1BD  0101              add [bx+di],ax
0000E1BF  0002              add [bp+si],al
0000E1C1  1000              adc [bx+si],al
0000E1C3  0000              add [bx+si],al
0000E1C5  F8                clc
0000E1C6  0100              add [bx+si],ax
0000E1C8  0000              add [bx+si],al
0000E1CA  0000              add [bx+si],al
0000E1CC  0000              add [bx+si],al
0000E1CE  0000              add [bx+si],al
0000E1D0  004E4F            add [bp+0x4f],cl
0000E1D3  204E41            and [bp+0x41],cl
0000E1D6  4D                dec bp
0000E1D7  45                inc bp
0000E1D8  2020              and [bx+si],ah
0000E1DA  2020              and [bx+si],ah
0000E1DC  0003              add [bp+di],al
0000E1DE  2000              and [bx+si],al
0000E1E0  2800              sub [bx+si],al
0000E1E2  0000              add [bx+si],al
0000E1E4  0000              add [bx+si],al
0000E1E6  0000              add [bx+si],al
0000E1E8  0000              add [bx+si],al
0000E1EA  0000              add [bx+si],al
0000E1EC  0000              add [bx+si],al
0000E1EE  0000              add [bx+si],al
0000E1F0  0000              add [bx+si],al
0000E1F2  0000              add [bx+si],al
0000E1F4  0000              add [bx+si],al
0000E1F6  0000              add [bx+si],al
0000E1F8  0000              add [bx+si],al
0000E1FA  0000              add [bx+si],al
0000E1FC  0000              add [bx+si],al
0000E1FE  0000              add [bx+si],al
0000E200  00FF              add bh,bh
0000E202  0100              add [bx+si],ax
0000E204  0000              add [bx+si],al
0000E206  FF                db 0xff
0000E207  FF00              inc word [bx+si]
0000E209  005003            add [bx+si+0x3],dl
0000E20C  0002              add [bp+si],al
0000E20E  0101              add [bx+di],ax
0000E210  0002              add [bp+si],al
0000E212  1000              adc [bx+si],al
0000E214  0000              add [bx+si],al
0000E216  F8                clc
0000E217  0100              add [bx+si],ax
0000E219  0000              add [bx+si],al
0000E21B  0000              add [bx+si],al
0000E21D  0000              add [bx+si],al
0000E21F  0000              add [bx+si],al
0000E221  004E4F            add [bp+0x4f],cl
0000E224  204E41            and [bp+0x41],cl
0000E227  4D                dec bp
0000E228  45                inc bp
0000E229  2020              and [bx+si],ah
0000E22B  2020              and [bx+si],ah
0000E22D  0003              add [bp+di],al
0000E22F  2000              and [bx+si],al
0000E231  2800              sub [bx+si],al
0000E233  0000              add [bx+si],al
0000E235  0000              add [bx+si],al
0000E237  0000              add [bx+si],al
0000E239  0000              add [bx+si],al
0000E23B  0000              add [bx+si],al
0000E23D  0000              add [bx+si],al
0000E23F  0000              add [bx+si],al
0000E241  0000              add [bx+si],al
0000E243  0000              add [bx+si],al
0000E245  0000              add [bx+si],al
0000E247  0000              add [bx+si],al
0000E249  0000              add [bx+si],al
0000E24B  0000              add [bx+si],al
0000E24D  0000              add [bx+si],al
0000E24F  0000              add [bx+si],al
0000E251  00FF              add bh,bh
0000E253  0100              add [bx+si],ax
0000E255  0000              add [bx+si],al
0000E257  FF                db 0xff
0000E258  FF00              inc word [bx+si]
0000E25A  005003            add [bx+si+0x3],dl
0000E25D  0002              add [bp+si],al
0000E25F  0101              add [bx+di],ax
0000E261  0002              add [bp+si],al
0000E263  1000              adc [bx+si],al
0000E265  0000              add [bx+si],al
0000E267  F8                clc
0000E268  0100              add [bx+si],ax
0000E26A  0000              add [bx+si],al
0000E26C  0000              add [bx+si],al
0000E26E  0000              add [bx+si],al
0000E270  0000              add [bx+si],al
0000E272  004E4F            add [bp+0x4f],cl
0000E275  204E41            and [bp+0x41],cl
0000E278  4D                dec bp
0000E279  45                inc bp
0000E27A  2020              and [bx+si],ah
0000E27C  2020              and [bx+si],ah
0000E27E  0003              add [bp+di],al
0000E280  2000              and [bx+si],al
0000E282  2800              sub [bx+si],al
0000E284  0000              add [bx+si],al
0000E286  0000              add [bx+si],al
0000E288  0000              add [bx+si],al
0000E28A  0000              add [bx+si],al
0000E28C  0000              add [bx+si],al
0000E28E  0000              add [bx+si],al
0000E290  0000              add [bx+si],al
0000E292  0000              add [bx+si],al
0000E294  0000              add [bx+si],al
0000E296  0000              add [bx+si],al
0000E298  0000              add [bx+si],al
0000E29A  0000              add [bx+si],al
0000E29C  0000              add [bx+si],al
0000E29E  0000              add [bx+si],al
0000E2A0  0000              add [bx+si],al
0000E2A2  00FF              add bh,bh
0000E2A4  0100              add [bx+si],ax
0000E2A6  0000              add [bx+si],al
0000E2A8  FF                db 0xff
0000E2A9  FF00              inc word [bx+si]
0000E2AB  005003            add [bx+si+0x3],dl
0000E2AE  0002              add [bp+si],al
0000E2B0  0101              add [bx+di],ax
0000E2B2  0002              add [bp+si],al
0000E2B4  1000              adc [bx+si],al
0000E2B6  0000              add [bx+si],al
0000E2B8  F8                clc
0000E2B9  0100              add [bx+si],ax
0000E2BB  0000              add [bx+si],al
0000E2BD  0000              add [bx+si],al
0000E2BF  0000              add [bx+si],al
0000E2C1  0000              add [bx+si],al
0000E2C3  004E4F            add [bp+0x4f],cl
0000E2C6  204E41            and [bp+0x41],cl
0000E2C9  4D                dec bp
0000E2CA  45                inc bp
0000E2CB  2020              and [bx+si],ah
0000E2CD  2020              and [bx+si],ah
0000E2CF  0003              add [bp+di],al
0000E2D1  2000              and [bx+si],al
0000E2D3  2800              sub [bx+si],al
0000E2D5  0000              add [bx+si],al
0000E2D7  0000              add [bx+si],al
0000E2D9  0000              add [bx+si],al
0000E2DB  0000              add [bx+si],al
0000E2DD  0000              add [bx+si],al
0000E2DF  0000              add [bx+si],al
0000E2E1  0000              add [bx+si],al
0000E2E3  0000              add [bx+si],al
0000E2E5  0000              add [bx+si],al
0000E2E7  0000              add [bx+si],al
0000E2E9  0000              add [bx+si],al
0000E2EB  0000              add [bx+si],al
0000E2ED  0000              add [bx+si],al
0000E2EF  0000              add [bx+si],al
0000E2F1  0000              add [bx+si],al
0000E2F3  00FF              add bh,bh
0000E2F5  0100              add [bx+si],ax
0000E2F7  0000              add [bx+si],al
0000E2F9  FF                db 0xff
0000E2FA  FF00              inc word [bx+si]
0000E2FC  005003            add [bx+si+0x3],dl
0000E2FF  0002              add [bp+si],al
0000E301  0101              add [bx+di],ax
0000E303  0002              add [bp+si],al
0000E305  1000              adc [bx+si],al
0000E307  0000              add [bx+si],al
0000E309  F8                clc
0000E30A  0100              add [bx+si],ax
0000E30C  0000              add [bx+si],al
0000E30E  0000              add [bx+si],al
0000E310  0000              add [bx+si],al
0000E312  0000              add [bx+si],al
0000E314  004E4F            add [bp+0x4f],cl
0000E317  204E41            and [bp+0x41],cl
0000E31A  4D                dec bp
0000E31B  45                inc bp
0000E31C  2020              and [bx+si],ah
0000E31E  2020              and [bx+si],ah
0000E320  0003              add [bp+di],al
0000E322  2000              and [bx+si],al
0000E324  2800              sub [bx+si],al
0000E326  0000              add [bx+si],al
0000E328  0000              add [bx+si],al
0000E32A  0000              add [bx+si],al
0000E32C  0000              add [bx+si],al
0000E32E  0000              add [bx+si],al
0000E330  0000              add [bx+si],al
0000E332  0000              add [bx+si],al
0000E334  0000              add [bx+si],al
0000E336  0000              add [bx+si],al
0000E338  0000              add [bx+si],al
0000E33A  0000              add [bx+si],al
0000E33C  0000              add [bx+si],al
0000E33E  0000              add [bx+si],al
0000E340  0000              add [bx+si],al
0000E342  0000              add [bx+si],al
0000E344  00FF              add bh,bh
0000E346  0100              add [bx+si],ax
0000E348  0000              add [bx+si],al
0000E34A  FF                db 0xff
0000E34B  FF00              inc word [bx+si]
0000E34D  005003            add [bx+si+0x3],dl
0000E350  0002              add [bp+si],al
0000E352  0101              add [bx+di],ax
0000E354  0002              add [bp+si],al
0000E356  1000              adc [bx+si],al
0000E358  0000              add [bx+si],al
0000E35A  F8                clc
0000E35B  0100              add [bx+si],ax
0000E35D  0000              add [bx+si],al
0000E35F  0000              add [bx+si],al
0000E361  0000              add [bx+si],al
0000E363  0000              add [bx+si],al
0000E365  004E4F            add [bp+0x4f],cl
0000E368  204E41            and [bp+0x41],cl
0000E36B  4D                dec bp
0000E36C  45                inc bp
0000E36D  2020              and [bx+si],ah
0000E36F  2020              and [bx+si],ah
0000E371  0003              add [bp+di],al
0000E373  2000              and [bx+si],al
0000E375  2800              sub [bx+si],al
0000E377  0000              add [bx+si],al
0000E379  0000              add [bx+si],al
0000E37B  0000              add [bx+si],al
0000E37D  0000              add [bx+si],al
0000E37F  0000              add [bx+si],al
0000E381  0000              add [bx+si],al
0000E383  0000              add [bx+si],al
0000E385  0000              add [bx+si],al
0000E387  0000              add [bx+si],al
0000E389  0000              add [bx+si],al
0000E38B  0000              add [bx+si],al
0000E38D  0000              add [bx+si],al
0000E38F  0000              add [bx+si],al
0000E391  0000              add [bx+si],al
0000E393  0000              add [bx+si],al
0000E395  00FF              add bh,bh
0000E397  0100              add [bx+si],ax
0000E399  0000              add [bx+si],al
0000E39B  FF                db 0xff
0000E39C  FF00              inc word [bx+si]
0000E39E  005003            add [bx+si+0x3],dl
0000E3A1  0002              add [bp+si],al
0000E3A3  0101              add [bx+di],ax
0000E3A5  0002              add [bp+si],al
0000E3A7  1000              adc [bx+si],al
0000E3A9  0000              add [bx+si],al
0000E3AB  F8                clc
0000E3AC  0100              add [bx+si],ax
0000E3AE  0000              add [bx+si],al
0000E3B0  0000              add [bx+si],al
0000E3B2  0000              add [bx+si],al
0000E3B4  0000              add [bx+si],al
0000E3B6  004E4F            add [bp+0x4f],cl
0000E3B9  204E41            and [bp+0x41],cl
0000E3BC  4D                dec bp
0000E3BD  45                inc bp
0000E3BE  2020              and [bx+si],ah
0000E3C0  2020              and [bx+si],ah
0000E3C2  0003              add [bp+di],al
0000E3C4  2000              and [bx+si],al
0000E3C6  2800              sub [bx+si],al
0000E3C8  0000              add [bx+si],al
0000E3CA  0000              add [bx+si],al
0000E3CC  0000              add [bx+si],al
0000E3CE  0000              add [bx+si],al
0000E3D0  0000              add [bx+si],al
0000E3D2  0000              add [bx+si],al
0000E3D4  0000              add [bx+si],al
0000E3D6  0000              add [bx+si],al
0000E3D8  0000              add [bx+si],al
0000E3DA  0000              add [bx+si],al
0000E3DC  0000              add [bx+si],al
0000E3DE  0000              add [bx+si],al
0000E3E0  0000              add [bx+si],al
0000E3E2  0000              add [bx+si],al
0000E3E4  0000              add [bx+si],al
0000E3E6  00FF              add bh,bh
0000E3E8  0100              add [bx+si],ax
0000E3EA  0000              add [bx+si],al
0000E3EC  FF                db 0xff
0000E3ED  FF00              inc word [bx+si]
0000E3EF  005003            add [bx+si+0x3],dl
0000E3F2  0002              add [bp+si],al
0000E3F4  0101              add [bx+di],ax
0000E3F6  0002              add [bp+si],al
0000E3F8  1000              adc [bx+si],al
0000E3FA  0000              add [bx+si],al
0000E3FC  F8                clc
0000E3FD  0100              add [bx+si],ax
0000E3FF  0000              add [bx+si],al
0000E401  0000              add [bx+si],al
0000E403  0000              add [bx+si],al
0000E405  0000              add [bx+si],al
0000E407  004E4F            add [bp+0x4f],cl
0000E40A  204E41            and [bp+0x41],cl
0000E40D  4D                dec bp
0000E40E  45                inc bp
0000E40F  2020              and [bx+si],ah
0000E411  2020              and [bx+si],ah
0000E413  0003              add [bp+di],al
0000E415  2000              and [bx+si],al
0000E417  2800              sub [bx+si],al
0000E419  0000              add [bx+si],al
0000E41B  0000              add [bx+si],al
0000E41D  0000              add [bx+si],al
0000E41F  0000              add [bx+si],al
0000E421  0000              add [bx+si],al
0000E423  0000              add [bx+si],al
0000E425  0000              add [bx+si],al
0000E427  0000              add [bx+si],al
0000E429  0000              add [bx+si],al
0000E42B  0000              add [bx+si],al
0000E42D  0000              add [bx+si],al
0000E42F  0000              add [bx+si],al
0000E431  0000              add [bx+si],al
0000E433  0000              add [bx+si],al
0000E435  0000              add [bx+si],al
0000E437  00FF              add bh,bh
0000E439  0100              add [bx+si],ax
0000E43B  0000              add [bx+si],al
0000E43D  FF                db 0xff
0000E43E  FF00              inc word [bx+si]
0000E440  005003            add [bx+si+0x3],dl
0000E443  0002              add [bp+si],al
0000E445  0101              add [bx+di],ax
0000E447  0002              add [bp+si],al
0000E449  1000              adc [bx+si],al
0000E44B  0000              add [bx+si],al
0000E44D  F8                clc
0000E44E  0100              add [bx+si],ax
0000E450  0000              add [bx+si],al
0000E452  0000              add [bx+si],al
0000E454  0000              add [bx+si],al
0000E456  0000              add [bx+si],al
0000E458  004E4F            add [bp+0x4f],cl
0000E45B  204E41            and [bp+0x41],cl
0000E45E  4D                dec bp
0000E45F  45                inc bp
0000E460  2020              and [bx+si],ah
0000E462  2020              and [bx+si],ah
0000E464  0003              add [bp+di],al
0000E466  2000              and [bx+si],al
0000E468  2800              sub [bx+si],al
0000E46A  0000              add [bx+si],al
0000E46C  0000              add [bx+si],al
0000E46E  0000              add [bx+si],al
0000E470  0000              add [bx+si],al
0000E472  0000              add [bx+si],al
0000E474  0000              add [bx+si],al
0000E476  0000              add [bx+si],al
0000E478  0000              add [bx+si],al
0000E47A  0000              add [bx+si],al
0000E47C  0000              add [bx+si],al
0000E47E  0000              add [bx+si],al
0000E480  0000              add [bx+si],al
0000E482  0000              add [bx+si],al
0000E484  0000              add [bx+si],al
0000E486  0000              add [bx+si],al
0000E488  00FF              add bh,bh
0000E48A  0100              add [bx+si],ax
0000E48C  0000              add [bx+si],al
0000E48E  FF                db 0xff
0000E48F  FF00              inc word [bx+si]
0000E491  005003            add [bx+si+0x3],dl
0000E494  0002              add [bp+si],al
0000E496  0101              add [bx+di],ax
0000E498  0002              add [bp+si],al
0000E49A  1000              adc [bx+si],al
0000E49C  0000              add [bx+si],al
0000E49E  F8                clc
0000E49F  0100              add [bx+si],ax
0000E4A1  0000              add [bx+si],al
0000E4A3  0000              add [bx+si],al
0000E4A5  0000              add [bx+si],al
0000E4A7  0000              add [bx+si],al
0000E4A9  004E4F            add [bp+0x4f],cl
0000E4AC  204E41            and [bp+0x41],cl
0000E4AF  4D                dec bp
0000E4B0  45                inc bp
0000E4B1  2020              and [bx+si],ah
0000E4B3  2020              and [bx+si],ah
0000E4B5  0003              add [bp+di],al
0000E4B7  2000              and [bx+si],al
0000E4B9  2800              sub [bx+si],al
0000E4BB  0000              add [bx+si],al
0000E4BD  0000              add [bx+si],al
0000E4BF  0000              add [bx+si],al
0000E4C1  0000              add [bx+si],al
0000E4C3  0000              add [bx+si],al
0000E4C5  0000              add [bx+si],al
0000E4C7  0000              add [bx+si],al
0000E4C9  0000              add [bx+si],al
0000E4CB  0000              add [bx+si],al
0000E4CD  0000              add [bx+si],al
0000E4CF  0000              add [bx+si],al
0000E4D1  0000              add [bx+si],al
0000E4D3  0000              add [bx+si],al
0000E4D5  0000              add [bx+si],al
0000E4D7  0000              add [bx+si],al
0000E4D9  00FF              add bh,bh
0000E4DB  0100              add [bx+si],ax
0000E4DD  0000              add [bx+si],al
0000E4DF  FF                db 0xff
0000E4E0  FF00              inc word [bx+si]
0000E4E2  005003            add [bx+si+0x3],dl
0000E4E5  0002              add [bp+si],al
0000E4E7  0101              add [bx+di],ax
0000E4E9  0002              add [bp+si],al
0000E4EB  1000              adc [bx+si],al
0000E4ED  0000              add [bx+si],al
0000E4EF  F8                clc
0000E4F0  0100              add [bx+si],ax
0000E4F2  0000              add [bx+si],al
0000E4F4  0000              add [bx+si],al
0000E4F6  0000              add [bx+si],al
0000E4F8  0000              add [bx+si],al
0000E4FA  004E4F            add [bp+0x4f],cl
0000E4FD  204E41            and [bp+0x41],cl
0000E500  4D                dec bp
0000E501  45                inc bp
0000E502  2020              and [bx+si],ah
0000E504  2020              and [bx+si],ah
0000E506  0003              add [bp+di],al
0000E508  2000              and [bx+si],al
0000E50A  2800              sub [bx+si],al
0000E50C  0000              add [bx+si],al
0000E50E  0000              add [bx+si],al
0000E510  0000              add [bx+si],al
0000E512  0000              add [bx+si],al
0000E514  0000              add [bx+si],al
0000E516  0000              add [bx+si],al
0000E518  0000              add [bx+si],al
0000E51A  0000              add [bx+si],al
0000E51C  0000              add [bx+si],al
0000E51E  0000              add [bx+si],al
0000E520  0000              add [bx+si],al
0000E522  0000              add [bx+si],al
0000E524  0000              add [bx+si],al
0000E526  0000              add [bx+si],al
0000E528  0000              add [bx+si],al
0000E52A  00FF              add bh,bh
0000E52C  0100              add [bx+si],ax
0000E52E  0000              add [bx+si],al
0000E530  FF                db 0xff
0000E531  FF00              inc word [bx+si]
0000E533  005003            add [bx+si+0x3],dl
0000E536  0002              add [bp+si],al
0000E538  0101              add [bx+di],ax
0000E53A  0002              add [bp+si],al
0000E53C  1000              adc [bx+si],al
0000E53E  0000              add [bx+si],al
0000E540  F8                clc
0000E541  0100              add [bx+si],ax
0000E543  0000              add [bx+si],al
0000E545  0000              add [bx+si],al
0000E547  0000              add [bx+si],al
0000E549  0000              add [bx+si],al
0000E54B  004E4F            add [bp+0x4f],cl
0000E54E  204E41            and [bp+0x41],cl
0000E551  4D                dec bp
0000E552  45                inc bp
0000E553  2020              and [bx+si],ah
0000E555  2020              and [bx+si],ah
0000E557  0003              add [bp+di],al
0000E559  2000              and [bx+si],al
0000E55B  2800              sub [bx+si],al
0000E55D  0000              add [bx+si],al
0000E55F  0000              add [bx+si],al
0000E561  0000              add [bx+si],al
0000E563  0000              add [bx+si],al
0000E565  0000              add [bx+si],al
0000E567  0000              add [bx+si],al
0000E569  0000              add [bx+si],al
0000E56B  0000              add [bx+si],al
0000E56D  0000              add [bx+si],al
0000E56F  0000              add [bx+si],al
0000E571  0000              add [bx+si],al
0000E573  0000              add [bx+si],al
0000E575  0000              add [bx+si],al
0000E577  0000              add [bx+si],al
0000E579  0000              add [bx+si],al
0000E57B  00FF              add bh,bh
0000E57D  0100              add [bx+si],ax
0000E57F  0000              add [bx+si],al
0000E581  FF                db 0xff
0000E582  FF00              inc word [bx+si]
0000E584  005003            add [bx+si+0x3],dl
0000E587  0002              add [bp+si],al
0000E589  0101              add [bx+di],ax
0000E58B  0002              add [bp+si],al
0000E58D  1000              adc [bx+si],al
0000E58F  0000              add [bx+si],al
0000E591  F8                clc
0000E592  0100              add [bx+si],ax
0000E594  0000              add [bx+si],al
0000E596  0000              add [bx+si],al
0000E598  0000              add [bx+si],al
0000E59A  0000              add [bx+si],al
0000E59C  004E4F            add [bp+0x4f],cl
0000E59F  204E41            and [bp+0x41],cl
0000E5A2  4D                dec bp
0000E5A3  45                inc bp
0000E5A4  2020              and [bx+si],ah
0000E5A6  2020              and [bx+si],ah
0000E5A8  0003              add [bp+di],al
0000E5AA  2000              and [bx+si],al
0000E5AC  2800              sub [bx+si],al
0000E5AE  0000              add [bx+si],al
0000E5B0  0000              add [bx+si],al
0000E5B2  0000              add [bx+si],al
0000E5B4  0000              add [bx+si],al
0000E5B6  0000              add [bx+si],al
0000E5B8  0000              add [bx+si],al
0000E5BA  0000              add [bx+si],al
0000E5BC  0000              add [bx+si],al
0000E5BE  0000              add [bx+si],al
0000E5C0  0000              add [bx+si],al
0000E5C2  0000              add [bx+si],al
0000E5C4  0000              add [bx+si],al
0000E5C6  0000              add [bx+si],al
0000E5C8  0000              add [bx+si],al
0000E5CA  0000              add [bx+si],al
0000E5CC  00FF              add bh,bh
0000E5CE  0100              add [bx+si],ax
0000E5D0  0000              add [bx+si],al
0000E5D2  FF                db 0xff
0000E5D3  FF00              inc word [bx+si]
0000E5D5  005003            add [bx+si+0x3],dl
0000E5D8  0002              add [bp+si],al
0000E5DA  0101              add [bx+di],ax
0000E5DC  0002              add [bp+si],al
0000E5DE  1000              adc [bx+si],al
0000E5E0  0000              add [bx+si],al
0000E5E2  F8                clc
0000E5E3  0100              add [bx+si],ax
0000E5E5  0000              add [bx+si],al
0000E5E7  0000              add [bx+si],al
0000E5E9  0000              add [bx+si],al
0000E5EB  0000              add [bx+si],al
0000E5ED  004E4F            add [bp+0x4f],cl
0000E5F0  204E41            and [bp+0x41],cl
0000E5F3  4D                dec bp
0000E5F4  45                inc bp
0000E5F5  2020              and [bx+si],ah
0000E5F7  2020              and [bx+si],ah
0000E5F9  0003              add [bp+di],al
0000E5FB  2000              and [bx+si],al
0000E5FD  2800              sub [bx+si],al
0000E5FF  0000              add [bx+si],al
0000E601  0000              add [bx+si],al
0000E603  0000              add [bx+si],al
0000E605  0000              add [bx+si],al
0000E607  0000              add [bx+si],al
0000E609  0000              add [bx+si],al
0000E60B  0000              add [bx+si],al
0000E60D  0000              add [bx+si],al
0000E60F  0000              add [bx+si],al
0000E611  0000              add [bx+si],al
0000E613  0000              add [bx+si],al
0000E615  0000              add [bx+si],al
0000E617  0000              add [bx+si],al
0000E619  0000              add [bx+si],al
0000E61B  0000              add [bx+si],al
0000E61D  00FF              add bh,bh
0000E61F  0100              add [bx+si],ax
0000E621  0000              add [bx+si],al
0000E623  FF                db 0xff
0000E624  FF00              inc word [bx+si]
0000E626  005003            add [bx+si+0x3],dl
0000E629  0002              add [bp+si],al
0000E62B  0101              add [bx+di],ax
0000E62D  0002              add [bp+si],al
0000E62F  1000              adc [bx+si],al
0000E631  0000              add [bx+si],al
0000E633  F8                clc
0000E634  0100              add [bx+si],ax
0000E636  0000              add [bx+si],al
0000E638  0000              add [bx+si],al
0000E63A  0000              add [bx+si],al
0000E63C  0000              add [bx+si],al
0000E63E  004E4F            add [bp+0x4f],cl
0000E641  204E41            and [bp+0x41],cl
0000E644  4D                dec bp
0000E645  45                inc bp
0000E646  2020              and [bx+si],ah
0000E648  2020              and [bx+si],ah
0000E64A  0003              add [bp+di],al
0000E64C  2000              and [bx+si],al
0000E64E  2800              sub [bx+si],al
0000E650  0000              add [bx+si],al
0000E652  0000              add [bx+si],al
0000E654  0000              add [bx+si],al
0000E656  0000              add [bx+si],al
0000E658  0000              add [bx+si],al
0000E65A  0000              add [bx+si],al
0000E65C  0000              add [bx+si],al
0000E65E  0000              add [bx+si],al
0000E660  0000              add [bx+si],al
0000E662  0000              add [bx+si],al
0000E664  0000              add [bx+si],al
0000E666  0000              add [bx+si],al
0000E668  0000              add [bx+si],al
0000E66A  0000              add [bx+si],al
0000E66C  0000              add [bx+si],al
0000E66E  00FF              add bh,bh
0000E670  0100              add [bx+si],ax
0000E672  0000              add [bx+si],al
0000E674  0000              add [bx+si],al
0000E676  0000              add [bx+si],al
0000E678  0000              add [bx+si],al
0000E67A  0000              add [bx+si],al
0000E67C  0000              add [bx+si],al
0000E67E  0000              add [bx+si],al
0000E680  0000              add [bx+si],al
0000E682  0000              add [bx+si],al
0000E684  80FA80            cmp dl,0x80
0000E687  720A              jc 0xe693
0000E689  80FC02            cmp ah,0x2
0000E68C  740A              jz 0xe698
0000E68E  80FC0A            cmp ah,0xa
0000E691  7405              jz 0xe698
0000E693  2EFF2EB000        jmp word far [cs:0xb0]
0000E698  53                push bx
0000E699  51                push cx
0000E69A  52                push dx
0000E69B  57                push di
0000E69C  1E                push ds
0000E69D  06                push es
0000E69E  50                push ax
0000E69F  B84000            mov ax,0x40
0000E6A2  8ED8              mov ds,ax
0000E6A4  C606740000        mov byte [0x74],0x0
0000E6A9  80E27F            and dl,0x7f
0000E6AC  3A167500          cmp dl,[0x75]
0000E6B0  7207              jc 0xe6b9
0000E6B2  C606740001        mov byte [0x74],0x1
0000E6B7  EB21              jmp 0xe6da
0000E6B9  53                push bx
0000E6BA  8CC0              mov ax,es
0000E6BC  C1EB04            shr bx,byte 0x4
0000E6BF  03C3              add ax,bx
0000E6C1  8EC0              mov es,ax
0000E6C3  5B                pop bx
0000E6C4  81E30F00          and bx,0xf
0000E6C8  0E                push cs
0000E6C9  E8DF00            call 0xe7ab
0000E6CC  720C              jc 0xe6da
0000E6CE  58                pop ax
0000E6CF  50                push ax
0000E6D0  E81B00            call 0xe6ee
0000E6D3  BAF603            mov dx,0x3f6
0000E6D6  EE                out dx,al
0000E6D7  E86C00            call 0xe746
0000E6DA  58                pop ax
0000E6DB  8A267400          mov ah,[0x74]
0000E6DF  F9                stc
0000E6E0  0AE4              or ah,ah
0000E6E2  7501              jnz 0xe6e5
0000E6E4  F8                clc
0000E6E5  07                pop es
0000E6E6  1F                pop ds
0000E6E7  5F                pop di
0000E6E8  5A                pop dx
0000E6E9  59                pop cx
0000E6EA  5B                pop bx
0000E6EB  CA0200            retf word 0x2
0000E6EE  A24300            mov [0x43],al
0000E6F1  C606480020        mov byte [0x48],0x20
0000E6F6  80FC02            cmp ah,0x2
0000E6F9  7405              jz 0xe700
0000E6FB  C606480022        mov byte [0x48],0x22
0000E700  8AC1              mov al,cl
0000E702  243F              and al,0x3f
0000E704  A24400            mov [0x44],al
0000E707  882E4500          mov [0x45],ch
0000E70B  8AC1              mov al,cl
0000E70D  C0E806            shr al,byte 0x6
0000E710  A24600            mov [0x46],al
0000E713  8BC2              mov ax,dx
0000E715  C0E004            shl al,byte 0x4
0000E718  80E40F            and ah,0xf
0000E71B  0AC4              or al,ah
0000E71D  0CA0              or al,0xa0
0000E71F  A24700            mov [0x47],al
0000E722  06                push es
0000E723  53                push bx
0000E724  0E                push cs
0000E725  E85B00            call 0xe783
0000E728  268B4705          mov ax,[es:bx+0x5]
0000E72C  C1E802            shr ax,byte 0x2
0000E72F  A24200            mov [0x42],al
0000E732  268A4708          mov al,[es:bx+0x8]
0000E736  5B                pop bx
0000E737  07                pop es
0000E738  8A267600          mov ah,[0x76]
0000E73C  80E4C0            and ah,0xc0
0000E73F  0AE0              or ah,al
0000E741  88267600          mov [0x76],ah
0000E745  C3                ret
0000E746  8BFB              mov di,bx
0000E748  0E                push cs
0000E749  E83F00            call 0xe78b
0000E74C  7534              jnz 0xe782
0000E74E  0E                push cs
0000E74F  E84100            call 0xe793
0000E752  752E              jnz 0xe782
0000E754  B90001            mov cx,0x100
0000E757  BAF001            mov dx,0x1f0
0000E75A  FC                cld
0000E75B  FA                cli
0000E75C  F36D              rep insw
0000E75E  FB                sti
0000E75F  F606480002        test byte [0x48],0x2
0000E764  7410              jz 0xe776
0000E766  0E                push cs
0000E767  E83100            call 0xe79b
0000E76A  7216              jc 0xe782
0000E76C  B90400            mov cx,0x4
0000E76F  BAF001            mov dx,0x1f0
0000E772  FA                cli
0000E773  F36C              rep insb
0000E775  FB                sti
0000E776  0E                push cs
0000E777  E82900            call 0xe7a3
0000E77A  7506              jnz 0xe782
0000E77C  FE0E4300          dec byte [0x43]
0000E780  75CC              jnz 0xe74e
0000E782  C3                ret
0000E783  6865FF            push word 0xff65
0000E786  EA8E2F00F0        jmp word 0xf000:word 0x2f8e
0000E78B  6865FF            push word 0xff65
0000E78E  EA1E2E00F0        jmp word 0xf000:word 0x2e1e
0000E793  6865FF            push word 0xff65
0000E796  EA7F2E00F0        jmp word 0xf000:word 0x2e7f
0000E79B  6865FF            push word 0xff65
0000E79E  EAE22E00F0        jmp word 0xf000:word 0x2ee2
0000E7A3  6865FF            push word 0xff65
0000E7A6  EAF82E00F0        jmp word 0xf000:word 0x2ef8
0000E7AB  6865FF            push word 0xff65
0000E7AE  EA692F00F0        jmp word 0xf000:word 0x2f69
0000E7B3  2EFF36DA05        push word [cs:0x5da]
0000E7B8  2E813EDA05891C    cmp word [cs:0x5da],0x1c89
0000E7BF  730F              jnc 0xe7d0
0000E7C1  2EC606BF0813      mov byte [cs:0x8bf],0x13
0000E7C7  2EC606C00850      mov byte [cs:0x8c0],0x50
0000E7CD  EB14              jmp 0xe7e3
0000E7CF  90                nop
0000E7D0  2EC606BF0814      mov byte [cs:0x8bf],0x14
0000E7D6  2EC606C00800      mov byte [cs:0x8c0],0x0
0000E7DC  2E812EDA05891C    sub word [cs:0x5da],0x1c89
0000E7E3  33D2              xor dx,dx
0000E7E5  2EA1DA05          mov ax,[cs:0x5da]
0000E7E9  BBB505            mov bx,0x5b5
0000E7EC  F7F3              div bx
0000E7EE  2E8916DA05        mov [cs:0x5da],dx
0000E7F3  B304              mov bl,0x4
0000E7F5  F6E3              mul bl
0000E7F7  2E0006C008        add [cs:0x8c0],al
0000E7FC  2EFF06DA05        inc word [cs:0x5da]
0000E801  2E813EDA056E01    cmp word [cs:0x5da],0x16e
0000E808  7626              jna 0xe830
0000E80A  2EFE06C008        inc byte [cs:0x8c0]
0000E80F  2E812EDA056E01    sub word [cs:0x5da],0x16e
0000E816  B90300            mov cx,0x3
0000E819  2E813EDA056D01    cmp word [cs:0x5da],0x16d
0000E820  7614              jna 0xe836
0000E822  2EFE06C008        inc byte [cs:0x8c0]
0000E827  2E812EDA056D01    sub word [cs:0x5da],0x16d
0000E82E  E2E9              loop 0xe819
0000E830  2EC606C2081D      mov byte [cs:0x8c2],0x1d
0000E836  33DB              xor bx,bx
0000E838  33D2              xor dx,dx
0000E83A  2EA1DA05          mov ax,[cs:0x5da]
0000E83E  BEC108            mov si,0x8c1
0000E841  B90C00            mov cx,0xc
0000E844  FEC3              inc bl
0000E846  8A14              mov dl,[si]
0000E848  3BC2              cmp ax,dx
0000E84A  7605              jna 0xe851
0000E84C  46                inc si
0000E84D  2BC2              sub ax,dx
0000E84F  E2F3              loop 0xe844
0000E851  2EC606C2081C      mov byte [cs:0x8c2],0x1c
0000E857  8AD3              mov dl,bl
0000E859  2E8A36C008        mov dh,[cs:0x8c0]
0000E85E  2E8A0EBF08        mov cl,[cs:0x8bf]
0000E863  2EFF16CD08        call word near [cs:0x8cd]
0000E868  86D0              xchg dl,al
0000E86A  2EFF16CD08        call word near [cs:0x8cd]
0000E86F  86F0              xchg dh,al
0000E871  2EFF16CD08        call word near [cs:0x8cd]
0000E876  86C8              xchg cl,al
0000E878  2EFF16CD08        call word near [cs:0x8cd]
0000E87D  8AE8              mov ch,al
0000E87F  2E8F06DA05        pop word [cs:0x5da]
0000E884  C3                ret
0000E885  51                push cx
0000E886  32E4              xor ah,ah
0000E888  B10A              mov cl,0xa
0000E88A  F6F1              div cl
0000E88C  B104              mov cl,0x4
0000E88E  D2E0              shl al,cl
0000E890  0AC4              or al,ah
0000E892  59                pop cx
0000E893  C3                ret
0000E894  90                nop
0000E895  0E                push cs
0000E896  1F                pop ds
0000E897  8F06C21B          pop word [0x1bc2]
0000E89B  8F06C41B          pop word [0x1bc4]
0000E89F  9D                popf
0000E8A0  E81300            call 0xe8b6
0000E8A3  FA                cli
0000E8A4  8936DA05          mov [0x5da],si
0000E8A8  FB                sti
0000E8A9  E8CC00            call 0xe978
0000E8AC  FA                cli
0000E8AD  B401              mov ah,0x1
0000E8AF  CD1A              int byte 0x1a
0000E8B1  FB                sti
0000E8B2  FF2EC21B          jmp word far [0x1bc2]
0000E8B6  50                push ax
0000E8B7  51                push cx
0000E8B8  52                push dx
0000E8B9  32E4              xor ah,ah
0000E8BB  CD1A              int byte 0x1a
0000E8BD  5A                pop dx
0000E8BE  59                pop cx
0000E8BF  58                pop ax
0000E8C0  50                push ax
0000E8C1  53                push bx
0000E8C2  51                push cx
0000E8C3  52                push dx
0000E8C4  2EC706E21B0100    mov word [cs:0x1be2],0x1
0000E8CB  B404              mov ah,0x4
0000E8CD  CD1A              int byte 0x1a
0000E8CF  7303              jnc 0xe8d4
0000E8D1  E99300            jmp 0xe967
0000E8D4  882EC61B          mov [0x1bc6],ch
0000E8D8  880EC71B          mov [0x1bc7],cl
0000E8DC  8836C81B          mov [0x1bc8],dh
0000E8E0  8816C91B          mov [0x1bc9],dl
0000E8E4  2EC706E21B0200    mov word [cs:0x1be2],0x2
0000E8EB  E85601            call 0xea44
0000E8EE  7277              jc 0xe967
0000E8F0  2EC706E21B0300    mov word [cs:0x1be2],0x3
0000E8F7  E8F300            call 0xe9ed
0000E8FA  726B              jc 0xe967
0000E8FC  2EC706E21B0000    mov word [cs:0x1be2],0x0
0000E903  E8AC00            call 0xe9b2
0000E906  A0C71B            mov al,[0x1bc7]
0000E909  98                cbw
0000E90A  803EC61B14        cmp byte [0x1bc6],0x14
0000E90F  7503              jnz 0xe914
0000E911  056400            add ax,0x64
0000E914  2D5000            sub ax,0x50
0000E917  B104              mov cl,0x4
0000E919  F6F1              div cl
0000E91B  8ADC              mov bl,ah
0000E91D  98                cbw
0000E91E  B9B505            mov cx,0x5b5
0000E921  F7E1              mul cx
0000E923  2EA3E21B          mov [cs:0x1be2],ax
0000E927  8AC3              mov al,bl
0000E929  98                cbw
0000E92A  0BC0              or ax,ax
0000E92C  740C              jz 0xe93a
0000E92E  B96D01            mov cx,0x16d
0000E931  F7E1              mul cx
0000E933  2E0106E21B        add [cs:0x1be2],ax
0000E938  EB07              jmp 0xe941
0000E93A  803EC81B02        cmp byte [0x1bc8],0x2
0000E93F  7605              jna 0xe946
0000E941  2EFF06E21B        inc word [cs:0x1be2]
0000E946  8A0EC91B          mov cl,[0x1bc9]
0000E94A  32ED              xor ch,ch
0000E94C  49                dec cx
0000E94D  2E010EE21B        add [cs:0x1be2],cx
0000E952  8A0EC81B          mov cl,[0x1bc8]
0000E956  32ED              xor ch,ch
0000E958  49                dec cx
0000E959  D1E1              shl cx,0x0
0000E95B  BECA1B            mov si,0x1bca
0000E95E  03F1              add si,cx
0000E960  8B04              mov ax,[si]
0000E962  2E0106E21B        add [cs:0x1be2],ax
0000E967  2E8B36E21B        mov si,[cs:0x1be2]
0000E96C  5A                pop dx
0000E96D  59                pop cx
0000E96E  5B                pop bx
0000E96F  58                pop ax
0000E970  C3                ret
0000E971  33C9              xor cx,cx
0000E973  33D2              xor dx,dx
0000E975  EB3A              jmp 0xe9b1
0000E977  90                nop
0000E978  B402              mov ah,0x2
0000E97A  CD1A              int byte 0x1a
0000E97C  72F3              jc 0xe971
0000E97E  882EC61B          mov [0x1bc6],ch
0000E982  880EC71B          mov [0x1bc7],cl
0000E986  8836C81B          mov [0x1bc8],dh
0000E98A  C606C91B00        mov byte [0x1bc9],0x0
0000E98F  E8B200            call 0xea44
0000E992  72DD              jc 0xe971
0000E994  E89400            call 0xea2b
0000E997  72D8              jc 0xe971
0000E999  E81600            call 0xe9b2
0000E99C  8A2EC61B          mov ch,[0x1bc6]
0000E9A0  8A0EC71B          mov cl,[0x1bc7]
0000E9A4  8A36C81B          mov dh,[0x1bc8]
0000E9A8  8A16C91B          mov dl,[0x1bc9]
0000E9AC  2EFF16D108        call word near [cs:0x8d1]
0000E9B1  C3                ret
0000E9B2  A0C61B            mov al,[0x1bc6]
0000E9B5  E81F00            call 0xe9d7
0000E9B8  A2C61B            mov [0x1bc6],al
0000E9BB  A0C71B            mov al,[0x1bc7]
0000E9BE  E81600            call 0xe9d7
0000E9C1  A2C71B            mov [0x1bc7],al
0000E9C4  A0C81B            mov al,[0x1bc8]
0000E9C7  E80D00            call 0xe9d7
0000E9CA  A2C81B            mov [0x1bc8],al
0000E9CD  A0C91B            mov al,[0x1bc9]
0000E9D0  E80400            call 0xe9d7
0000E9D3  A2C91B            mov [0x1bc9],al
0000E9D6  C3                ret
0000E9D7  8AE0              mov ah,al
0000E9D9  250FF0            and ax,0xf00f
0000E9DC  8AD8              mov bl,al
0000E9DE  86E0              xchg ah,al
0000E9E0  32E4              xor ah,ah
0000E9E2  B104              mov cl,0x4
0000E9E4  D3E8              shr ax,cl
0000E9E6  B10A              mov cl,0xa
0000E9E8  F6E1              mul cl
0000E9EA  02C3              add al,bl
0000E9EC  C3                ret
0000E9ED  803EC61B20        cmp byte [0x1bc6],0x20
0000E9F2  7735              ja 0xea29
0000E9F4  740E              jz 0xea04
0000E9F6  803EC61B19        cmp byte [0x1bc6],0x19
0000E9FB  722C              jc 0xea29
0000E9FD  803EC71B80        cmp byte [0x1bc7],0x80
0000EA02  7225              jc 0xea29
0000EA04  803EC71B99        cmp byte [0x1bc7],0x99
0000EA09  771E              ja 0xea29
0000EA0B  803EC81B12        cmp byte [0x1bc8],0x12
0000EA10  7717              ja 0xea29
0000EA12  803EC81B00        cmp byte [0x1bc8],0x0
0000EA17  7610              jna 0xea29
0000EA19  803EC91B31        cmp byte [0x1bc9],0x31
0000EA1E  7709              ja 0xea29
0000EA20  803EC91B00        cmp byte [0x1bc9],0x0
0000EA25  7602              jna 0xea29
0000EA27  F8                clc
0000EA28  C3                ret
0000EA29  F9                stc
0000EA2A  C3                ret
0000EA2B  803EC61B24        cmp byte [0x1bc6],0x24
0000EA30  7710              ja 0xea42
0000EA32  803EC71B59        cmp byte [0x1bc7],0x59
0000EA37  7709              ja 0xea42
0000EA39  803EC81B59        cmp byte [0x1bc8],0x59
0000EA3E  7702              ja 0xea42
0000EA40  F8                clc
0000EA41  C3                ret
0000EA42  F9                stc
0000EA43  C3                ret
0000EA44  B90400            mov cx,0x4
0000EA47  BBC61B            mov bx,0x1bc6
0000EA4A  8A07              mov al,[bx]
0000EA4C  8AE0              mov ah,al
0000EA4E  250FF0            and ax,0xf00f
0000EA51  3C0A              cmp al,0xa
0000EA53  7716              ja 0xea6b
0000EA55  D0EC              shr ah,0x0
0000EA57  D0EC              shr ah,0x0
0000EA59  D0EC              shr ah,0x0
0000EA5B  D0EC              shr ah,0x0
0000EA5D  80E40F            and ah,0xf
0000EA60  80FC0A            cmp ah,0xa
0000EA63  7706              ja 0xea6b
0000EA65  43                inc bx
0000EA66  49                dec cx
0000EA67  75E1              jnz 0xea4a
0000EA69  F8                clc
0000EA6A  C3                ret
0000EA6B  F9                stc
0000EA6C  C3                ret
0000EA6D  0000              add [bx+si],al
0000EA6F  0000              add [bx+si],al
0000EA71  0000              add [bx+si],al
0000EA73  0000              add [bx+si],al
0000EA75  0000              add [bx+si],al
0000EA77  0002              add [bp+si],al
0000EA79  0928              or [bx+si],bp
0000EA7B  FF00              inc word [bx+si]
0000EA7D  0002              add [bp+si],al
0000EA7F  0001              add [bx+di],al
0000EA81  40                inc ax
0000EA82  0000              add [bx+si],al
0000EA84  0000              add [bx+si],al
0000EA86  0801              or [bx+di],al
0000EA88  027000            add dh,[bx+si+0x0]
0000EA8B  0000              add [bx+si],al
0000EA8D  0020              add [bx+si],ah
0000EA8F  0204              add al,[si]
0000EA91  0001              add [bx+di],al
0000EA93  0000              add [bx+si],al
0000EA95  A87F              test al,0x7f
0000EA97  0308              add cx,[bx+si]
0000EA99  0002              add [bp+si],al
0000EA9B  0000              add [bx+si],al
0000EA9D  FF                db 0xff
0000EA9E  FF04              inc word [si]
0000EAA0  1000              adc [bx+si],al
0000EAA2  0400              add al,0x0
0000EAA4  00A87F03          add [bx+si+0x37f],ch
0000EAA8  0800              or [bx+si],al
0000EAAA  0200              add al,[bx+si]
0000EAAC  00FF              add bh,bh
0000EAAE  FF02              inc word [bp+si]
0000EAB0  0400              add al,0x0
0000EAB2  024000            add al,[bx+si+0x0]
0000EAB5  0000              add [bx+si],al
0000EAB7  0000              add [bx+si],al
0000EAB9  00800000          add [bx+si+0x0],al
0000EABD  0000              add [bx+si],al
0000EABF  0000              add [bx+si],al
0000EAC1  3031              xor [bx+di],dh
0000EAC3  2F                das
0000EAC4  3130              xor [bx+si],si
0000EAC6  2F                das
0000EAC7  3834              cmp [si],dh
0000EAC9  00900002          add [bx+si+0x200],dl
0000EACD  0201              add al,[bx+di]
0000EACF  0002              add [bp+si],al
0000EAD1  7000              jo 0xead3
0000EAD3  D002              rol byte [bp+si],0x0
0000EAD5  FD                std
0000EAD6  0200              add al,[bx+si]
0000EAD8  0900              or [bx+si],ax
0000EADA  0200              add al,[bx+si]
0000EADC  0000              add [bx+si],al
0000EADE  0000              add [bx+si],al
0000EAE0  0000              add [bx+si],al
0000EAE2  0000              add [bx+si],al
0000EAE4  0000              add [bx+si],al
0000EAE6  0000              add [bx+si],al
0000EAE8  0000              add [bx+si],al
0000EAEA  90                nop
0000EAEB  0002              add [bp+si],al
0000EAED  0101              add [bx+di],ax
0000EAEF  0002              add [bp+si],al
0000EAF1  E000              loopne 0xeaf3
0000EAF3  60                pusha
0000EAF4  09F9              or cx,di
0000EAF6  07                pop es
0000EAF7  000F              add [bx],cl
0000EAF9  0002              add [bp+si],al
0000EAFB  0000              add [bx+si],al
0000EAFD  0000              add [bx+si],al
0000EAFF  0000              add [bx+si],al
0000EB01  0000              add [bx+si],al
0000EB03  0000              add [bx+si],al
0000EB05  0000              add [bx+si],al
0000EB07  0000              add [bx+si],al
0000EB09  00900002          add [bx+si+0x200],dl
0000EB0D  0201              add al,[bx+di]
0000EB0F  0002              add [bp+si],al
0000EB11  7000              jo 0xeb13
0000EB13  A005F9            mov al,[0xf905]
0000EB16  0300              add ax,[bx+si]
0000EB18  0900              or [bx+si],ax
0000EB1A  0200              add al,[bx+si]
0000EB1C  0000              add [bx+si],al
0000EB1E  0000              add [bx+si],al
0000EB20  0000              add [bx+si],al
0000EB22  0000              add [bx+si],al
0000EB24  0000              add [bx+si],al
0000EB26  0000              add [bx+si],al
0000EB28  0000              add [bx+si],al
0000EB2A  90                nop
0000EB2B  DC2A              fsubr qword [bp+si]
0000EB2D  FC                cld
0000EB2E  2A1C              sub bl,[si]
0000EB30  2B0A              sub cx,[bp+si]
0000EB32  0004              add [si],al
0000EB34  0A03              or al,[bp+di]
0000EB36  00D0              add al,dl
0000EB38  0A03              or al,[bp+di]
0000EB3A  00900A03          add [bx+si+0x30a],dl
0000EB3E  00620D            add [bp+si+0xd],ah
0000EB41  0300              add ax,[bx+si]
0000EB43  E70E              out byte 0xe,ax
0000EB45  0A00              or al,[bx+si]
0000EB47  9C                pushf
0000EB48  0F0300            lsl ax,[bx+si]
0000EB4B  300A              xor [bp+si],cl
0000EB4D  0000              add [bx+si],al
0000EB4F  FA                cli
0000EB50  33C0              xor ax,ax
0000EB52  8ED8              mov ds,ax
0000EB54  A14C00            mov ax,[0x4c]
0000EB57  2EA3B000          mov [cs:0xb0],ax
0000EB5B  2EA3B400          mov [cs:0xb4],ax
0000EB5F  A14E00            mov ax,[0x4e]
0000EB62  2EA3B200          mov [cs:0xb2],ax
0000EB66  2EA3B600          mov [cs:0xb6],ax
0000EB6A  C7064C00920F      mov word [0x4c],0xf92
0000EB70  8C0E4E00          mov word [0x4e],cs
0000EB74  A16400            mov ax,[0x64]
0000EB77  2EA3A218          mov [cs:0x18a2],ax
0000EB7B  A16600            mov ax,[0x66]
0000EB7E  2EA3A418          mov [cs:0x18a4],ax
0000EB82  C70664001C19      mov word [0x64],0x191c
0000EB88  8C0E6600          mov word [0x66],cs
0000EB8C  FB                sti
0000EB8D  CD11              int byte 0x11
0000EB8F  D0C0              rol al,0x0
0000EB91  D0C0              rol al,0x0
0000EB93  250300            and ax,0x3
0000EB96  7506              jnz 0xeb9e
0000EB98  40                inc ax
0000EB99  2EFE06C401        inc byte [cs:0x1c4]
0000EB9E  40                inc ax
0000EB9F  8AC8              mov cl,al
0000EBA1  F6C280            test dl,0x80
0000EBA4  7502              jnz 0xeba8
0000EBA6  33C0              xor ax,ax
0000EBA8  33D2              xor dx,dx
0000EBAA  FA                cli
0000EBAB  8ED2              mov ss,dx
0000EBAD  BC0007            mov sp,0x700
0000EBB0  FB                sti
0000EBB1  51                push cx
0000EBB2  2E891E802A        mov [cs:0x2a80],bx
0000EBB7  8AE5              mov ah,ch
0000EBB9  50                push ax
0000EBBA  B4C0              mov ah,0xc0
0000EBBC  CD15              int byte 0x15
0000EBBE  7217              jc 0xebd7
0000EBC0  80FC00            cmp ah,0x0
0000EBC3  7512              jnz 0xebd7
0000EBC5  268A4702          mov al,[es:bx+0x2]
0000EBC9  2EA28C2A          mov [cs:0x2a8c],al
0000EBCD  268A4703          mov al,[es:bx+0x3]
0000EBD1  2EA28D2A          mov [cs:0x2a8d],al
0000EBD5  EB0D              jmp 0xebe4
0000EBD7  BEFFFF            mov si,0xffff
0000EBDA  8EC6              mov es,si
0000EBDC  26A00E00          mov al,[es:0xe]
0000EBE0  2EA28C2A          mov [cs:0x2a8c],al
0000EBE4  B020              mov al,0x20
0000EBE6  E620              out byte 0x20,al
0000EBE8  BE3602            mov si,0x236
0000EBEB  E82507            call 0xf313
0000EBEE  BE2402            mov si,0x224
0000EBF1  E81F07            call 0xf313
0000EBF4  BE1202            mov si,0x212
0000EBF7  E81907            call 0xf313
0000EBFA  BECA01            mov si,0x1ca
0000EBFD  E81307            call 0xf313
0000EC00  BE0002            mov si,0x200
0000EC03  E80507            call 0xf30b
0000EC06  BEEE01            mov si,0x1ee
0000EC09  E8FF06            call 0xf30b
0000EC0C  BEDC01            mov si,0x1dc
0000EC0F  E8F906            call 0xf30b
0000EC12  33D2              xor dx,dx
0000EC14  8EDA              mov ds,dx
0000EC16  8EC2              mov es,dx
0000EC18  33C0              xor ax,ax
0000EC1A  BF3405            mov di,0x534
0000EC1D  AB                stosw
0000EC1E  AB                stosw
0000EC1F  8CC8              mov ax,cs
0000EC21  C7066C005607      mov word [0x6c],0x756
0000EC27  A36E00            mov [0x6e],ax
0000EC2A  C706A4009E06      mov word [0xa4],0x69e
0000EC30  A3A600            mov [0xa6],ax
0000EC33  BF0400            mov di,0x4
0000EC36  BB5C07            mov bx,0x75c
0000EC39  93                xchg ax,bx
0000EC3A  AB                stosw
0000EC3B  93                xchg ax,bx
0000EC3C  AB                stosw
0000EC3D  83C704            add di,0x4
0000EC40  93                xchg ax,bx
0000EC41  AB                stosw
0000EC42  93                xchg ax,bx
0000EC43  AB                stosw
0000EC44  93                xchg ax,bx
0000EC45  AB                stosw
0000EC46  93                xchg ax,bx
0000EC47  AB                stosw
0000EC48  89160005          mov [0x500],dx
0000EC4C  89160405          mov [0x504],dx
0000EC50  8B367800          mov si,[0x78]
0000EC54  8E1E7A00          mov ds,word [0x7a]
0000EC58  BF2205            mov di,0x522
0000EC5B  B90B00            mov cx,0xb
0000EC5E  F3A4              rep movsb
0000EC60  06                push es
0000EC61  1F                pop ds
0000EC62  C70678002205      mov word [0x78],0x522
0000EC68  8C1E7A00          mov word [0x7a],ds
0000EC6C  2E803E8C2AFD      cmp byte [cs:0x2a8c],0xfd
0000EC72  720B              jc 0xec7f
0000EC74  C7062B050F02      mov word [0x52b],0x20f
0000EC7A  C6062205DF        mov byte [0x522],0xdf
0000EC7F  CD12              int byte 0x12
0000EC81  B106              mov cl,0x6
0000EC83  D3E0              shl ax,cl
0000EC85  59                pop cx
0000EC86  2E890E7E2A        mov [cs:0x2a7e],cx
0000EC8B  50                push ax
0000EC8C  8B16167C          mov dx,[0x7c16]
0000EC90  32F6              xor dh,dh
0000EC92  2E8916852A        mov [cs:0x2a85],dx
0000EC97  D1E2              shl dx,0x0
0000EC99  D1E2              shl dx,0x0
0000EC9B  D1E2              shl dx,0x0
0000EC9D  D1E2              shl dx,0x0
0000EC9F  D1E2              shl dx,0x0
0000ECA1  2BC2              sub ax,dx
0000ECA3  2EA3872A          mov [cs:0x2a87],ax
0000ECA7  58                pop ax
0000ECA8  BAC403            mov dx,0x3c4
0000ECAB  8EDA              mov ds,dx
0000ECAD  C706FD076E01      mov word [0x7fd],0x16e
0000ECB3  8C0EFF07          mov word [0x7ff],cs
0000ECB7  A30D08            mov [0x80d],ax
0000ECBA  FEC1              inc cl
0000ECBC  880E0F08          mov [0x80f],cl
0000ECC0  B84035            mov ax,0x3540
0000ECC3  2D0000            sub ax,0x0
0000ECC6  050F00            add ax,0xf
0000ECC9  D1D8              rcr ax,0x0
0000ECCB  D1E8              shr ax,0x0
0000ECCD  D1E8              shr ax,0x0
0000ECCF  D1E8              shr ax,0x0
0000ECD1  050302            add ax,0x203
0000ECD4  057000            add ax,0x70
0000ECD7  A3F707            mov [0x7f7],ax
0000ECDA  50                push ax
0000ECDB  B8C403            mov ax,0x3c4
0000ECDE  8EC0              mov es,ax
0000ECE0  33C0              xor ax,ax
0000ECE2  8ED8              mov ds,ax
0000ECE4  A13E00            mov ax,[0x3e]
0000ECE7  263B060D08        cmp ax,[es:0x80d]
0000ECEC  7605              jna 0xecf3
0000ECEE  3D00F0            cmp ax,0xf000
0000ECF1  750A              jnz 0xecfd
0000ECF3  C7063C005C07      mov word [0x3c],0x75c
0000ECF9  8C0E3E00          mov word [0x3e],cs
0000ECFD  58                pop ax
0000ECFE  0E                push cs
0000ECFF  1F                pop ds
0000ED00  0E                push cs
0000ED01  07                pop es
0000ED02  E87F07            call 0xf484
0000ED05  33F6              xor si,si
0000ED07  C704E61B          mov word [si],0x1be6
0000ED0B  58                pop ax
0000ED0C  32E4              xor ah,ah
0000ED0E  A25A02            mov [0x25a],al
0000ED11  A2C001            mov [0x1c0],al
0000ED14  D1E0              shl ax,0x0
0000ED16  BFE018            mov di,0x18e0
0000ED19  03F8              add di,ax
0000ED1B  BEE818            mov si,0x18e8
0000ED1E  A5                movsw
0000ED1F  A5                movsw
0000ED20  B280              mov dl,0x80
0000ED22  B408              mov ah,0x8
0000ED24  CD13              int byte 0x13
0000ED26  7204              jc 0xed2c
0000ED28  8816E51B          mov [0x1be5],dl
0000ED2C  32D2              xor dl,dl
0000ED2E  0E                push cs
0000ED2F  1F                pop ds
0000ED30  C606600209        mov byte [0x260],0x9
0000ED35  BF4C02            mov di,0x24c
0000ED38  3A16C001          cmp dl,[0x1c0]
0000ED3C  7203              jc 0xed41
0000ED3E  E90201            jmp 0xee43
0000ED41  33C9              xor cx,cx
0000ED43  8B3D              mov di,[di]
0000ED45  B600              mov dh,0x0
0000ED47  C6068B2A28        mov byte [0x2a8b],0x28
0000ED4C  1E                push ds
0000ED4D  57                push di
0000ED4E  52                push dx
0000ED4F  51                push cx
0000ED50  06                push es
0000ED51  B408              mov ah,0x8
0000ED53  CD13              int byte 0x13
0000ED55  7303              jnc 0xed5a
0000ED57  EB70              jmp 0xedc9
0000ED59  90                nop
0000ED5A  80FD00            cmp ch,0x0
0000ED5D  7506              jnz 0xed65
0000ED5F  B527              mov ch,0x27
0000ED61  B109              mov cl,0x9
0000ED63  B601              mov dh,0x1
0000ED65  FEC6              inc dh
0000ED67  FEC5              inc ch
0000ED69  8836892A          mov [0x2a89],dh
0000ED6D  80E13F            and cl,0x3f
0000ED70  880E8A2A          mov [0x2a8a],cl
0000ED74  882E8B2A          mov [0x2a8b],ch
0000ED78  3A0E6002          cmp cl,[0x260]
0000ED7C  7604              jna 0xed82
0000ED7E  880E6002          mov [0x260],cl
0000ED82  07                pop es
0000ED83  59                pop cx
0000ED84  5A                pop dx
0000ED85  5F                pop di
0000ED86  1F                pop ds
0000ED87  B415              mov ah,0x15
0000ED89  CD13              int byte 0x13
0000ED8B  720D              jc 0xed9a
0000ED8D  80FC02            cmp ah,0x2
0000ED90  7508              jnz 0xed9a
0000ED92  80C902            or cl,0x2
0000ED95  C606C30101        mov byte [0x1c3],0x1
0000ED9A  803E8B2A28        cmp byte [0x2a8b],0x28
0000ED9F  750B              jnz 0xedac
0000EDA1  803E8A2A09        cmp byte [0x2a8a],0x9
0000EDA6  761F              jna 0xedc7
0000EDA8  B607              mov dh,0x7
0000EDAA  EB1B              jmp 0xedc7
0000EDAC  803E8B2A50        cmp byte [0x2a8b],0x50
0000EDB1  75F5              jnz 0xeda8
0000EDB3  803E8A2A0F        cmp byte [0x2a8a],0xf
0000EDB8  740B              jz 0xedc5
0000EDBA  803E8A2A09        cmp byte [0x2a8a],0x9
0000EDBF  75E7              jnz 0xeda8
0000EDC1  B602              mov dh,0x2
0000EDC3  EB02              jmp 0xedc7
0000EDC5  B601              mov dh,0x1
0000EDC7  EB2A              jmp 0xedf3
0000EDC9  07                pop es
0000EDCA  59                pop cx
0000EDCB  5A                pop dx
0000EDCC  5F                pop di
0000EDCD  1F                pop ds
0000EDCE  B415              mov ah,0x15
0000EDD0  CD13              int byte 0x13
0000EDD2  721F              jc 0xedf3
0000EDD4  80FC02            cmp ah,0x2
0000EDD7  751A              jnz 0xedf3
0000EDD9  80C902            or cl,0x2
0000EDDC  C606C30101        mov byte [0x1c3],0x1
0000EDE1  C6068B2A50        mov byte [0x2a8b],0x50
0000EDE6  B601              mov dh,0x1
0000EDE8  B00F              mov al,0xf
0000EDEA  3A066002          cmp al,[0x260]
0000EDEE  7603              jna 0xedf3
0000EDF0  A26002            mov [0x260],al
0000EDF3  80C920            or cl,0x20
0000EDF6  8AFA              mov bh,dl
0000EDF8  803EC40102        cmp byte [0x1c4],0x2
0000EDFD  7505              jnz 0xee04
0000EDFF  FECF              dec bh
0000EE01  80F120            xor cl,0x20
0000EE04  33C0              xor ax,ax
0000EE06  A0892A            mov al,[0x2a89]
0000EE09  89453C            mov [di+0x3c],ax
0000EE0C  A08A2A            mov al,[0x2a8a]
0000EE0F  89453A            mov [di+0x3a],ax
0000EE12  894D29            mov [di+0x29],cx
0000EE15  887528            mov [di+0x28],dh
0000EE18  885505            mov [di+0x5],dl
0000EE1B  887D04            mov [di+0x4],bh
0000EE1E  8A1E8B2A          mov bl,[0x2a8b]
0000EE22  885D2B            mov [di+0x2b],bl
0000EE25  803EC40101        cmp byte [0x1c4],0x1
0000EE2A  7512              jnz 0xee3e
0000EE2C  C606C40102        mov byte [0x1c4],0x2
0000EE31  81C91000          or cx,0x10
0000EE35  094D29            or [di+0x29],cx
0000EE38  8B3D              mov di,[di]
0000EE3A  FEC2              inc dl
0000EE3C  EBB5              jmp 0xedf3
0000EE3E  FEC2              inc dl
0000EE40  E9F5FE            jmp 0xed38
0000EE43  B8FFFF            mov ax,0xffff
0000EE46  8905              mov [di],ax
0000EE48  803EE51B00        cmp byte [0x1be5],0x0
0000EE4D  7E4F              jng 0xee9e
0000EE4F  B280              mov dl,0x80
0000EE51  BFE81B            mov di,0x1be8
0000EE54  8A1E5A02          mov bl,[0x25a]
0000EE58  E82902            call 0xf084
0000EE5B  730D              jnc 0xee6a
0000EE5D  FE0EE51B          dec byte [0x1be5]
0000EE61  803EE51B00        cmp byte [0x1be5],0x0
0000EE66  7F15              jg 0xee7d
0000EE68  EB34              jmp 0xee9e
0000EE6A  E862EC            call 0xdacf
0000EE6D  803EE51B02        cmp byte [0x1be5],0x2
0000EE72  7219              jc 0xee8d
0000EE74  8A1E5A02          mov bl,[0x25a]
0000EE78  FEC3              inc bl
0000EE7A  BF3A1C            mov di,0x1c3a
0000EE7D  B281              mov dl,0x81
0000EE7F  E80202            call 0xf084
0000EE82  7306              jnc 0xee8a
0000EE84  FE0EE51B          dec byte [0x1be5]
0000EE88  EB03              jmp 0xee8d
0000EE8A  E842EC            call 0xdacf
0000EE8D  A0E51B            mov al,[0x1be5]
0000EE90  0AC0              or al,al
0000EE92  740A              jz 0xee9e
0000EE94  02065A02          add al,[0x25a]
0000EE98  A2C001            mov [0x1c0],al
0000EE9B  E8AB04            call 0xf349
0000EE9E  50                push ax
0000EE9F  B83E1F            mov ax,0x1f3e
0000EEA2  803EC30100        cmp byte [0x1c3],0x0
0000EEA7  751B              jnz 0xeec4
0000EEA9  B88B1C            mov ax,0x1c8b
0000EEAC  803EE51B01        cmp byte [0x1be5],0x1
0000EEB1  7603              jna 0xeeb6
0000EEB3  EB2F              jmp 0xeee4
0000EEB5  90                nop
0000EEB6  B8391C            mov ax,0x1c39
0000EEB9  7503              jnz 0xeebe
0000EEBB  EB27              jmp 0xeee4
0000EEBD  90                nop
0000EEBE  B8E51B            mov ax,0x1be5
0000EEC1  EB31              jmp 0xeef4
0000EEC3  90                nop
0000EEC4  50                push ax
0000EEC5  1E                push ds
0000EEC6  33C0              xor ax,ax
0000EEC8  8ED8              mov ds,ax
0000EECA  A14C00            mov ax,[0x4c]
0000EECD  2EA3A31D          mov [cs:0x1da3],ax
0000EED1  A14E00            mov ax,[0x4e]
0000EED4  2EA3A51D          mov [cs:0x1da5],ax
0000EED8  C7064C00AD1D      mov word [0x4c],0x1dad
0000EEDE  8C0E4E00          mov word [0x4e],cs
0000EEE2  1F                pop ds
0000EEE3  58                pop ax
0000EEE4  50                push ax
0000EEE5  A05A02            mov al,[0x25a]
0000EEE8  0206E51B          add al,[0x1be5]
0000EEEC  0206CA2A          add al,[0x2aca]
0000EEF0  A2C001            mov [0x1c0],al
0000EEF3  58                pop ax
0000EEF4  E84601            call 0xf03d
0000EEF7  0E                push cs
0000EEF8  07                pop es
0000EEF9  FC                cld
0000EEFA  803ECA2A00        cmp byte [0x2aca],0x0
0000EEFF  7406              jz 0xef07
0000EF01  A1C62A            mov ax,[0x2ac6]
0000EF04  E83601            call 0xf03d
0000EF07  803E8C2AFC        cmp byte [0x2a8c],0xfc
0000EF0C  7535              jnz 0xef43
0000EF0E  803EE51B00        cmp byte [0x1be5],0x0
0000EF13  742E              jz 0xef43
0000EF15  BE00F0            mov si,0xf000
0000EF18  8EC6              mov es,si
0000EF1A  BED22A            mov si,0x2ad2
0000EF1D  BFF5FF            mov di,0xfff5
0000EF20  A6                cmpsb
0000EF21  7520              jnz 0xef43
0000EF23  807CFF00          cmp byte [si-0x1],0x0
0000EF27  75F7              jnz 0xef20
0000EF29  0E                push cs
0000EF2A  07                pop es
0000EF2B  A3B400            mov [0xb4],ax
0000EF2E  8C0EB600          mov word [0xb6],cs
0000EF32  B9C427            mov cx,0x27c4
0000EF35  BE9526            mov si,0x2695
0000EF38  2BCE              sub cx,si
0000EF3A  8BF8              mov di,ax
0000EF3C  F3A4              rep movsb
0000EF3E  8BC7              mov ax,di
0000EF40  E8FA00            call 0xf03d
0000EF43  0E                push cs
0000EF44  07                pop es
0000EF45  803EBE0801        cmp byte [0x8be],0x1
0000EF4A  7528              jnz 0xef74
0000EF4C  A3CF08            mov [0x8cf],ax
0000EF4F  B99628            mov cx,0x2896
0000EF52  BEC427            mov si,0x27c4
0000EF55  2BCE              sub cx,si
0000EF57  8BF8              mov di,ax
0000EF59  F3A4              rep movsb
0000EF5B  8BC7              mov ax,di
0000EF5D  E8DD00            call 0xf03d
0000EF60  A3CD08            mov [0x8cd],ax
0000EF63  B9A528            mov cx,0x28a5
0000EF66  BE9628            mov si,0x2896
0000EF69  2BCE              sub cx,si
0000EF6B  8BF8              mov di,ax
0000EF6D  F3A4              rep movsb
0000EF6F  8BC7              mov ax,di
0000EF71  E8C900            call 0xf03d
0000EF74  50                push ax
0000EF75  B80041            mov ax,0x4100
0000EF78  B300              mov bl,0x0
0000EF7A  CD15              int byte 0x15
0000EF7C  58                pop ax
0000EF7D  7228              jc 0xefa7
0000EF7F  BEA628            mov si,0x28a6
0000EF82  B97E2A            mov cx,0x2a7e
0000EF85  2BCE              sub cx,si
0000EF87  8BF8              mov di,ax
0000EF89  57                push di
0000EF8A  F3A4              rep movsb
0000EF8C  8BC7              mov ax,di
0000EF8E  E8AC00            call 0xf03d
0000EF91  5F                pop di
0000EF92  50                push ax
0000EF93  1E                push ds
0000EF94  C606C50101        mov byte [0x1c5],0x1
0000EF99  33C0              xor ax,ax
0000EF9B  8ED8              mov ds,ax
0000EF9D  893EB001          mov [0x1b0],di
0000EFA1  8C0EB201          mov word [0x1b2],cs
0000EFA5  1F                pop ds
0000EFA6  58                pop ax
0000EFA7  BAC403            mov dx,0x3c4
0000EFAA  8EDA              mov ds,dx
0000EFAC  2D0000            sub ax,0x0
0000EFAF  050F00            add ax,0xf
0000EFB2  D1D8              rcr ax,0x0
0000EFB4  D1E8              shr ax,0x0
0000EFB6  D1E8              shr ax,0x0
0000EFB8  D1E8              shr ax,0x0
0000EFBA  A3FB07            mov [0x7fb],ax
0000EFBD  58                pop ax
0000EFBE  8106FB077000      add word [0x7fb],0x70
0000EFC4  0E                push cs
0000EFC5  1F                pop ds
0000EFC6  803EC30100        cmp byte [0x1c3],0x0
0000EFCB  7503              jnz 0xefd0
0000EFCD  E85703            call 0xf327
0000EFD0  A17E2A            mov ax,[0x2a7e]
0000EFD3  E86ADC            call 0xcc40
0000EFD6  E8C0DA            call 0xca99
0000EFD9  E87500            call 0xf051
0000EFDC  33FF              xor di,di
0000EFDE  268A05            mov al,[es:di]
0000EFE1  A27F2A            mov [0x2a7f],al
0000EFE4  A17E2A            mov ax,[0x2a7e]
0000EFE7  E856DC            call 0xcc40
0000EFEA  8A5D19            mov bl,[di+0x19]
0000EFED  881E842A          mov [0x2a84],bl
0000EFF1  8A4D08            mov cl,[di+0x8]
0000EFF4  8B4517            mov ax,[di+0x17]
0000EFF7  2906802A          sub [0x2a80],ax
0000EFFB  32ED              xor ch,ch
0000EFFD  1E                push ds
0000EFFE  33FF              xor di,di
0000F000  8EDF              mov ds,di
0000F002  8B1E3A05          mov bx,[0x53a]
0000F006  1F                pop ds
0000F007  B84035            mov ax,0x3540
0000F00A  2D0000            sub ax,0x0
0000F00D  050F00            add ax,0xf
0000F010  D1D8              rcr ax,0x0
0000F012  D1E8              shr ax,0x0
0000F014  D1E8              shr ax,0x0
0000F016  D1E8              shr ax,0x0
0000F018  050302            add ax,0x203
0000F01B  057000            add ax,0x70
0000F01E  8EC0              mov es,ax
0000F020  E88402            call 0xf2a7
0000F023  F606842A40        test byte [0x2a84],0x40
0000F028  7506              jnz 0xf030
0000F02A  81FBF70F          cmp bx,0xff7
0000F02E  EB03              jmp 0xf033
0000F030  83FBF7            cmp bx,0xfffffffffffffff7
0000F033  72D2              jc 0xf007
0000F035  E8E501            call 0xf21d
0000F038  EAF207C403        jmp word 0x3c4:word 0x7f2
0000F03D  050F00            add ax,0xf
0000F040  D1D8              rcr ax,0x0
0000F042  D1E8              shr ax,0x0
0000F044  D1E8              shr ax,0x0
0000F046  D1E8              shr ax,0x0
0000F048  D1E0              shl ax,0x0
0000F04A  D1E0              shl ax,0x0
0000F04C  D1E0              shl ax,0x0
0000F04E  D1E0              shl ax,0x0
0000F050  C3                ret
0000F051  33FF              xor di,di
0000F053  BA0100            mov dx,0x1
0000F056  8B0E852A          mov cx,[0x2a85]
0000F05A  A1872A            mov ax,[0x2a87]
0000F05D  8EC0              mov es,ax
0000F05F  A17E2A            mov ax,[0x2a7e]
0000F062  E9A2DC            jmp 0xcd07
0000F065  B8C007            mov ax,0x7c0
0000F068  8EC0              mov es,ax
0000F06A  BB0002            mov bx,0x200
0000F06D  B80102            mov ax,0x201
0000F070  32F6              xor dh,dh
0000F072  B90100            mov cx,0x1
0000F075  CD13              int byte 0x13
0000F077  7209              jc 0xf082
0000F079  26813EFE0355AA    cmp word [es:0x3fe],0xaa55
0000F080  7401              jz 0xf083
0000F082  F9                stc
0000F083  C3                ret
0000F084  57                push di
0000F085  53                push bx
0000F086  1E                push ds
0000F087  885D05            mov [di+0x5],bl
0000F08A  885504            mov [di+0x4],dl
0000F08D  33C0              xor ax,ax
0000F08F  0C01              or al,0x1
0000F091  094529            or [di+0x29],ax
0000F094  C6452805          mov byte [di+0x28],0x5
0000F098  C606842A00        mov byte [0x2a84],0x0
0000F09D  52                push dx
0000F09E  B408              mov ah,0x8
0000F0A0  CD13              int byte 0x13
0000F0A2  FEC6              inc dh
0000F0A4  887515            mov [di+0x15],dh
0000F0A7  5A                pop dx
0000F0A8  7223              jc 0xf0cd
0000F0AA  80E13F            and cl,0x3f
0000F0AD  884D13            mov [di+0x13],cl
0000F0B0  E8B2FF            call 0xf065
0000F0B3  7218              jc 0xf0cd
0000F0B5  BBC203            mov bx,0x3c2
0000F0B8  26803F01          cmp byte [es:bx],0x1
0000F0BC  7413              jz 0xf0d1
0000F0BE  26803F04          cmp byte [es:bx],0x4
0000F0C2  740D              jz 0xf0d1
0000F0C4  83C310            add bx,0x10
0000F0C7  81FB0204          cmp bx,0x402
0000F0CB  75EB              jnz 0xf0b8
0000F0CD  F9                stc
0000F0CE  E94801            jmp 0xf219
0000F0D1  52                push dx
0000F0D2  268B4704          mov ax,[es:bx+0x4]
0000F0D6  268B5706          mov dx,[es:bx+0x6]
0000F0DA  2D0100            sub ax,0x1
0000F0DD  83DA00            sbb dx,0x0
0000F0E0  26034708          add ax,[es:bx+0x8]
0000F0E4  2613570A          adc dx,[es:bx+0xa]
0000F0E8  7405              jz 0xf0ef
0000F0EA  800E842A80        or byte [0x2a84],0x80
0000F0EF  5A                pop dx
0000F0F0  268B4704          mov ax,[es:bx+0x4]
0000F0F4  894517            mov [di+0x17],ax
0000F0F7  268B4708          mov ax,[es:bx+0x8]
0000F0FB  3D4000            cmp ax,0x40
0000F0FE  72CD              jc 0xf0cd
0000F100  89450E            mov [di+0xe],ax
0000F103  50                push ax
0000F104  52                push dx
0000F105  8B4517            mov ax,[di+0x17]
0000F108  33D2              xor dx,dx
0000F10A  8AFE              mov bh,dh
0000F10C  8A5D13            mov bl,[di+0x13]
0000F10F  F7F3              div bx
0000F111  8ACA              mov cl,dl
0000F113  FEC1              inc cl
0000F115  99                cwd
0000F116  8A5D15            mov bl,[di+0x15]
0000F119  F7F3              div bx
0000F11B  837D4D01          cmp word [di+0x4d],0x1
0000F11F  7503              jnz 0xf124
0000F121  03454F            add ax,[di+0x4f]
0000F124  D0CC              ror ah,0x0
0000F126  D0CC              ror ah,0x0
0000F128  80E4C0            and ah,0xc0
0000F12B  0ACC              or cl,ah
0000F12D  8AE8              mov ch,al
0000F12F  58                pop ax
0000F130  8AF2              mov dh,dl
0000F132  8AD0              mov dl,al
0000F134  33DB              xor bx,bx
0000F136  B80102            mov ax,0x201
0000F139  CD13              int byte 0x13
0000F13B  58                pop ax
0000F13C  26813E03004942    cmp word [es:0x3],0x4249
0000F143  751C              jnz 0xf161
0000F145  26813E05004D20    cmp word [es:0x5],0x204d
0000F14C  7513              jnz 0xf161
0000F14E  26813E0800322E    cmp word [es:0x8],0x2e32
0000F155  750D              jnz 0xf164
0000F157  26803E0A0030      cmp byte [es:0xa],0x30
0000F15D  7505              jnz 0xf164
0000F15F  EB14              jmp 0xf175
0000F161  EB4C              jmp 0xf1af
0000F163  90                nop
0000F164  26813E0800332E    cmp word [es:0x8],0x2e33
0000F16B  75F4              jnz 0xf161
0000F16D  26803E0A0031      cmp byte [es:0xa],0x31
0000F173  72EC              jc 0xf161
0000F175  26A11300          mov ax,[es:0x13]
0000F179  48                dec ax
0000F17A  268B161600        mov dx,[es:0x16]
0000F17F  895511            mov [di+0x11],dx
0000F182  D1E2              shl dx,0x0
0000F184  2BC2              sub ax,dx
0000F186  268B161100        mov dx,[es:0x11]
0000F18B  89550C            mov [di+0xc],dx
0000F18E  B104              mov cl,0x4
0000F190  D3EA              shr dx,cl
0000F192  2BC2              sub ax,dx
0000F194  268A0E0D00        mov cl,[es:0xd]
0000F199  884D08            mov [di+0x8],cl
0000F19C  33D2              xor dx,dx
0000F19E  8AEE              mov ch,dh
0000F1A0  F7F1              div cx
0000F1A2  3DF60F            cmp ax,0xff6
0000F1A5  7205              jc 0xf1ac
0000F1A7  800E842A40        or byte [0x2a84],0x40
0000F1AC  EB63              jmp 0xf211
0000F1AE  90                nop
0000F1AF  BEB62A            mov si,0x2ab6
0000F1B2  3B04              cmp ax,[si]
0000F1B4  7605              jna 0xf1bb
0000F1B6  83C608            add si,0x8
0000F1B9  EBF7              jmp 0xf1b2
0000F1BB  8A4C06            mov cl,[si+0x6]
0000F1BE  080E842A          or [0x2a84],cl
0000F1C2  8B4C02            mov cx,[si+0x2]
0000F1C5  8B5404            mov dx,[si+0x4]
0000F1C8  89550C            mov [di+0xc],dx
0000F1CB  886D08            mov [di+0x8],ch
0000F1CE  F606842A40        test byte [0x2a84],0x40
0000F1D3  751E              jnz 0xf1f3
0000F1D5  33DB              xor bx,bx
0000F1D7  8ADD              mov bl,ch
0000F1D9  4B                dec bx
0000F1DA  03D8              add bx,ax
0000F1DC  D3EB              shr bx,cl
0000F1DE  43                inc bx
0000F1DF  80E3FE            and bl,0xfe
0000F1E2  8BF3              mov si,bx
0000F1E4  D1EB              shr bx,0x0
0000F1E6  03DE              add bx,si
0000F1E8  81C3FF01          add bx,0x1ff
0000F1EC  D0EF              shr bh,0x0
0000F1EE  887D11            mov [di+0x11],bh
0000F1F1  EB1E              jmp 0xf211
0000F1F3  B104              mov cl,0x4
0000F1F5  D3EA              shr dx,cl
0000F1F7  2BC2              sub ax,dx
0000F1F9  48                dec ax
0000F1FA  B302              mov bl,0x2
0000F1FC  8A7D08            mov bh,[di+0x8]
0000F1FF  33D2              xor dx,dx
0000F201  03C3              add ax,bx
0000F203  83D200            adc dx,0x0
0000F206  2D0100            sub ax,0x1
0000F209  83DA00            sbb dx,0x0
0000F20C  F7F3              div bx
0000F20E  894511            mov [di+0x11],ax
0000F211  8A1E842A          mov bl,[0x2a84]
0000F215  885D19            mov [di+0x19],bl
0000F218  F8                clc
0000F219  1F                pop ds
0000F21A  5B                pop bx
0000F21B  5F                pop di
0000F21C  C3                ret
0000F21D  33DB              xor bx,bx
0000F21F  2EC43E4C02        les di,word [cs:0x24c]
0000F224  83FFFF            cmp di,0xffffffffffffffff
0000F227  7501              jnz 0xf22a
0000F229  C3                ret
0000F22A  06                push es
0000F22B  57                push di
0000F22C  268A5D28          mov bl,[es:di+0x28]
0000F230  80FB05            cmp bl,0x5
0000F233  7524              jnz 0xf259
0000F235  268B450E          mov ax,[es:di+0xe]
0000F239  50                push ax
0000F23A  268B4515          mov ax,[es:di+0x15]
0000F23E  26F76513          mul word [es:di+0x13]
0000F242  8BC8              mov cx,ax
0000F244  58                pop ax
0000F245  33D2              xor dx,dx
0000F247  F7F1              div cx
0000F249  0BD2              or dx,dx
0000F24B  7401              jz 0xf24e
0000F24D  40                inc ax
0000F24E  2689452B          mov [es:di+0x2b],ax
0000F252  06                push es
0000F253  1F                pop ds
0000F254  8D7506            lea si,[di+0x6]
0000F257  EB38              jmp 0xf291
0000F259  0E                push cs
0000F25A  1F                pop ds
0000F25B  80FB07            cmp bl,0x7
0000F25E  752A              jnz 0xf28a
0000F260  33D2              xor dx,dx
0000F262  8B452B            mov ax,[di+0x2b]
0000F265  8B5D3C            mov bx,[di+0x3c]
0000F268  F7E3              mul bx
0000F26A  8B5D3A            mov bx,[di+0x3a]
0000F26D  F7E3              mul bx
0000F26F  894535            mov [di+0x35],ax
0000F272  48                dec ax
0000F273  BB0300            mov bx,0x3
0000F276  F7E3              mul bx
0000F278  BB0200            mov bx,0x2
0000F27B  F7F3              div bx
0000F27D  33D2              xor dx,dx
0000F27F  BB0002            mov bx,0x200
0000F282  F7F3              div bx
0000F284  40                inc ax
0000F285  894538            mov [di+0x38],ax
0000F288  EB0F              jmp 0xf299
0000F28A  D1E3              shl bx,0x0
0000F28C  BE3C2B            mov si,0x2b3c
0000F28F  8B30              mov si,[bx+si]
0000F291  8D7D2D            lea di,[di+0x2d]
0000F294  B91F00            mov cx,0x1f
0000F297  F3A4              rep movsb
0000F299  5F                pop di
0000F29A  07                pop es
0000F29B  268B5D02          mov bx,[es:di+0x2]
0000F29F  268B3D            mov di,[es:di]
0000F2A2  8EC3              mov es,bx
0000F2A4  E97DFF            jmp 0xf224
0000F2A7  51                push cx
0000F2A8  57                push di
0000F2A9  890E822A          mov [0x2a82],cx
0000F2AD  8BC3              mov ax,bx
0000F2AF  48                dec ax
0000F2B0  48                dec ax
0000F2B1  F7E1              mul cx
0000F2B3  0306802A          add ax,[0x2a80]
0000F2B7  8BD0              mov dx,ax
0000F2B9  1E                push ds
0000F2BA  53                push bx
0000F2BB  8B36872A          mov si,[0x2a87]
0000F2BF  F606842A40        test byte [0x2a84],0x40
0000F2C4  7518              jnz 0xf2de
0000F2C6  8EDE              mov ds,si
0000F2C8  8BF3              mov si,bx
0000F2CA  D1EE              shr si,0x0
0000F2CC  8B18              mov bx,[bx+si]
0000F2CE  7308              jnc 0xf2d8
0000F2D0  D1EB              shr bx,0x0
0000F2D2  D1EB              shr bx,0x0
0000F2D4  D1EB              shr bx,0x0
0000F2D6  D1EB              shr bx,0x0
0000F2D8  81E3FF0F          and bx,0xfff
0000F2DC  EB06              jmp 0xf2e4
0000F2DE  8EDE              mov ds,si
0000F2E0  D1E3              shl bx,0x0
0000F2E2  8B1F              mov bx,[bx]
0000F2E4  5E                pop si
0000F2E5  1F                pop ds
0000F2E6  2BF3              sub si,bx
0000F2E8  83FEFF            cmp si,0xffffffffffffffff
0000F2EB  7506              jnz 0xf2f3
0000F2ED  010E822A          add [0x2a82],cx
0000F2F1  EBC6              jmp 0xf2b9
0000F2F3  53                push bx
0000F2F4  A17E2A            mov ax,[0x2a7e]
0000F2F7  8B0E822A          mov cx,[0x2a82]
0000F2FB  E809DA            call 0xcd07
0000F2FE  5B                pop bx
0000F2FF  5F                pop di
0000F300  A1822A            mov ax,[0x2a82]
0000F303  86E0              xchg ah,al
0000F305  D1E0              shl ax,0x0
0000F307  03F8              add di,ax
0000F309  59                pop cx
0000F30A  C3                ret
0000F30B  E80F00            call 0xf31d
0000F30E  B401              mov ah,0x1
0000F310  CD17              int byte 0x17
0000F312  C3                ret
0000F313  E80700            call 0xf31d
0000F316  B0A3              mov al,0xa3
0000F318  B400              mov ah,0x0
0000F31A  CD14              int byte 0x14
0000F31C  C3                ret
0000F31D  2E8A440D          mov al,[cs:si+0xd]
0000F321  2C31              sub al,0x31
0000F323  98                cbw
0000F324  8BD0              mov dx,ax
0000F326  C3                ret
0000F327  1E                push ds
0000F328  06                push es
0000F329  0E                push cs
0000F32A  07                pop es
0000F32B  0E                push cs
0000F32C  1F                pop ds
0000F32D  BE422B            mov si,0x2b42
0000F330  AD                lodsw
0000F331  8BC8              mov cx,ax
0000F333  E309              jcxz 0xf33e
0000F335  AD                lodsw
0000F336  8BF8              mov di,ax
0000F338  B090              mov al,0x90
0000F33A  F3AA              rep stosb
0000F33C  EBF2              jmp 0xf330
0000F33E  BF1E00            mov di,0x1e
0000F341  B88A06            mov ax,0x68a
0000F344  AB                stosw
0000F345  AB                stosw
0000F346  07                pop es
0000F347  1F                pop ds
0000F348  C3                ret
0000F349  50                push ax
0000F34A  BF3E1F            mov di,0x1f3e
0000F34D  B280              mov dl,0x80
0000F34F  B408              mov ah,0x8
0000F351  CD13              int byte 0x13
0000F353  80FA00            cmp dl,0x0
0000F356  7451              jz 0xf3a9
0000F358  8816C82A          mov [0x2ac8],dl
0000F35C  33C0              xor ax,ax
0000F35E  A0C001            mov al,[0x1c0]
0000F361  A2C92A            mov [0x2ac9],al
0000F364  D1E0              shl ax,0x0
0000F366  53                push bx
0000F367  BBE018            mov bx,0x18e0
0000F36A  03D8              add bx,ax
0000F36C  891ED02A          mov [0x2ad0],bx
0000F370  5B                pop bx
0000F371  C606CB2A80        mov byte [0x2acb],0x80
0000F376  FEC6              inc dh
0000F378  33C0              xor ax,ax
0000F37A  8AC6              mov al,dh
0000F37C  A3CC2A            mov [0x2acc],ax
0000F37F  33C0              xor ax,ax
0000F381  80E13F            and cl,0x3f
0000F384  8AC1              mov al,cl
0000F386  A3CE2A            mov [0x2ace],ax
0000F389  8A16CB2A          mov dl,[0x2acb]
0000F38D  E8D5FC            call 0xf065
0000F390  7203              jc 0xf395
0000F392  E81600            call 0xf3ab
0000F395  FE0EC82A          dec byte [0x2ac8]
0000F399  740E              jz 0xf3a9
0000F39B  FE06CB2A          inc byte [0x2acb]
0000F39F  8A16CB2A          mov dl,[0x2acb]
0000F3A3  B408              mov ah,0x8
0000F3A5  CD13              int byte 0x13
0000F3A7  EBCD              jmp 0xf376
0000F3A9  58                pop ax
0000F3AA  C3                ret
0000F3AB  81C3C201          add bx,0x1c2
0000F3AF  26803F05          cmp byte [es:bx],0x5
0000F3B3  740C              jz 0xf3c1
0000F3B5  83C310            add bx,0x10
0000F3B8  81FB0204          cmp bx,0x402
0000F3BC  75F1              jnz 0xf3af
0000F3BE  E98F00            jmp 0xf450
0000F3C1  33C0              xor ax,ax
0000F3C3  0C01              or al,0x1
0000F3C5  094529            or [di+0x29],ax
0000F3C8  C6452805          mov byte [di+0x28],0x5
0000F3CC  C606842A00        mov byte [0x2a84],0x0
0000F3D1  A1CC2A            mov ax,[0x2acc]
0000F3D4  894515            mov [di+0x15],ax
0000F3D7  A1CE2A            mov ax,[0x2ace]
0000F3DA  894513            mov [di+0x13],ax
0000F3DD  A0CB2A            mov al,[0x2acb]
0000F3E0  884504            mov [di+0x4],al
0000F3E3  A0C92A            mov al,[0x2ac9]
0000F3E6  884505            mov [di+0x5],al
0000F3E9  26837F0840        cmp word [es:bx+0x8],0x40
0000F3EE  7460              jz 0xf450
0000F3F0  83EB04            sub bx,0x4
0000F3F3  268A7702          mov dh,[es:bx+0x2]
0000F3F7  80E6C0            and dh,0xc0
0000F3FA  D0C6              rol dh,0x0
0000F3FC  D0C6              rol dh,0x0
0000F3FE  268A5703          mov dl,[es:bx+0x3]
0000F402  89554F            mov [di+0x4f],dx
0000F405  268B4F02          mov cx,[es:bx+0x2]
0000F409  268A7701          mov dh,[es:bx+0x1]
0000F40D  8A16CB2A          mov dl,[0x2acb]
0000F411  B8C007            mov ax,0x7c0
0000F414  8EC0              mov es,ax
0000F416  BB0002            mov bx,0x200
0000F419  B80102            mov ax,0x201
0000F41C  CD13              int byte 0x13
0000F41E  7230              jc 0xf450
0000F420  BBC203            mov bx,0x3c2
0000F423  E82B00            call 0xf451
0000F426  7225              jc 0xf44d
0000F428  E82C00            call 0xf457
0000F42B  FE06C92A          inc byte [0x2ac9]
0000F42F  FE06CA2A          inc byte [0x2aca]
0000F433  53                push bx
0000F434  8B1ED02A          mov bx,[0x2ad0]
0000F438  8D7506            lea si,[di+0x6]
0000F43B  8937              mov [bx],si
0000F43D  FF06D02A          inc word [0x2ad0]
0000F441  FF06D02A          inc word [0x2ad0]
0000F445  5B                pop bx
0000F446  83C751            add di,0x51
0000F449  893EC62A          mov [0x2ac6],di
0000F44D  E95FFF            jmp 0xf3af
0000F450  C3                ret
0000F451  57                push di
0000F452  53                push bx
0000F453  1E                push ds
0000F454  E961FC            jmp 0xf0b8
0000F457  50                push ax
0000F458  56                push si
0000F459  06                push es
0000F45A  2EC4364C02        les si,word [cs:0x24c]
0000F45F  26833CFF          cmp word [es:si],0xffffffffffffffff
0000F463  740B              jz 0xf470
0000F465  268B34            mov si,[es:si]
0000F468  268B4402          mov ax,[es:si+0x2]
0000F46C  8EC0              mov es,ax
0000F46E  EBEF              jmp 0xf45f
0000F470  8CD8              mov ax,ds
0000F472  894502            mov [di+0x2],ax
0000F475  26894402          mov [es:si+0x2],ax
0000F479  26893C            mov [es:si],di
0000F47C  C705FFFF          mov word [di],0xffff
0000F480  07                pop es
0000F481  5E                pop si
0000F482  58                pop ax
0000F483  C3                ret
0000F484  50                push ax
0000F485  51                push cx
0000F486  52                push dx
0000F487  55                push bp
0000F488  33ED              xor bp,bp
0000F48A  33C9              xor cx,cx
0000F48C  33D2              xor dx,dx
0000F48E  B402              mov ah,0x2
0000F490  CD1A              int byte 0x1a
0000F492  83F900            cmp cx,0x0
0000F495  7512              jnz 0xf4a9
0000F497  83FA00            cmp dx,0x0
0000F49A  750D              jnz 0xf4a9
0000F49C  83FD01            cmp bp,0x1
0000F49F  741C              jz 0xf4bd
0000F4A1  45                inc bp
0000F4A2  B90040            mov cx,0x4000
0000F4A5  E2FE              loop 0xf4a5
0000F4A7  EBE1              jmp 0xf48a
0000F4A9  2EC606BE0801      mov byte [cs:0x8be],0x1
0000F4AF  E81000            call 0xf4c2
0000F4B2  56                push si
0000F4B3  E800F4            call 0xe8b6
0000F4B6  FA                cli
0000F4B7  8936DA05          mov [0x5da],si
0000F4BB  FB                sti
0000F4BC  5E                pop si
0000F4BD  5D                pop bp
0000F4BE  5A                pop dx
0000F4BF  59                pop cx
0000F4C0  58                pop ax
0000F4C1  C3                ret
0000F4C2  50                push ax
0000F4C3  2E803E8C2AFC      cmp byte [cs:0x2a8c],0xfc
0000F4C9  7525              jnz 0xf4f0
0000F4CB  2E803E8D2A06      cmp byte [cs:0x2a8d],0x6
0000F4D1  7408              jz 0xf4db
0000F4D3  2E803E8D2A04      cmp byte [cs:0x2a8d],0x4
0000F4D9  7315              jnc 0xf4f0
0000F4DB  B08A              mov al,0x8a
0000F4DD  B426              mov ah,0x26
0000F4DF  E83000            call 0xf512
0000F4E2  B08B              mov al,0x8b
0000F4E4  E80B00            call 0xf4f2
0000F4E7  2407              and al,0x7
0000F4E9  8AE0              mov ah,al
0000F4EB  B00B              mov al,0xb
0000F4ED  E82200            call 0xf512
0000F4F0  58                pop ax
0000F4F1  C3                ret
0000F4F2  9C                pushf
0000F4F3  FA                cli
0000F4F4  53                push bx
0000F4F5  50                push ax
0000F4F6  0C80              or al,0x80
0000F4F8  E670              out byte 0x70,al
0000F4FA  90                nop
0000F4FB  E471              in al,byte 0x71
0000F4FD  8BD8              mov bx,ax
0000F4FF  58                pop ax
0000F500  2480              and al,0x80
0000F502  0C0F              or al,0xf
0000F504  E670              out byte 0x70,al
0000F506  90                nop
0000F507  E471              in al,byte 0x71
0000F509  8BC3              mov ax,bx
0000F50B  5B                pop bx
0000F50C  0E                push cs
0000F50D  E80100            call 0xf511
0000F510  C3                ret
0000F511  CF                iret
0000F512  9C                pushf
0000F513  50                push ax
0000F514  FA                cli
0000F515  50                push ax
0000F516  0C80              or al,0x80
0000F518  E670              out byte 0x70,al
0000F51A  90                nop
0000F51B  8AC4              mov al,ah
0000F51D  E671              out byte 0x71,al
0000F51F  58                pop ax
0000F520  2480              and al,0x80
0000F522  0C0F              or al,0xf
0000F524  E670              out byte 0x70,al
0000F526  90                nop
0000F527  E471              in al,byte 0x71
0000F529  58                pop ax
0000F52A  0E                push cs
0000F52B  E8E3FF            call 0xf511
0000F52E  C3                ret
0000F52F  0000              add [bx+si],al
0000F531  0000              add [bx+si],al
0000F533  0000              add [bx+si],al
0000F535  0000              add [bx+si],al
0000F537  0000              add [bx+si],al
0000F539  0000              add [bx+si],al
0000F53B  0800              or [bx+si],al
0000F53D  48                dec ax
0000F53E  004800            add [bx+si+0x0],cl
0000F541  0000              add [bx+si],al
0000F543  0000              add [bx+si],al
0000F545  50                push ax
0000F546  06                push es
0000F547  B800F0            mov ax,0xf000
0000F54A  8EC0              mov es,ax
0000F54C  26803EFEFFF9      cmp byte [es:0xfffe],0xf9
0000F552  07                pop es
0000F553  750C              jnz 0xf561
0000F555  E462              in al,byte 0x62
0000F557  A880              test al,0x80
0000F559  7406              jz 0xf561
0000F55B  58                pop ax
0000F55C  2EFF2E1200        jmp word far [cs:0x12]
0000F561  55                push bp
0000F562  06                push es
0000F563  2E8E060A00        mov es,word [cs:0xa]
0000F568  2E8B2E1000        mov bp,[cs:0x10]
0000F56D  B001              mov al,0x1
0000F56F  26864600          xchg al,[es:bp+0x0]
0000F573  3C00              cmp al,0x0
0000F575  7542              jnz 0xf5b9
0000F577  2E832E100008      sub word [cs:0x10],0x8
0000F57D  26896602          mov [es:bp+0x2],sp
0000F581  268C5604          mov word [es:bp+0x4],ss
0000F585  8BC5              mov ax,bp
0000F587  268B6E06          mov bp,[es:bp+0x6]
0000F58B  26394600          cmp [es:bp+0x0],ax
0000F58F  7535              jnz 0xf5c6
0000F591  8CC0              mov ax,es
0000F593  8ED0              mov ss,ax
0000F595  8BE5              mov sp,bp
0000F597  9C                pushf
0000F598  2EFF1E1200        call word far [cs:0x12]
0000F59D  8BEC              mov bp,sp
0000F59F  268B6E00          mov bp,[es:bp+0x0]
0000F5A3  268E5604          mov ss,word [es:bp+0x4]
0000F5A7  268B6602          mov sp,[es:bp+0x2]
0000F5AB  26C6460000        mov byte [es:bp+0x0],0x0
0000F5B0  2E892E1000        mov [cs:0x10],bp
0000F5B5  07                pop es
0000F5B6  5D                pop bp
0000F5B7  58                pop ax
0000F5B8  CF                iret
0000F5B9  3C01              cmp al,0x1
0000F5BB  7404              jz 0xf5c1
0000F5BD  26864600          xchg al,[es:bp+0x0]
0000F5C1  E8D506            call 0xfc99
0000F5C4  EBB7              jmp 0xf57d
0000F5C6  2E3B2E0C00        cmp bp,[cs:0xc]
0000F5CB  72F4              jc 0xf5c1
0000F5CD  8BE8              mov bp,ax
0000F5CF  26C6460003        mov byte [es:bp+0x0],0x3
0000F5D4  EBEB              jmp 0xf5c1
0000F5D6  0000              add [bx+si],al
0000F5D8  0000              add [bx+si],al
0000F5DA  50                push ax
0000F5DB  55                push bp
0000F5DC  06                push es
0000F5DD  2E8E060A00        mov es,word [cs:0xa]
0000F5E2  2E8B2E1000        mov bp,[cs:0x10]
0000F5E7  B001              mov al,0x1
0000F5E9  26864600          xchg al,[es:bp+0x0]
0000F5ED  3C00              cmp al,0x0
0000F5EF  7542              jnz 0xf633
0000F5F1  2E832E100008      sub word [cs:0x10],0x8
0000F5F7  26896602          mov [es:bp+0x2],sp
0000F5FB  268C5604          mov word [es:bp+0x4],ss
0000F5FF  8BC5              mov ax,bp
0000F601  268B6E06          mov bp,[es:bp+0x6]
0000F605  26394600          cmp [es:bp+0x0],ax
0000F609  7535              jnz 0xf640
0000F60B  8CC0              mov ax,es
0000F60D  8ED0              mov ss,ax
0000F60F  8BE5              mov sp,bp
0000F611  9C                pushf
0000F612  2EFF1EA700        call word far [cs:0xa7]
0000F617  8BEC              mov bp,sp
0000F619  268B6E00          mov bp,[es:bp+0x0]
0000F61D  268E5604          mov ss,word [es:bp+0x4]
0000F621  268B6602          mov sp,[es:bp+0x2]
0000F625  26C6460000        mov byte [es:bp+0x0],0x0
0000F62A  2E892E1000        mov [cs:0x10],bp
0000F62F  07                pop es
0000F630  5D                pop bp
0000F631  58                pop ax
0000F632  CF                iret
0000F633  3C01              cmp al,0x1
0000F635  7404              jz 0xf63b
0000F637  26864600          xchg al,[es:bp+0x0]
0000F63B  E85B06            call 0xfc99
0000F63E  EBB7              jmp 0xf5f7
0000F640  2E3B2E0C00        cmp bp,[cs:0xc]
0000F645  72F4              jc 0xf63b
0000F647  8BE8              mov bp,ax
0000F649  26C6460003        mov byte [es:bp+0x0],0x3
0000F64E  EBEB              jmp 0xf63b
0000F650  0000              add [bx+si],al
0000F652  0000              add [bx+si],al
0000F654  EB03              jmp 0xf659
0000F656  90                nop
0000F657  90                nop
0000F658  005055            add [bx+si+0x55],dl
0000F65B  06                push es
0000F65C  2E8E060A00        mov es,word [cs:0xa]
0000F661  2E8B2E1000        mov bp,[cs:0x10]
0000F666  B001              mov al,0x1
0000F668  26864600          xchg al,[es:bp+0x0]
0000F66C  3C00              cmp al,0x0
0000F66E  7542              jnz 0xf6b2
0000F670  2E832E100008      sub word [cs:0x10],0x8
0000F676  26896602          mov [es:bp+0x2],sp
0000F67A  268C5604          mov word [es:bp+0x4],ss
0000F67E  8BC5              mov ax,bp
0000F680  268B6E06          mov bp,[es:bp+0x6]
0000F684  26394600          cmp [es:bp+0x0],ax
0000F688  7535              jnz 0xf6bf
0000F68A  8CC0              mov ax,es
0000F68C  8ED0              mov ss,ax
0000F68E  8BE5              mov sp,bp
0000F690  9C                pushf
0000F691  2EFF1E2101        call word far [cs:0x121]
0000F696  8BEC              mov bp,sp
0000F698  268B6E00          mov bp,[es:bp+0x0]
0000F69C  268E5604          mov ss,word [es:bp+0x4]
0000F6A0  268B6602          mov sp,[es:bp+0x2]
0000F6A4  26C6460000        mov byte [es:bp+0x0],0x0
0000F6A9  2E892E1000        mov [cs:0x10],bp
0000F6AE  07                pop es
0000F6AF  5D                pop bp
0000F6B0  58                pop ax
0000F6B1  CF                iret
0000F6B2  3C01              cmp al,0x1
0000F6B4  7404              jz 0xf6ba
0000F6B6  26864600          xchg al,[es:bp+0x0]
0000F6BA  E8DC05            call 0xfc99
0000F6BD  EBB7              jmp 0xf676
0000F6BF  2E3B2E0C00        cmp bp,[cs:0xc]
0000F6C4  72F4              jc 0xf6ba
0000F6C6  8BE8              mov bp,ax
0000F6C8  26C6460003        mov byte [es:bp+0x0],0x3
0000F6CD  EBEB              jmp 0xf6ba
0000F6CF  0000              add [bx+si],al
0000F6D1  0000              add [bx+si],al
0000F6D3  50                push ax
0000F6D4  55                push bp
0000F6D5  06                push es
0000F6D6  2E8E060A00        mov es,word [cs:0xa]
0000F6DB  2E8B2E1000        mov bp,[cs:0x10]
0000F6E0  B001              mov al,0x1
0000F6E2  26864600          xchg al,[es:bp+0x0]
0000F6E6  3C00              cmp al,0x0
0000F6E8  7542              jnz 0xf72c
0000F6EA  2E832E100008      sub word [cs:0x10],0x8
0000F6F0  26896602          mov [es:bp+0x2],sp
0000F6F4  268C5604          mov word [es:bp+0x4],ss
0000F6F8  8BC5              mov ax,bp
0000F6FA  268B6E06          mov bp,[es:bp+0x6]
0000F6FE  26394600          cmp [es:bp+0x0],ax
0000F702  7535              jnz 0xf739
0000F704  8CC0              mov ax,es
0000F706  8ED0              mov ss,ax
0000F708  8BE5              mov sp,bp
0000F70A  9C                pushf
0000F70B  2EFF1EA001        call word far [cs:0x1a0]
0000F710  8BEC              mov bp,sp
0000F712  268B6E00          mov bp,[es:bp+0x0]
0000F716  268E5604          mov ss,word [es:bp+0x4]
0000F71A  268B6602          mov sp,[es:bp+0x2]
0000F71E  26C6460000        mov byte [es:bp+0x0],0x0
0000F723  2E892E1000        mov [cs:0x10],bp
0000F728  07                pop es
0000F729  5D                pop bp
0000F72A  58                pop ax
0000F72B  CF                iret
0000F72C  3C01              cmp al,0x1
0000F72E  7404              jz 0xf734
0000F730  26864600          xchg al,[es:bp+0x0]
0000F734  E86205            call 0xfc99
0000F737  EBB7              jmp 0xf6f0
0000F739  2E3B2E0C00        cmp bp,[cs:0xc]
0000F73E  72F4              jc 0xf734
0000F740  8BE8              mov bp,ax
0000F742  26C6460003        mov byte [es:bp+0x0],0x3
0000F747  EBEB              jmp 0xf734
0000F749  EB10              jmp 0xf75b
0000F74B  0000              add [bx+si],al
0000F74D  0000              add [bx+si],al
0000F74F  4B                dec bx
0000F750  42                inc dx
0000F751  00EB              add bl,ch
0000F753  5F                pop di
0000F754  0000              add [bx+si],al
0000F756  0000              add [bx+si],al
0000F758  0000              add [bx+si],al
0000F75A  005055            add [bx+si+0x55],dl
0000F75D  06                push es
0000F75E  2E8E060A00        mov es,word [cs:0xa]
0000F763  2E8B2E1000        mov bp,[cs:0x10]
0000F768  B001              mov al,0x1
0000F76A  26864600          xchg al,[es:bp+0x0]
0000F76E  3C00              cmp al,0x0
0000F770  7542              jnz 0xf7b4
0000F772  2E832E100008      sub word [cs:0x10],0x8
0000F778  26896602          mov [es:bp+0x2],sp
0000F77C  268C5604          mov word [es:bp+0x4],ss
0000F780  8BC5              mov ax,bp
0000F782  268B6E06          mov bp,[es:bp+0x6]
0000F786  26394600          cmp [es:bp+0x0],ax
0000F78A  7535              jnz 0xf7c1
0000F78C  8CC0              mov ax,es
0000F78E  8ED0              mov ss,ax
0000F790  8BE5              mov sp,bp
0000F792  9C                pushf
0000F793  2EFF1E1C02        call word far [cs:0x21c]
0000F798  8BEC              mov bp,sp
0000F79A  268B6E00          mov bp,[es:bp+0x0]
0000F79E  268E5604          mov ss,word [es:bp+0x4]
0000F7A2  268B6602          mov sp,[es:bp+0x2]
0000F7A6  26C6460000        mov byte [es:bp+0x0],0x0
0000F7AB  2E892E1000        mov [cs:0x10],bp
0000F7B0  07                pop es
0000F7B1  5D                pop bp
0000F7B2  58                pop ax
0000F7B3  CF                iret
0000F7B4  3C01              cmp al,0x1
0000F7B6  7404              jz 0xf7bc
0000F7B8  26864600          xchg al,[es:bp+0x0]
0000F7BC  E8DA04            call 0xfc99
0000F7BF  EBB7              jmp 0xf778
0000F7C1  2E3B2E0C00        cmp bp,[cs:0xc]
0000F7C6  72F4              jc 0xf7bc
0000F7C8  8BE8              mov bp,ax
0000F7CA  26C6460003        mov byte [es:bp+0x0],0x3
0000F7CF  EBEB              jmp 0xf7bc
0000F7D1  EB10              jmp 0xf7e3
0000F7D3  0000              add [bx+si],al
0000F7D5  0000              add [bx+si],al
0000F7D7  4B                dec bx
0000F7D8  42                inc dx
0000F7D9  00EB              add bl,ch
0000F7DB  5F                pop di
0000F7DC  0000              add [bx+si],al
0000F7DE  0000              add [bx+si],al
0000F7E0  0000              add [bx+si],al
0000F7E2  005055            add [bx+si+0x55],dl
0000F7E5  06                push es
0000F7E6  2E8E060A00        mov es,word [cs:0xa]
0000F7EB  2E8B2E1000        mov bp,[cs:0x10]
0000F7F0  B001              mov al,0x1
0000F7F2  26864600          xchg al,[es:bp+0x0]
0000F7F6  3C00              cmp al,0x0
0000F7F8  7542              jnz 0xf83c
0000F7FA  2E832E100008      sub word [cs:0x10],0x8
0000F800  26896602          mov [es:bp+0x2],sp
0000F804  268C5604          mov word [es:bp+0x4],ss
0000F808  8BC5              mov ax,bp
0000F80A  268B6E06          mov bp,[es:bp+0x6]
0000F80E  26394600          cmp [es:bp+0x0],ax
0000F812  7535              jnz 0xf849
0000F814  8CC0              mov ax,es
0000F816  8ED0              mov ss,ax
0000F818  8BE5              mov sp,bp
0000F81A  9C                pushf
0000F81B  2EFF1EA402        call word far [cs:0x2a4]
0000F820  8BEC              mov bp,sp
0000F822  268B6E00          mov bp,[es:bp+0x0]
0000F826  268E5604          mov ss,word [es:bp+0x4]
0000F82A  268B6602          mov sp,[es:bp+0x2]
0000F82E  26C6460000        mov byte [es:bp+0x0],0x0
0000F833  2E892E1000        mov [cs:0x10],bp
0000F838  07                pop es
0000F839  5D                pop bp
0000F83A  58                pop ax
0000F83B  CF                iret
0000F83C  3C01              cmp al,0x1
0000F83E  7404              jz 0xf844
0000F840  26864600          xchg al,[es:bp+0x0]
0000F844  E85204            call 0xfc99
0000F847  EBB7              jmp 0xf800
0000F849  2E3B2E0C00        cmp bp,[cs:0xc]
0000F84E  72F4              jc 0xf844
0000F850  8BE8              mov bp,ax
0000F852  26C6460003        mov byte [es:bp+0x0],0x3
0000F857  EBEB              jmp 0xf844
0000F859  EB10              jmp 0xf86b
0000F85B  0000              add [bx+si],al
0000F85D  0000              add [bx+si],al
0000F85F  4B                dec bx
0000F860  42                inc dx
0000F861  00EB              add bl,ch
0000F863  5F                pop di
0000F864  0000              add [bx+si],al
0000F866  0000              add [bx+si],al
0000F868  0000              add [bx+si],al
0000F86A  005055            add [bx+si+0x55],dl
0000F86D  06                push es
0000F86E  2E8E060A00        mov es,word [cs:0xa]
0000F873  2E8B2E1000        mov bp,[cs:0x10]
0000F878  B001              mov al,0x1
0000F87A  26864600          xchg al,[es:bp+0x0]
0000F87E  3C00              cmp al,0x0
0000F880  7542              jnz 0xf8c4
0000F882  2E832E100008      sub word [cs:0x10],0x8
0000F888  26896602          mov [es:bp+0x2],sp
0000F88C  268C5604          mov word [es:bp+0x4],ss
0000F890  8BC5              mov ax,bp
0000F892  268B6E06          mov bp,[es:bp+0x6]
0000F896  26394600          cmp [es:bp+0x0],ax
0000F89A  7535              jnz 0xf8d1
0000F89C  8CC0              mov ax,es
0000F89E  8ED0              mov ss,ax
0000F8A0  8BE5              mov sp,bp
0000F8A2  9C                pushf
0000F8A3  2EFF1E2C03        call word far [cs:0x32c]
0000F8A8  8BEC              mov bp,sp
0000F8AA  268B6E00          mov bp,[es:bp+0x0]
0000F8AE  268E5604          mov ss,word [es:bp+0x4]
0000F8B2  268B6602          mov sp,[es:bp+0x2]
0000F8B6  26C6460000        mov byte [es:bp+0x0],0x0
0000F8BB  2E892E1000        mov [cs:0x10],bp
0000F8C0  07                pop es
0000F8C1  5D                pop bp
0000F8C2  58                pop ax
0000F8C3  CF                iret
0000F8C4  3C01              cmp al,0x1
0000F8C6  7404              jz 0xf8cc
0000F8C8  26864600          xchg al,[es:bp+0x0]
0000F8CC  E8CA03            call 0xfc99
0000F8CF  EBB7              jmp 0xf888
0000F8D1  2E3B2E0C00        cmp bp,[cs:0xc]
0000F8D6  72F4              jc 0xf8cc
0000F8D8  8BE8              mov bp,ax
0000F8DA  26C6460003        mov byte [es:bp+0x0],0x3
0000F8DF  EBEB              jmp 0xf8cc
0000F8E1  EB10              jmp 0xf8f3
0000F8E3  0000              add [bx+si],al
0000F8E5  0000              add [bx+si],al
0000F8E7  4B                dec bx
0000F8E8  42                inc dx
0000F8E9  00EB              add bl,ch
0000F8EB  5F                pop di
0000F8EC  0000              add [bx+si],al
0000F8EE  0000              add [bx+si],al
0000F8F0  0000              add [bx+si],al
0000F8F2  005055            add [bx+si+0x55],dl
0000F8F5  06                push es
0000F8F6  2E8E060A00        mov es,word [cs:0xa]
0000F8FB  2E8B2E1000        mov bp,[cs:0x10]
0000F900  B001              mov al,0x1
0000F902  26864600          xchg al,[es:bp+0x0]
0000F906  3C00              cmp al,0x0
0000F908  7542              jnz 0xf94c
0000F90A  2E832E100008      sub word [cs:0x10],0x8
0000F910  26896602          mov [es:bp+0x2],sp
0000F914  268C5604          mov word [es:bp+0x4],ss
0000F918  8BC5              mov ax,bp
0000F91A  268B6E06          mov bp,[es:bp+0x6]
0000F91E  26394600          cmp [es:bp+0x0],ax
0000F922  7535              jnz 0xf959
0000F924  8CC0              mov ax,es
0000F926  8ED0              mov ss,ax
0000F928  8BE5              mov sp,bp
0000F92A  9C                pushf
0000F92B  2EFF1EB403        call word far [cs:0x3b4]
0000F930  8BEC              mov bp,sp
0000F932  268B6E00          mov bp,[es:bp+0x0]
0000F936  268E5604          mov ss,word [es:bp+0x4]
0000F93A  268B6602          mov sp,[es:bp+0x2]
0000F93E  26C6460000        mov byte [es:bp+0x0],0x0
0000F943  2E892E1000        mov [cs:0x10],bp
0000F948  07                pop es
0000F949  5D                pop bp
0000F94A  58                pop ax
0000F94B  CF                iret
0000F94C  3C01              cmp al,0x1
0000F94E  7404              jz 0xf954
0000F950  26864600          xchg al,[es:bp+0x0]
0000F954  E84203            call 0xfc99
0000F957  EBB7              jmp 0xf910
0000F959  2E3B2E0C00        cmp bp,[cs:0xc]
0000F95E  72F4              jc 0xf954
0000F960  8BE8              mov bp,ax
0000F962  26C6460003        mov byte [es:bp+0x0],0x3
0000F967  EBEB              jmp 0xf954
0000F969  EB10              jmp 0xf97b
0000F96B  0000              add [bx+si],al
0000F96D  0000              add [bx+si],al
0000F96F  4B                dec bx
0000F970  42                inc dx
0000F971  00EB              add bl,ch
0000F973  5F                pop di
0000F974  0000              add [bx+si],al
0000F976  0000              add [bx+si],al
0000F978  0000              add [bx+si],al
0000F97A  005055            add [bx+si+0x55],dl
0000F97D  06                push es
0000F97E  2E8E060A00        mov es,word [cs:0xa]
0000F983  2E8B2E1000        mov bp,[cs:0x10]
0000F988  B001              mov al,0x1
0000F98A  26864600          xchg al,[es:bp+0x0]
0000F98E  3C00              cmp al,0x0
0000F990  7542              jnz 0xf9d4
0000F992  2E832E100008      sub word [cs:0x10],0x8
0000F998  26896602          mov [es:bp+0x2],sp
0000F99C  268C5604          mov word [es:bp+0x4],ss
0000F9A0  8BC5              mov ax,bp
0000F9A2  268B6E06          mov bp,[es:bp+0x6]
0000F9A6  26394600          cmp [es:bp+0x0],ax
0000F9AA  7535              jnz 0xf9e1
0000F9AC  8CC0              mov ax,es
0000F9AE  8ED0              mov ss,ax
0000F9B0  8BE5              mov sp,bp
0000F9B2  9C                pushf
0000F9B3  2EFF1E3C04        call word far [cs:0x43c]
0000F9B8  8BEC              mov bp,sp
0000F9BA  268B6E00          mov bp,[es:bp+0x0]
0000F9BE  268E5604          mov ss,word [es:bp+0x4]
0000F9C2  268B6602          mov sp,[es:bp+0x2]
0000F9C6  26C6460000        mov byte [es:bp+0x0],0x0
0000F9CB  2E892E1000        mov [cs:0x10],bp
0000F9D0  07                pop es
0000F9D1  5D                pop bp
0000F9D2  58                pop ax
0000F9D3  CF                iret
0000F9D4  3C01              cmp al,0x1
0000F9D6  7404              jz 0xf9dc
0000F9D8  26864600          xchg al,[es:bp+0x0]
0000F9DC  E8BA02            call 0xfc99
0000F9DF  EBB7              jmp 0xf998
0000F9E1  2E3B2E0C00        cmp bp,[cs:0xc]
0000F9E6  72F4              jc 0xf9dc
0000F9E8  8BE8              mov bp,ax
0000F9EA  26C6460003        mov byte [es:bp+0x0],0x3
0000F9EF  EBEB              jmp 0xf9dc
0000F9F1  EB10              jmp 0xfa03
0000F9F3  0000              add [bx+si],al
0000F9F5  0000              add [bx+si],al
0000F9F7  4B                dec bx
0000F9F8  42                inc dx
0000F9F9  00EB              add bl,ch
0000F9FB  5F                pop di
0000F9FC  0000              add [bx+si],al
0000F9FE  0000              add [bx+si],al
0000FA00  0000              add [bx+si],al
0000FA02  005055            add [bx+si+0x55],dl
0000FA05  06                push es
0000FA06  2E8E060A00        mov es,word [cs:0xa]
0000FA0B  2E8B2E1000        mov bp,[cs:0x10]
0000FA10  B001              mov al,0x1
0000FA12  26864600          xchg al,[es:bp+0x0]
0000FA16  3C00              cmp al,0x0
0000FA18  7542              jnz 0xfa5c
0000FA1A  2E832E100008      sub word [cs:0x10],0x8
0000FA20  26896602          mov [es:bp+0x2],sp
0000FA24  268C5604          mov word [es:bp+0x4],ss
0000FA28  8BC5              mov ax,bp
0000FA2A  268B6E06          mov bp,[es:bp+0x6]
0000FA2E  26394600          cmp [es:bp+0x0],ax
0000FA32  7535              jnz 0xfa69
0000FA34  8CC0              mov ax,es
0000FA36  8ED0              mov ss,ax
0000FA38  8BE5              mov sp,bp
0000FA3A  9C                pushf
0000FA3B  2EFF1EC404        call word far [cs:0x4c4]
0000FA40  8BEC              mov bp,sp
0000FA42  268B6E00          mov bp,[es:bp+0x0]
0000FA46  268E5604          mov ss,word [es:bp+0x4]
0000FA4A  268B6602          mov sp,[es:bp+0x2]
0000FA4E  26C6460000        mov byte [es:bp+0x0],0x0
0000FA53  2E892E1000        mov [cs:0x10],bp
0000FA58  07                pop es
0000FA59  5D                pop bp
0000FA5A  58                pop ax
0000FA5B  CF                iret
0000FA5C  3C01              cmp al,0x1
0000FA5E  7404              jz 0xfa64
0000FA60  26864600          xchg al,[es:bp+0x0]
0000FA64  E83202            call 0xfc99
0000FA67  EBB7              jmp 0xfa20
0000FA69  2E3B2E0C00        cmp bp,[cs:0xc]
0000FA6E  72F4              jc 0xfa64
0000FA70  8BE8              mov bp,ax
0000FA72  26C6460003        mov byte [es:bp+0x0],0x3
0000FA77  EBEB              jmp 0xfa64
0000FA79  EB10              jmp 0xfa8b
0000FA7B  0000              add [bx+si],al
0000FA7D  0000              add [bx+si],al
0000FA7F  4B                dec bx
0000FA80  42                inc dx
0000FA81  00EB              add bl,ch
0000FA83  5F                pop di
0000FA84  0000              add [bx+si],al
0000FA86  0000              add [bx+si],al
0000FA88  0000              add [bx+si],al
0000FA8A  005055            add [bx+si+0x55],dl
0000FA8D  06                push es
0000FA8E  2E8E060A00        mov es,word [cs:0xa]
0000FA93  2E8B2E1000        mov bp,[cs:0x10]
0000FA98  B001              mov al,0x1
0000FA9A  26864600          xchg al,[es:bp+0x0]
0000FA9E  3C00              cmp al,0x0
0000FAA0  7542              jnz 0xfae4
0000FAA2  2E832E100008      sub word [cs:0x10],0x8
0000FAA8  26896602          mov [es:bp+0x2],sp
0000FAAC  268C5604          mov word [es:bp+0x4],ss
0000FAB0  8BC5              mov ax,bp
0000FAB2  268B6E06          mov bp,[es:bp+0x6]
0000FAB6  26394600          cmp [es:bp+0x0],ax
0000FABA  7535              jnz 0xfaf1
0000FABC  8CC0              mov ax,es
0000FABE  8ED0              mov ss,ax
0000FAC0  8BE5              mov sp,bp
0000FAC2  9C                pushf
0000FAC3  2EFF1E4C05        call word far [cs:0x54c]
0000FAC8  8BEC              mov bp,sp
0000FACA  268B6E00          mov bp,[es:bp+0x0]
0000FACE  268E5604          mov ss,word [es:bp+0x4]
0000FAD2  268B6602          mov sp,[es:bp+0x2]
0000FAD6  26C6460000        mov byte [es:bp+0x0],0x0
0000FADB  2E892E1000        mov [cs:0x10],bp
0000FAE0  07                pop es
0000FAE1  5D                pop bp
0000FAE2  58                pop ax
0000FAE3  CF                iret
0000FAE4  3C01              cmp al,0x1
0000FAE6  7404              jz 0xfaec
0000FAE8  26864600          xchg al,[es:bp+0x0]
0000FAEC  E8AA01            call 0xfc99
0000FAEF  EBB7              jmp 0xfaa8
0000FAF1  2E3B2E0C00        cmp bp,[cs:0xc]
0000FAF6  72F4              jc 0xfaec
0000FAF8  8BE8              mov bp,ax
0000FAFA  26C6460003        mov byte [es:bp+0x0],0x3
0000FAFF  EBEB              jmp 0xfaec
0000FB01  EB10              jmp 0xfb13
0000FB03  0000              add [bx+si],al
0000FB05  0000              add [bx+si],al
0000FB07  4B                dec bx
0000FB08  42                inc dx
0000FB09  00EB              add bl,ch
0000FB0B  5F                pop di
0000FB0C  0000              add [bx+si],al
0000FB0E  0000              add [bx+si],al
0000FB10  0000              add [bx+si],al
0000FB12  005055            add [bx+si+0x55],dl
0000FB15  06                push es
0000FB16  2E8E060A00        mov es,word [cs:0xa]
0000FB1B  2E8B2E1000        mov bp,[cs:0x10]
0000FB20  B001              mov al,0x1
0000FB22  26864600          xchg al,[es:bp+0x0]
0000FB26  3C00              cmp al,0x0
0000FB28  7542              jnz 0xfb6c
0000FB2A  2E832E100008      sub word [cs:0x10],0x8
0000FB30  26896602          mov [es:bp+0x2],sp
0000FB34  268C5604          mov word [es:bp+0x4],ss
0000FB38  8BC5              mov ax,bp
0000FB3A  268B6E06          mov bp,[es:bp+0x6]
0000FB3E  26394600          cmp [es:bp+0x0],ax
0000FB42  7535              jnz 0xfb79
0000FB44  8CC0              mov ax,es
0000FB46  8ED0              mov ss,ax
0000FB48  8BE5              mov sp,bp
0000FB4A  9C                pushf
0000FB4B  2EFF1ED405        call word far [cs:0x5d4]
0000FB50  8BEC              mov bp,sp
0000FB52  268B6E00          mov bp,[es:bp+0x0]
0000FB56  268E5604          mov ss,word [es:bp+0x4]
0000FB5A  268B6602          mov sp,[es:bp+0x2]
0000FB5E  26C6460000        mov byte [es:bp+0x0],0x0
0000FB63  2E892E1000        mov [cs:0x10],bp
0000FB68  07                pop es
0000FB69  5D                pop bp
0000FB6A  58                pop ax
0000FB6B  CF                iret
0000FB6C  3C01              cmp al,0x1
0000FB6E  7404              jz 0xfb74
0000FB70  26864600          xchg al,[es:bp+0x0]
0000FB74  E82201            call 0xfc99
0000FB77  EBB7              jmp 0xfb30
0000FB79  2E3B2E0C00        cmp bp,[cs:0xc]
0000FB7E  72F4              jc 0xfb74
0000FB80  8BE8              mov bp,ax
0000FB82  26C6460003        mov byte [es:bp+0x0],0x3
0000FB87  EBEB              jmp 0xfb74
0000FB89  EB10              jmp 0xfb9b
0000FB8B  0000              add [bx+si],al
0000FB8D  0000              add [bx+si],al
0000FB8F  4B                dec bx
0000FB90  42                inc dx
0000FB91  00EB              add bl,ch
0000FB93  5F                pop di
0000FB94  0000              add [bx+si],al
0000FB96  0000              add [bx+si],al
0000FB98  0000              add [bx+si],al
0000FB9A  005055            add [bx+si+0x55],dl
0000FB9D  06                push es
0000FB9E  2E8E060A00        mov es,word [cs:0xa]
0000FBA3  2E8B2E1000        mov bp,[cs:0x10]
0000FBA8  B001              mov al,0x1
0000FBAA  26864600          xchg al,[es:bp+0x0]
0000FBAE  3C00              cmp al,0x0
0000FBB0  7542              jnz 0xfbf4
0000FBB2  2E832E100008      sub word [cs:0x10],0x8
0000FBB8  26896602          mov [es:bp+0x2],sp
0000FBBC  268C5604          mov word [es:bp+0x4],ss
0000FBC0  8BC5              mov ax,bp
0000FBC2  268B6E06          mov bp,[es:bp+0x6]
0000FBC6  26394600          cmp [es:bp+0x0],ax
0000FBCA  7535              jnz 0xfc01
0000FBCC  8CC0              mov ax,es
0000FBCE  8ED0              mov ss,ax
0000FBD0  8BE5              mov sp,bp
0000FBD2  9C                pushf
0000FBD3  2EFF1E5C06        call word far [cs:0x65c]
0000FBD8  8BEC              mov bp,sp
0000FBDA  268B6E00          mov bp,[es:bp+0x0]
0000FBDE  268E5604          mov ss,word [es:bp+0x4]
0000FBE2  268B6602          mov sp,[es:bp+0x2]
0000FBE6  26C6460000        mov byte [es:bp+0x0],0x0
0000FBEB  2E892E1000        mov [cs:0x10],bp
0000FBF0  07                pop es
0000FBF1  5D                pop bp
0000FBF2  58                pop ax
0000FBF3  CF                iret
0000FBF4  3C01              cmp al,0x1
0000FBF6  7404              jz 0xfbfc
0000FBF8  26864600          xchg al,[es:bp+0x0]
0000FBFC  E89A00            call 0xfc99
0000FBFF  EB                db 0xeb
