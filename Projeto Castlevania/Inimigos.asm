.text

.globl desenhar_zumbi1
desenhar_zumbi1:
    move $t0, $a2       # EndereÃ§o base do Bitmap Display

    add $v0, $a1, 0
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00CB8AF9
    sw $t1, 0($v0)
    li $t1, 0x00CC88FC
    sw $t1, 4($v0)
    li $t1, 0x00000000
    sw $t1, 8($v0)

    add $v0, $a1, 1
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00AAA2AE
    sw $t1, 0($v0)
    li $t1, 0x00764F93
    sw $t1, 4($v0)
    li $t1, 0x00CC88FC
    sw $t1, 8($v0)
    li $t1, 0x00141414
    sw $t1, 12($v0)

    add $v0, $a1, 2
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 8($v0)
    li $t1, 0x00BC7DE8
    sw $t1, 12($v0)
    li $t1, 0x00CC88FC
    sw $t1, 28($v0)
    sw $t1, 36($v0)
    li $t1, 0x00DBDBDB
    sw $t1, 40($v0)

    add $v0, $a1, 3
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 28($v0)
    li $t1, 0x00CC88FC
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    li $t1, 0x00DBDBDB
    sw $t1, 40($v0)

    add $v0, $a1, 4
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00CDA5E9
    sw $t1, 0($v0)
    li $t1, 0x00E0A0FC
    sw $t1, 4($v0)
    li $t1, 0x00553969
    sw $t1, 8($v0)
    li $t1, 0x00624475
    sw $t1, 12($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00646364
    sw $t1, 24($v0)
    li $t1, 0x00C49BE1
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    li $t1, 0x00CC88FC
    sw $t1, 36($v0)
    li $t1, 0x00D9D9D9
    sw $t1, 40($v0)

    add $v0, $a1, 5
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x000A090A
    sw $t1, 0($v0)
    li $t1, 0x00CC88FC
    sw $t1, 4($v0)
    li $t1, 0x00000000
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 24($v0)
    li $t1, 0x00CC88FC
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00D9D9D9
    sw $t1, 40($v0)

    add $v0, $a1, 6
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00CB8AF9
    sw $t1, 0($v0)
    li $t1, 0x00000000
    sw $t1, 4($v0)
    li $t1, 0x00CC88FC
    sw $t1, 8($v0)
    li $t1, 0x00BC7DE8
    sw $t1, 12($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    li $t1, 0x00DBDBDB
    sw $t1, 40($v0)

    add $v0, $a1, 7
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x005A3F6D
    sw $t1, 0($v0)
    li $t1, 0x00553969
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    li $t1, 0x004E3461
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x00695269
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00CC88FC
    sw $t1, 32($v0)
    li $t1, 0x00553969
    sw $t1, 36($v0)
    li $t1, 0x00575757
    sw $t1, 40($v0)

    add $v0, $a1, 8
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x000A0A0A
    sw $t1, 0($v0)
    li $t1, 0x00CC88FC
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00CC88FC
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    li $t1, 0x001B151B
    sw $t1, 40($v0)

    add $v0, $a1, 9
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x000A0A0A
    sw $t1, 0($v0)
    li $t1, 0x00000000
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00CC88FC
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)

    add $v0, $a1, 10
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00989897
    sw $t1, 4($v0)
    li $t1, 0x00F0D9ED
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 20($v0)
    li $t1, 0x00695269
    sw $t1, 24($v0)
    li $t1, 0x00553969
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 36($v0)
    li $t1, 0x001B151B
    sw $t1, 40($v0)

    add $v0, $a1, 11
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00140F14
    sw $t1, 12($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 36($v0)
    li $t1, 0x001B151B
    sw $t1, 40($v0)

    add $v0, $a1, 12
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00140F14
    sw $t1, 12($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 36($v0)
    li $t1, 0x001B151B
    sw $t1, 40($v0)

    add $v0, $a1, 13
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00FCC4FC
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    li $t1, 0x00130F13
    sw $t1, 32($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 36($v0)
    li $t1, 0x001B151B
    sw $t1, 40($v0)

    add $v0, $a1, 14
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00140F14
    sw $t1, 12($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x001B151B
    sw $t1, 40($v0)

    add $v0, $a1, 15
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00140F14
    sw $t1, 12($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x001B151B
    sw $t1, 40($v0)

    add $v0, $a1, 16
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 8($v0)
    li $t1, 0x00251D25
    sw $t1, 12($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00DBDBDB
    sw $t1, 40($v0)

    add $v0, $a1, 17
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 8($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00E1E1E1
    sw $t1, 40($v0)

    add $v0, $a1, 18
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 8($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)

    add $v0, $a1, 19
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 4($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 8($v0)
    li $t1, 0x00755B75
    sw $t1, 12($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)

    add $v0, $a1, 20
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 4($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 8($v0)
    li $t1, 0x00140F14
    sw $t1, 12($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 36($v0)
    li $t1, 0x00E2E2E2
    sw $t1, 40($v0)

    add $v0, $a1, 21
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 4($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 8($v0)
    li $t1, 0x00140F14
    sw $t1, 12($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    li $t1, 0x001B151B
    sw $t1, 40($v0)

    add $v0, $a1, 22
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 4($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 8($v0)
    li $t1, 0x00080608
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x00695269
    sw $t1, 20($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    li $t1, 0x00695269
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)
    li $t1, 0x005C5D5D
    sw $t1, 44($v0)

    add $v0, $a1, 23
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)

    jr $ra

.globl desenhar_zumbi2
desenhar_zumbi2:
    move $t0, $a2       # EndereÃ§o base do Bitmap Display

    add $v0, $a1, 0
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00CC88FC
    sw $t1, 4($v0)
    li $t1, 0x00000000
    sw $t1, 8($v0)

    add $v0, $a1, 1
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00C7A1E3
    sw $t1, 0($v0)
    li $t1, 0x00573B6B
    sw $t1, 4($v0)
    li $t1, 0x00CC88FC
    sw $t1, 8($v0)
    li $t1, 0x00030303
    sw $t1, 12($v0)

    add $v0, $a1, 2
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 8($v0)
    li $t1, 0x00C885F7
    sw $t1, 12($v0)
    li $t1, 0x00CC88FC
    sw $t1, 28($v0)
    sw $t1, 36($v0)

    add $v0, $a1, 3
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 28($v0)
    li $t1, 0x00CC88FC
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)

    add $v0, $a1, 4
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00FCC4FC
    sw $t1, 4($v0)
    li $t1, 0x00CC88FC
    sw $t1, 8($v0)
    li $t1, 0x00CD89FC
    sw $t1, 12($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    li $t1, 0x00CC88FC
    sw $t1, 36($v0)

    add $v0, $a1, 5
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 4($v0)
    li $t1, 0x00000000
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 16($v0)
    li $t1, 0x001C161C
    sw $t1, 20($v0)
    li $t1, 0x00E0AEE0
    sw $t1, 24($v0)
    li $t1, 0x00CC88FC
    sw $t1, 28($v0)
    li $t1, 0x00B579E0
    sw $t1, 32($v0)
    li $t1, 0x00CC88FC
    sw $t1, 36($v0)

    add $v0, $a1, 6
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 4($v0)
    li $t1, 0x00CC88FC
    sw $t1, 8($v0)
    li $t1, 0x00C885F7
    sw $t1, 12($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)

    add $v0, $a1, 7
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00CC88FC
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    li $t1, 0x00C885F7
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00CC88FC
    sw $t1, 32($v0)
    sw $t1, 36($v0)

    add $v0, $a1, 8
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x002A1C34
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    li $t1, 0x00342834
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x002A1C34
    sw $t1, 28($v0)
    li $t1, 0x00CC88FC
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    sw $t1, 40($v0)

    add $v0, $a1, 9
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00CC88FC
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)

    add $v0, $a1, 10
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 4($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00CC88FC
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)

    add $v0, $a1, 11
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)

    add $v0, $a1, 12
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00040304
    sw $t1, 12($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)

    add $v0, $a1, 13
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00FCC4FC
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)

    add $v0, $a1, 14
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00FCC4FC
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)

    add $v0, $a1, 15
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00040304
    sw $t1, 12($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)

    add $v0, $a1, 16
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
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
    sw $t1, 4($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)

    add $v0, $a1, 18
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 4($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)

    add $v0, $a1, 19
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00040304
    sw $t1, 0($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00000000
    sw $t1, 40($v0)

    add $v0, $a1, 20
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00040304
    sw $t1, 0($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)

    add $v0, $a1, 21
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00040304
    sw $t1, 0($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00000000
    sw $t1, 44($v0)

    add $v0, $a1, 22
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 0($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 4($v0)
    li $t1, 0x00000000
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    li $t1, 0x00695269
    sw $t1, 16($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    li $t1, 0x00695269
    sw $t1, 28($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 32($v0)
    li $t1, 0x00937193
    sw $t1, 36($v0)
    li $t1, 0x00695269
    sw $t1, 40($v0)
    li $t1, 0x00937193
    sw $t1, 44($v0)

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
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)

    jr $ra

.globl desenhar_morcego1
desenhar_morcego1:
    move $t0, $a2       # EndereÃ§o base do Bitmap Display

    add $v0, $a1, 0
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0

    add $v0, $a1, 1
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00FAC5FB
    sw $t1, 4($v0)
    li $t1, 0x000B080B
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    li $t1, 0x00FBC6FB
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00FBC5FB
    sw $t1, 28($v0)

    add $v0, $a1, 2
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00FCC4FC
    sw $t1, 0($v0)
    sw $t1, 4($v0)
    li $t1, 0x00000000
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 32($v0)
    sw $t1, 36($v0)

    add $v0, $a1, 3
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 0($v0)
    li $t1, 0x00000000
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 40($v0)

    add $v0, $a1, 4
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 4($v0)
    li $t1, 0x004F3562
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 44($v0)

    add $v0, $a1, 5
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 4($v0)
    li $t1, 0x00000000
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 40($v0)

    add $v0, $a1, 6
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    li $t1, 0x00CC88FC
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 40($v0)

    add $v0, $a1, 7
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 4($v0)
    li $t1, 0x00CC88FC
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00141014
    sw $t1, 40($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 44($v0)

    add $v0, $a1, 8
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 0($v0)
    li $t1, 0x00000000
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)

    add $v0, $a1, 9
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 0($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 40($v0)

    add $v0, $a1, 10
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 0($v0)
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 44($v0)

    add $v0, $a1, 11
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0

    jr $ra

.globl desenhar_morcego2
desenhar_morcego2:
    move $t0, $a2       # EndereÃ§o base do Bitmap Display

    add $v0, $a1, 0
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00FCC4FC
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)

    add $v0, $a1, 1
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00CC88FC
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00030204
    sw $t1, 40($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 44($v0)

    add $v0, $a1, 2
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    sw $t1, 4($v0)
    li $t1, 0x00000000
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    li $t1, 0x00CC88FC
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00F8C1F8
    sw $t1, 40($v0)

    add $v0, $a1, 3
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00FCC4FC
    sw $t1, 8($v0)
    li $t1, 0x00967596
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 44($v0)

    add $v0, $a1, 4
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00140F14
    sw $t1, 0($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 4($v0)
    li $t1, 0x00000000
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    li $t1, 0x00CC88FC
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    li $t1, 0x00CC88FC
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00030204
    sw $t1, 40($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 44($v0)

    add $v0, $a1, 5
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00FBC8FB
    sw $t1, 0($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 4($v0)
    li $t1, 0x00000000
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    li $t1, 0x00CC88FC
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00CC88FC
    sw $t1, 36($v0)
    li $t1, 0x00F8C1F8
    sw $t1, 40($v0)

    add $v0, $a1, 6
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00FCC4FC
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    li $t1, 0x00CC88FC
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    li $t1, 0x00000000
    sw $t1, 36($v0)
    li $t1, 0x00F8C1F8
    sw $t1, 40($v0)

    add $v0, $a1, 7
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00140F14
    sw $t1, 0($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 4($v0)
    li $t1, 0x00000000
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    li $t1, 0x00CC88FC
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 40($v0)

    add $v0, $a1, 8
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00140F14
    sw $t1, 0($v0)
    li $t1, 0x00000000
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00CC88FC
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 32($v0)
    sw $t1, 36($v0)

    add $v0, $a1, 9
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00FCC8FB
    sw $t1, 0($v0)
    li $t1, 0x00000000
    sw $t1, 4($v0)
    li $t1, 0x00CC88FC
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)

    add $v0, $a1, 10
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00FCC4FC
    sw $t1, 4($v0)
    sw $t1, 8($v0)
    li $t1, 0x00967596
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 32($v0)

    add $v0, $a1, 11
    sll $v0, $v0, 7
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00FAE6FA
    sw $t1, 12($v0)
    li $t1, 0x00FCC4FC
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)

    jr $ra
