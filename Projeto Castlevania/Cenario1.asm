# cenario1.asm - Desenha o cenario 1: Entrada do Castelo. Contem os loops de renderizacao do ceu, arvores, parede e chao.

.text

desenha_cenario1:

    lw $t0, base_address
    lw $t1, cor_ceu
    li $t2, 1920            # 30 linhas x 64 pixels = 1920 pixels
    lw $t3, cor_terra
    lw $t4, cor_arvore

loop_ceu:
    sw $t1, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, loop_ceu

    li $t0, 0x10011E00
    li $t2, 128

loop_terra:
    sw $t3, 0($t0)
    addiu $t0, $t0, 4
    addiu $t2, $t2, -1
    bnez $t2, loop_terra

    li $t0, 0x10010800
    li $t5, 14

loop_arvore_linha:
    li $t6, 44

    loop_arvore_coluna:
        sw $t4, 0($t0)
        addiu $t0, $t0, 4
        addiu $t6, $t6, -1
        bnez $t6, loop_arvore_coluna

    addiu $t0, $t0, 80
    addiu $t5, $t5, -1
    bnez $t5, loop_arvore_linha

    jr $ra