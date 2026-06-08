.text

.globl desenhar_simon_parado
desenhar_simon_parado:
    li $t0, 0x10010000

    # --- LINHA 0 ---
    add $v0, $a1, 0
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0

    # --- LINHA 1 ---
    add $v0, $a1, 1
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0

    # --- LINHA 2 ---
    add $v0, $a1, 2
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)

    # --- LINHA 3 ---
    add $v0, $a1, 3
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)

    # --- LINHA 4 ---
    add $v0, $a1, 4
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00F8B878
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)

    # --- LINHA 5 ---
    add $v0, $a1, 5
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 8($v0)
    li $t1, 0x00F8B878
    sw $t1, 12($v0)
    li $t1, 0x000000FC
    sw $t1, 16($v0)
    li $t1, 0x00F8B878
    sw $t1, 20($v0)
    li $t1, 0x00747474
    sw $t1, 24($v0)

    # --- LINHA 6 ---
    add $v0, $a1, 6
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x000000FC
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    li $t1, 0x000000FC
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)

    # --- LINHA 7 ---
    add $v0, $a1, 7
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 8($v0)
    li $t1, 0x00F8B878
    sw $t1, 12($v0)
    li $t1, 0x00747474
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00747474
    sw $t1, 24($v0)

    # --- LINHA 8 ---
    add $v0, $a1, 8
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x000000FC
    sw $t1, 12($v0)
    li $t1, 0x00F8B878
    sw $t1, 16($v0)
    li $t1, 0x000000FC
    sw $t1, 20($v0)

    # --- LINHA 9 ---
    add $v0, $a1, 9
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x000000FC
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)

    # --- LINHA 10 ---
    add $v0, $a1, 10
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x00747474
    sw $t1, 20($v0)
    li $t1, 0x00747474
    sw $t1, 24($v0)

    # --- LINHA 11 ---
    add $v0, $a1, 11
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)

    # --- LINHA 12 ---
    add $v0, $a1, 12
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 8($v0)
    li $t1, 0x00747474
    sw $t1, 12($v0)
    li $t1, 0x00747474
    sw $t1, 24($v0)

    # --- LINHA 13 ---
    add $v0, $a1, 13
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0

    jr $ra

.globl desenhar_simon_andar1
desenhar_simon_andar1:
    li $t0, 0x10010000

    # --- LINHA 0 ---
    add $v0, $a1, 0
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0

    # --- LINHA 1 ---
    add $v0, $a1, 1
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)

    # --- LINHA 2 ---
    add $v0, $a1, 2
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00747474
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00747474
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)

    # --- LINHA 3 ---
    add $v0, $a1, 3
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x000000FC
    sw $t1, 20($v0)
    li $t1, 0x00F8B878
    sw $t1, 24($v0)

    # --- LINHA 4 ---
    add $v0, $a1, 4
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00F8B878
    sw $t1, 12($v0)
    li $t1, 0x00F8B878
    sw $t1, 16($v0)
    li $t1, 0x000000FC
    sw $t1, 20($v0)
    li $t1, 0x00F8B878
    sw $t1, 24($v0)
    li $t1, 0x00747474
    sw $t1, 28($v0)

    # --- LINHA 5 ---
    add $v0, $a1, 5
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x000000FC
    sw $t1, 20($v0)
    li $t1, 0x00747474
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)
    li $t1, 0x00747474
    sw $t1, 32($v0)

    # --- LINHA 6 ---
    add $v0, $a1, 6
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00F8B878
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    li $t1, 0x00747474
    sw $t1, 28($v0)
    li $t1, 0x00747474
    sw $t1, 32($v0)

    # --- LINHA 7 ---
    add $v0, $a1, 7
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x000000FC
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)

    # --- LINHA 8 ---
    add $v0, $a1, 8
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x00747474
    sw $t1, 20($v0)
    li $t1, 0x000000FC
    sw $t1, 24($v0)

    # --- LINHA 9 ---
    add $v0, $a1, 9
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00F8B878
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x000000FC
    sw $t1, 24($v0)
    li $t1, 0x00F8B878
    sw $t1, 28($v0)

    # --- LINHA 10 ---
    add $v0, $a1, 10
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00747474
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)
    li $t1, 0x00747474
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)

    # --- LINHA 11 ---
    add $v0, $a1, 11
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 8($v0)
    li $t1, 0x00747474
    sw $t1, 12($v0)
    li $t1, 0x00747474
    sw $t1, 28($v0)
    li $t1, 0x00000000
    sw $t1, 32($v0)

    # --- LINHA 12 ---
    add $v0, $a1, 12
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 8($v0)
    li $t1, 0x00747474
    sw $t1, 12($v0)
    li $t1, 0x00747474
    sw $t1, 28($v0)
    li $t1, 0x00747474
    sw $t1, 32($v0)

    # --- LINHA 13 ---
    add $v0, $a1, 13
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0

    jr $ra

.globl desenhar_simon_andar2
desenhar_simon_andar2:
    li $t0, 0x10010000

    # --- LINHA 0 ---
    add $v0, $a1, 0
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0

    # --- LINHA 1 ---
    add $v0, $a1, 1
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00747474
    sw $t1, 24($v0)

    # --- LINHA 2 ---
    add $v0, $a1, 2
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00747474
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x00747474
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)

    # --- LINHA 3 ---
    add $v0, $a1, 3
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 12($v0)
    li $t1, 0x000000FC
    sw $t1, 16($v0)
    li $t1, 0x00F8B878
    sw $t1, 20($v0)

    # --- LINHA 4 ---
    add $v0, $a1, 4
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00F8B878
    sw $t1, 12($v0)
    li $t1, 0x000000FC
    sw $t1, 16($v0)
    li $t1, 0x00F8B878
    sw $t1, 20($v0)
    li $t1, 0x00747474
    sw $t1, 24($v0)

    # --- LINHA 5 ---
    add $v0, $a1, 5
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    li $t1, 0x000000FC
    sw $t1, 16($v0)
    li $t1, 0x00F8B878
    sw $t1, 20($v0)
    li $t1, 0x00747474
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)

    # --- LINHA 6 ---
    add $v0, $a1, 6
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00F8B878
    sw $t1, 12($v0)
    li $t1, 0x00000000
    sw $t1, 16($v0)
    li $t1, 0x00747474
    sw $t1, 20($v0)
    li $t1, 0x00747474
    sw $t1, 24($v0)
    li $t1, 0x00747474
    sw $t1, 28($v0)

    # --- LINHA 7 ---
    add $v0, $a1, 7
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 12($v0)
    li $t1, 0x00F8B878
    sw $t1, 16($v0)
    li $t1, 0x000000FC
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)

    # --- LINHA 8 ---
    add $v0, $a1, 8
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00000000
    sw $t1, 8($v0)
    li $t1, 0x00F8B878
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00F8B878
    sw $t1, 24($v0)

    # --- LINHA 9 ---
    add $v0, $a1, 9
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00747474
    sw $t1, 12($v0)
    li $t1, 0x00F8B878
    sw $t1, 16($v0)
    li $t1, 0x00000000
    sw $t1, 20($v0)
    li $t1, 0x00000000
    sw $t1, 24($v0)

    # --- LINHA 10 ---
    add $v0, $a1, 10
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00747474
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    li $t1, 0x00747474
    sw $t1, 24($v0)

    # --- LINHA 11 ---
    add $v0, $a1, 11
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0
    li $t1, 0x00747474
    sw $t1, 8($v0)
    li $t1, 0x00747474
    sw $t1, 24($v0)
    li $t1, 0x00000000
    sw $t1, 28($v0)

    # --- LINHA 12 ---
    add $v0, $a1, 12
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0

    # --- LINHA 13 ---
    add $v0, $a1, 13
    sll $v0, $v0, 6
    add $v0, $v0, $a0
    sll $v0, $v0, 2
    add $v0, $v0, $t0

    jr $ra

