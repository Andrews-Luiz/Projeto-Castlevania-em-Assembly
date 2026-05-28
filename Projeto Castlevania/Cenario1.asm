# cenario1.asm - Desenha o cenario 1: Entrada do Castelo. Contem os loops de renderizacao do ceu, arvores, parede e chao.

.data
    base_address: .word 0x10010000
    cor_ceu:      .word 0x00001A57  # azul escuro
    cor_terra:    .word 0x008B3A00  # marrom/laranja
    cor_arvore:   .word 0x00146B00  # verde escuro
    cor_parede:   .word 0x00A0522D  # tijolo laranja
    cor_sombra:   .word 0x00000000  # preto (entrada do castelo)

.text

desenha_cenario1:

    # === CEU (linhas 0 a 7) ===
    lw $t0, base_address
    lw $t1, cor_ceu
    li $t5, 8               # 8 linhas

    loop_ceu_linha:
        li $t6, 64          # 64 colunas

        loop_ceu_coluna:
            sw $t1, 0($t0)
            addiu $t0, $t0, 4
            addiu $t6, $t6, -1
            bnez $t6, loop_ceu_coluna

        addiu $t5, $t5, -1
        bnez $t5, loop_ceu_linha

    # === ARVORES (linhas 8 a 21, colunas 0 a 43) ===
    li $t0, 0x10010800      # linha 8, coluna 0
    lw $t1, cor_arvore
    li $t5, 14              # 14 linhas

    loop_arvore_linha:
        li $t6, 44          # 44 colunas

        loop_arvore_coluna:
            sw $t1, 0($t0)
            addiu $t0, $t0, 4
            addiu $t6, $t6, -1
            bnez $t6, loop_arvore_coluna

        addiu $t0, $t0, 80  # pula 20 colunas restantes (80 bytes)
        addiu $t5, $t5, -1
        bnez $t5, loop_arvore_linha

    # === CEU LADO DIREITO (linhas 0 a 7, colunas 44 a 63) ===
    li $t0, 0x100100B0      # linha 0, coluna 44
    lw $t1, cor_ceu
    li $t5, 8               # 8 linhas

    loop_ceu_dir_linha:
        li $t6, 20          # 20 colunas

        loop_ceu_dir_coluna:
            sw $t1, 0($t0)
            addiu $t0, $t0, 4
            addiu $t6, $t6, -1
            bnez $t6, loop_ceu_dir_coluna

        addiu $t0, $t0, 176 # pula 44 colunas da esquerda (176 bytes)
        addiu $t5, $t5, -1
        bnez $t5, loop_ceu_dir_linha

    # === SOMBRA/PRETO MEIO (linhas 8 a 21, colunas 44 a 54) ===
    li $t0, 0x100108B0      # linha 8, coluna 44
    lw $t1, cor_sombra
    li $t5, 14              # 14 linhas

    loop_sombra_linha:
        li $t6, 11          # 11 colunas (44 a 54)

        loop_sombra_coluna:
            sw $t1, 0($t0)
            addiu $t0, $t0, 4
            addiu $t6, $t6, -1
            bnez $t6, loop_sombra_coluna

        addiu $t0, $t0, 212 # pula colunas restantes
        addiu $t5, $t5, -1
        bnez $t5, loop_sombra_linha

    # === PAREDE DO CASTELO (linhas 0 a 29, colunas 55 a 63) ===
    li $t0, 0x100100DC      # linha 0, coluna 55
    lw $t1, cor_parede
    li $t5, 30              # 30 linhas

    loop_parede_linha:
        li $t6, 9           # 9 colunas (55 a 63)

        loop_parede_coluna:
            sw $t1, 0($t0)
            addiu $t0, $t0, 4
            addiu $t6, $t6, -1
            bnez $t6, loop_parede_coluna

        addiu $t0, $t0, 220 # pula 55 colunas da esquerda (220 bytes)
        addiu $t5, $t5, -1
        bnez $t5, loop_parede_linha

    # === CHAO (linhas 30 a 31) ===
    li $t0, 0x10011E00      # linha 30, coluna 0
    lw $t1, cor_terra
    li $t5, 128             # 2 linhas x 64 pixels

    loop_chao:
        sw $t1, 0($t0)
        addiu $t0, $t0, 4
        addiu $t5, $t5, -1
        bnez $t5, loop_chao

    jr $ra