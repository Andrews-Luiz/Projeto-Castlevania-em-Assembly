# =========================================================================
#          EFEITOS.ASM - SISTEMA DE IMPACTO VISUAL DINÂMICO
# =========================================================================

.data
    .align 2
    
    # --- MATRIZ DE CORES: IMPACTO DANO (Fagulha Concentrada) ---
    dados_impacto_dano:
        .word 0x00000000, 0x00000000, 0x00FEF287, 0x00000000, 0x00000000
        .word 0x00000000, 0x00FEF287, 0x00FFFFFF, 0x00FEF287, 0x00000000
        .word 0x00FEF287, 0x00FFFFFF, 0x00000000, 0x00FFFFFF, 0x00FEF287
        .word 0x00000000, 0x00FEF287, 0x00FFFFFF, 0x00FEF287, 0x00000000
        .word 0x00000000, 0x00000000, 0x00FEF287, 0x00000000, 0x00000000

    # --- MATRIZ DE CORES: IMPACTO MATAR (Dispersão Expansiva) ---
    dados_impacto_matar:
        .word 0x00FEF287, 0x00000000, 0x00FEF287, 0x00000000, 0x00FEF287
        .word 0x00000000, 0x00FEF287, 0x00000000, 0x00FEF287, 0x00000000
        .word 0x00FEF287, 0x00000000, 0x00000000, 0x00000000, 0x00FEF287
        .word 0x00000000, 0x00FEF287, 0x00000000, 0x00FEF287, 0x00000000
        .word 0x00FEF287, 0x00000000, 0x00FEF287, 0x00000000, 0x00FEF287

.text
.globl impacto_dano
.globl impacto_matar

# =========================================================================
# FUNÇÃO: impacto_dano
# Parâmetros: $a0 = X do Inimigo, $a1 = Y do Inimigo, $a2 = Endereço do Buffer Oculto
# =========================================================================
impacto_dano:
    la $t0, dados_impacto_dano
    li $t1, 5                   # Altura da matriz (5 pixels)
    move $t2, $a1                # Coordenada Y atual na tela
    
loop_y_dano:
    li $t3, 5                   # Largura da matriz (5 pixels)
    move $t4, $a0                # Coordenada X atual na tela
    
loop_x_dano:
    lw $t5, 0($t0)               # Carrega o pixel atual da matriz
    addi $t0, $t0, 4             # Avança o ponteiro de dados
    beq $t5, $zero, pula_pixel_dano # Se for transparente (0x00000000), ignora
    
    # Cálculo do endereço de destino: Buffer + (Y * 512) + (X * 4)
    sll $t6, $t2, 9              # Y * 512
    add $t6, $t6, $a2            # Adiciona a base do Buffer Oculto
    sll $t7, $t4, 2              # X * 4
    add $t6, $t6, $t7            # Endereço final calculado
    sw $t5, 0($t6)                # Desenha o pixel no buffer oculto
    
pula_pixel_dano:
    addi $t4, $t4, 1             # Incrementa X
    addi $t3, $t3, -1            # Decrementa o contador de colunas
    bne $t3, $zero, loop_x_dano
    
    addi $t2, $t2, 1             # Incrementa Y
    addi $t1, $t1, -1            # Decrementa o contador de linhas
    bne $t1, $zero, loop_y_dano
    jr $ra

# =========================================================================
# FUNÇÃO: impacto_matar
# Parâmetros: $a0 = X do Inimigo, $a1 = Y do Inimigo, $a2 = Endereço do Buffer Oculto
# =========================================================================
impacto_matar:
    la $t0, dados_impacto_matar
    li $t1, 5                   # Altura da matriz (5 pixels)
    move $t2, $a1                # Coordenada Y atual na tela
    
loop_y_matar:
    li $t3, 5                   # Largura da matriz (5 pixels)
    move $t4, $a0                # Coordenada X atual na tela
    
loop_x_matar:
    lw $t5, 0($t0)               # Carrega o pixel atual da matriz
    addi $t0, $t0, 4             # Avança o ponteiro de dados
    beq $t5, $zero, pula_pixel_matar # Se for transparente, ignora
    
    # Cálculo do endereço de destino: Buffer + (Y * 512) + (X * 4)
    sll $t6, $t2, 9              # Y * 512
    add $t6, $t6, $a2            # Adiciona a base do Buffer Oculto
    sll $t7, $t4, 2              # X * 4
    add $t6, $t6, $t7            # Endereço final calculado
    sw $t5, 0($t6)                # Desenha o pixel no buffer oculto
    
pula_pixel_matar:
    addi $t4, $t4, 1             # Incrementa X
    addi $t3, $t3, -1            # Decrementa o contador de colunas
    bne $t3, $zero, loop_x_matar
    
    addi $t2, $t2, 1             # Incrementa Y
    addi $t1, $t1, -1            # Decrementa o contador de linhas
    bne $t1, $zero, loop_y_matar
    jr $ra