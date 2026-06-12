.text

.globl desenhar_boneco_parado
desenhar_boneco_parado:
    li $t0, 0x10010000       # Endere√ßo base do Bitmap Display

    add $v0, $a1, 0
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x001E001E
    sw $t1, 40($v0)

    add $v0, $a1, 1
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x00784000
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)

    add $v0, $a1, 2
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00784000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x006A3800
    sw $t1, 40($v0)
    li $t1, 0x00784000
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)

    add $v0, $a1, 3
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    li $t1, 0x00784000
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00784000
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)
    li $t1, 0x00784000
    sw $t1, 44($v0)
    sw $t1, 48($v0)

    add $v0, $a1, 4
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 12($v0)
    li $t1, 0x00784000
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00FCFCFC
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 36($v0)
    li $t1, 0x001E1E1E
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)

    add $v0, $a1, 5
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 12($v0)
    li $t1, 0x00784000
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00FCFCFC
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 36($v0)
    li $t1, 0x001E1E1E
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)

    add $v0, $a1, 6
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00A4E8FC
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00FCFCFC
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 36($v0)
    li $t1, 0x00FCF9F2
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)

    add $v0, $a1, 7
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00A4E8FC
    sw $t1, 8($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)

    add $v0, $a1, 8
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 20($v0)
    li $t1, 0x004040FF
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x001E1A14
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)

    add $v0, $a1, 9
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00220022
    sw $t1, 4($v0)
    li $t1, 0x00DBC292
    sw $t1, 8($v0)
    li $t1, 0x00211E16
    sw $t1, 12($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 16($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 20($v0)
    li $t1, 0x004040FF
    sw $t1, 24($v0)
    li $t1, 0x004D56FF
    sw $t1, 28($v0)
    li $t1, 0x00B0E7F1
    sw $t1, 32($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 36($v0)
    li $t1, 0x003131C3
    sw $t1, 40($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)

    add $v0, $a1, 10
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 4($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 20($v0)
    li $t1, 0x004040FF
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x003838E1
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)

    add $v0, $a1, 11
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 0($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x004040FF
    sw $t1, 24($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 28($v0)
    li $t1, 0x004040FF
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x003838E1
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 48($v0)
    li $t1, 0x00000000
    sw $t1, 52($v0)
    sw $t1, 56($v0)

    add $v0, $a1, 12
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 4($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 8($v0)
    li $t1, 0x00784000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x001E1A14
    sw $t1, 40($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 52($v0)
    li $t1, 0x00000000
    sw $t1, 56($v0)

    add $v0, $a1, 13
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00784000
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    li $t1, 0x00784000
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 44($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 48($v0)
    li $t1, 0x00000000
    sw $t1, 52($v0)

    add $v0, $a1, 14
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)

    add $v0, $a1, 15
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00A4E8FC
    sw $t1, 12($v0)
    li $t1, 0x004040FF
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x004040FF
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 36($v0)
    li $t1, 0x001E001E
    sw $t1, 40($v0)

    add $v0, $a1, 16
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00A4E8FC
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x004040FF
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 36($v0)
    li $t1, 0x0091CDDE
    sw $t1, 40($v0)

    add $v0, $a1, 17
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00220022
    sw $t1, 8($v0)
    li $t1, 0x00161F21
    sw $t1, 12($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x004040FF
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    li $t1, 0x004D56FF
    sw $t1, 36($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)

    add $v0, $a1, 18
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x004040FF
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00784000
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)

    add $v0, $a1, 19
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    li $t1, 0x00784000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x004040FF
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    li $t1, 0x00784000
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)

    add $v0, $a1, 20
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 0($v0)
    li $t1, 0x00100800
    sw $t1, 4($v0)
    li $t1, 0x00784000
    sw $t1, 8($v0)
    li $t1, 0x00DBC292
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x0097D2FC
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00683700
    sw $t1, 40($v0)
    li $t1, 0x00DBC292
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)

    add $v0, $a1, 21
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00784000
    sw $t1, 0($v0)
    sw $t1, 4($v0)
    li $t1, 0x00000000
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)

    add $v0, $a1, 22
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00784000
    sw $t1, 0($v0)
    li $t1, 0x00000000
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 36($v0)
    li $t1, 0x00784000
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)
    sw $t1, 48($v0)

    add $v0, $a1, 23
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 0($v0)
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)

    jr $ra

.globl desenhar_boneco_andar1
desenhar_boneco_andar1:
    li $t0, 0x10010000       # Endere√ßo base do Bitmap Display

    add $v0, $a1, 0
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 28($v0)
    li $t1, 0x00784000
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)
    sw $t1, 52($v0)

    add $v0, $a1, 1
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 24($v0)
    li $t1, 0x00784000
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)

    add $v0, $a1, 2
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00620062
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    li $t1, 0x002E1800
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)
    li $t1, 0x002E1800
    sw $t1, 44($v0)
    li $t1, 0x00784000
    sw $t1, 48($v0)
    li $t1, 0x002E1800
    sw $t1, 52($v0)
    li $t1, 0x00AC2762
    sw $t1, 56($v0)

    add $v0, $a1, 3
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 24($v0)
    li $t1, 0x008FCBDC
    sw $t1, 28($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)
    li $t1, 0x00784000
    sw $t1, 44($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    li $t1, 0x00784000
    sw $t1, 56($v0)

    add $v0, $a1, 4
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x007D5520
    sw $t1, 28($v0)
    li $t1, 0x00784000
    sw $t1, 32($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 36($v0)
    li $t1, 0x00784000
    sw $t1, 40($v0)
    li $t1, 0x00FCFCFC
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)
    sw $t1, 52($v0)

    add $v0, $a1, 5
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00200020
    sw $t1, 16($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    li $t1, 0x007D5520
    sw $t1, 28($v0)
    li $t1, 0x00784000
    sw $t1, 32($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 36($v0)
    li $t1, 0x00784000
    sw $t1, 40($v0)
    li $t1, 0x00FCFCFC
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)
    sw $t1, 52($v0)

    add $v0, $a1, 6
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00AFCBFC
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x004040FF
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)
    sw $t1, 52($v0)

    add $v0, $a1, 7
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00200020
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    li $t1, 0x00000000
    sw $t1, 52($v0)

    add $v0, $a1, 8
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00201C15
    sw $t1, 28($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)
    sw $t1, 48($v0)

    add $v0, $a1, 9
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 20($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x003F5960
    sw $t1, 40($v0)
    li $t1, 0x00658F9C
    sw $t1, 44($v0)
    li $t1, 0x00620062
    sw $t1, 48($v0)

    add $v0, $a1, 10
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    li $t1, 0x004040FF
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)

    add $v0, $a1, 11
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00200020
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    li $t1, 0x004040FF
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)
    sw $t1, 48($v0)

    add $v0, $a1, 12
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00200020
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x009C8A68
    sw $t1, 32($v0)
    li $t1, 0x004A2700
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00784000
    sw $t1, 44($v0)
    li $t1, 0x00AB7D40
    sw $t1, 48($v0)
    li $t1, 0x009C8A68
    sw $t1, 52($v0)

    add $v0, $a1, 13
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00200020
    sw $t1, 16($v0)
    li $t1, 0x00784000
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00784000
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)
    li $t1, 0x00784000
    sw $t1, 48($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 52($v0)

    add $v0, $a1, 14
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00200020
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)

    add $v0, $a1, 15
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00200020
    sw $t1, 16($v0)
    li $t1, 0x004040FF
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    li $t1, 0x0097D3FC
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    li $t1, 0x004040FF
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)

    add $v0, $a1, 16
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x003838DF
    sw $t1, 16($v0)
    li $t1, 0x004040FF
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)
    sw $t1, 44($v0)

    add $v0, $a1, 17
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x003838DF
    sw $t1, 16($v0)
    li $t1, 0x004040FF
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    li $t1, 0x008FCBDC
    sw $t1, 28($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)
    sw $t1, 44($v0)

    add $v0, $a1, 18
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x003838DF
    sw $t1, 16($v0)
    li $t1, 0x004040FF
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    li $t1, 0x000F0800
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)

    add $v0, $a1, 19
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x003838DF
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00784000
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)

    add $v0, $a1, 20
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00200020
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00784000
    sw $t1, 28($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)

    add $v0, $a1, 21
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 20($v0)
    li $t1, 0x00784000
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    sw $t1, 32($v0)

    add $v0, $a1, 22
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 20($v0)
    li $t1, 0x002E1800
    sw $t1, 24($v0)
    li $t1, 0x004A2700
    sw $t1, 28($v0)
    li $t1, 0x009C8A68
    sw $t1, 32($v0)
    li $t1, 0x00620062
    sw $t1, 36($v0)

    add $v0, $a1, 23
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)

    jr $ra

.globl desenhar_boneco_andar2
desenhar_boneco_andar2:
    li $t0, 0x10010000       # Endere√ßo base do Bitmap Display

    add $v0, $a1, 0
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)

    add $v0, $a1, 1
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 24($v0)
    li $t1, 0x00784000
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    li $t1, 0x00000000
    sw $t1, 52($v0)

    add $v0, $a1, 2
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 24($v0)
    li $t1, 0x00784000
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)

    add $v0, $a1, 3
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00784000
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)
    li $t1, 0x00784000
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)

    add $v0, $a1, 4
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00784000
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 36($v0)
    li $t1, 0x00FCFCFC
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)

    add $v0, $a1, 5
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00620062
    sw $t1, 16($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    li $t1, 0x00784000
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 36($v0)
    li $t1, 0x00FCFCFC
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)

    add $v0, $a1, 6
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00C78FFD
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00405B62
    sw $t1, 24($v0)
    li $t1, 0x0056409B
    sw $t1, 28($v0)
    li $t1, 0x002F1900
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 40($v0)
    li $t1, 0x00FCEBC9
    sw $t1, 44($v0)
    li $t1, 0x00626262
    sw $t1, 48($v0)

    add $v0, $a1, 7
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00620062
    sw $t1, 16($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x004040FF
    sw $t1, 28($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 32($v0)
    li $t1, 0x004040FF
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 44($v0)
    sw $t1, 48($v0)

    add $v0, $a1, 8
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x009C8A68
    sw $t1, 16($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 28($v0)
    li $t1, 0x004040FF
    sw $t1, 32($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)

    add $v0, $a1, 9
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 12($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x004040FF
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)

    add $v0, $a1, 10
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 12($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    li $t1, 0x004040FF
    sw $t1, 32($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    li $t1, 0x00000000
    sw $t1, 60($v0)

    add $v0, $a1, 11
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 44($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 48($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    li $t1, 0x00211E16
    sw $t1, 60($v0)

    add $v0, $a1, 12
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 12($v0)
    li $t1, 0x00AB7D40
    sw $t1, 16($v0)
    li $t1, 0x00784000
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 52($v0)
    li $t1, 0x00000000
    sw $t1, 56($v0)

    add $v0, $a1, 13
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 16($v0)
    li $t1, 0x00784000
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    li $t1, 0x00784000
    sw $t1, 28($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)

    add $v0, $a1, 14
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 16($v0)
    li $t1, 0x004040FF
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    li $t1, 0x004040FF
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    sw $t1, 40($v0)

    add $v0, $a1, 15
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00658F9C
    sw $t1, 16($v0)
    li $t1, 0x004040FF
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    li $t1, 0x004040FF
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)

    add $v0, $a1, 16
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00658F9C
    sw $t1, 16($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 20($v0)
    li $t1, 0x004040FF
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    li $t1, 0x004040FF
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)

    add $v0, $a1, 17
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    li $t1, 0x004040FF
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 44($v0)
    sw $t1, 48($v0)

    add $v0, $a1, 18
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 12($v0)
    li $t1, 0x002E1800
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x004040FF
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)

    add $v0, $a1, 19
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x000D0700
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    li $t1, 0x006B3900
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x004040FF
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x006B3900
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    li $t1, 0x00000000
    sw $t1, 52($v0)

    add $v0, $a1, 20
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    li $t1, 0x00784000
    sw $t1, 12($v0)
    li $t1, 0x00605640
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    sw $t1, 28($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)
    li $t1, 0x00784000
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    li $t1, 0x00000000
    sw $t1, 52($v0)

    add $v0, $a1, 21
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 0($v0)
    li $t1, 0x00784000
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)

    add $v0, $a1, 22
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 0($v0)
    li $t1, 0x004A2700
    sw $t1, 4($v0)
    li $t1, 0x00784000
    sw $t1, 8($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 12($v0)
    li $t1, 0x00605640
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)
    li $t1, 0x00784000
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)
    li $t1, 0x00784000
    sw $t1, 52($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 56($v0)

    add $v0, $a1, 23
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)

    jr $ra

.globl desenhar_boneco_andar3
desenhar_boneco_andar3:
    li $t0, 0x10010000       # EndereÁo base do Bitmap Display

    add $v0, $a1, 0
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)

    add $v0, $a1, 1
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 16($v0)
    li $t1, 0x00784000
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)

    add $v0, $a1, 2
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x00784000
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    li $t1, 0x00784000
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)
    li $t1, 0x00784000
    sw $t1, 48($v0)

    add $v0, $a1, 3
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00784000
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    li $t1, 0x00784000
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    li $t1, 0x00784000
    sw $t1, 48($v0)

    # --- LINHA 4 EM REVIS√O (LINHA DOS OLHOS) ---
    add $v0, $a1, 4
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 16($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 20($v0)
    li $t1, 0x00784000
    sw $t1, 24($v0)
    li $t1, 0x00FCFCFC
    sw $t1, 28($v0)       # Olho Esquerdo (Branco)
    li $t1, 0x00000000
    sw $t1, 32($v0)       # Pupila Esquerda (Preto)
    li $t1, 0x00FCE0A8    
    sw $t1, 36($v0)       # CORRE«√O: Ponto de pele separando os olhos!
    li $t1, 0x00000000
    sw $t1, 40($v0)       # Pupila Direita (Preto)
    li $t1, 0x00FCFCFC
    sw $t1, 44($v0)       # Olho Direito (Branco)
    li $t1, 0x00000000
    sw $t1, 48($v0)

    # --- LINHA 5 EM REVIS√O (LINHA DOS OLHOS) ---
    add $v0, $a1, 5
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00784000
    sw $t1, 16($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 20($v0)
    li $t1, 0x00784000
    sw $t1, 24($v0)
    li $t1, 0x00FCFCFC
    sw $t1, 28($v0)       # Detalhe do Olho (Branco)
    li $t1, 0x00000000
    sw $t1, 32($v0)       # Detalhe do Olho (Preto)
    li $t1, 0x00FCE0A8    
    sw $t1, 36($v0)       # CORRE«√O: Ponto de pele separando os olhos!
    li $t1, 0x00000000
    sw $t1, 40($v0)       # Detalhe do Olho (Preto)
    li $t1, 0x00FCFCFC
    sw $t1, 44($v0)       # Detalhe do Olho (Branco)
    li $t1, 0x00000000
    sw $t1, 48($v0)

    add $v0, $a1, 6
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 24($v0)
    li $t1, 0x00FCFCFC
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)

    add $v0, $a1, 7
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00C593FD
    sw $t1, 12($v0)
    li $t1, 0x0068939F
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x002828A1
    sw $t1, 24($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 28($v0)
    li $t1, 0x009F8E6A
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x005D523E
    sw $t1, 40($v0)

    add $v0, $a1, 8
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 12($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)

    add $v0, $a1, 9
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)
    sw $t1, 44($v0)

    add $v0, $a1, 10
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x005E005E
    sw $t1, 4($v0)
    li $t1, 0x00000000
    sw $t1, 8($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 12($v0)
    li $t1, 0x005D523E
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00657EFE
    sw $t1, 24($v0)
    li $t1, 0x004040FF
    sw $t1, 28($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 32($v0)
    li $t1, 0x00657EFE
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    li $t1, 0x005E005E
    sw $t1, 48($v0)

    add $v0, $a1, 11
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 4($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x004040FF
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x004040FF
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 44($v0)
    sw $t1, 48($v0)

    add $v0, $a1, 12
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 4($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)

    add $v0, $a1, 13
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 4($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    li $t1, 0x00784000
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)

    add $v0, $a1, 14
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)

    add $v0, $a1, 15
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 16($v0)
    li $t1, 0x004040FF
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    li $t1, 0x004040FF
    sw $t1, 36($v0)

    add $v0, $a1, 16
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    li $t1, 0x004040FF
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)

    add $v0, $a1, 17
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 36($v0)

    add $v0, $a1, 18
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x00784000
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x004040FF
    sw $t1, 36($v0)

    add $v0, $a1, 19
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x00784000
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    sw $t1, 36($v0)

    add $v0, $a1, 20
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 16($v0)
    li $t1, 0x00784000
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)

    add $v0, $a1, 21
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00784000
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00784000
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)

    add $v0, $a1, 22
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00784000
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)

    add $v0, $a1, 23
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 16($v0)
    li $t1, 0x002C1700
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)

    jr $ra

.globl desenhar_boneco_chicote1
desenhar_boneco_chicote1:
    li $t0, 0x10010000       # Endere√ßo base do Bitmap Display

    add $v0, $a1, 0
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00B7B7B7
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)
    li $t1, 0x00E0E0E0
    sw $t1, 48($v0)
    li $t1, 0x00000000
    sw $t1, 52($v0)
    li $t1, 0x00F8F8F8
    sw $t1, 56($v0)

    add $v0, $a1, 1
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00F9D9F9
    sw $t1, 20($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 60($v0)
    li $t1, 0x00000000
    sw $t1, 64($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 68($v0)
    li $t1, 0x00000000
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)

    add $v0, $a1, 2
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00A0A0A0
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    sw $t1, 84($v0)
    li $t1, 0x00784000
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    li $t1, 0x00000000
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)

    add $v0, $a1, 3
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00C0C0C0
    sw $t1, 12($v0)
    li $t1, 0x00181818
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 64($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 68($v0)
    li $t1, 0x00DBC292
    sw $t1, 72($v0)
    li $t1, 0x00000000
    sw $t1, 80($v0)
    li $t1, 0x00100800
    sw $t1, 84($v0)
    li $t1, 0x00784000
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    li $t1, 0x00100800
    sw $t1, 104($v0)
    li $t1, 0x00784000
    sw $t1, 108($v0)

    add $v0, $a1, 4
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00F8F8F8
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 64($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    li $t1, 0x00000000
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    li $t1, 0x00784000
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    li $t1, 0x00000000
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    li $t1, 0x00784000
    sw $t1, 100($v0)
    li $t1, 0x00000000
    sw $t1, 104($v0)
    li $t1, 0x00784000
    sw $t1, 108($v0)

    add $v0, $a1, 5
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00B7B7B7
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 64($v0)
    li $t1, 0x00784000
    sw $t1, 68($v0)
    li $t1, 0x00000000
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 80($v0)
    li $t1, 0x00000000
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    li $t1, 0x00000000
    sw $t1, 104($v0)
    sw $t1, 108($v0)

    add $v0, $a1, 6
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00F8F8F8
    sw $t1, 4($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 64($v0)
    li $t1, 0x00784000
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    li $t1, 0x00000000
    sw $t1, 76($v0)
    li $t1, 0x00784000
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    li $t1, 0x00FCFCFC
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    li $t1, 0x00000000
    sw $t1, 96($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 100($v0)
    li $t1, 0x00FCFCFC
    sw $t1, 104($v0)
    li $t1, 0x00000000
    sw $t1, 108($v0)

    add $v0, $a1, 7
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00B7B7B7
    sw $t1, 4($v0)
    li $t1, 0x00000000
    sw $t1, 8($v0)
    sw $t1, 64($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    li $t1, 0x00000000
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    li $t1, 0x00FCFCFC
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    li $t1, 0x00000000
    sw $t1, 108($v0)

    add $v0, $a1, 8
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00F8F8F8
    sw $t1, 4($v0)
    li $t1, 0x00000000
    sw $t1, 8($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    li $t1, 0x00000000
    sw $t1, 76($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 80($v0)
    li $t1, 0x00000000
    sw $t1, 84($v0)
    li $t1, 0x004040FF
    sw $t1, 88($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 92($v0)
    li $t1, 0x00000000
    sw $t1, 96($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 100($v0)
    li $t1, 0x00000000
    sw $t1, 104($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 108($v0)

    add $v0, $a1, 9
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 0($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 88($v0)
    li $t1, 0x00000000
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    li $t1, 0x004040FF
    sw $t1, 104($v0)
    li $t1, 0x00000000
    sw $t1, 108($v0)
    li $t1, 0x005E543F
    sw $t1, 112($v0)

    add $v0, $a1, 10
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 0($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    li $t1, 0x00000000
    sw $t1, 84($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 88($v0)
    li $t1, 0x004040FF
    sw $t1, 92($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    li $t1, 0x004040FF
    sw $t1, 104($v0)
    li $t1, 0x00000000
    sw $t1, 108($v0)

    add $v0, $a1, 11
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00F8F8F8
    sw $t1, 0($v0)
    sw $t1, 4($v0)
    li $t1, 0x00000000
    sw $t1, 8($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 84($v0)
    li $t1, 0x004040FF
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 96($v0)
    li $t1, 0x004040FF
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    li $t1, 0x00000000
    sw $t1, 108($v0)
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    sw $t1, 120($v0)

    add $v0, $a1, 12
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00FC5FFC
    sw $t1, 0($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 4($v0)
    li $t1, 0x00181862
    sw $t1, 84($v0)
    li $t1, 0x004040FF
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    li $t1, 0x00000000
    sw $t1, 104($v0)
    li $t1, 0x009C8A68
    sw $t1, 108($v0)
    li $t1, 0x00C3C1A3
    sw $t1, 112($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 116($v0)
    li $t1, 0x009C8A68
    sw $t1, 120($v0)

    add $v0, $a1, 13
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00F8F8F8
    sw $t1, 4($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 108($v0)
    li $t1, 0x003D575E
    sw $t1, 112($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 116($v0)
    sw $t1, 120($v0)

    add $v0, $a1, 14
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00F8F8F8
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 84($v0)
    li $t1, 0x00784000
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    li $t1, 0x00000000
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    li $t1, 0x00C5E5DC
    sw $t1, 112($v0)
    li $t1, 0x00000000
    sw $t1, 116($v0)
    sw $t1, 120($v0)

    add $v0, $a1, 15
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00B7B7B7
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 84($v0)
    li $t1, 0x004040FF
    sw $t1, 88($v0)
    li $t1, 0x00000000
    sw $t1, 92($v0)
    li $t1, 0x004040FF
    sw $t1, 96($v0)
    li $t1, 0x00000000
    sw $t1, 100($v0)
    li $t1, 0x004040FF
    sw $t1, 104($v0)
    li $t1, 0x00000000
    sw $t1, 108($v0)

    add $v0, $a1, 16
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00A4E8FC
    sw $t1, 84($v0)
    li $t1, 0x004040FF
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    li $t1, 0x00000000
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 108($v0)

    add $v0, $a1, 17
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    li $t1, 0x004040FF
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    li $t1, 0x00000000
    sw $t1, 104($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 108($v0)
    sw $t1, 112($v0)
    li $t1, 0x00000000
    sw $t1, 116($v0)

    add $v0, $a1, 18
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    li $t1, 0x004040FF
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    li $t1, 0x00000000
    sw $t1, 104($v0)
    li $t1, 0x004040FF
    sw $t1, 108($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 112($v0)
    li $t1, 0x00000000
    sw $t1, 116($v0)

    add $v0, $a1, 19
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    li $t1, 0x00784000
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    li $t1, 0x00000000
    sw $t1, 92($v0)
    li $t1, 0x004040FF
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    li $t1, 0x00000000
    sw $t1, 104($v0)
    li $t1, 0x00784000
    sw $t1, 108($v0)
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    li $t1, 0x00000000
    sw $t1, 120($v0)

    add $v0, $a1, 20
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00784000
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    li $t1, 0x00000000
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    li $t1, 0x004040FF
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    li $t1, 0x00000000
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    sw $t1, 120($v0)

    add $v0, $a1, 21
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x002C1700
    sw $t1, 76($v0)
    li $t1, 0x004C2800
    sw $t1, 80($v0)
    li $t1, 0x009F8E6A
    sw $t1, 84($v0)
    li $t1, 0x005E005E
    sw $t1, 88($v0)
    li $t1, 0x0068939F
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    li $t1, 0x00000000
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    li $t1, 0x004C2800
    sw $t1, 112($v0)
    li $t1, 0x009F8E6A
    sw $t1, 116($v0)
    li $t1, 0x00000000
    sw $t1, 120($v0)

    add $v0, $a1, 22
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 108($v0)
    li $t1, 0x00784000
    sw $t1, 112($v0)
    li $t1, 0x00000000
    sw $t1, 116($v0)
    sw $t1, 120($v0)

    add $v0, $a1, 23
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 72($v0)
    li $t1, 0x00784000
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 84($v0)
    li $t1, 0x00000000
    sw $t1, 88($v0)
    sw $t1, 108($v0)
    li $t1, 0x002D1800
    sw $t1, 112($v0)
    li $t1, 0x00784000
    sw $t1, 116($v0)
    sw $t1, 120($v0)
    li $t1, 0x00000000
    sw $t1, 124($v0)

    jr $ra

.globl desenhar_boneco_chicote2
desenhar_boneco_chicote2:
    li $t0, 0x10010000       # Endere√ßo base do Bitmap Display

    add $v0, $a1, 0
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)

    add $v0, $a1, 1
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 20($v0)
    li $t1, 0x00784000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)

    add $v0, $a1, 2
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00784000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    li $t1, 0x00F8F8F8
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)

    add $v0, $a1, 3
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x0068939F
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x002C1700
    sw $t1, 36($v0)
    li $t1, 0x004C2800
    sw $t1, 40($v0)
    li $t1, 0x00799C9F
    sw $t1, 44($v0)
    li $t1, 0x002C1700
    sw $t1, 48($v0)
    li $t1, 0x00784000
    sw $t1, 52($v0)
    li $t1, 0x00E543E5
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 132($v0)
    li $t1, 0x00CFCFCF
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    li $t1, 0x00F8F8F8
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    li $t1, 0x00FB9DFB
    sw $t1, 156($v0)
    sw $t1, 160($v0)

    add $v0, $a1, 4
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00784000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 32($v0)
    li $t1, 0x00FCFCFC
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    li $t1, 0x00F8F8F8
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    sw $t1, 160($v0)
    sw $t1, 164($v0)
    sw $t1, 168($v0)
    sw $t1, 172($v0)

    add $v0, $a1, 5
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00620062
    sw $t1, 12($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00784000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 32($v0)
    li $t1, 0x00FCFCFC
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 152($v0)
    li $t1, 0x00F8F8F8
    sw $t1, 156($v0)
    sw $t1, 160($v0)
    sw $t1, 164($v0)
    sw $t1, 168($v0)
    sw $t1, 172($v0)
    sw $t1, 176($v0)
    sw $t1, 180($v0)

    add $v0, $a1, 6
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x007A559A
    sw $t1, 12($v0)
    li $t1, 0x0068939F
    sw $t1, 16($v0)
    li $t1, 0x003C555D
    sw $t1, 20($v0)
    li $t1, 0x005540A1
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x002828A1
    sw $t1, 32($v0)
    li $t1, 0x00857BDF
    sw $t1, 36($v0)
    li $t1, 0x005D5D5D
    sw $t1, 40($v0)
    li $t1, 0x005D5649
    sw $t1, 44($v0)
    li $t1, 0x00E543E5
    sw $t1, 160($v0)
    li $t1, 0x00CFCFCF
    sw $t1, 164($v0)
    li $t1, 0x00F8F8F8
    sw $t1, 168($v0)
    sw $t1, 172($v0)
    sw $t1, 176($v0)
    sw $t1, 180($v0)
    sw $t1, 184($v0)
    sw $t1, 188($v0)
    li $t1, 0x00FB9DFB
    sw $t1, 192($v0)

    add $v0, $a1, 7
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00620062
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x004040FF
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 40($v0)
    li $t1, 0x003F5960
    sw $t1, 44($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 172($v0)
    li $t1, 0x00F8F8F8
    sw $t1, 176($v0)
    sw $t1, 180($v0)
    sw $t1, 184($v0)
    sw $t1, 188($v0)
    sw $t1, 192($v0)
    sw $t1, 196($v0)
    sw $t1, 200($v0)

    add $v0, $a1, 8
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00658F9C
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x004040FF
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 172($v0)
    li $t1, 0x00F8F8F8
    sw $t1, 176($v0)
    sw $t1, 180($v0)
    sw $t1, 184($v0)
    sw $t1, 188($v0)
    sw $t1, 192($v0)
    sw $t1, 196($v0)
    li $t1, 0x00000000
    sw $t1, 200($v0)
    li $t1, 0x00F8F8F8
    sw $t1, 204($v0)

    add $v0, $a1, 9
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 4($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 8($v0)
    li $t1, 0x00605640
    sw $t1, 12($v0)
    li $t1, 0x004040FF
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 36($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    li $t1, 0x00000000
    sw $t1, 52($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 56($v0)
    li $t1, 0x00000000
    sw $t1, 60($v0)
    sw $t1, 64($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    li $t1, 0x00000000
    sw $t1, 76($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 80($v0)
    li $t1, 0x00F8F8F8
    sw $t1, 84($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 88($v0)
    li $t1, 0x00F8F8F8
    sw $t1, 92($v0)
    li $t1, 0x00000000
    sw $t1, 96($v0)
    li $t1, 0x00F8F8F8
    sw $t1, 100($v0)
    li $t1, 0x00000000
    sw $t1, 104($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 108($v0)
    li $t1, 0x00000000
    sw $t1, 112($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 116($v0)
    li $t1, 0x005F5F5F
    sw $t1, 120($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 124($v0)
    li $t1, 0x00F8F8F8
    sw $t1, 128($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 132($v0)
    li $t1, 0x00F8F8F8
    sw $t1, 136($v0)
    li $t1, 0x00000000
    sw $t1, 140($v0)
    li $t1, 0x00F8F8F8
    sw $t1, 144($v0)
    li $t1, 0x00000000
    sw $t1, 148($v0)
    li $t1, 0x00DFDFDF
    sw $t1, 152($v0)
    li $t1, 0x00000000
    sw $t1, 156($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 160($v0)
    li $t1, 0x00000000
    sw $t1, 164($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 168($v0)
    li $t1, 0x00F8F8F8
    sw $t1, 172($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 176($v0)
    li $t1, 0x00F8F8F8
    sw $t1, 180($v0)
    li $t1, 0x00717171
    sw $t1, 184($v0)
    li $t1, 0x00F8F8F8
    sw $t1, 188($v0)
    li $t1, 0x00000000
    sw $t1, 192($v0)
    li $t1, 0x00F8F8F8
    sw $t1, 196($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 200($v0)
    li $t1, 0x00F8F8F8
    sw $t1, 204($v0)
    sw $t1, 208($v0)

    add $v0, $a1, 10
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00FCE0A8
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    li $t1, 0x00605640
    sw $t1, 12($v0)
    li $t1, 0x004040FF
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    li $t1, 0x00784000
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    li $t1, 0x00605640
    sw $t1, 76($v0)
    li $t1, 0x00000000
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    sw $t1, 160($v0)
    sw $t1, 164($v0)
    sw $t1, 168($v0)
    sw $t1, 172($v0)
    sw $t1, 176($v0)
    sw $t1, 180($v0)
    sw $t1, 184($v0)
    sw $t1, 188($v0)
    sw $t1, 192($v0)
    sw $t1, 196($v0)
    li $t1, 0x00B7B7B7
    sw $t1, 200($v0)
    sw $t1, 204($v0)
    li $t1, 0x00000000
    sw $t1, 208($v0)

    add $v0, $a1, 11
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00FCE0A8
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    li $t1, 0x00605640
    sw $t1, 12($v0)
    li $t1, 0x004040FF
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    li $t1, 0x00784000
    sw $t1, 64($v0)
    li $t1, 0x00000000
    sw $t1, 68($v0)
    li $t1, 0x00784000
    sw $t1, 72($v0)
    li $t1, 0x00605640
    sw $t1, 76($v0)
    li $t1, 0x00000000
    sw $t1, 200($v0)
    li $t1, 0x00F8F8F8
    sw $t1, 204($v0)

    add $v0, $a1, 12
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 8($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)

    add $v0, $a1, 13
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    li $t1, 0x00784000
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)

    add $v0, $a1, 14
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 16($v0)
    li $t1, 0x002828A1
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    li $t1, 0x002828A1
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x005E005E
    sw $t1, 40($v0)

    add $v0, $a1, 15
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00620062
    sw $t1, 12($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 16($v0)
    li $t1, 0x004040FF
    sw $t1, 20($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    li $t1, 0x004040FF
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 40($v0)

    add $v0, $a1, 16
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00620062
    sw $t1, 12($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    li $t1, 0x004040FF
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 40($v0)
    li $t1, 0x003F5960
    sw $t1, 44($v0)

    add $v0, $a1, 17
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    li $t1, 0x004040FF
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    li $t1, 0x004040FF
    sw $t1, 40($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)

    add $v0, $a1, 18
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x004A2700
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x004040FF
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    li $t1, 0x00784000
    sw $t1, 48($v0)
    li $t1, 0x00000000
    sw $t1, 52($v0)

    add $v0, $a1, 19
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x004A2700
    sw $t1, 12($v0)
    li $t1, 0x00784000
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x004040FF
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    li $t1, 0x00784000
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    li $t1, 0x00000000
    sw $t1, 52($v0)

    add $v0, $a1, 20
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    li $t1, 0x00C9A368
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 28($v0)
    li $t1, 0x00A4E8FC
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00784000
    sw $t1, 44($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 48($v0)
    li $t1, 0x00000000
    sw $t1, 52($v0)

    add $v0, $a1, 21
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 0($v0)
    li $t1, 0x00784000
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)

    add $v0, $a1, 22
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 0($v0)
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 40($v0)
    li $t1, 0x00784000
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)
    sw $t1, 52($v0)

    add $v0, $a1, 23
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)

    jr $ra

.globl desenhar_boneco_dano
desenhar_boneco_dano:
    li $t0, 0x10010000       # Endere√ßo base do Bitmap Display

    add $v0, $a1, 0
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    li $t1, 0x00784000
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)

    add $v0, $a1, 1
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00784000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)

    add $v0, $a1, 2
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)

    add $v0, $a1, 3
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    li $t1, 0x00784000
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    li $t1, 0x00784000
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    li $t1, 0x00784000
    sw $t1, 40($v0)

    add $v0, $a1, 4
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x0000F8FC
    sw $t1, 0($v0)
    sw $t1, 4($v0)
    li $t1, 0x00000000
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00784000
    sw $t1, 24($v0)
    li $t1, 0x0000F8FC
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)

    add $v0, $a1, 5
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 12($v0)
    li $t1, 0x00784000
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    sw $t1, 40($v0)

    add $v0, $a1, 6
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x000078FC
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)

    add $v0, $a1, 7
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x0000F8FC
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    sw $t1, 40($v0)

    add $v0, $a1, 8
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x0000F8FC
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)

    add $v0, $a1, 9
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 4($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x000078FC
    sw $t1, 24($v0)
    li $t1, 0x0000F8FC
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    li $t1, 0x00000000
    sw $t1, 52($v0)

    add $v0, $a1, 10
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    li $t1, 0x000078FC
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)
    li $t1, 0x009C8A68
    sw $t1, 44($v0)
    li $t1, 0x0000F8FC
    sw $t1, 48($v0)
    sw $t1, 52($v0)

    add $v0, $a1, 11
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 8($v0)
    li $t1, 0x00605640
    sw $t1, 12($v0)
    li $t1, 0x009C8A68
    sw $t1, 16($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 20($v0)
    li $t1, 0x00605640
    sw $t1, 24($v0)
    li $t1, 0x004A2700
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00003A3B
    sw $t1, 44($v0)
    li $t1, 0x00005F60
    sw $t1, 48($v0)
    li $t1, 0x009CE9C8
    sw $t1, 52($v0)
    li $t1, 0x00773463
    sw $t1, 56($v0)

    add $v0, $a1, 12
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 12($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00784000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00620062
    sw $t1, 44($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    li $t1, 0x00000000
    sw $t1, 60($v0)

    add $v0, $a1, 13
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00784000
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00620062
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 56($v0)
    li $t1, 0x00000000
    sw $t1, 60($v0)

    add $v0, $a1, 14
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 16($v0)
    li $t1, 0x000078FC
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x0000F8FC
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    sw $t1, 40($v0)

    add $v0, $a1, 15
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 16($v0)
    li $t1, 0x000078FC
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x0000F8FC
    sw $t1, 28($v0)
    li $t1, 0x000078FC
    sw $t1, 32($v0)
    li $t1, 0x0000F8FC
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)

    add $v0, $a1, 16
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 16($v0)
    li $t1, 0x000078FC
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    li $t1, 0x000078FC
    sw $t1, 28($v0)
    li $t1, 0x0000F8FC
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)

    add $v0, $a1, 17
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x000078FC
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x0000F8FC
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00005F60
    sw $t1, 44($v0)

    add $v0, $a1, 18
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x0000F8FC
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00784000
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)

    add $v0, $a1, 19
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00784000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)

    add $v0, $a1, 20
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 16($v0)
    li $t1, 0x00784000
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 36($v0)
    li $t1, 0x00784000
    sw $t1, 40($v0)
    li $t1, 0x00C9A368
    sw $t1, 44($v0)
    li $t1, 0x00000000
    sw $t1, 48($v0)

    add $v0, $a1, 21
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 16($v0)
    li $t1, 0x00784000
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)

    add $v0, $a1, 22
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00784000
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    li $t1, 0x00FCE0A8
    sw $t1, 52($v0)

    add $v0, $a1, 23
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)

    jr $ra
