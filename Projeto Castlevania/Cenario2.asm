# cenario2.asm - Desenha o cenario 2: Saguao do Castelo. Contem os loops de renderizacao das paredes internas, colunas e chao.

.text

desenha_cenario2:
    li $t0, 0x10010000 # Início da região: parede de pedra cinza do castelo (linha 0, col 0, 6 pixels)
    li $t1, 0xBABABA
    li $t2, 6
D0:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D0
    li $t0, 0x10010018
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x1001001C
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x10010020
    li $t1, 0x6C6C6C
    sw $t1, 0($t0)
    li $t0, 0x10010024
    li $t1, 0x767676
    sw $t1, 0($t0)
    li $t0, 0x10010028
    li $t1, 0xBCBCBC
    sw $t1, 0($t0)
    li $t0, 0x1001002C
    li $t1, 0x676767
    sw $t1, 0($t0)
    li $t0, 0x10010030
    li $t1, 0x727272
    sw $t1, 0($t0)
    li $t0, 0x10010034
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10010038
    li $t1, 0xFB6EB2
    sw $t1, 0($t0)
    li $t0, 0x1001003C
    li $t1, 0xD82505
    sw $t1, 0($t0)
    li $t0, 0x10010040
    li $t1, 0xD32B0E
    sw $t1, 0($t0)
    li $t0, 0x10010044
    li $t1, 0xFF6FB3
    sw $t1, 0($t0)
    li $t0, 0x10010048
    li $t1, 0x2F0000
    sw $t1, 0($t0)
    li $t0, 0x1001004C
    li $t1, 0xE5434E
    sw $t1, 0($t0)
    li $t0, 0x10010050
    li $t1, 0xFF77AF
    sw $t1, 0($t0)
    li $t0, 0x10010054
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x10010058
    li $t1, 0xBABABA
    li $t2, 3
D17:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D17
    li $t0, 0x10010064
    li $t1, 0xBBBBBB
    li $t2, 7
D18:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D18
    li $t0, 0x10010080
    li $t1, 0xBABABA
    li $t2, 3
D19:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D19
    li $t0, 0x1001008C
    li $t1, 0xC1C1C1
    sw $t1, 0($t0)
    li $t0, 0x10010090
    li $t1, 0x636363
    sw $t1, 0($t0)
    li $t0, 0x10010094
    li $t1, 0xBCBCBC
    sw $t1, 0($t0)
    li $t0, 0x10010098
    li $t1, 0x727272
    sw $t1, 0($t0)
    li $t0, 0x1001009C
    li $t1, 0xBDBDBD
    sw $t1, 0($t0)
    li $t0, 0x100100A0
    li $t1, 0x787878
    sw $t1, 0($t0)
    li $t0, 0x100100A4
    li $t1, 0x808080
    sw $t1, 0($t0)
    li $t0, 0x100100A8
    li $t1, 0x000200
    sw $t1, 0($t0)
    li $t0, 0x100100AC
    li $t1, 0xFF71AE
    sw $t1, 0($t0)
    li $t0, 0x100100B0
    li $t1, 0x2B0000
    sw $t1, 0($t0)
    li $t0, 0x100100B4
    li $t1, 0xE42711
    sw $t1, 0($t0)
    li $t0, 0x100100B8
    li $t1, 0xFF6AA3
    sw $t1, 0($t0)
    li $t0, 0x100100BC
    li $t1, 0x8C230E
    sw $t1, 0($t0)
    li $t0, 0x100100C0
    li $t1, 0xFF7DA5
    sw $t1, 0($t0)
    li $t0, 0x100100C4
    li $t1, 0x1B0A03
    sw $t1, 0($t0)
    li $t0, 0x100100C8
    li $t1, 0xBABABA
    li $t2, 2
D35:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D35
    li $t0, 0x100100D0
    li $t1, 0xBBBBBB
    li $t2, 7
D36:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D36
    li $t0, 0x100100EC
    li $t1, 0xBABABA
    li $t2, 12
D37:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D37
    li $t0, 0x1001011C
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x10010120
    li $t1, 0x565656
    sw $t1, 0($t0)
    li $t0, 0x10010124
    li $t1, 0x5C5C5C
    sw $t1, 0($t0)
    li $t0, 0x10010128
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001012C
    li $t1, 0xC1C1C1
    sw $t1, 0($t0)
    li $t0, 0x10010130
    li $t1, 0x040404
    sw $t1, 0($t0)
    li $t0, 0x10010134
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x10010138
    li $t1, 0x070005
    sw $t1, 0($t0)
    li $t0, 0x1001013C
    li $t1, 0xCD2204
    sw $t1, 0($t0)
    li $t0, 0x10010140
    li $t1, 0xFA68A6
    sw $t1, 0($t0)
    li $t0, 0x10010144
    li $t1, 0xA92813
    sw $t1, 0($t0)
    li $t0, 0x10010148
    li $t1, 0xC6382A
    sw $t1, 0($t0)
    li $t0, 0x1001014C
    li $t1, 0xFA71B5
    sw $t1, 0($t0)
    li $t0, 0x10010150
    li $t1, 0xD72F0B
    sw $t1, 0($t0)
    li $t0, 0x10010154
    li $t1, 0xBABABA
    li $t2, 2
D52:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D52
    li $t0, 0x1001015C
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010160
    li $t1, 0xBABABA
    li $t2, 3
D54:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D54
    li $t0, 0x1001016C
    li $t1, 0xBBBBBB
    li $t2, 2
D55:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D55
    li $t0, 0x10010174
    li $t1, 0xBABABA
    li $t2, 6
D56:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D56
    li $t0, 0x1001018C
    li $t1, 0xC2C2C2
    sw $t1, 0($t0)
    li $t0, 0x10010190
    li $t1, 0x6F6F6F
    sw $t1, 0($t0)
    li $t0, 0x10010194
    li $t1, 0x6C6C6C
    sw $t1, 0($t0)
    li $t0, 0x10010198
    li $t1, 0xB8B8B8
    li $t2, 2
D60:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D60
    li $t0, 0x100101A0
    li $t1, 0x737373
    sw $t1, 0($t0)
    li $t0, 0x100101A4
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x100101A8
    li $t1, 0x000002
    sw $t1, 0($t0)
    li $t0, 0x100101AC
    li $t1, 0x140001
    sw $t1, 0($t0)
    li $t0, 0x100101B0
    li $t1, 0xC8191E
    sw $t1, 0($t0)
    li $t0, 0x100101B4
    li $t1, 0xF567AF
    sw $t1, 0($t0)
    li $t0, 0x100101B8
    li $t1, 0x1D0000
    sw $t1, 0($t0)
    li $t0, 0x100101BC
    li $t1, 0xF4526A
    sw $t1, 0($t0)
    li $t0, 0x100101C0
    li $t1, 0xC01211
    sw $t1, 0($t0)
    li $t0, 0x100101C4
    li $t1, 0x080000
    sw $t1, 0($t0)
    li $t0, 0x100101C8
    li $t1, 0xBABABA
    li $t2, 2
D71:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D71
    li $t0, 0x100101D0
    li $t1, 0xBBBBBB
    li $t2, 3
D72:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D72
    li $t0, 0x100101DC
    li $t1, 0xBABABA
    li $t2, 8
D73:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D73
    li $t0, 0x100101FC
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010200
    li $t1, 0xBABABA
    li $t2, 6
D75:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D75
    li $t0, 0x10010218
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001021C # parede de pedra cinza do castelo — linha 2, col 7
    li $t1, 0x111111
    sw $t1, 0($t0)
    li $t0, 0x10010220
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x10010224
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010228
    li $t1, 0xB7B7B7
    sw $t1, 0($t0)
    li $t0, 0x1001022C
    li $t1, 0x737172
    sw $t1, 0($t0)
    li $t0, 0x10010230
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10010234
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x10010238
    li $t1, 0xDC2305
    sw $t1, 0($t0)
    li $t0, 0x1001023C
    li $t1, 0xFB70B1
    sw $t1, 0($t0)
    li $t0, 0x10010240
    li $t1, 0xD12730
    sw $t1, 0($t0)
    li $t0, 0x10010244
    li $t1, 0x891F11
    sw $t1, 0($t0)
    li $t0, 0x10010248
    li $t1, 0xFA75AA
    sw $t1, 0($t0)
    li $t0, 0x1001024C
    li $t1, 0xFF5872
    sw $t1, 0($t0)
    li $t0, 0x10010250
    li $t1, 0x000100
    sw $t1, 0($t0)
    li $t0, 0x10010254
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010258
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001025C
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x10010260
    li $t1, 0xBABABA
    li $t2, 3
D94:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D94
    li $t0, 0x1001026C
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x10010270
    li $t1, 0xBABABA
    li $t2, 7
D96:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D96
    li $t0, 0x1001028C
    li $t1, 0xC1C1C1
    sw $t1, 0($t0)
    li $t0, 0x10010290
    li $t1, 0x727272
    sw $t1, 0($t0)
    li $t0, 0x10010294
    li $t1, 0x5B5B5B
    sw $t1, 0($t0)
    li $t0, 0x10010298
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001029C
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x100102A0
    li $t1, 0x717171
    sw $t1, 0($t0)
    li $t0, 0x100102A4
    li $t1, 0x000000
    li $t2, 2
D103:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D103
    li $t0, 0x100102AC
    li $t1, 0xFF658D
    sw $t1, 0($t0)
    li $t0, 0x100102B0
    li $t1, 0xFF70B1
    sw $t1, 0($t0)
    li $t0, 0x100102B4
    li $t1, 0xE62B0A
    sw $t1, 0($t0)
    li $t0, 0x100102B8
    li $t1, 0xDD2201
    sw $t1, 0($t0)
    li $t0, 0x100102BC
    li $t1, 0xFF70B7
    sw $t1, 0($t0)
    li $t0, 0x100102C0
    li $t1, 0xFF76A2
    sw $t1, 0($t0)
    li $t0, 0x100102C4
    li $t1, 0x000100
    sw $t1, 0($t0)
    li $t0, 0x100102C8
    li $t1, 0xBABABA
    li $t2, 5
D111:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D111
    li $t0, 0x100102DC
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x100102E0
    li $t1, 0xBABABA
    li $t2, 7
D113:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D113
    li $t0, 0x100102FC
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010300
    li $t1, 0xBABABA
    li $t2, 7
D115:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D115
    li $t0, 0x1001031C
    li $t1, 0x313131
    sw $t1, 0($t0)
    li $t0, 0x10010320
    li $t1, 0x686868
    sw $t1, 0($t0)
    li $t0, 0x10010324
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010328
    li $t1, 0xB5B5B5
    sw $t1, 0($t0)
    li $t0, 0x1001032C
    li $t1, 0x716F70
    sw $t1, 0($t0)
    li $t0, 0x10010330
    li $t1, 0x2B2B2B
    sw $t1, 0($t0)
    li $t0, 0x10010334
    li $t1, 0x020202
    sw $t1, 0($t0)
    li $t0, 0x10010338
    li $t1, 0xD7270F
    sw $t1, 0($t0)
    li $t0, 0x1001033C
    li $t1, 0xB03223
    sw $t1, 0($t0)
    li $t0, 0x10010340
    li $t1, 0xD82306
    sw $t1, 0($t0)
    li $t0, 0x10010344
    li $t1, 0xFC71B5
    sw $t1, 0($t0)
    li $t0, 0x10010348
    li $t1, 0xFE6172
    sw $t1, 0($t0)
    li $t0, 0x1001034C
    li $t1, 0x9C1809
    sw $t1, 0($t0)
    li $t0, 0x10010350
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010354
    li $t1, 0xBABABA
    li $t2, 2
D130:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D130
    li $t0, 0x1001035C
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010360
    li $t1, 0xBABABA
    li $t2, 8
D132:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D132
    li $t0, 0x10010380
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010384
    li $t1, 0xBABABA
    li $t2, 2
D134:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D134
    li $t0, 0x1001038C
    li $t1, 0xBDBDBD
    sw $t1, 0($t0)
    li $t0, 0x10010390
    li $t1, 0x707070
    sw $t1, 0($t0)
    li $t0, 0x10010394
    li $t1, 0xAFAFAF
    sw $t1, 0($t0)
    li $t0, 0x10010398
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001039C
    li $t1, 0xBEBEBE
    sw $t1, 0($t0)
    li $t0, 0x100103A0
    li $t1, 0x707070
    sw $t1, 0($t0)
    li $t0, 0x100103A4
    li $t1, 0x2A2A2A
    sw $t1, 0($t0)
    li $t0, 0x100103A8
    li $t1, 0x000100
    sw $t1, 0($t0)
    li $t0, 0x100103AC
    li $t1, 0xB12818
    sw $t1, 0($t0)
    li $t0, 0x100103B0
    li $t1, 0xBE2D1C
    sw $t1, 0($t0)
    li $t0, 0x100103B4
    li $t1, 0xDC1E00
    sw $t1, 0($t0)
    li $t0, 0x100103B8
    li $t1, 0x692B42
    sw $t1, 0($t0)
    li $t0, 0x100103BC
    li $t1, 0xD92004
    sw $t1, 0($t0)
    li $t0, 0x100103C0
    li $t1, 0x8A4A64
    sw $t1, 0($t0)
    li $t0, 0x100103C4
    li $t1, 0xBCBCBC
    sw $t1, 0($t0)
    li $t0, 0x100103C8
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x100103CC
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x100103D0
    li $t1, 0xBABABA
    li $t2, 11
D152:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D152
    li $t0, 0x100103FC
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010400 # parede de pedra cinza do castelo — linha 4, col 0, 3 pixels seguidos
    li $t1, 0xBABABA
    li $t2, 3
D154:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D154
    li $t0, 0x1001040C
    li $t1, 0xB9B9B9
    li $t2, 3
D155:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D155
    li $t0, 0x10010418
    li $t1, 0xB7B7B7
    sw $t1, 0($t0)
    li $t0, 0x1001041C
    li $t1, 0x515151
    sw $t1, 0($t0)
    li $t0, 0x10010420
    li $t1, 0x696969
    sw $t1, 0($t0)
    li $t0, 0x10010424
    li $t1, 0x939393
    sw $t1, 0($t0)
    li $t0, 0x10010428
    li $t1, 0xB2B2B2
    sw $t1, 0($t0)
    li $t0, 0x1001042C
    li $t1, 0x939192
    sw $t1, 0($t0)
    li $t0, 0x10010430
    li $t1, 0x4D4B4C
    sw $t1, 0($t0)
    li $t0, 0x10010434
    li $t1, 0x020202
    sw $t1, 0($t0)
    li $t0, 0x10010438
    li $t1, 0x0D0000
    sw $t1, 0($t0)
    li $t0, 0x1001043C
    li $t1, 0x0E0403
    sw $t1, 0($t0)
    li $t0, 0x10010440
    li $t1, 0x801B0F
    sw $t1, 0($t0)
    li $t0, 0x10010444
    li $t1, 0xA22914
    sw $t1, 0($t0)
    li $t0, 0x10010448
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x1001044C
    li $t1, 0x8A7F83
    sw $t1, 0($t0)
    li $t0, 0x10010450
    li $t1, 0xBABABA
    li $t2, 9
D170:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D170
    li $t0, 0x10010474
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x10010478
    li $t1, 0xBABABA
    li $t2, 5
D172:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D172
    li $t0, 0x1001048C
    li $t1, 0xC1C1C1
    sw $t1, 0($t0)
    li $t0, 0x10010490
    li $t1, 0x6D6D6D
    sw $t1, 0($t0)
    li $t0, 0x10010494
    li $t1, 0x6A6A6A
    sw $t1, 0($t0)
    li $t0, 0x10010498
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001049C
    li $t1, 0xC3C3C3
    sw $t1, 0($t0)
    li $t0, 0x100104A0
    li $t1, 0x6F6F6F
    sw $t1, 0($t0)
    li $t0, 0x100104A4
    li $t1, 0x4D4D4D
    sw $t1, 0($t0)
    li $t0, 0x100104A8
    li $t1, 0x030207
    sw $t1, 0($t0)
    li $t0, 0x100104AC
    li $t1, 0x150204
    sw $t1, 0($t0)
    li $t0, 0x100104B0
    li $t1, 0x170103
    sw $t1, 0($t0)
    li $t0, 0x100104B4
    li $t1, 0xC9270E
    sw $t1, 0($t0)
    li $t0, 0x100104B8
    li $t1, 0x000300
    sw $t1, 0($t0)
    li $t0, 0x100104BC
    li $t1, 0x521D17
    sw $t1, 0($t0)
    li $t0, 0x100104C0
    li $t1, 0xB9BDBE
    sw $t1, 0($t0)
    li $t0, 0x100104C4
    li $t1, 0xBABABA
    li $t2, 14
D187:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D187
    li $t0, 0x100104FC
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010500
    li $t1, 0x717171
    sw $t1, 0($t0)
    li $t0, 0x10010504
    li $t1, 0x808080
    sw $t1, 0($t0)
    li $t0, 0x10010508
    li $t1, 0x787878
    sw $t1, 0($t0)
    li $t0, 0x1001050C
    li $t1, 0x6B6B6B
    sw $t1, 0($t0)
    li $t0, 0x10010510
    li $t1, 0x7C7C7C
    sw $t1, 0($t0)
    li $t0, 0x10010514
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10010518
    li $t1, 0xC0C0C0
    sw $t1, 0($t0)
    li $t0, 0x1001051C
    li $t1, 0x737373
    sw $t1, 0($t0)
    li $t0, 0x10010520
    li $t1, 0xC7C7C7
    sw $t1, 0($t0)
    li $t0, 0x10010524
    li $t1, 0xC1C1C1
    sw $t1, 0($t0)
    li $t0, 0x10010528
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x1001052C
    li $t1, 0x505050
    sw $t1, 0($t0)
    li $t0, 0x10010530
    li $t1, 0x7C7C7C
    sw $t1, 0($t0)
    li $t0, 0x10010534
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x10010538
    li $t1, 0xDA2301
    sw $t1, 0($t0)
    li $t0, 0x1001053C
    li $t1, 0xD42604
    sw $t1, 0($t0)
    li $t0, 0x10010540
    li $t1, 0xFF7DA9
    sw $t1, 0($t0)
    li $t0, 0x10010544
    li $t1, 0x161012
    sw $t1, 0($t0)
    li $t0, 0x10010548
    li $t1, 0x020202
    sw $t1, 0($t0)
    li $t0, 0x1001054C
    li $t1, 0xB9B9B9
    li $t2, 2
D208:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D208
    li $t0, 0x10010554
    li $t1, 0xBABABA
    li $t2, 2
D209:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D209
    li $t0, 0x1001055C
    li $t1, 0xB7B7B7
    sw $t1, 0($t0)
    li $t0, 0x10010560
    li $t1, 0xBABABA
    li $t2, 5
D211:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D211
    li $t0, 0x10010574
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010578
    li $t1, 0xBABABA
    li $t2, 4
D213:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D213
    li $t0, 0x10010588
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001058C
    li $t1, 0xC2C2C2
    sw $t1, 0($t0)
    li $t0, 0x10010590
    li $t1, 0x606060
    sw $t1, 0($t0)
    li $t0, 0x10010594
    li $t1, 0x686868
    sw $t1, 0($t0)
    li $t0, 0x10010598
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001059C
    li $t1, 0xBDBDBD
    sw $t1, 0($t0)
    li $t0, 0x100105A0
    li $t1, 0x717171
    sw $t1, 0($t0)
    li $t0, 0x100105A4
    li $t1, 0x838383
    sw $t1, 0($t0)
    li $t0, 0x100105A8
    li $t1, 0x010000
    sw $t1, 0($t0)
    li $t0, 0x100105AC
    li $t1, 0xFF6C93
    sw $t1, 0($t0)
    li $t0, 0x100105B0
    li $t1, 0xD92001
    sw $t1, 0($t0)
    li $t0, 0x100105B4
    li $t1, 0xD82306
    sw $t1, 0($t0)
    li $t0, 0x100105B8
    li $t1, 0x010000
    sw $t1, 0($t0)
    li $t0, 0x100105BC
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x100105C0
    li $t1, 0xBABABA
    li $t2, 4
D228:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D228
    li $t0, 0x100105D0
    li $t1, 0xC1C1C1
    sw $t1, 0($t0)
    li $t0, 0x100105D4
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x100105D8 # parede de pedra cinza do castelo — linha 5, col 54, 7 pixels seguidos
    li $t1, 0xBABABA
    li $t2, 7
D231:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D231
    li $t0, 0x100105F4
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x100105F8
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x100105FC
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010600
    li $t1, 0x999999
    sw $t1, 0($t0)
    li $t0, 0x10010604
    li $t1, 0x050505
    sw $t1, 0($t0)
    li $t0, 0x10010608
    li $t1, 0xBDBDBD
    sw $t1, 0($t0)
    li $t0, 0x1001060C
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10010610
    li $t1, 0x7E7E7E
    sw $t1, 0($t0)
    li $t0, 0x10010614
    li $t1, 0x767676
    sw $t1, 0($t0)
    li $t0, 0x10010618
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x1001061C
    li $t1, 0x6A6A6A
    sw $t1, 0($t0)
    li $t0, 0x10010620
    li $t1, 0xBCBCBC
    sw $t1, 0($t0)
    li $t0, 0x10010624
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010628
    li $t1, 0xBEBEBE
    sw $t1, 0($t0)
    li $t0, 0x1001062C
    li $t1, 0x767676
    sw $t1, 0($t0)
    li $t0, 0x10010630
    li $t1, 0x7A7A7A
    sw $t1, 0($t0)
    li $t0, 0x10010634
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x10010638
    li $t1, 0xDB2402
    sw $t1, 0($t0)
    li $t0, 0x1001063C
    li $t1, 0xD32701
    sw $t1, 0($t0)
    li $t0, 0x10010640
    li $t1, 0xFE7DA4
    sw $t1, 0($t0)
    li $t0, 0x10010644
    li $t1, 0x180F10
    sw $t1, 0($t0)
    li $t0, 0x10010648
    li $t1, 0xBEBEBE
    sw $t1, 0($t0)
    li $t0, 0x1001064C
    li $t1, 0xB9B9B9
    li $t2, 2
D254:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D254
    li $t0, 0x10010654
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010658
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001065C
    li $t1, 0xA8A8A8
    sw $t1, 0($t0)
    li $t0, 0x10010660
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10010664
    li $t1, 0x6D6D6D
    sw $t1, 0($t0)
    li $t0, 0x10010668
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001066C
    li $t1, 0xBABABA
    li $t2, 7
D261:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D261
    li $t0, 0x10010688
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001068C
    li $t1, 0xC0C0C0
    sw $t1, 0($t0)
    li $t0, 0x10010690
    li $t1, 0x696969
    sw $t1, 0($t0)
    li $t0, 0x10010694
    li $t1, 0xBABABA
    li $t2, 2
D265:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D265
    li $t0, 0x1001069C
    li $t1, 0xBFBFBF
    sw $t1, 0($t0)
    li $t0, 0x100106A0
    li $t1, 0x707070
    sw $t1, 0($t0)
    li $t0, 0x100106A4
    li $t1, 0x808080
    sw $t1, 0($t0)
    li $t0, 0x100106A8
    li $t1, 0x010000
    sw $t1, 0($t0)
    li $t0, 0x100106AC
    li $t1, 0xFF6A8A
    sw $t1, 0($t0)
    li $t0, 0x100106B0
    li $t1, 0xD81F03
    sw $t1, 0($t0)
    li $t0, 0x100106B4
    li $t1, 0xDC2506
    sw $t1, 0($t0)
    li $t0, 0x100106B8
    li $t1, 0x9E9A99
    sw $t1, 0($t0)
    li $t0, 0x100106BC
    li $t1, 0xC5C5C5
    sw $t1, 0($t0)
    li $t0, 0x100106C0
    li $t1, 0xBABABA
    li $t2, 3
D275:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D275
    li $t0, 0x100106CC
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x100106D0
    li $t1, 0xC0C0C0
    sw $t1, 0($t0)
    li $t0, 0x100106D4
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x100106D8
    li $t1, 0xBABABA
    li $t2, 9
D279:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D279
    li $t0, 0x100106FC
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010700
    li $t1, 0x868684
    sw $t1, 0($t0)
    li $t0, 0x10010704
    li $t1, 0x7D7D7D
    sw $t1, 0($t0)
    li $t0, 0x10010708
    li $t1, 0x0F0F0F
    sw $t1, 0($t0)
    li $t0, 0x1001070C
    li $t1, 0x757575
    sw $t1, 0($t0)
    li $t0, 0x10010710
    li $t1, 0x2E2E2E
    sw $t1, 0($t0)
    li $t0, 0x10010714
    li $t1, 0x6A6A6A
    sw $t1, 0($t0)
    li $t0, 0x10010718
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x1001071C
    li $t1, 0x666465
    sw $t1, 0($t0)
    li $t0, 0x10010720
    li $t1, 0x6A6A6A
    sw $t1, 0($t0)
    li $t0, 0x10010724
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010728
    li $t1, 0xBDBDBD
    sw $t1, 0($t0)
    li $t0, 0x1001072C
    li $t1, 0x838383
    sw $t1, 0($t0)
    li $t0, 0x10010730
    li $t1, 0x6D6D6D
    sw $t1, 0($t0)
    li $t0, 0x10010734
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10010738
    li $t1, 0xD62201
    sw $t1, 0($t0)
    li $t0, 0x1001073C
    li $t1, 0xD42700
    sw $t1, 0($t0)
    li $t0, 0x10010740
    li $t1, 0xFE7CA2
    sw $t1, 0($t0)
    li $t0, 0x10010744
    li $t1, 0x150C0D
    sw $t1, 0($t0)
    li $t0, 0x10010748
    li $t1, 0xBABABA
    li $t2, 2
D299:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D299
    li $t0, 0x10010750
    li $t1, 0xB9B9B9
    li $t2, 2
D300:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D300
    li $t0, 0x10010758
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x1001075C
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010760
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10010764
    li $t1, 0xCCCCCC
    sw $t1, 0($t0)
    li $t0, 0x10010768
    li $t1, 0xBDBDBD
    sw $t1, 0($t0)
    li $t0, 0x1001076C
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010770
    li $t1, 0xBABABA
    li $t2, 6
D307:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D307
    li $t0, 0x10010788 # parede de pedra cinza do castelo — linha 7, col 34
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001078C
    li $t1, 0xBEBEBE
    sw $t1, 0($t0)
    li $t0, 0x10010790
    li $t1, 0x737373
    sw $t1, 0($t0)
    li $t0, 0x10010794
    li $t1, 0x717171
    sw $t1, 0($t0)
    li $t0, 0x10010798
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x1001079C
    li $t1, 0xBDBDBD
    sw $t1, 0($t0)
    li $t0, 0x100107A0
    li $t1, 0x727272
    sw $t1, 0($t0)
    li $t0, 0x100107A4
    li $t1, 0x757575
    sw $t1, 0($t0)
    li $t0, 0x100107A8
    li $t1, 0x010000
    sw $t1, 0($t0)
    li $t0, 0x100107AC
    li $t1, 0xFF6F8F
    sw $t1, 0($t0)
    li $t0, 0x100107B0
    li $t1, 0xD42301
    sw $t1, 0($t0)
    li $t0, 0x100107B4
    li $t1, 0xD92405
    sw $t1, 0($t0)
    li $t0, 0x100107B8
    li $t1, 0xBBBAB8
    sw $t1, 0($t0)
    li $t0, 0x100107BC
    li $t1, 0xBABABA
    li $t2, 2
D321:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D321
    li $t0, 0x100107C4
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x100107C8
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x100107CC
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x100107D0
    li $t1, 0x232323
    sw $t1, 0($t0)
    li $t0, 0x100107D4
    li $t1, 0x969696
    sw $t1, 0($t0)
    li $t0, 0x100107D8
    li $t1, 0x4E4E4E
    sw $t1, 0($t0)
    li $t0, 0x100107DC
    li $t1, 0xBABABA
    li $t2, 8
D328:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D328
    li $t0, 0x100107FC
    li $t1, 0xB9B9B9
    li $t2, 2
D329:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D329
    li $t0, 0x10010804
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10010808
    li $t1, 0x737373
    sw $t1, 0($t0)
    li $t0, 0x1001080C
    li $t1, 0xADADAD
    sw $t1, 0($t0)
    li $t0, 0x10010810
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x10010814
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010818
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x1001081C
    li $t1, 0x404040
    sw $t1, 0($t0)
    li $t0, 0x10010820
    li $t1, 0x6C6C6C
    sw $t1, 0($t0)
    li $t0, 0x10010824
    li $t1, 0x6E6E6E
    sw $t1, 0($t0)
    li $t0, 0x10010828
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x1001082C
    li $t1, 0xA2A2A2
    sw $t1, 0($t0)
    li $t0, 0x10010830
    li $t1, 0x4D4D4D
    sw $t1, 0($t0)
    li $t0, 0x10010834
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10010838
    li $t1, 0xDA2102
    sw $t1, 0($t0)
    li $t0, 0x1001083C
    li $t1, 0xD32502
    sw $t1, 0($t0)
    li $t0, 0x10010840
    li $t1, 0xFE7DA4
    sw $t1, 0($t0)
    li $t0, 0x10010844
    li $t1, 0x180D0B
    sw $t1, 0($t0)
    li $t0, 0x10010848
    li $t1, 0xBABABA
    li $t2, 2
D347:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D347
    li $t0, 0x10010850
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010854
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10010858
    li $t1, 0xBCBCBC
    sw $t1, 0($t0)
    li $t0, 0x1001085C
    li $t1, 0x484848
    sw $t1, 0($t0)
    li $t0, 0x10010860
    li $t1, 0x050505
    sw $t1, 0($t0)
    li $t0, 0x10010864
    li $t1, 0x555555
    sw $t1, 0($t0)
    li $t0, 0x10010868
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x1001086C
    li $t1, 0x868686
    sw $t1, 0($t0)
    li $t0, 0x10010870
    li $t1, 0xBABABA
    li $t2, 5
D356:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D356
    li $t0, 0x10010884
    li $t1, 0xB9B9B9
    li $t2, 2
D357:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D357
    li $t0, 0x1001088C
    li $t1, 0xBDBDBD
    sw $t1, 0($t0)
    li $t0, 0x10010890
    li $t1, 0x6D6D6D
    li $t2, 2
D359:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D359
    li $t0, 0x10010898
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x1001089C
    li $t1, 0xC0C0C0
    sw $t1, 0($t0)
    li $t0, 0x100108A0
    li $t1, 0x6E6E6E
    sw $t1, 0($t0)
    li $t0, 0x100108A4
    li $t1, 0x4F4F4F
    sw $t1, 0($t0)
    li $t0, 0x100108A8
    li $t1, 0x010000
    sw $t1, 0($t0)
    li $t0, 0x100108AC
    li $t1, 0xFF708D
    sw $t1, 0($t0)
    li $t0, 0x100108B0
    li $t1, 0xD82504
    sw $t1, 0($t0)
    li $t0, 0x100108B4
    li $t1, 0xDA2506
    sw $t1, 0($t0)
    li $t0, 0x100108B8
    li $t1, 0xBDB8BC
    sw $t1, 0($t0)
    li $t0, 0x100108BC
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x100108C0
    li $t1, 0xB9B9B9
    li $t2, 2
D370:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D370
    li $t0, 0x100108C8
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x100108CC
    li $t1, 0xA3A3A3
    sw $t1, 0($t0)
    li $t0, 0x100108D0
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x100108D4
    li $t1, 0x474747
    sw $t1, 0($t0)
    li $t0, 0x100108D8
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x100108DC
    li $t1, 0x585858
    sw $t1, 0($t0)
    li $t0, 0x100108E0
    li $t1, 0xBABABA
    li $t2, 7
D377:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D377
    li $t0, 0x100108FC
    li $t1, 0xB9B9B9
    li $t2, 2
D378:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D378
    li $t0, 0x10010904
    li $t1, 0xC1C1C1
    sw $t1, 0($t0)
    li $t0, 0x10010908
    li $t1, 0xB6B6B6
    sw $t1, 0($t0)
    li $t0, 0x1001090C
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10010910
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010914
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010918
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001091C # parede de pedra cinza do castelo — linha 9, col 7
    li $t1, 0x333333
    sw $t1, 0($t0)
    li $t0, 0x10010920
    li $t1, 0xB7B7B7
    sw $t1, 0($t0)
    li $t0, 0x10010924
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010928
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x1001092C
    li $t1, 0x717171
    sw $t1, 0($t0)
    li $t0, 0x10010930
    li $t1, 0x2C2C2C
    sw $t1, 0($t0)
    li $t0, 0x10010934
    li $t1, 0x020202
    sw $t1, 0($t0)
    li $t0, 0x10010938
    li $t1, 0xDA2301
    sw $t1, 0($t0)
    li $t0, 0x1001093C
    li $t1, 0xD52500
    sw $t1, 0($t0)
    li $t0, 0x10010940
    li $t1, 0xCE1C12
    sw $t1, 0($t0)
    li $t0, 0x10010944
    li $t1, 0x16110E
    sw $t1, 0($t0)
    li $t0, 0x10010948
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001094C
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010950
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010954
    li $t1, 0xB6B6B6
    sw $t1, 0($t0)
    li $t0, 0x10010958
    li $t1, 0x090909
    sw $t1, 0($t0)
    li $t0, 0x1001095C
    li $t1, 0x6F6F6F
    sw $t1, 0($t0)
    li $t0, 0x10010960
    li $t1, 0x7A7A7A
    sw $t1, 0($t0)
    li $t0, 0x10010964
    li $t1, 0x747474
    sw $t1, 0($t0)
    li $t0, 0x10010968
    li $t1, 0x737373
    sw $t1, 0($t0)
    li $t0, 0x1001096C
    li $t1, 0x515151
    sw $t1, 0($t0)
    li $t0, 0x10010970
    li $t1, 0xBABABA
    li $t2, 2
D406:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D406
    li $t0, 0x10010978
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001097C
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010980
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x10010984
    li $t1, 0xB9B9B9
    li $t2, 2
D410:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D410
    li $t0, 0x1001098C
    li $t1, 0xBDBDBD
    sw $t1, 0($t0)
    li $t0, 0x10010990
    li $t1, 0x6F6F6F
    sw $t1, 0($t0)
    li $t0, 0x10010994
    li $t1, 0x616161
    sw $t1, 0($t0)
    li $t0, 0x10010998
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x1001099C
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x100109A0
    li $t1, 0x707070
    sw $t1, 0($t0)
    li $t0, 0x100109A4
    li $t1, 0x2D2D2B
    sw $t1, 0($t0)
    li $t0, 0x100109A8
    li $t1, 0x020100
    sw $t1, 0($t0)
    li $t0, 0x100109AC
    li $t1, 0xFF7291
    sw $t1, 0($t0)
    li $t0, 0x100109B0
    li $t1, 0xD52402
    sw $t1, 0($t0)
    li $t0, 0x100109B4
    li $t1, 0xCF2224
    sw $t1, 0($t0)
    li $t0, 0x100109B8
    li $t1, 0xC0BEC1
    sw $t1, 0($t0)
    li $t0, 0x100109BC
    li $t1, 0xBABABA
    li $t2, 3
D423:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D423
    li $t0, 0x100109C8
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x100109CC
    li $t1, 0x353535
    sw $t1, 0($t0)
    li $t0, 0x100109D0
    li $t1, 0x767676
    sw $t1, 0($t0)
    li $t0, 0x100109D4
    li $t1, 0xA2A2A2
    sw $t1, 0($t0)
    li $t0, 0x100109D8
    li $t1, 0x767676
    sw $t1, 0($t0)
    li $t0, 0x100109DC
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x100109E0
    li $t1, 0xBABABA
    li $t2, 5
D430:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D430
    li $t0, 0x100109F4
    li $t1, 0xB9B9B9
    li $t2, 4
D431:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D431
    li $t0, 0x10010A04 # Início da região: parede com janelas e colunas (linha 10, col 1)
    li $t1, 0xBCBCBC
    sw $t1, 0($t0)
    li $t0, 0x10010A08
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10010A0C
    li $t1, 0xB9B9B9
    li $t2, 4
D434:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D434
    li $t0, 0x10010A1C
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x10010A20
    li $t1, 0x676767
    sw $t1, 0($t0)
    li $t0, 0x10010A24
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010A28
    li $t1, 0xB5B5B5
    sw $t1, 0($t0)
    li $t0, 0x10010A2C
    li $t1, 0x717171
    sw $t1, 0($t0)
    li $t0, 0x10010A30
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10010A34
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x10010A38
    li $t1, 0xDC2402
    sw $t1, 0($t0)
    li $t0, 0x10010A3C
    li $t1, 0xD82600
    sw $t1, 0($t0)
    li $t0, 0x10010A40
    li $t1, 0xDD1C0D
    sw $t1, 0($t0)
    li $t0, 0x10010A44
    li $t1, 0x150E15
    sw $t1, 0($t0)
    li $t0, 0x10010A48
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010A4C
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010A50
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010A54
    li $t1, 0xAFCAAB
    sw $t1, 0($t0)
    li $t0, 0x10010A58
    li $t1, 0x6B8E6D
    sw $t1, 0($t0)
    li $t0, 0x10010A5C
    li $t1, 0x000A00
    sw $t1, 0($t0)
    li $t0, 0x10010A60
    li $t1, 0x000B00
    sw $t1, 0($t0)
    li $t0, 0x10010A64
    li $t1, 0x000A00
    sw $t1, 0($t0)
    li $t0, 0x10010A68
    li $t1, 0x000E00
    sw $t1, 0($t0)
    li $t0, 0x10010A6C
    li $t1, 0x000F00
    sw $t1, 0($t0)
    li $t0, 0x10010A70
    li $t1, 0xBCBABB
    sw $t1, 0($t0)
    li $t0, 0x10010A74
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010A78
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010A7C
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010A80
    li $t1, 0xBABABA
    li $t2, 2
D460:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D460
    li $t0, 0x10010A88
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010A8C # parede com janelas e colunas — linha 10, col 35
    li $t1, 0xC0C0C0
    sw $t1, 0($t0)
    li $t0, 0x10010A90
    li $t1, 0x707070
    sw $t1, 0($t0)
    li $t0, 0x10010A94
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010A98
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010A9C
    li $t1, 0xC6C6C6
    sw $t1, 0($t0)
    li $t0, 0x10010AA0
    li $t1, 0x71706E
    sw $t1, 0($t0)
    li $t0, 0x10010AA4
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10010AA8
    li $t1, 0x010000
    sw $t1, 0($t0)
    li $t0, 0x10010AAC
    li $t1, 0xFF708C
    sw $t1, 0($t0)
    li $t0, 0x10010AB0
    li $t1, 0xD62302
    sw $t1, 0($t0)
    li $t0, 0x10010AB4
    li $t1, 0x500000
    sw $t1, 0($t0)
    li $t0, 0x10010AB8
    li $t1, 0xBDBDBD
    sw $t1, 0($t0)
    li $t0, 0x10010ABC
    li $t1, 0xC6C6C6
    sw $t1, 0($t0)
    li $t0, 0x10010AC0
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010AC4
    li $t1, 0xBBB9BC
    sw $t1, 0($t0)
    li $t0, 0x10010AC8
    li $t1, 0x647F60
    sw $t1, 0($t0)
    li $t0, 0x10010ACC
    li $t1, 0x627E65
    sw $t1, 0($t0)
    li $t0, 0x10010AD0
    li $t1, 0x000E00
    sw $t1, 0($t0)
    li $t0, 0x10010AD4
    li $t1, 0x000400
    sw $t1, 0($t0)
    li $t0, 0x10010AD8
    li $t1, 0x000B00
    sw $t1, 0($t0)
    li $t0, 0x10010ADC
    li $t1, 0x000A00
    sw $t1, 0($t0)
    li $t0, 0x10010AE0
    li $t1, 0xADCAAC
    sw $t1, 0($t0)
    li $t0, 0x10010AE4
    li $t1, 0xBABABA
    li $t2, 5
D484:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D484
    li $t0, 0x10010AF8
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010AFC
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10010B00
    li $t1, 0xB9B9B9
    li $t2, 2
D487:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D487
    li $t0, 0x10010B08
    li $t1, 0xBABABA
    li $t2, 4
D488:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D488
    li $t0, 0x10010B18
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10010B1C
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10010B20
    li $t1, 0x686868
    sw $t1, 0($t0)
    li $t0, 0x10010B24
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x10010B28
    li $t1, 0xB0B0B0
    sw $t1, 0($t0)
    li $t0, 0x10010B2C
    li $t1, 0xC3C3C3
    sw $t1, 0($t0)
    li $t0, 0x10010B30
    li $t1, 0x000000
    li $t2, 2
D495:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D495
    li $t0, 0x10010B38
    li $t1, 0xDC2402
    sw $t1, 0($t0)
    li $t0, 0x10010B3C
    li $t1, 0xD42700
    sw $t1, 0($t0)
    li $t0, 0x10010B40
    li $t1, 0xDA1D00
    sw $t1, 0($t0)
    li $t0, 0x10010B44
    li $t1, 0x7A7A7A
    sw $t1, 0($t0)
    li $t0, 0x10010B48
    li $t1, 0xB9B9B9
    li $t2, 3
D500:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D500
    li $t0, 0x10010B54
    li $t1, 0x287E23
    sw $t1, 0($t0)
    li $t0, 0x10010B58
    li $t1, 0x251882
    sw $t1, 0($t0)
    li $t0, 0x10010B5C
    li $t1, 0x24187C
    sw $t1, 0($t0)
    li $t0, 0x10010B60
    li $t1, 0x168830
    sw $t1, 0($t0)
    li $t0, 0x10010B64
    li $t1, 0x1C8C1E
    sw $t1, 0($t0)
    li $t0, 0x10010B68
    li $t1, 0x221780
    sw $t1, 0($t0)
    li $t0, 0x10010B6C
    li $t1, 0x231A83
    sw $t1, 0($t0)
    li $t0, 0x10010B70
    li $t1, 0xC4C6C1
    sw $t1, 0($t0)
    li $t0, 0x10010B74
    li $t1, 0xBABABA
    li $t2, 4
D509:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D509
    li $t0, 0x10010B84
    li $t1, 0xB9B9B9
    li $t2, 2
D510:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D510
    li $t0, 0x10010B8C
    li $t1, 0xC2C2C2
    sw $t1, 0($t0)
    li $t0, 0x10010B90
    li $t1, 0x737373
    sw $t1, 0($t0)
    li $t0, 0x10010B94
    li $t1, 0x707070
    sw $t1, 0($t0)
    li $t0, 0x10010B98
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010B9C
    li $t1, 0xC1C1C1
    sw $t1, 0($t0)
    li $t0, 0x10010BA0
    li $t1, 0x727272
    sw $t1, 0($t0)
    li $t0, 0x10010BA4
    li $t1, 0x010100
    sw $t1, 0($t0)
    li $t0, 0x10010BA8
    li $t1, 0x040001
    sw $t1, 0($t0)
    li $t0, 0x10010BAC
    li $t1, 0xFF718E
    sw $t1, 0($t0)
    li $t0, 0x10010BB0
    li $t1, 0xD72302
    sw $t1, 0($t0)
    li $t0, 0x10010BB4
    li $t1, 0xDA2506
    sw $t1, 0($t0)
    li $t0, 0x10010BB8
    li $t1, 0x121011
    sw $t1, 0($t0)
    li $t0, 0x10010BBC
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x10010BC0
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010BC4
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10010BC8
    li $t1, 0x0B7C0A
    sw $t1, 0($t0)
    li $t0, 0x10010BCC
    li $t1, 0x251884
    sw $t1, 0($t0)
    li $t0, 0x10010BD0
    li $t1, 0x241982
    sw $t1, 0($t0)
    li $t0, 0x10010BD4
    li $t1, 0x156212
    sw $t1, 0($t0)
    li $t0, 0x10010BD8
    li $t1, 0x231A77
    sw $t1, 0($t0)
    li $t0, 0x10010BDC
    li $t1, 0x24187E
    sw $t1, 0($t0)
    li $t0, 0x10010BE0
    li $t1, 0x10146B
    sw $t1, 0($t0)
    li $t0, 0x10010BE4
    li $t1, 0xBABABA
    li $t2, 5
D533:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D533
    li $t0, 0x10010BF8
    li $t1, 0xB9B9B9
    li $t2, 3
D534:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D534
    li $t0, 0x10010C04
    li $t1, 0xBABABA
    li $t2, 2
D535:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D535
    li $t0, 0x10010C0C
    li $t1, 0xB9B9B9
    li $t2, 2
D536:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D536
    li $t0, 0x10010C14
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010C18
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010C1C # parede com janelas e colunas — linha 12, col 7
    li $t1, 0x020202
    sw $t1, 0($t0)
    li $t0, 0x10010C20
    li $t1, 0x656565
    sw $t1, 0($t0)
    li $t0, 0x10010C24
    li $t1, 0x636363
    sw $t1, 0($t0)
    li $t0, 0x10010C28
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10010C2C
    li $t1, 0xC1C1C1
    sw $t1, 0($t0)
    li $t0, 0x10010C30
    li $t1, 0x050505
    sw $t1, 0($t0)
    li $t0, 0x10010C34
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x10010C38
    li $t1, 0xDC2102
    sw $t1, 0($t0)
    li $t0, 0x10010C3C
    li $t1, 0xD62303
    sw $t1, 0($t0)
    li $t0, 0x10010C40
    li $t1, 0x2E0708
    sw $t1, 0($t0)
    li $t0, 0x10010C44
    li $t1, 0xB9B9B9
    li $t2, 4
D549:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D549
    li $t0, 0x10010C54
    li $t1, 0x267921
    sw $t1, 0($t0)
    li $t0, 0x10010C58
    li $t1, 0x25188C
    sw $t1, 0($t0)
    li $t0, 0x10010C5C
    li $t1, 0x241888
    sw $t1, 0($t0)
    li $t0, 0x10010C60
    li $t1, 0x148A29
    sw $t1, 0($t0)
    li $t0, 0x10010C64
    li $t1, 0x1D8B1A
    sw $t1, 0($t0)
    li $t0, 0x10010C68
    li $t1, 0x241888
    sw $t1, 0($t0)
    li $t0, 0x10010C6C
    li $t1, 0x201686
    sw $t1, 0($t0)
    li $t0, 0x10010C70
    li $t1, 0xC6C7C1
    sw $t1, 0($t0)
    li $t0, 0x10010C74
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010C78
    li $t1, 0xBABABA
    li $t2, 2
D559:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D559
    li $t0, 0x10010C80
    li $t1, 0xB8B8B8
    li $t2, 2
D560:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D560
    li $t0, 0x10010C88
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010C8C
    li $t1, 0xBCBCBC
    sw $t1, 0($t0)
    li $t0, 0x10010C90
    li $t1, 0x767676
    sw $t1, 0($t0)
    li $t0, 0x10010C94
    li $t1, 0x656565
    sw $t1, 0($t0)
    li $t0, 0x10010C98
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010C9C
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010CA0
    li $t1, 0x717171
    sw $t1, 0($t0)
    li $t0, 0x10010CA4
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10010CA8
    li $t1, 0x010000
    sw $t1, 0($t0)
    li $t0, 0x10010CAC
    li $t1, 0xFF6F8C
    sw $t1, 0($t0)
    li $t0, 0x10010CB0
    li $t1, 0xD72403
    sw $t1, 0($t0)
    li $t0, 0x10010CB4
    li $t1, 0xDA2506
    sw $t1, 0($t0)
    li $t0, 0x10010CB8
    li $t1, 0xBEBABB
    sw $t1, 0($t0)
    li $t0, 0x10010CBC
    li $t1, 0xB9B9B9
    li $t2, 2
D574:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D574
    li $t0, 0x10010CC4
    li $t1, 0xB9B7B8
    sw $t1, 0($t0)
    li $t0, 0x10010CC8
    li $t1, 0x0C7F0A
    sw $t1, 0($t0)
    li $t0, 0x10010CCC
    li $t1, 0x251786
    sw $t1, 0($t0)
    li $t0, 0x10010CD0
    li $t1, 0x261587
    sw $t1, 0($t0)
    li $t0, 0x10010CD4
    li $t1, 0x156210
    sw $t1, 0($t0)
    li $t0, 0x10010CD8
    li $t1, 0x241A7D
    sw $t1, 0($t0)
    li $t0, 0x10010CDC
    li $t1, 0x241886
    sw $t1, 0($t0)
    li $t0, 0x10010CE0
    li $t1, 0x0F1470
    sw $t1, 0($t0)
    li $t0, 0x10010CE4
    li $t1, 0xBABABA
    li $t2, 4
D583:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D583
    li $t0, 0x10010CF4
    li $t1, 0xB9B9B9
    li $t2, 4
D584:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D584
    li $t0, 0x10010D04
    li $t1, 0xBABABA
    li $t2, 3
D585:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D585
    li $t0, 0x10010D10
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010D14
    li $t1, 0xBABABA
    li $t2, 2
D587:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D587
    li $t0, 0x10010D1C
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x10010D20
    li $t1, 0xBCBCBC
    sw $t1, 0($t0)
    li $t0, 0x10010D24
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10010D28
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010D2C
    li $t1, 0x6E6E6E
    sw $t1, 0($t0)
    li $t0, 0x10010D30
    li $t1, 0x010101
    li $t2, 2
D593:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D593
    li $t0, 0x10010D38
    li $t1, 0x020401
    sw $t1, 0($t0)
    li $t0, 0x10010D3C
    li $t1, 0xD72500
    sw $t1, 0($t0)
    li $t0, 0x10010D40
    li $t1, 0xBBC0BC
    sw $t1, 0($t0)
    li $t0, 0x10010D44
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010D48
    li $t1, 0xB9B9B9
    li $t2, 3
D598:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D598
    li $t0, 0x10010D54
    li $t1, 0x1B7D18
    sw $t1, 0($t0)
    li $t0, 0x10010D58
    li $t1, 0x000900
    sw $t1, 0($t0)
    li $t0, 0x10010D5C
    li $t1, 0x000A00
    sw $t1, 0($t0)
    li $t0, 0x10010D60
    li $t1, 0x001000
    sw $t1, 0($t0)
    li $t0, 0x10010D64
    li $t1, 0x000600
    sw $t1, 0($t0)
    li $t0, 0x10010D68
    li $t1, 0x000700
    sw $t1, 0($t0)
    li $t0, 0x10010D6C
    li $t1, 0x003900
    sw $t1, 0($t0)
    li $t0, 0x10010D70
    li $t1, 0xC7C2C8
    sw $t1, 0($t0)
    li $t0, 0x10010D74
    li $t1, 0xBABABA
    li $t2, 5
D607:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D607
    li $t0, 0x10010D88
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010D8C
    li $t1, 0xBEBEBE
    sw $t1, 0($t0)
    li $t0, 0x10010D90
    li $t1, 0x6F6F6F
    sw $t1, 0($t0)
    li $t0, 0x10010D94
    li $t1, 0x626262
    sw $t1, 0($t0)
    li $t0, 0x10010D98
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010D9C
    li $t1, 0xBFBFBF
    sw $t1, 0($t0)
    li $t0, 0x10010DA0
    li $t1, 0x727272
    sw $t1, 0($t0)
    li $t0, 0x10010DA4
    li $t1, 0x040402
    sw $t1, 0($t0)
    li $t0, 0x10010DA8 # parede com janelas e colunas — linha 13, col 42
    li $t1, 0x020001
    sw $t1, 0($t0)
    li $t0, 0x10010DAC
    li $t1, 0xFF6F8D
    sw $t1, 0($t0)
    li $t0, 0x10010DB0
    li $t1, 0xD72403
    sw $t1, 0($t0)
    li $t0, 0x10010DB4
    li $t1, 0xD82505
    sw $t1, 0($t0)
    li $t0, 0x10010DB8
    li $t1, 0xBDB9B8
    sw $t1, 0($t0)
    li $t0, 0x10010DBC
    li $t1, 0xB9B9B9
    li $t2, 2
D621:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D621
    li $t0, 0x10010DC4
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10010DC8
    li $t1, 0x000500
    sw $t1, 0($t0)
    li $t0, 0x10010DCC
    li $t1, 0x000900
    sw $t1, 0($t0)
    li $t0, 0x10010DD0
    li $t1, 0x001600
    sw $t1, 0($t0)
    li $t0, 0x10010DD4
    li $t1, 0x0E5B13
    sw $t1, 0($t0)
    li $t0, 0x10010DD8
    li $t1, 0x000C00
    sw $t1, 0($t0)
    li $t0, 0x10010DDC
    li $t1, 0x000900
    sw $t1, 0($t0)
    li $t0, 0x10010DE0
    li $t1, 0x003800
    sw $t1, 0($t0)
    li $t0, 0x10010DE4
    li $t1, 0xBABABA
    li $t2, 3
D630:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D630
    li $t0, 0x10010DF0
    li $t1, 0xB9B9B9
    li $t2, 3
D631:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D631
    li $t0, 0x10010DFC
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10010E00
    li $t1, 0xB9B9B9
    li $t2, 2
D633:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D633
    li $t0, 0x10010E08
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010E0C
    li $t1, 0xB9B9B9
    li $t2, 3
D635:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D635
    li $t0, 0x10010E18
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010E1C
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10010E20
    li $t1, 0x696969
    sw $t1, 0($t0)
    li $t0, 0x10010E24
    li $t1, 0xBCBCBC
    sw $t1, 0($t0)
    li $t0, 0x10010E28
    li $t1, 0xB7B7B7
    sw $t1, 0($t0)
    li $t0, 0x10010E2C
    li $t1, 0x717171
    sw $t1, 0($t0)
    li $t0, 0x10010E30
    li $t1, 0x030303
    sw $t1, 0($t0)
    li $t0, 0x10010E34
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x10010E38
    li $t1, 0x190D0F
    sw $t1, 0($t0)
    li $t0, 0x10010E3C
    li $t1, 0xC5C4CA
    sw $t1, 0($t0)
    li $t0, 0x10010E40
    li $t1, 0x0F0F0F
    sw $t1, 0($t0)
    li $t0, 0x10010E44
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x10010E48
    li $t1, 0xB9B9B9
    li $t2, 3
D648:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D648
    li $t0, 0x10010E54
    li $t1, 0x278022
    sw $t1, 0($t0)
    li $t0, 0x10010E58
    li $t1, 0x271B8B
    sw $t1, 0($t0)
    li $t0, 0x10010E5C
    li $t1, 0x271A86
    sw $t1, 0($t0)
    li $t0, 0x10010E60
    li $t1, 0x118726
    sw $t1, 0($t0)
    li $t0, 0x10010E64
    li $t1, 0x1A8B17
    sw $t1, 0($t0)
    li $t0, 0x10010E68
    li $t1, 0x22188B
    sw $t1, 0($t0)
    li $t0, 0x10010E6C
    li $t1, 0x201887
    sw $t1, 0($t0)
    li $t0, 0x10010E70
    li $t1, 0xC4C4C4
    sw $t1, 0($t0)
    li $t0, 0x10010E74
    li $t1, 0xBABABA
    li $t2, 5
D657:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D657
    li $t0, 0x10010E88
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010E8C
    li $t1, 0xBFBFBF
    sw $t1, 0($t0)
    li $t0, 0x10010E90
    li $t1, 0x707070
    sw $t1, 0($t0)
    li $t0, 0x10010E94
    li $t1, 0xBDBDBD
    sw $t1, 0($t0)
    li $t0, 0x10010E98
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010E9C
    li $t1, 0xC4C4C4
    sw $t1, 0($t0)
    li $t0, 0x10010EA0
    li $t1, 0x6E6E6E
    sw $t1, 0($t0)
    li $t0, 0x10010EA4
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10010EA8
    li $t1, 0x010000
    sw $t1, 0($t0)
    li $t0, 0x10010EAC
    li $t1, 0xFF6E8A
    sw $t1, 0($t0)
    li $t0, 0x10010EB0
    li $t1, 0xD72300
    sw $t1, 0($t0)
    li $t0, 0x10010EB4
    li $t1, 0xD82705
    sw $t1, 0($t0)
    li $t0, 0x10010EB8
    li $t1, 0xBABABC
    sw $t1, 0($t0)
    li $t0, 0x10010EBC
    li $t1, 0xBABABA
    li $t2, 2
D671:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D671
    li $t0, 0x10010EC4
    li $t1, 0xBBB9BA
    sw $t1, 0($t0)
    li $t0, 0x10010EC8
    li $t1, 0x107E0B
    sw $t1, 0($t0)
    li $t0, 0x10010ECC
    li $t1, 0x251788
    sw $t1, 0($t0)
    li $t0, 0x10010ED0
    li $t1, 0x231783
    sw $t1, 0($t0)
    li $t0, 0x10010ED4
    li $t1, 0x166516
    sw $t1, 0($t0)
    li $t0, 0x10010ED8
    li $t1, 0x241982
    sw $t1, 0($t0)
    li $t0, 0x10010EDC
    li $t1, 0x251786
    sw $t1, 0($t0)
    li $t0, 0x10010EE0
    li $t1, 0x151074
    sw $t1, 0($t0)
    li $t0, 0x10010EE4
    li $t1, 0xBABABA
    li $t2, 2
D680:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D680
    li $t0, 0x10010EEC
    li $t1, 0xB9B9B9
    li $t2, 4
D681:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D681
    li $t0, 0x10010EFC
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10010F00
    li $t1, 0xB9B9B9
    li $t2, 2
D683:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D683
    li $t0, 0x10010F08
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010F0C
    li $t1, 0xB9B9B9
    li $t2, 3
D685:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D685
    li $t0, 0x10010F18
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010F1C
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x10010F20
    li $t1, 0x696969
    sw $t1, 0($t0)
    li $t0, 0x10010F24
    li $t1, 0xC0C0C0
    sw $t1, 0($t0)
    li $t0, 0x10010F28
    li $t1, 0xB5B5B5
    sw $t1, 0($t0)
    li $t0, 0x10010F2C
    li $t1, 0xBEBCBD
    sw $t1, 0($t0)
    li $t0, 0x10010F30
    li $t1, 0x010000
    sw $t1, 0($t0)
    li $t0, 0x10010F34 # parede com janelas e colunas — linha 15, col 13
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10010F38
    li $t1, 0xF187B7
    sw $t1, 0($t0)
    li $t0, 0x10010F3C
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x10010F40
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010F44
    li $t1, 0xB9B9B9
    li $t2, 4
D697:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D697
    li $t0, 0x10010F54
    li $t1, 0x268328
    sw $t1, 0($t0)
    li $t0, 0x10010F58
    li $t1, 0x211787
    li $t2, 2
D699:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D699
    li $t0, 0x10010F60
    li $t1, 0x16842B
    sw $t1, 0($t0)
    li $t0, 0x10010F64
    li $t1, 0x199221
    sw $t1, 0($t0)
    li $t0, 0x10010F68
    li $t1, 0x241888
    sw $t1, 0($t0)
    li $t0, 0x10010F6C
    li $t1, 0x211883
    sw $t1, 0($t0)
    li $t0, 0x10010F70
    li $t1, 0xC6C5C3
    sw $t1, 0($t0)
    li $t0, 0x10010F74
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010F78
    li $t1, 0xBABABA
    li $t2, 4
D706:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D706
    li $t0, 0x10010F88
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10010F8C
    li $t1, 0xBDBDBD
    sw $t1, 0($t0)
    li $t0, 0x10010F90
    li $t1, 0x737373
    sw $t1, 0($t0)
    li $t0, 0x10010F94
    li $t1, 0x656565
    sw $t1, 0($t0)
    li $t0, 0x10010F98
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010F9C
    li $t1, 0xC1C1C1
    sw $t1, 0($t0)
    li $t0, 0x10010FA0
    li $t1, 0x747474
    sw $t1, 0($t0)
    li $t0, 0x10010FA4
    li $t1, 0x020200
    sw $t1, 0($t0)
    li $t0, 0x10010FA8
    li $t1, 0x010000
    sw $t1, 0($t0)
    li $t0, 0x10010FAC
    li $t1, 0xFF6F93
    sw $t1, 0($t0)
    li $t0, 0x10010FB0
    li $t1, 0xD62104
    sw $t1, 0($t0)
    li $t0, 0x10010FB4
    li $t1, 0xFF5B8B
    sw $t1, 0($t0)
    li $t0, 0x10010FB8
    li $t1, 0xB6B6B6
    sw $t1, 0($t0)
    li $t0, 0x10010FBC
    li $t1, 0xBABABA
    li $t2, 3
D720:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D720
    li $t0, 0x10010FC8
    li $t1, 0x087F07
    sw $t1, 0($t0)
    li $t0, 0x10010FCC
    li $t1, 0x231785
    sw $t1, 0($t0)
    li $t0, 0x10010FD0
    li $t1, 0x241886
    sw $t1, 0($t0)
    li $t0, 0x10010FD4
    li $t1, 0x136418
    sw $t1, 0($t0)
    li $t0, 0x10010FD8
    li $t1, 0x261975
    sw $t1, 0($t0)
    li $t0, 0x10010FDC
    li $t1, 0x231787
    sw $t1, 0($t0)
    li $t0, 0x10010FE0
    li $t1, 0x0F1175
    sw $t1, 0($t0)
    li $t0, 0x10010FE4
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10010FE8
    li $t1, 0xB9B9B9
    li $t2, 5
D729:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D729
    li $t0, 0x10010FFC
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10011000 # Início da região: janelas verdes e detalhes das colunas (linha 16, col 0, 2 pixels)
    li $t1, 0xB9B9B9
    li $t2, 2
D731:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D731
    li $t0, 0x10011008
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x1001100C
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011010
    li $t1, 0xBABABA
    li $t2, 3
D734:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D734
    li $t0, 0x1001101C
    li $t1, 0x6D6D6D
    sw $t1, 0($t0)
    li $t0, 0x10011020
    li $t1, 0xB6B6B6
    sw $t1, 0($t0)
    li $t0, 0x10011024
    li $t1, 0xBDBDBD
    sw $t1, 0($t0)
    li $t0, 0x10011028
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x1001102C
    li $t1, 0x6B696A
    sw $t1, 0($t0)
    li $t0, 0x10011030
    li $t1, 0x7D7B7C
    sw $t1, 0($t0)
    li $t0, 0x10011034
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10011038
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x1001103C
    li $t1, 0xB9B9B9
    li $t2, 2
D743:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D743
    li $t0, 0x10011044
    li $t1, 0xBABABA
    li $t2, 3
D744:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D744
    li $t0, 0x10011050
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011054
    li $t1, 0x1E7D21
    sw $t1, 0($t0)
    li $t0, 0x10011058
    li $t1, 0x277829
    sw $t1, 0($t0)
    li $t0, 0x1001105C
    li $t1, 0x2D7E2F
    sw $t1, 0($t0)
    li $t0, 0x10011060
    li $t1, 0x0B910C
    sw $t1, 0($t0)
    li $t0, 0x10011064
    li $t1, 0x002700
    sw $t1, 0($t0)
    li $t0, 0x10011068
    li $t1, 0x2B722C
    sw $t1, 0($t0)
    li $t0, 0x1001106C
    li $t1, 0x258625
    sw $t1, 0($t0)
    li $t0, 0x10011070
    li $t1, 0xC4C3C1
    sw $t1, 0($t0)
    li $t0, 0x10011074
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011078
    li $t1, 0xBABABA
    li $t2, 4
D755:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D755
    li $t0, 0x10011088
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001108C
    li $t1, 0xC1C1C1
    sw $t1, 0($t0)
    li $t0, 0x10011090
    li $t1, 0x626262
    sw $t1, 0($t0)
    li $t0, 0x10011094
    li $t1, 0x6B6B6B
    sw $t1, 0($t0)
    li $t0, 0x10011098
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x1001109C
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x100110A0
    li $t1, 0x6F6F6F
    sw $t1, 0($t0)
    li $t0, 0x100110A4
    li $t1, 0x7C7C7C
    sw $t1, 0($t0)
    li $t0, 0x100110A8
    li $t1, 0x050000
    sw $t1, 0($t0)
    li $t0, 0x100110AC
    li $t1, 0xFF7197
    sw $t1, 0($t0)
    li $t0, 0x100110B0
    li $t1, 0xBC1526
    sw $t1, 0($t0)
    li $t0, 0x100110B4
    li $t1, 0xD52704
    sw $t1, 0($t0)
    li $t0, 0x100110B8
    li $t1, 0xBABABA
    li $t2, 3
D768:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D768
    li $t0, 0x100110C4
    li $t1, 0xBBB9BA
    sw $t1, 0($t0)
    li $t0, 0x100110C8 # janelas verdes e detalhes das colunas — linha 16, col 50
    li $t1, 0x002400
    sw $t1, 0($t0)
    li $t0, 0x100110CC
    li $t1, 0x2D8B2D
    sw $t1, 0($t0)
    li $t0, 0x100110D0
    li $t1, 0x25842A
    sw $t1, 0($t0)
    li $t0, 0x100110D4
    li $t1, 0x176A12
    sw $t1, 0($t0)
    li $t0, 0x100110D8
    li $t1, 0x2D852E
    sw $t1, 0($t0)
    li $t0, 0x100110DC
    li $t1, 0x2D882B
    sw $t1, 0($t0)
    li $t0, 0x100110E0
    li $t1, 0x267826
    sw $t1, 0($t0)
    li $t0, 0x100110E4
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x100110E8
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x100110EC
    li $t1, 0xC6C6C6
    sw $t1, 0($t0)
    li $t0, 0x100110F0
    li $t1, 0xB9B9B9
    li $t2, 5
D780:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D780
    li $t0, 0x10011104
    li $t1, 0xBABABA
    li $t2, 2
D781:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D781
    li $t0, 0x1001110C
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011110
    li $t1, 0xBABABA
    li $t2, 2
D783:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D783
    li $t0, 0x10011118
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x1001111C
    li $t1, 0x747474
    sw $t1, 0($t0)
    li $t0, 0x10011120
    li $t1, 0xC0C0C0
    sw $t1, 0($t0)
    li $t0, 0x10011124
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011128
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x1001112C
    li $t1, 0x737172
    sw $t1, 0($t0)
    li $t0, 0x10011130
    li $t1, 0x808080
    sw $t1, 0($t0)
    li $t0, 0x10011134
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x10011138
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x1001113C
    li $t1, 0xB9B9B9
    li $t2, 2
D793:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D793
    li $t0, 0x10011144
    li $t1, 0xBABABA
    li $t2, 3
D794:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D794
    li $t0, 0x10011150
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011154
    li $t1, 0x247D21
    sw $t1, 0($t0)
    li $t0, 0x10011158
    li $t1, 0x221986
    sw $t1, 0($t0)
    li $t0, 0x1001115C
    li $t1, 0x241789
    sw $t1, 0($t0)
    li $t0, 0x10011160
    li $t1, 0x158926
    sw $t1, 0($t0)
    li $t0, 0x10011164
    li $t1, 0x1C8C1C
    sw $t1, 0($t0)
    li $t0, 0x10011168
    li $t1, 0x24178B
    sw $t1, 0($t0)
    li $t0, 0x1001116C
    li $t1, 0x201782
    sw $t1, 0($t0)
    li $t0, 0x10011170
    li $t1, 0xC3C5C2
    sw $t1, 0($t0)
    li $t0, 0x10011174
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011178
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x1001117C
    li $t1, 0xB9B9B9
    li $t2, 4
D806:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D806
    li $t0, 0x1001118C
    li $t1, 0xC1C1C1
    sw $t1, 0($t0)
    li $t0, 0x10011190
    li $t1, 0x707070
    sw $t1, 0($t0)
    li $t0, 0x10011194
    li $t1, 0xBEBEBE
    sw $t1, 0($t0)
    li $t0, 0x10011198
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x1001119C
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x100111A0
    li $t1, 0x727272
    sw $t1, 0($t0)
    li $t0, 0x100111A4
    li $t1, 0x828282
    sw $t1, 0($t0)
    li $t0, 0x100111A8
    li $t1, 0x020001
    sw $t1, 0($t0)
    li $t0, 0x100111AC
    li $t1, 0xFF7094
    sw $t1, 0($t0)
    li $t0, 0x100111B0
    li $t1, 0xCE1A0B
    sw $t1, 0($t0)
    li $t0, 0x100111B4
    li $t1, 0x040400
    sw $t1, 0($t0)
    li $t0, 0x100111B8
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x100111BC
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x100111C0
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x100111C4
    li $t1, 0xB7B7B7
    sw $t1, 0($t0)
    li $t0, 0x100111C8
    li $t1, 0x0F7D0C
    sw $t1, 0($t0)
    li $t0, 0x100111CC
    li $t1, 0x241888
    sw $t1, 0($t0)
    li $t0, 0x100111D0
    li $t1, 0x261887
    sw $t1, 0($t0)
    li $t0, 0x100111D4
    li $t1, 0x166311
    sw $t1, 0($t0)
    li $t0, 0x100111D8
    li $t1, 0x241780
    sw $t1, 0($t0)
    li $t0, 0x100111DC
    li $t1, 0x24178B
    sw $t1, 0($t0)
    li $t0, 0x100111E0
    li $t1, 0x111171
    sw $t1, 0($t0)
    li $t0, 0x100111E4
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x100111E8
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x100111EC
    li $t1, 0x6B6B6B
    sw $t1, 0($t0)
    li $t0, 0x100111F0
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x100111F4
    li $t1, 0x1A1A1A
    sw $t1, 0($t0)
    li $t0, 0x100111F8
    li $t1, 0xB9B9B9
    li $t2, 3
D834:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D834
    li $t0, 0x10011204
    li $t1, 0xBABABA
    li $t2, 5
D835:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D835
    li $t0, 0x10011218
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x1001121C
    li $t1, 0x757575
    sw $t1, 0($t0)
    li $t0, 0x10011220
    li $t1, 0x6C6C6C
    sw $t1, 0($t0)
    li $t0, 0x10011224
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011228
    li $t1, 0xC3C3C3
    sw $t1, 0($t0)
    li $t0, 0x1001122C
    li $t1, 0x4D4D4D
    sw $t1, 0($t0)
    li $t0, 0x10011230
    li $t1, 0x858585
    sw $t1, 0($t0)
    li $t0, 0x10011234
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10011238
    li $t1, 0xBABABA
    li $t2, 6
D844:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D844
    li $t0, 0x10011250
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011254
    li $t1, 0x098709
    sw $t1, 0($t0)
    li $t0, 0x10011258 # janelas verdes e detalhes das colunas — linha 18, col 22
    li $t1, 0x070D5B
    sw $t1, 0($t0)
    li $t0, 0x1001125C
    li $t1, 0x020F55
    sw $t1, 0($t0)
    li $t0, 0x10011260
    li $t1, 0x138224
    sw $t1, 0($t0)
    li $t0, 0x10011264
    li $t1, 0x178B26
    sw $t1, 0($t0)
    li $t0, 0x10011268
    li $t1, 0x030F57
    sw $t1, 0($t0)
    li $t0, 0x1001126C
    li $t1, 0x020A5B
    sw $t1, 0($t0)
    li $t0, 0x10011270
    li $t1, 0xC6C1C5
    sw $t1, 0($t0)
    li $t0, 0x10011274
    li $t1, 0xB9B9B9
    li $t2, 2
D854:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D854
    li $t0, 0x1001127C
    li $t1, 0xBABABA
    li $t2, 3
D855:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D855
    li $t0, 0x10011288
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001128C
    li $t1, 0xBEBEBE
    sw $t1, 0($t0)
    li $t0, 0x10011290
    li $t1, 0x717171
    sw $t1, 0($t0)
    li $t0, 0x10011294
    li $t1, 0x676767
    sw $t1, 0($t0)
    li $t0, 0x10011298
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x1001129C
    li $t1, 0xC0C0C0
    sw $t1, 0($t0)
    li $t0, 0x100112A0
    li $t1, 0x717171
    sw $t1, 0($t0)
    li $t0, 0x100112A4
    li $t1, 0x7E7E7E
    sw $t1, 0($t0)
    li $t0, 0x100112A8
    li $t1, 0x030000
    sw $t1, 0($t0)
    li $t0, 0x100112AC
    li $t1, 0xFF6793
    sw $t1, 0($t0)
    li $t0, 0x100112B0
    li $t1, 0xD32618
    sw $t1, 0($t0)
    li $t0, 0x100112B4
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x100112B8
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x100112BC
    li $t1, 0xBABABA
    li $t2, 2
D869:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D869
    li $t0, 0x100112C4
    li $t1, 0xB9B7B8
    sw $t1, 0($t0)
    li $t0, 0x100112C8
    li $t1, 0x077F13
    sw $t1, 0($t0)
    li $t0, 0x100112CC
    li $t1, 0x050D60
    sw $t1, 0($t0)
    li $t0, 0x100112D0
    li $t1, 0x05105F
    sw $t1, 0($t0)
    li $t0, 0x100112D4
    li $t1, 0x14661A
    sw $t1, 0($t0)
    li $t0, 0x100112D8
    li $t1, 0x080F60
    sw $t1, 0($t0)
    li $t0, 0x100112DC
    li $t1, 0x030E5E
    sw $t1, 0($t0)
    li $t0, 0x100112E0
    li $t1, 0x001645
    sw $t1, 0($t0)
    li $t0, 0x100112E4
    li $t1, 0xBABABA
    li $t2, 2
D878:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D878
    li $t0, 0x100112EC
    li $t1, 0xC1C1C1
    sw $t1, 0($t0)
    li $t0, 0x100112F0
    li $t1, 0x626262
    sw $t1, 0($t0)
    li $t0, 0x100112F4
    li $t1, 0x030303
    sw $t1, 0($t0)
    li $t0, 0x100112F8
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x100112FC
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10011300
    li $t1, 0xB9B9B9
    li $t2, 2
D884:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D884
    li $t0, 0x10011308
    li $t1, 0xBABABA
    li $t2, 4
D885:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D885
    li $t0, 0x10011318
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x1001131C
    li $t1, 0x6F6F6F
    sw $t1, 0($t0)
    li $t0, 0x10011320
    li $t1, 0x707070
    sw $t1, 0($t0)
    li $t0, 0x10011324
    li $t1, 0x5D5D5D
    sw $t1, 0($t0)
    li $t0, 0x10011328
    li $t1, 0xB1B1B1
    sw $t1, 0($t0)
    li $t0, 0x1001132C
    li $t1, 0x5C5C5C
    sw $t1, 0($t0)
    li $t0, 0x10011330
    li $t1, 0x808080
    sw $t1, 0($t0)
    li $t0, 0x10011334
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x10011338
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x1001133C
    li $t1, 0xBABABA
    li $t2, 2
D895:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D895
    li $t0, 0x10011344
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011348
    li $t1, 0xB8B8B8
    li $t2, 2
D897:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D897
    li $t0, 0x10011350
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011354
    li $t1, 0x288123
    sw $t1, 0($t0)
    li $t0, 0x10011358
    li $t1, 0x010013
    sw $t1, 0($t0)
    li $t0, 0x1001135C
    li $t1, 0x000211
    sw $t1, 0($t0)
    li $t0, 0x10011360
    li $t1, 0x138A16
    sw $t1, 0($t0)
    li $t0, 0x10011364
    li $t1, 0x1A8B23
    sw $t1, 0($t0)
    li $t0, 0x10011368
    li $t1, 0x201B53
    sw $t1, 0($t0)
    li $t0, 0x1001136C
    li $t1, 0x0B062E
    sw $t1, 0($t0)
    li $t0, 0x10011370
    li $t1, 0xC3C3C1
    sw $t1, 0($t0)
    li $t0, 0x10011374
    li $t1, 0xB9B9B9
    li $t2, 2
D907:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D907
    li $t0, 0x1001137C
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011380
    li $t1, 0xB9B9B9
    li $t2, 3
D909:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D909
    li $t0, 0x1001138C
    li $t1, 0xBDBDBD
    sw $t1, 0($t0)
    li $t0, 0x10011390
    li $t1, 0x595959
    sw $t1, 0($t0)
    li $t0, 0x10011394
    li $t1, 0x676767
    sw $t1, 0($t0)
    li $t0, 0x10011398
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x1001139C
    li $t1, 0xBFBFBF
    sw $t1, 0($t0)
    li $t0, 0x100113A0
    li $t1, 0x737373
    sw $t1, 0($t0)
    li $t0, 0x100113A4
    li $t1, 0x848484
    sw $t1, 0($t0)
    li $t0, 0x100113A8
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x100113AC
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x100113B0
    li $t1, 0x1D0304
    sw $t1, 0($t0)
    li $t0, 0x100113B4
    li $t1, 0xC1C1C1
    sw $t1, 0($t0)
    li $t0, 0x100113B8
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x100113BC
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x100113C0
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x100113C4 # janelas verdes e detalhes das colunas — linha 19, col 49
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x100113C8
    li $t1, 0x13820C
    sw $t1, 0($t0)
    li $t0, 0x100113CC
    li $t1, 0x160F3B
    sw $t1, 0($t0)
    li $t0, 0x100113D0
    li $t1, 0x000017
    sw $t1, 0($t0)
    li $t0, 0x100113D4
    li $t1, 0x186513
    sw $t1, 0($t0)
    li $t0, 0x100113D8
    li $t1, 0x02020A
    sw $t1, 0($t0)
    li $t0, 0x100113DC
    li $t1, 0x201A58
    sw $t1, 0($t0)
    li $t0, 0x100113E0
    li $t1, 0x00081E
    sw $t1, 0($t0)
    li $t0, 0x100113E4
    li $t1, 0xBDBDBD
    sw $t1, 0($t0)
    li $t0, 0x100113E8
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x100113EC
    li $t1, 0x7C7C7C
    sw $t1, 0($t0)
    li $t0, 0x100113F0
    li $t1, 0x070707
    sw $t1, 0($t0)
    li $t0, 0x100113F4
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x100113F8
    li $t1, 0x252525
    sw $t1, 0($t0)
    li $t0, 0x100113FC
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10011400
    li $t1, 0xBABABA
    li $t2, 3
D939:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D939
    li $t0, 0x1001140C
    li $t1, 0xB9B9B9
    li $t2, 4
D940:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D940
    li $t0, 0x1001141C
    li $t1, 0x616161
    sw $t1, 0($t0)
    li $t0, 0x10011420
    li $t1, 0xB6B6B6
    sw $t1, 0($t0)
    li $t0, 0x10011424
    li $t1, 0xBCBCBC
    sw $t1, 0($t0)
    li $t0, 0x10011428
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x1001142C
    li $t1, 0x6E6E6E
    sw $t1, 0($t0)
    li $t0, 0x10011430
    li $t1, 0x646464
    sw $t1, 0($t0)
    li $t0, 0x10011434
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10011438
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001143C
    li $t1, 0xBABABA
    li $t2, 2
D949:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D949
    li $t0, 0x10011444
    li $t1, 0xB9B9B9
    li $t2, 4
D950:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D950
    li $t0, 0x10011454
    li $t1, 0x207E20
    sw $t1, 0($t0)
    li $t0, 0x10011458
    li $t1, 0x26188A
    sw $t1, 0($t0)
    li $t0, 0x1001145C
    li $t1, 0x231A87
    sw $t1, 0($t0)
    li $t0, 0x10011460
    li $t1, 0x138722
    sw $t1, 0($t0)
    li $t0, 0x10011464
    li $t1, 0x1A871A
    sw $t1, 0($t0)
    li $t0, 0x10011468
    li $t1, 0x241888
    sw $t1, 0($t0)
    li $t0, 0x1001146C
    li $t1, 0x211883
    sw $t1, 0($t0)
    li $t0, 0x10011470
    li $t1, 0xC5C5C3
    sw $t1, 0($t0)
    li $t0, 0x10011474
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011478
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001147C
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011480
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011484
    li $t1, 0xBABABA
    li $t2, 2
D963:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D963
    li $t0, 0x1001148C
    li $t1, 0xBFBFBF
    sw $t1, 0($t0)
    li $t0, 0x10011490
    li $t1, 0x6C6C6C
    sw $t1, 0($t0)
    li $t0, 0x10011494
    li $t1, 0x676767
    sw $t1, 0($t0)
    li $t0, 0x10011498
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x1001149C
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x100114A0
    li $t1, 0x707070
    sw $t1, 0($t0)
    li $t0, 0x100114A4
    li $t1, 0x636363
    sw $t1, 0($t0)
    li $t0, 0x100114A8
    li $t1, 0x010000
    sw $t1, 0($t0)
    li $t0, 0x100114AC
    li $t1, 0x500B06
    sw $t1, 0($t0)
    li $t0, 0x100114B0
    li $t1, 0xC5C5C5
    sw $t1, 0($t0)
    li $t0, 0x100114B4
    li $t1, 0xB6B6B6
    sw $t1, 0($t0)
    li $t0, 0x100114B8
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x100114BC
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x100114C0
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x100114C4
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x100114C8
    li $t1, 0x0F820B
    sw $t1, 0($t0)
    li $t0, 0x100114CC
    li $t1, 0x241886
    sw $t1, 0($t0)
    li $t0, 0x100114D0
    li $t1, 0x251788
    sw $t1, 0($t0)
    li $t0, 0x100114D4
    li $t1, 0x156411
    sw $t1, 0($t0)
    li $t0, 0x100114D8
    li $t1, 0x25197D
    sw $t1, 0($t0)
    li $t0, 0x100114DC
    li $t1, 0x241888
    sw $t1, 0($t0)
    li $t0, 0x100114E0
    li $t1, 0x13146E
    sw $t1, 0($t0)
    li $t0, 0x100114E4
    li $t1, 0xBEBEBE
    sw $t1, 0($t0)
    li $t0, 0x100114E8
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x100114EC
    li $t1, 0x737373
    sw $t1, 0($t0)
    li $t0, 0x100114F0
    li $t1, 0x525252
    sw $t1, 0($t0)
    li $t0, 0x100114F4
    li $t1, 0x737373
    sw $t1, 0($t0)
    li $t0, 0x100114F8
    li $t1, 0x040404
    sw $t1, 0($t0)
    li $t0, 0x100114FC
    li $t1, 0x838383
    sw $t1, 0($t0)
    li $t0, 0x10011500
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011504
    li $t1, 0xBABABA
    li $t2, 5
D994:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D994
    li $t0, 0x10011518
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001151C
    li $t1, 0x3D3D3D
    sw $t1, 0($t0)
    li $t0, 0x10011520
    li $t1, 0x808080
    sw $t1, 0($t0)
    li $t0, 0x10011524
    li $t1, 0xBABABA
    li $t2, 2
D998:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D998
    li $t0, 0x1001152C
    li $t1, 0x707070
    sw $t1, 0($t0)
    li $t0, 0x10011530
    li $t1, 0x3B3B3B
    sw $t1, 0($t0)
    li $t0, 0x10011534 # janelas verdes e detalhes das colunas — linha 21, col 13
    li $t1, 0x030303
    sw $t1, 0($t0)
    li $t0, 0x10011538
    li $t1, 0xB9B9B9
    li $t2, 7
D1002:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1002
    li $t0, 0x10011554
    li $t1, 0x0C9509
    sw $t1, 0($t0)
    li $t0, 0x10011558
    li $t1, 0x058D05
    sw $t1, 0($t0)
    li $t0, 0x1001155C
    li $t1, 0x069005
    sw $t1, 0($t0)
    li $t0, 0x10011560
    li $t1, 0x069508
    sw $t1, 0($t0)
    li $t0, 0x10011564
    li $t1, 0x019503
    sw $t1, 0($t0)
    li $t0, 0x10011568
    li $t1, 0x048C06
    sw $t1, 0($t0)
    li $t0, 0x1001156C
    li $t1, 0x038E0D
    sw $t1, 0($t0)
    li $t0, 0x10011570
    li $t1, 0xC8C3C7
    sw $t1, 0($t0)
    li $t0, 0x10011574
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011578
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x1001157C
    li $t1, 0xB9B9B9
    li $t2, 2
D1013:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1013
    li $t0, 0x10011584
    li $t1, 0xBABABA
    li $t2, 2
D1014:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1014
    li $t0, 0x1001158C
    li $t1, 0xBDBDBD
    sw $t1, 0($t0)
    li $t0, 0x10011590
    li $t1, 0x6D6D6D
    sw $t1, 0($t0)
    li $t0, 0x10011594
    li $t1, 0xB9B9B9
    li $t2, 2
D1017:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1017
    li $t0, 0x1001159C
    li $t1, 0xBFBFBF
    sw $t1, 0($t0)
    li $t0, 0x100115A0
    li $t1, 0x6F6F6F
    sw $t1, 0($t0)
    li $t0, 0x100115A4
    li $t1, 0x434343
    sw $t1, 0($t0)
    li $t0, 0x100115A8
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x100115AC
    li $t1, 0x3C3C3C
    sw $t1, 0($t0)
    li $t0, 0x100115B0
    li $t1, 0xBABABA
    li $t2, 5
D1023:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1023
    li $t0, 0x100115C4
    li $t1, 0xBBB9BA
    sw $t1, 0($t0)
    li $t0, 0x100115C8
    li $t1, 0x098702
    sw $t1, 0($t0)
    li $t0, 0x100115CC
    li $t1, 0x039407
    sw $t1, 0($t0)
    li $t0, 0x100115D0
    li $t1, 0x038D04
    sw $t1, 0($t0)
    li $t0, 0x100115D4
    li $t1, 0x126314
    sw $t1, 0($t0)
    li $t0, 0x100115D8
    li $t1, 0x039705
    sw $t1, 0($t0)
    li $t0, 0x100115DC
    li $t1, 0x038C0A
    sw $t1, 0($t0)
    li $t0, 0x100115E0
    li $t1, 0x0B930D
    sw $t1, 0($t0)
    li $t0, 0x100115E4
    li $t1, 0xA4A4A4
    sw $t1, 0($t0)
    li $t0, 0x100115E8
    li $t1, 0x777777
    sw $t1, 0($t0)
    li $t0, 0x100115EC
    li $t1, 0x414141
    sw $t1, 0($t0)
    li $t0, 0x100115F0
    li $t1, 0x2F2F2F
    sw $t1, 0($t0)
    li $t0, 0x100115F4
    li $t1, 0x464646
    sw $t1, 0($t0)
    li $t0, 0x100115F8
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x100115FC
    li $t1, 0x606060
    sw $t1, 0($t0)
    li $t0, 0x10011600 # Início da região: base das colunas e detalhes da parede (linha 22, col 0)
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011604
    li $t1, 0xBABABA
    li $t2, 5
D1040:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1040
    li $t0, 0x10011618
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001161C
    li $t1, 0x0A0A0A
    sw $t1, 0($t0)
    li $t0, 0x10011620
    li $t1, 0x6F6F6F
    sw $t1, 0($t0)
    li $t0, 0x10011624
    li $t1, 0xBDBDBD
    sw $t1, 0($t0)
    li $t0, 0x10011628
    li $t1, 0xB3B3B3
    sw $t1, 0($t0)
    li $t0, 0x1001162C
    li $t1, 0xC1C1C1
    sw $t1, 0($t0)
    li $t0, 0x10011630
    li $t1, 0x020202
    sw $t1, 0($t0)
    li $t0, 0x10011634
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10011638
    li $t1, 0xB9B9B9
    li $t2, 7
D1049:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1049
    li $t0, 0x10011654
    li $t1, 0x228221
    sw $t1, 0($t0)
    li $t0, 0x10011658
    li $t1, 0x28168C
    sw $t1, 0($t0)
    li $t0, 0x1001165C
    li $t1, 0x251882
    sw $t1, 0($t0)
    li $t0, 0x10011660
    li $t1, 0x128A29
    sw $t1, 0($t0)
    li $t0, 0x10011664
    li $t1, 0x1A8617
    sw $t1, 0($t0)
    li $t0, 0x10011668
    li $t1, 0x251788
    sw $t1, 0($t0)
    li $t0, 0x1001166C
    li $t1, 0x21167F
    sw $t1, 0($t0)
    li $t0, 0x10011670
    li $t1, 0xC3C4BC
    sw $t1, 0($t0)
    li $t0, 0x10011674
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011678
    li $t1, 0xB7B7B7
    sw $t1, 0($t0)
    li $t0, 0x1001167C
    li $t1, 0xC2C2C2
    sw $t1, 0($t0)
    li $t0, 0x10011680
    li $t1, 0xB9B9B9
    li $t2, 2
D1061:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1061
    li $t0, 0x10011688
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x1001168C
    li $t1, 0xBEBEBE
    sw $t1, 0($t0)
    li $t0, 0x10011690
    li $t1, 0x727272
    sw $t1, 0($t0)
    li $t0, 0x10011694
    li $t1, 0x656565
    sw $t1, 0($t0)
    li $t0, 0x10011698
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x1001169C
    li $t1, 0xC2C2C2
    sw $t1, 0($t0)
    li $t0, 0x100116A0
    li $t1, 0x727272
    sw $t1, 0($t0)
    li $t0, 0x100116A4
    li $t1, 0x000000
    li $t2, 2
D1069:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1069
    li $t0, 0x100116AC
    li $t1, 0xBABABA
    li $t2, 7
D1070:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1070
    li $t0, 0x100116C8
    li $t1, 0x0E7F09
    sw $t1, 0($t0)
    li $t0, 0x100116CC
    li $t1, 0x201283
    sw $t1, 0($t0)
    li $t0, 0x100116D0
    li $t1, 0x2A1989
    sw $t1, 0($t0)
    li $t0, 0x100116D4
    li $t1, 0x136213
    sw $t1, 0($t0)
    li $t0, 0x100116D8
    li $t1, 0x241A7D
    sw $t1, 0($t0)
    li $t0, 0x100116DC
    li $t1, 0x271988
    sw $t1, 0($t0)
    li $t0, 0x100116E0
    li $t1, 0x141474
    sw $t1, 0($t0)
    li $t0, 0x100116E4 # base das colunas e detalhes da parede — linha 22, col 57
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x100116E8
    li $t1, 0x010000
    sw $t1, 0($t0)
    li $t0, 0x100116EC
    li $t1, 0x747474
    sw $t1, 0($t0)
    li $t0, 0x100116F0
    li $t1, 0x737373
    sw $t1, 0($t0)
    li $t0, 0x100116F4
    li $t1, 0x777777
    sw $t1, 0($t0)
    li $t0, 0x100116F8
    li $t1, 0xCCCCCA
    sw $t1, 0($t0)
    li $t0, 0x100116FC
    li $t1, 0xB9B9B9
    li $t2, 2
D1084:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1084
    li $t0, 0x10011704
    li $t1, 0xBABABA
    li $t2, 4
D1085:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1085
    li $t0, 0x10011714
    li $t1, 0xB9B9B9
    li $t2, 2
D1086:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1086
    li $t0, 0x1001171C
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10011720
    li $t1, 0x707070
    sw $t1, 0($t0)
    li $t0, 0x10011724
    li $t1, 0x727272
    sw $t1, 0($t0)
    li $t0, 0x10011728
    li $t1, 0xC2C2C2
    sw $t1, 0($t0)
    li $t0, 0x1001172C
    li $t1, 0xBCBCBC
    sw $t1, 0($t0)
    li $t0, 0x10011730
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x10011734
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10011738
    li $t1, 0xB9B9B9
    li $t2, 7
D1094:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1094
    li $t0, 0x10011754
    li $t1, 0x258021
    sw $t1, 0($t0)
    li $t0, 0x10011758
    li $t1, 0x241789
    sw $t1, 0($t0)
    li $t0, 0x1001175C
    li $t1, 0x231787
    sw $t1, 0($t0)
    li $t0, 0x10011760
    li $t1, 0x128828
    sw $t1, 0($t0)
    li $t0, 0x10011764
    li $t1, 0x1E8A1D
    sw $t1, 0($t0)
    li $t0, 0x10011768
    li $t1, 0x231787
    sw $t1, 0($t0)
    li $t0, 0x1001176C
    li $t1, 0x201885
    sw $t1, 0($t0)
    li $t0, 0x10011770
    li $t1, 0xC3C3C1
    sw $t1, 0($t0)
    li $t0, 0x10011774
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10011778
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x1001177C
    li $t1, 0xBDBDBD
    sw $t1, 0($t0)
    li $t0, 0x10011780
    li $t1, 0x767676
    sw $t1, 0($t0)
    li $t0, 0x10011784
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x10011788
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001178C
    li $t1, 0xBCBCBC
    sw $t1, 0($t0)
    li $t0, 0x10011790
    li $t1, 0x707070
    sw $t1, 0($t0)
    li $t0, 0x10011794
    li $t1, 0x6C6C6C
    sw $t1, 0($t0)
    li $t0, 0x10011798
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x1001179C
    li $t1, 0xBCBCBC
    sw $t1, 0($t0)
    li $t0, 0x100117A0
    li $t1, 0x737373
    sw $t1, 0($t0)
    li $t0, 0x100117A4
    li $t1, 0x000000
    li $t2, 2
D1115:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1115
    li $t0, 0x100117AC
    li $t1, 0xBABABA
    li $t2, 5
D1116:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1116
    li $t0, 0x100117C0
    li $t1, 0xB9B9B9
    li $t2, 2
D1117:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1117
    li $t0, 0x100117C8
    li $t1, 0x0F800C
    sw $t1, 0($t0)
    li $t0, 0x100117CC
    li $t1, 0x241687
    li $t2, 2
D1119:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1119
    li $t0, 0x100117D4
    li $t1, 0x176412
    sw $t1, 0($t0)
    li $t0, 0x100117D8
    li $t1, 0x24187C
    sw $t1, 0($t0)
    li $t0, 0x100117DC
    li $t1, 0x231787
    sw $t1, 0($t0)
    li $t0, 0x100117E0
    li $t1, 0x10116E
    sw $t1, 0($t0)
    li $t0, 0x100117E4
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x100117E8
    li $t1, 0xC5C5C5
    sw $t1, 0($t0)
    li $t0, 0x100117EC
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x100117F0
    li $t1, 0x020202
    li $t2, 2
D1127:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1127
    li $t0, 0x100117F8
    li $t1, 0x7B7B7B
    sw $t1, 0($t0)
    li $t0, 0x100117FC
    li $t1, 0xB7B7B7
    sw $t1, 0($t0)
    li $t0, 0x10011800
    li $t1, 0xBABABA
    li $t2, 6
D1130:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1130
    li $t0, 0x10011818
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x1001181C
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x10011820
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x10011824
    li $t1, 0xBCBCBC
    sw $t1, 0($t0)
    li $t0, 0x10011828
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x1001182C
    li $t1, 0x717171
    sw $t1, 0($t0)
    li $t0, 0x10011830
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10011834
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x10011838
    li $t1, 0xBABABA
    li $t2, 6
D1139:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1139
    li $t0, 0x10011850
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011854
    li $t1, 0x278723
    sw $t1, 0($t0)
    li $t0, 0x10011858
    li $t1, 0x000900
    sw $t1, 0($t0)
    li $t0, 0x1001185C
    li $t1, 0x000D00
    sw $t1, 0($t0)
    li $t0, 0x10011860
    li $t1, 0x000F00
    sw $t1, 0($t0)
    li $t0, 0x10011864
    li $t1, 0x000500
    sw $t1, 0($t0)
    li $t0, 0x10011868
    li $t1, 0x000D00
    sw $t1, 0($t0)
    li $t0, 0x1001186C
    li $t1, 0x003C00
    sw $t1, 0($t0)
    li $t0, 0x10011870
    li $t1, 0xC2C2C0
    sw $t1, 0($t0)
    li $t0, 0x10011874
    li $t1, 0xBDBDBD
    sw $t1, 0($t0)
    li $t0, 0x10011878
    li $t1, 0x838383
    sw $t1, 0($t0)
    li $t0, 0x1001187C
    li $t1, 0x7B7B7B
    sw $t1, 0($t0)
    li $t0, 0x10011880
    li $t1, 0x747474
    sw $t1, 0($t0)
    li $t0, 0x10011884
    li $t1, 0x797979
    sw $t1, 0($t0)
    li $t0, 0x10011888
    li $t1, 0x7F7F7F
    sw $t1, 0($t0)
    li $t0, 0x1001188C # base das colunas e detalhes da parede — linha 24, col 35
    li $t1, 0xC0C0C0
    sw $t1, 0($t0)
    li $t0, 0x10011890
    li $t1, 0x6F6F6F
    sw $t1, 0($t0)
    li $t0, 0x10011894
    li $t1, 0x636363
    sw $t1, 0($t0)
    li $t0, 0x10011898
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x1001189C
    li $t1, 0xBCBCBC
    sw $t1, 0($t0)
    li $t0, 0x100118A0
    li $t1, 0x737373
    sw $t1, 0($t0)
    li $t0, 0x100118A4
    li $t1, 0x000000
    li $t2, 2
D1161:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1161
    li $t0, 0x100118AC
    li $t1, 0xBABABA
    li $t2, 5
D1162:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1162
    li $t0, 0x100118C0
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x100118C4
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x100118C8
    li $t1, 0x010900
    sw $t1, 0($t0)
    li $t0, 0x100118CC
    li $t1, 0x000A00
    sw $t1, 0($t0)
    li $t0, 0x100118D0
    li $t1, 0x001700
    sw $t1, 0($t0)
    li $t0, 0x100118D4
    li $t1, 0x18641A
    sw $t1, 0($t0)
    li $t0, 0x100118D8
    li $t1, 0x000B00
    li $t2, 2
D1169:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1169
    li $t0, 0x100118E0
    li $t1, 0x003000
    sw $t1, 0($t0)
    li $t0, 0x100118E4
    li $t1, 0xB5B5B5
    sw $t1, 0($t0)
    li $t0, 0x100118E8
    li $t1, 0x040404
    sw $t1, 0($t0)
    li $t0, 0x100118EC
    li $t1, 0x000000
    li $t2, 2
D1173:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1173
    li $t0, 0x100118F4
    li $t1, 0x323232
    sw $t1, 0($t0)
    li $t0, 0x100118F8
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x100118FC
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011900
    li $t1, 0xBABABA
    li $t2, 7
D1177:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1177
    li $t0, 0x1001191C
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10011920
    li $t1, 0x646464
    sw $t1, 0($t0)
    li $t0, 0x10011924
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011928
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x1001192C
    li $t1, 0x727272
    sw $t1, 0($t0)
    li $t0, 0x10011930
    li $t1, 0x040404
    sw $t1, 0($t0)
    li $t0, 0x10011934
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10011938
    li $t1, 0xBABABA
    li $t2, 6
D1185:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1185
    li $t0, 0x10011950
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011954
    li $t1, 0x207E1E
    sw $t1, 0($t0)
    li $t0, 0x10011958
    li $t1, 0x261A8A
    li $t2, 2
D1188:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1188
    li $t0, 0x10011960
    li $t1, 0x148827
    sw $t1, 0($t0)
    li $t0, 0x10011964
    li $t1, 0x1E8A1D
    sw $t1, 0($t0)
    li $t0, 0x10011968
    li $t1, 0x241888
    sw $t1, 0($t0)
    li $t0, 0x1001196C
    li $t1, 0x221A87
    sw $t1, 0($t0)
    li $t0, 0x10011970
    li $t1, 0xC3C3C5
    sw $t1, 0($t0)
    li $t0, 0x10011974
    li $t1, 0xBFBFBF
    sw $t1, 0($t0)
    li $t0, 0x10011978
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x1001197C
    li $t1, 0x030303
    sw $t1, 0($t0)
    li $t0, 0x10011980
    li $t1, 0x020202
    sw $t1, 0($t0)
    li $t0, 0x10011984
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10011988
    li $t1, 0x282828
    sw $t1, 0($t0)
    li $t0, 0x1001198C
    li $t1, 0xC0C0C0
    sw $t1, 0($t0)
    li $t0, 0x10011990
    li $t1, 0x707070
    sw $t1, 0($t0)
    li $t0, 0x10011994
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011998
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x1001199C
    li $t1, 0xBFBFBF
    sw $t1, 0($t0)
    li $t0, 0x100119A0
    li $t1, 0x717171
    sw $t1, 0($t0)
    li $t0, 0x100119A4
    li $t1, 0x020202
    sw $t1, 0($t0)
    li $t0, 0x100119A8
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x100119AC
    li $t1, 0xBABABA
    li $t2, 2
D1208:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1208
    li $t0, 0x100119B4
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x100119B8
    li $t1, 0xBABABA
    li $t2, 3
D1210:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1210
    li $t0, 0x100119C4
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x100119C8
    li $t1, 0x0F7D0A
    sw $t1, 0($t0)
    li $t0, 0x100119CC
    li $t1, 0x261887
    sw $t1, 0($t0)
    li $t0, 0x100119D0
    li $t1, 0x231787
    sw $t1, 0($t0)
    li $t0, 0x100119D4
    li $t1, 0x196314
    sw $t1, 0($t0)
    li $t0, 0x100119D8
    li $t1, 0x25197D
    sw $t1, 0($t0)
    li $t0, 0x100119DC
    li $t1, 0x221986
    sw $t1, 0($t0)
    li $t0, 0x100119E0
    li $t1, 0x0F1273
    sw $t1, 0($t0)
    li $t0, 0x100119E4
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x100119E8
    li $t1, 0x737373
    sw $t1, 0($t0)
    li $t0, 0x100119EC
    li $t1, 0x808080
    sw $t1, 0($t0)
    li $t0, 0x100119F0
    li $t1, 0x828282
    sw $t1, 0($t0)
    li $t0, 0x100119F4
    li $t1, 0x0E0E0E
    sw $t1, 0($t0)
    li $t0, 0x100119F8
    li $t1, 0xB9B9B9
    li $t2, 2
D1224:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1224
    li $t0, 0x10011A00
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011A04
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011A08
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011A0C
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011A10
    li $t1, 0xBABABA
    li $t2, 2
D1229:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1229
    li $t0, 0x10011A18
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011A1C
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10011A20 # base das colunas e detalhes da parede — linha 26, col 8
    li $t1, 0x686868
    sw $t1, 0($t0)
    li $t0, 0x10011A24
    li $t1, 0xBCBCBC
    sw $t1, 0($t0)
    li $t0, 0x10011A28
    li $t1, 0xB4B4B4
    sw $t1, 0($t0)
    li $t0, 0x10011A2C
    li $t1, 0xC7C7C7
    sw $t1, 0($t0)
    li $t0, 0x10011A30
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10011A34
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x10011A38
    li $t1, 0xB9B9B9
    li $t2, 4
D1238:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1238
    li $t0, 0x10011A48
    li $t1, 0xBABABA
    li $t2, 2
D1239:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1239
    li $t0, 0x10011A50
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011A54
    li $t1, 0x268028
    sw $t1, 0($t0)
    li $t0, 0x10011A58
    li $t1, 0x281686
    sw $t1, 0($t0)
    li $t0, 0x10011A5C
    li $t1, 0x251786
    sw $t1, 0($t0)
    li $t0, 0x10011A60
    li $t1, 0x178628
    sw $t1, 0($t0)
    li $t0, 0x10011A64
    li $t1, 0x1F8D1D
    sw $t1, 0($t0)
    li $t0, 0x10011A68
    li $t1, 0x24158A
    sw $t1, 0($t0)
    li $t0, 0x10011A6C
    li $t1, 0x201484
    sw $t1, 0($t0)
    li $t0, 0x10011A70
    li $t1, 0xC2C2C2
    sw $t1, 0($t0)
    li $t0, 0x10011A74
    li $t1, 0x737373
    sw $t1, 0($t0)
    li $t0, 0x10011A78
    li $t1, 0x707070
    sw $t1, 0($t0)
    li $t0, 0x10011A7C
    li $t1, 0x767676
    sw $t1, 0($t0)
    li $t0, 0x10011A80
    li $t1, 0x747474
    sw $t1, 0($t0)
    li $t0, 0x10011A84
    li $t1, 0x737373
    sw $t1, 0($t0)
    li $t0, 0x10011A88
    li $t1, 0xBCBCBC
    sw $t1, 0($t0)
    li $t0, 0x10011A8C
    li $t1, 0x757575
    sw $t1, 0($t0)
    li $t0, 0x10011A90
    li $t1, 0x6F6F6F
    sw $t1, 0($t0)
    li $t0, 0x10011A94
    li $t1, 0x6B6B6B
    sw $t1, 0($t0)
    li $t0, 0x10011A98
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011A9C
    li $t1, 0xC3C3C3
    sw $t1, 0($t0)
    li $t0, 0x10011AA0
    li $t1, 0x717171
    sw $t1, 0($t0)
    li $t0, 0x10011AA4
    li $t1, 0x000000
    sw $t1, 0($t0)
    li $t0, 0x10011AA8
    li $t1, 0x010101
    sw $t1, 0($t0)
    li $t0, 0x10011AAC
    li $t1, 0xB9B9B9
    li $t2, 2
D1263:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1263
    li $t0, 0x10011AB4
    li $t1, 0xBABABA
    li $t2, 4
D1264:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1264
    li $t0, 0x10011AC4
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011AC8
    li $t1, 0x148416
    sw $t1, 0($t0)
    li $t0, 0x10011ACC
    li $t1, 0x24158A
    sw $t1, 0($t0)
    li $t0, 0x10011AD0
    li $t1, 0x281A8C
    sw $t1, 0($t0)
    li $t0, 0x10011AD4
    li $t1, 0x13600E
    sw $t1, 0($t0)
    li $t0, 0x10011AD8
    li $t1, 0x27187D
    sw $t1, 0($t0)
    li $t0, 0x10011ADC
    li $t1, 0x24158A
    sw $t1, 0($t0)
    li $t0, 0x10011AE0
    li $t1, 0x0F1168
    sw $t1, 0($t0)
    li $t0, 0x10011AE4
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011AE8
    li $t1, 0xBCBCBC
    sw $t1, 0($t0)
    li $t0, 0x10011AEC
    li $t1, 0xBDBDBD
    sw $t1, 0($t0)
    li $t0, 0x10011AF0
    li $t1, 0x7E7E7E
    sw $t1, 0($t0)
    li $t0, 0x10011AF4
    li $t1, 0xBABABA
    li $t2, 2
D1277:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1277
    li $t0, 0x10011AFC
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10011B00
    li $t1, 0x858585
    sw $t1, 0($t0)
    li $t0, 0x10011B04
    li $t1, 0xAAAAAA
    sw $t1, 0($t0)
    li $t0, 0x10011B08
    li $t1, 0xBABABA
    li $t2, 3
D1281:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1281
    li $t0, 0x10011B14
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x10011B18
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011B1C
    li $t1, 0x1D1D1D
    sw $t1, 0($t0)
    li $t0, 0x10011B20
    li $t1, 0x181818
    sw $t1, 0($t0)
    li $t0, 0x10011B24
    li $t1, 0x585858
    sw $t1, 0($t0)
    li $t0, 0x10011B28
    li $t1, 0x888888
    sw $t1, 0($t0)
    li $t0, 0x10011B2C
    li $t1, 0x5F5F5F
    sw $t1, 0($t0)
    li $t0, 0x10011B30
    li $t1, 0x171717
    sw $t1, 0($t0)
    li $t0, 0x10011B34
    li $t1, 0x181818
    sw $t1, 0($t0)
    li $t0, 0x10011B38
    li $t1, 0x737373
    sw $t1, 0($t0)
    li $t0, 0x10011B3C
    li $t1, 0x919191
    sw $t1, 0($t0)
    li $t0, 0x10011B40
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011B44
    li $t1, 0xBABABA
    li $t2, 4
D1294:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1294
    li $t0, 0x10011B54
    li $t1, 0x767873
    sw $t1, 0($t0)
    li $t0, 0x10011B58
    li $t1, 0xBFBFBF
    sw $t1, 0($t0)
    li $t0, 0x10011B5C
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10011B60
    li $t1, 0xB5BBB7
    sw $t1, 0($t0)
    li $t0, 0x10011B64
    li $t1, 0xB8B9BB
    sw $t1, 0($t0)
    li $t0, 0x10011B68
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011B6C
    li $t1, 0xB9B9BB
    sw $t1, 0($t0)
    li $t0, 0x10011B70
    li $t1, 0x6D6D6D
    sw $t1, 0($t0)
    li $t0, 0x10011B74
    li $t1, 0xA6A6A6
    sw $t1, 0($t0)
    li $t0, 0x10011B78
    li $t1, 0xB9B9B9
    li $t2, 3
D1304:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1304
    li $t0, 0x10011B84
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011B88
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011B8C
    li $t1, 0xC0C0C0
    sw $t1, 0($t0)
    li $t0, 0x10011B90
    li $t1, 0x131313
    sw $t1, 0($t0)
    li $t0, 0x10011B94 # base das colunas e detalhes da parede — linha 27, col 37
    li $t1, 0x0F0F0F
    sw $t1, 0($t0)
    li $t0, 0x10011B98
    li $t1, 0x595959
    sw $t1, 0($t0)
    li $t0, 0x10011B9C
    li $t1, 0x888888
    sw $t1, 0($t0)
    li $t0, 0x10011BA0
    li $t1, 0x1B1B1B
    sw $t1, 0($t0)
    li $t0, 0x10011BA4
    li $t1, 0x181818
    sw $t1, 0($t0)
    li $t0, 0x10011BA8
    li $t1, 0x1A1A1A
    sw $t1, 0($t0)
    li $t0, 0x10011BAC
    li $t1, 0xA3A3A3
    sw $t1, 0($t0)
    li $t0, 0x10011BB0
    li $t1, 0x9A9A9A
    sw $t1, 0($t0)
    li $t0, 0x10011BB4
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011BB8
    li $t1, 0xBBBBBB
    li $t2, 2
D1318:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1318
    li $t0, 0x10011BC0
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011BC4
    li $t1, 0xBAB6B7
    sw $t1, 0($t0)
    li $t0, 0x10011BC8
    li $t1, 0x505251
    sw $t1, 0($t0)
    li $t0, 0x10011BCC
    li $t1, 0x838385
    sw $t1, 0($t0)
    li $t0, 0x10011BD0
    li $t1, 0xB8B9BB
    sw $t1, 0($t0)
    li $t0, 0x10011BD4
    li $t1, 0xB8B9BE
    sw $t1, 0($t0)
    li $t0, 0x10011BD8
    li $t1, 0xB9B9B7
    sw $t1, 0($t0)
    li $t0, 0x10011BDC
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011BE0
    li $t1, 0xB9BBBA
    sw $t1, 0($t0)
    li $t0, 0x10011BE4
    li $t1, 0x727272
    sw $t1, 0($t0)
    li $t0, 0x10011BE8
    li $t1, 0x797979
    sw $t1, 0($t0)
    li $t0, 0x10011BEC
    li $t1, 0xB9B9B9
    li $t2, 2
D1330:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1330
    li $t0, 0x10011BF4
    li $t1, 0xBABABA
    li $t2, 2
D1331:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1331
    li $t0, 0x10011BFC
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011C00 # Início da região: base da parede / rodapé do cenário (linha 28, col 0)
    li $t1, 0xB6B6B6
    sw $t1, 0($t0)
    li $t0, 0x10011C04
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011C08
    li $t1, 0xBABABA
    li $t2, 3
D1335:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1335
    li $t0, 0x10011C14
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011C18
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011C1C
    li $t1, 0x454545
    sw $t1, 0($t0)
    li $t0, 0x10011C20
    li $t1, 0x585858
    sw $t1, 0($t0)
    li $t0, 0x10011C24
    li $t1, 0x575757
    sw $t1, 0($t0)
    li $t0, 0x10011C28
    li $t1, 0x4E4E4E
    sw $t1, 0($t0)
    li $t0, 0x10011C2C
    li $t1, 0x575757
    sw $t1, 0($t0)
    li $t0, 0x10011C30
    li $t1, 0x777777
    sw $t1, 0($t0)
    li $t0, 0x10011C34
    li $t1, 0x4C4C4C
    sw $t1, 0($t0)
    li $t0, 0x10011C38
    li $t1, 0xB7B7B7
    sw $t1, 0($t0)
    li $t0, 0x10011C3C
    li $t1, 0xB9B9B9
    li $t2, 6
D1346:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1346
    li $t0, 0x10011C54
    li $t1, 0xB7B7B7
    sw $t1, 0($t0)
    li $t0, 0x10011C58
    li $t1, 0xB9B9B9
    li $t2, 6
D1348:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1348
    li $t0, 0x10011C70
    li $t1, 0xB7B7B7
    sw $t1, 0($t0)
    li $t0, 0x10011C74
    li $t1, 0xB5B5B5
    sw $t1, 0($t0)
    li $t0, 0x10011C78
    li $t1, 0xB9B9B9
    li $t2, 3
D1351:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1351
    li $t0, 0x10011C84
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10011C88
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011C8C
    li $t1, 0xC2C2C2
    sw $t1, 0($t0)
    li $t0, 0x10011C90
    li $t1, 0x535353
    sw $t1, 0($t0)
    li $t0, 0x10011C94
    li $t1, 0x5A5A5A
    sw $t1, 0($t0)
    li $t0, 0x10011C98
    li $t1, 0x494949
    sw $t1, 0($t0)
    li $t0, 0x10011C9C
    li $t1, 0x535353
    sw $t1, 0($t0)
    li $t0, 0x10011CA0
    li $t1, 0x505050
    sw $t1, 0($t0)
    li $t0, 0x10011CA4
    li $t1, 0x545454
    sw $t1, 0($t0)
    li $t0, 0x10011CA8
    li $t1, 0x525252
    sw $t1, 0($t0)
    li $t0, 0x10011CAC
    li $t1, 0xB6B6B6
    sw $t1, 0($t0)
    li $t0, 0x10011CB0
    li $t1, 0xB9B9B9
    li $t2, 3
D1363:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1363
    li $t0, 0x10011CBC
    li $t1, 0xBABABA
    li $t2, 2
D1364:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1364
    li $t0, 0x10011CC4
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011CC8
    li $t1, 0xB7B7B7
    sw $t1, 0($t0)
    li $t0, 0x10011CCC
    li $t1, 0xB9B9B9
    li $t2, 2
D1367:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1367
    li $t0, 0x10011CD4
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011CD8
    li $t1, 0xB9B9B9
    li $t2, 3
D1369:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1369
    li $t0, 0x10011CE4
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10011CE8
    li $t1, 0xBABABA
    li $t2, 3
D1371:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1371
    li $t0, 0x10011CF4
    li $t1, 0xB9B9B9
    li $t2, 3
D1372:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1372
    li $t0, 0x10011D00
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011D04
    li $t1, 0xB9B9B9
    li $t2, 2
D1374:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1374
    li $t0, 0x10011D0C
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011D10
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10011D14
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011D18
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x10011D1C
    li $t1, 0x111111
    sw $t1, 0($t0)
    li $t0, 0x10011D20
    li $t1, 0x6C6C6C
    sw $t1, 0($t0)
    li $t0, 0x10011D24
    li $t1, 0x707070
    sw $t1, 0($t0)
    li $t0, 0x10011D28
    li $t1, 0xBCBCBC
    sw $t1, 0($t0)
    li $t0, 0x10011D2C
    li $t1, 0xC0C0C0
    sw $t1, 0($t0)
    li $t0, 0x10011D30
    li $t1, 0x000000
    li $t2, 2
D1384:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1384
    li $t0, 0x10011D38
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10011D3C # base da parede / rodapé do cenário — linha 29, col 15
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011D40
    li $t1, 0xB7B7B7
    sw $t1, 0($t0)
    li $t0, 0x10011D44
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x10011D48
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011D4C
    li $t1, 0xBABABA
    li $t2, 4
D1390:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1390
    li $t0, 0x10011D5C
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011D60
    li $t1, 0xBCBCBC
    sw $t1, 0($t0)
    li $t0, 0x10011D64
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011D68
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011D6C
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x10011D70
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011D74
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x10011D78
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10011D7C
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011D80
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10011D84
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011D88
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011D8C
    li $t1, 0xBFBFBF
    sw $t1, 0($t0)
    li $t0, 0x10011D90
    li $t1, 0x747474
    sw $t1, 0($t0)
    li $t0, 0x10011D94
    li $t1, 0xBCBCBC
    sw $t1, 0($t0)
    li $t0, 0x10011D98
    li $t1, 0x6F6F6F
    sw $t1, 0($t0)
    li $t0, 0x10011D9C
    li $t1, 0xBDBDBD
    sw $t1, 0($t0)
    li $t0, 0x10011DA0
    li $t1, 0x757575
    sw $t1, 0($t0)
    li $t0, 0x10011DA4
    li $t1, 0x000000
    li $t2, 2
D1409:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1409
    li $t0, 0x10011DAC
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011DB0
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011DB4
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x10011DB8
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011DBC
    li $t1, 0xBABABA
    li $t2, 2
D1414:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1414
    li $t0, 0x10011DC4
    li $t1, 0xBCBCBC
    sw $t1, 0($t0)
    li $t0, 0x10011DC8
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011DCC
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011DD0
    li $t1, 0xBABABA
    li $t2, 2
D1418:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1418
    li $t0, 0x10011DD8
    li $t1, 0xB9B9B9
    li $t2, 2
D1419:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1419
    li $t0, 0x10011DE0
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x10011DE4
    li $t1, 0xBABABA
    sw $t1, 0($t0)
    li $t0, 0x10011DE8
    li $t1, 0xB8B8B8
    sw $t1, 0($t0)
    li $t0, 0x10011DEC
    li $t1, 0xBBBBBB
    sw $t1, 0($t0)
    li $t0, 0x10011DF0
    li $t1, 0xBDBDBD
    sw $t1, 0($t0)
    li $t0, 0x10011DF4
    li $t1, 0xDFDFDF
    sw $t1, 0($t0)
    li $t0, 0x10011DF8
    li $t1, 0xB9B9B9
    sw $t1, 0($t0)
    li $t0, 0x10011DFC
    li $t1, 0xB6B6B6
    sw $t1, 0($t0)
    li $t0, 0x10011E00 # Início da região: chão de tijolos laranjas (linha 30, col 0)
    li $t1, 0xC7460D
    sw $t1, 0($t0)
    li $t0, 0x10011E04
    li $t1, 0xC64607
    sw $t1, 0($t0)
    li $t0, 0x10011E08
    li $t1, 0xC44707
    sw $t1, 0($t0)
    li $t0, 0x10011E0C
    li $t1, 0xCDBFBC
    sw $t1, 0($t0)
    li $t0, 0x10011E10
    li $t1, 0xC74509
    sw $t1, 0($t0)
    li $t0, 0x10011E14
    li $t1, 0xC64607
    sw $t1, 0($t0)
    li $t0, 0x10011E18
    li $t1, 0xA16445
    sw $t1, 0($t0)
    li $t0, 0x10011E1C
    li $t1, 0xC64607
    sw $t1, 0($t0)
    li $t0, 0x10011E20
    li $t1, 0xC74509
    sw $t1, 0($t0)
    li $t0, 0x10011E24
    li $t1, 0xC74604
    sw $t1, 0($t0)
    li $t0, 0x10011E28
    li $t1, 0x78777C
    sw $t1, 0($t0)
    li $t0, 0x10011E2C
    li $t1, 0xC74507
    sw $t1, 0($t0)
    li $t0, 0x10011E30
    li $t1, 0xC64609
    sw $t1, 0($t0)
    li $t0, 0x10011E34
    li $t1, 0xC7490F
    sw $t1, 0($t0)
    li $t0, 0x10011E38
    li $t1, 0xB63C17
    sw $t1, 0($t0)
    li $t0, 0x10011E3C
    li $t1, 0xC74507
    sw $t1, 0($t0)
    li $t0, 0x10011E40
    li $t1, 0xC44707
    sw $t1, 0($t0)
    li $t0, 0x10011E44
    li $t1, 0x74736F
    sw $t1, 0($t0)
    li $t0, 0x10011E48
    li $t1, 0xC64605
    sw $t1, 0($t0)
    li $t0, 0x10011E4C
    li $t1, 0xC44707
    sw $t1, 0($t0)
    li $t0, 0x10011E50
    li $t1, 0xCC4609
    sw $t1, 0($t0)
    li $t0, 0x10011E54
    li $t1, 0xE1B1A3
    sw $t1, 0($t0)
    li $t0, 0x10011E58
    li $t1, 0xC64605
    li $t2, 2
D1450:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1450
    li $t0, 0x10011E60
    li $t1, 0x836B61
    sw $t1, 0($t0)
    li $t0, 0x10011E64
    li $t1, 0xC64408
    sw $t1, 0($t0)
    li $t0, 0x10011E68
    li $t1, 0xC44705
    sw $t1, 0($t0)
    li $t0, 0x10011E6C
    li $t1, 0xC34908
    sw $t1, 0($t0)
    li $t0, 0x10011E70
    li $t1, 0xB9BDBC
    sw $t1, 0($t0)
    li $t0, 0x10011E74
    li $t1, 0xC64607
    sw $t1, 0($t0)
    li $t0, 0x10011E78
    li $t1, 0xC74507
    sw $t1, 0($t0)
    li $t0, 0x10011E7C
    li $t1, 0xA95024
    sw $t1, 0($t0)
    li $t0, 0x10011E80
    li $t1, 0xC54506
    sw $t1, 0($t0)
    li $t0, 0x10011E84
    li $t1, 0xC84608
    sw $t1, 0($t0)
    li $t0, 0x10011E88
    li $t1, 0xC94507
    sw $t1, 0($t0)
    li $t0, 0x10011E8C
    li $t1, 0x626365
    sw $t1, 0($t0)
    li $t0, 0x10011E90 # chão de tijolos laranjas — linha 30, col 36
    li $t1, 0xC44707
    sw $t1, 0($t0)
    li $t0, 0x10011E94
    li $t1, 0xC74507
    sw $t1, 0($t0)
    li $t0, 0x10011E98
    li $t1, 0xCC450B
    sw $t1, 0($t0)
    li $t0, 0x10011E9C
    li $t1, 0xA13A1B
    sw $t1, 0($t0)
    li $t0, 0x10011EA0
    li $t1, 0xC44609
    sw $t1, 0($t0)
    li $t0, 0x10011EA4
    li $t1, 0xC44707
    sw $t1, 0($t0)
    li $t0, 0x10011EA8
    li $t1, 0x766E6B
    sw $t1, 0($t0)
    li $t0, 0x10011EAC
    li $t1, 0xC34606
    sw $t1, 0($t0)
    li $t0, 0x10011EB0
    li $t1, 0xC44707
    li $t2, 2
D1471:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1471
    li $t0, 0x10011EB8
    li $t1, 0xD0B5AC
    sw $t1, 0($t0)
    li $t0, 0x10011EBC
    li $t1, 0xC44707
    sw $t1, 0($t0)
    li $t0, 0x10011EC0
    li $t1, 0xC34508
    sw $t1, 0($t0)
    li $t0, 0x10011EC4
    li $t1, 0x95634A
    sw $t1, 0($t0)
    li $t0, 0x10011EC8
    li $t1, 0xC84703
    sw $t1, 0($t0)
    li $t0, 0x10011ECC
    li $t1, 0xC54506
    sw $t1, 0($t0)
    li $t0, 0x10011ED0
    li $t1, 0xC64408
    sw $t1, 0($t0)
    li $t0, 0x10011ED4
    li $t1, 0xA2A19C
    sw $t1, 0($t0)
    li $t0, 0x10011ED8
    li $t1, 0xC34805
    sw $t1, 0($t0)
    li $t0, 0x10011EDC
    li $t1, 0xC44707
    sw $t1, 0($t0)
    li $t0, 0x10011EE0
    li $t1, 0xBD4B15
    sw $t1, 0($t0)
    li $t0, 0x10011EE4
    li $t1, 0xCC4817
    sw $t1, 0($t0)
    li $t0, 0x10011EE8
    li $t1, 0xC64607
    sw $t1, 0($t0)
    li $t0, 0x10011EEC
    li $t1, 0xC44707
    sw $t1, 0($t0)
    li $t0, 0x10011EF0
    li $t1, 0x7C777D
    sw $t1, 0($t0)
    li $t0, 0x10011EF4
    li $t1, 0xCB460B
    sw $t1, 0($t0)
    li $t0, 0x10011EF8
    li $t1, 0xC44707
    sw $t1, 0($t0)
    li $t0, 0x10011EFC
    li $t1, 0xCB4508
    sw $t1, 0($t0)
    li $t0, 0x10011F00
    li $t1, 0xC84906
    sw $t1, 0($t0)
    li $t0, 0x10011F04
    li $t1, 0xC54805
    sw $t1, 0($t0)
    li $t0, 0x10011F08
    li $t1, 0xCB4706
    sw $t1, 0($t0)
    li $t0, 0x10011F0C
    li $t1, 0xD1BFBD
    sw $t1, 0($t0)
    li $t0, 0x10011F10
    li $t1, 0xC74509
    sw $t1, 0($t0)
    li $t0, 0x10011F14
    li $t1, 0xC44707
    sw $t1, 0($t0)
    li $t0, 0x10011F18
    li $t1, 0x747266
    sw $t1, 0($t0)
    li $t0, 0x10011F1C
    li $t1, 0xC5470A
    sw $t1, 0($t0)
    li $t0, 0x10011F20
    li $t1, 0xC74708
    sw $t1, 0($t0)
    li $t0, 0x10011F24
    li $t1, 0xC44A07
    sw $t1, 0($t0)
    li $t0, 0x10011F28
    li $t1, 0x7A7C7B
    sw $t1, 0($t0)
    li $t0, 0x10011F2C
    li $t1, 0xC34805
    sw $t1, 0($t0)
    li $t0, 0x10011F30
    li $t1, 0xC34709
    sw $t1, 0($t0)
    li $t0, 0x10011F34
    li $t1, 0x9B634C
    sw $t1, 0($t0)
    li $t0, 0x10011F38
    li $t1, 0xB33C11
    sw $t1, 0($t0)
    li $t0, 0x10011F3C
    li $t1, 0xC34805
    sw $t1, 0($t0)
    li $t0, 0x10011F40
    li $t1, 0xC44906
    sw $t1, 0($t0)
    li $t0, 0x10011F44
    li $t1, 0x767273
    sw $t1, 0($t0)
    li $t0, 0x10011F48
    li $t1, 0xC54806
    sw $t1, 0($t0)
    li $t0, 0x10011F4C
    li $t1, 0xC74708
    sw $t1, 0($t0)
    li $t0, 0x10011F50
    li $t1, 0xC44910
    sw $t1, 0($t0)
    li $t0, 0x10011F54
    li $t1, 0xE0B4AB
    sw $t1, 0($t0)
    li $t0, 0x10011F58
    li $t1, 0xC64607
    sw $t1, 0($t0)
    li $t0, 0x10011F5C
    li $t1, 0xC44705
    sw $t1, 0($t0)
    li $t0, 0x10011F60
    li $t1, 0x777372
    sw $t1, 0($t0)
    li $t0, 0x10011F64
    li $t1, 0xCA4608
    sw $t1, 0($t0)
    li $t0, 0x10011F68
    li $t1, 0xC44707
    sw $t1, 0($t0)
    li $t0, 0x10011F6C
    li $t1, 0xC84809
    sw $t1, 0($t0)
    li $t0, 0x10011F70
    li $t1, 0xC1BDBC
    sw $t1, 0($t0)
    li $t0, 0x10011F74
    li $t1, 0xC4460B
    sw $t1, 0($t0)
    li $t0, 0x10011F78
    li $t1, 0xC54808
    sw $t1, 0($t0)
    li $t0, 0x10011F7C
    li $t1, 0x7C7064
    sw $t1, 0($t0)
    li $t0, 0x10011F80
    li $t1, 0xC6450B
    sw $t1, 0($t0)
    li $t0, 0x10011F84
    li $t1, 0xC54808
    sw $t1, 0($t0)
    li $t0, 0x10011F88
    li $t1, 0xC9460E
    sw $t1, 0($t0)
    li $t0, 0x10011F8C
    li $t1, 0x636562
    sw $t1, 0($t0)
    li $t0, 0x10011F90
    li $t1, 0xC5470C
    sw $t1, 0($t0)
    li $t0, 0x10011F94
    li $t1, 0xC54808
    sw $t1, 0($t0)
    li $t0, 0x10011F98
    li $t1, 0xA7532F
    sw $t1, 0($t0)
    li $t0, 0x10011F9C
    li $t1, 0x9F3E1B
    sw $t1, 0($t0)
    li $t0, 0x10011FA0
    li $t1, 0xC74605
    sw $t1, 0($t0)
    li $t0, 0x10011FA4
    li $t1, 0xC44707
    sw $t1, 0($t0)
    li $t0, 0x10011FA8
    li $t1, 0x70706E
    sw $t1, 0($t0)
    li $t0, 0x10011FAC
    li $t1, 0xC64607
    sw $t1, 0($t0)
    li $t0, 0x10011FB0
    li $t1, 0xC64609
    li $t2, 2
D1534:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, D1534
    li $t0, 0x10011FB8
    li $t1, 0xCEBAB1
    sw $t1, 0($t0)
    li $t0, 0x10011FBC
    li $t1, 0xC74605
    sw $t1, 0($t0)
    li $t0, 0x10011FC0
    li $t1, 0xC44808
    sw $t1, 0($t0)
    li $t0, 0x10011FC4
    li $t1, 0x72716D
    sw $t1, 0($t0)
    li $t0, 0x10011FC8
    li $t1, 0xC84705
    sw $t1, 0($t0)
    li $t0, 0x10011FCC # chão de tijolos laranjas — linha 31, col 51
    li $t1, 0xC3470B
    sw $t1, 0($t0)
    li $t0, 0x10011FD0
    li $t1, 0xC64704
    sw $t1, 0($t0)
    li $t0, 0x10011FD4
    li $t1, 0xA2A2A2
    sw $t1, 0($t0)
    li $t0, 0x10011FD8
    li $t1, 0xC34908
    sw $t1, 0($t0)
    li $t0, 0x10011FDC
    li $t1, 0xC44707
    sw $t1, 0($t0)
    li $t0, 0x10011FE0
    li $t1, 0x8F645B
    sw $t1, 0($t0)
    li $t0, 0x10011FE4
    li $t1, 0xC94618
    sw $t1, 0($t0)
    li $t0, 0x10011FE8
    li $t1, 0xC44808
    sw $t1, 0($t0)
    li $t0, 0x10011FEC
    li $t1, 0xC54806
    sw $t1, 0($t0)
    li $t0, 0x10011FF0
    li $t1, 0x737574
    sw $t1, 0($t0)
    li $t0, 0x10011FF4
    li $t1, 0xC9440B
    sw $t1, 0($t0)
    li $t0, 0x10011FF8
    li $t1, 0xC54808
    sw $t1, 0($t0)
    li $t0, 0x10011FFC
    li $t1, 0xBD4A1B
    sw $t1, 0($t0)

    jr $ra