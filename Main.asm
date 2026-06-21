# =========================================================================
#   MAIN.ASM - AVALIAÇÃO: 2 NPCs AUTÔNOMOS (ZUMBI + MORCEGO)
# =========================================================================

# MAPA DE REGISTRADORES GLOBAIS
# $s0 = pos_x do Zumbi
# $s1 = pos_y do Zumbi       (fixo no chão)
# $s2 = direcao_zumbi        (0 = direita, 1 = esquerda)
# $s3 = pos_x do Morcego
# $s4 = pos_y do Morcego     (fixo no ar)
# $s5 = direcao_morcego      (0 = direita, 1 = esquerda)
# $s6 = frame_counter        (contador geral para alternar sprites)
# $s7 = sprite_atual         (0 = sprite1, 1 = sprite2)

.data
    zumbi_prev_x:   .word 20
    zumbi_prev_y:   .word 36
    morcego_prev_x: .word 80
    morcego_prev_y: .word 10
    fundo_desenhado: .word 0

.text
.globl main

main:
    # Posição inicial do Zumbi (chão)
    li $s0, 20
    li $s1, 36

    # Direção inicial do Zumbi (indo para direita)
    li $s2, 0

    # Posição inicial do Morcego (ar)
    li $s3, 80
    li $s4, 10

    # Direção inicial do Morcego (indo para esquerda)
    li $s5, 1

    # Contadores de frame e sprite
    li $s6, 0
    li $s7, 0

# =========================================================================
# LOOP PRINCIPAL
# =========================================================================
loop_principal:

    # --- Desenha o fundo uma única vez ---
    la $t0, fundo_desenhado
    lw $t1, 0($t0)
    bne $t1, $zero, loop_apagar

    jal limpar_tela_preto
    jal desenha_cenario1
    li $t1, 1
    la $t0, fundo_desenhado
    sw $t1, 0($t0)

# =========================================================================
# APAGA POSIÇÃO ANTERIOR DOS NPCs
# =========================================================================
loop_apagar:

    # Apaga bloco do Zumbi (24x24)
    la $t0, zumbi_prev_x
    lw $a0, 0($t0)
    la $t0, zumbi_prev_y
    lw $a1, 0($t0)
    jal apagar_bloco_24x24

    # Apaga bloco do Morcego (24x14)
    la $t0, morcego_prev_x
    lw $a0, 0($t0)
    la $t0, morcego_prev_y
    lw $a1, 0($t0)
    jal apagar_bloco_24x14

# =========================================================================
# ATUALIZA POSIÇÃO DO ZUMBI
# =========================================================================
atualizar_zumbi:
    bne $s2, $zero, zumbi_esquerda

zumbi_direita:
    addi $s0, $s0, 1
    li $t0, 100                  # limite direito
    blt $s0, $t0, fim_zumbi
    li $s2, 1                    # inverte direção
    j fim_zumbi

zumbi_esquerda:
    addi $s0, $s0, -1
    li $t0, 2                    # limite esquerdo
    bgt $s0, $t0, fim_zumbi
    li $s2, 0                    # inverte direção

fim_zumbi:

# =========================================================================
# ATUALIZA POSIÇÃO DO MORCEGO
# =========================================================================
atualizar_morcego:
    bne $s5, $zero, morcego_esquerda

morcego_direita:
    addi $s3, $s3, 2             # morcego mais rápido
    li $t0, 100                  # limite direito
    blt $s3, $t0, fim_morcego
    li $s5, 1
    j fim_morcego

morcego_esquerda:
    addi $s3, $s3, -2
    li $t0, 2                    # limite esquerdo
    bgt $s3, $t0, fim_morcego
    li $s5, 0

fim_morcego:

# =========================================================================
# ALTERNA SPRITE (a cada 8 frames)
# =========================================================================
    addi $s6, $s6, 1
    li $t0, 8
    blt $s6, $t0, desenhar_npcs
    li $s6, 0
    # Alterna entre 0 e 1
    beq $s7, 0, set_sprite2
    li $s7, 0
    j desenhar_npcs
set_sprite2:
    li $s7, 1

# =========================================================================
# DESENHA OS NPCs NA NOVA POSIÇÃO
# =========================================================================
desenhar_npcs:

    # Salva posição atual como anterior
    la $t0, zumbi_prev_x
    sw $s0, 0($t0)
    la $t0, zumbi_prev_y
    sw $s1, 0($t0)
    la $t0, morcego_prev_x
    sw $s3, 0($t0)
    la $t0, morcego_prev_y
    sw $s4, 0($t0)

    # Desenha Zumbi
    move $a0, $s0
    move $a1, $s1
    beq $s7, 0, desenha_zumbi1
    jal desenhar_zumbi2
    j desenha_morcego
desenha_zumbi1:
    jal desenhar_zumbi1

    # Desenha Morcego
desenha_morcego:
    move $a0, $s3
    move $a1, $s4
    beq $s7, 0, desenha_morcego1
    jal desenhar_morcego2
    j frame_delay
desenha_morcego1:
    jal desenhar_morcego1

# =========================================================================
# FRAME DELAY (~60 FPS)
# =========================================================================
frame_delay:
    li $v0, 32
    li $a0, 16
    syscall
    j loop_principal

# =========================================================================
# APAGA BLOCO 24x24 em ($a0=x, $a1=y)
# =========================================================================
apagar_bloco_24x24:
    li $t0, 0x10010000
    li $t9, 0
apagar24_linha:
    add $t1, $a1, $t9
    sll $t1, $t1, 7
    add $t1, $t1, $a0
    sll $t1, $t1, 2
    add $t1, $t1, $t0
    li $t2, 0
apagar24_coluna:
    sw $zero, 0($t1)
    addi $t1, $t1, 4
    addi $t2, $t2, 1
    li $t3, 24
    blt $t2, $t3, apagar24_coluna
    addi $t9, $t9, 1
    blt $t9, $t3, apagar24_linha
    jr $ra

# =========================================================================
# APAGA BLOCO 24x14 em ($a0=x, $a1=y)  — tamanho do morcego
# =========================================================================
apagar_bloco_24x14:
    li $t0, 0x10010000
    li $t9, 0
apagar14_linha:
    add $t1, $a1, $t9
    sll $t1, $t1, 7
    add $t1, $t1, $a0
    sll $t1, $t1, 2
    add $t1, $t1, $t0
    li $t2, 0
apagar14_coluna:
    sw $zero, 0($t1)
    addi $t1, $t1, 4
    addi $t2, $t2, 1
    li $t3, 24
    blt $t2, $t3, apagar14_coluna
    addi $t9, $t9, 1
    li $t3, 14
    blt $t9, $t3, apagar14_linha
    jr $ra

# =========================================================================
# LIMPAR TELA
# =========================================================================
limpar_tela_preto:
    li $t0, 0x10010000
    li $t1, 32768
limpar_loop:
    sw $zero, 0($t0)
    addi $t0, $t0, 4
    addi $t1, $t1, -1
    bne $t1, $zero, limpar_loop
    jr $ra
