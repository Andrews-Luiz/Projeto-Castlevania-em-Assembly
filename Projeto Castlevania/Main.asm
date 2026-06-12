.text
.globl main

main:
    # Registradores base para o teste
    li $s7, 3                # $s7 = Estado inicial da HUD (3 = Cheia)
    li $s0, 35               # X do Richter
    li $s1, 36               # Y do Richter (Chão)

atualizar_tela:
    # 1. Desenha o cenário de fundo primeiro
    jal desenha_cenario1     

    # 2. Desenha a HUD baseada no valor atual de $s7
    beq $s7, 3, mostrar_cheia
    beq $s7, 2, mostrar_2tercos
    beq $s7, 1, mostrar_1terco
    j mostrar_vazia

mostrar_cheia:
    jal desenhar_hud_cheia
    j desenhar_boneco

mostrar_2tercos:
    jal desenhar_hud_2tercos
    j desenhar_boneco

mostrar_1terco:
    jal desenhar_hud_1terco
    j desenhar_boneco

mostrar_vazia:
    jal desenhar_hud_vazia

desenhar_boneco:
    # 3. Desenha o Richter na tela
    move $a0, $s0
    move $a1, $s1
    jal desenhar_boneco_andar3

# =========================================================================
# LOOP DE LEITURA DO TECLADO SIMULADO
# =========================================================================
esperar_teclado:
    # Verifica se alguma tecla foi pressionada
    li $t5, 0xffff0000       
    lw $t6, 0($t5)           
    andi $t6, $t6, 1         
    beq $t6, $zero, esperar_teclado

    # Lê o caractere da tecla
    lw $t7, 4($t5)           

    # Compara o ASCII dos números '0', '1', '2' e '3'
    beq $t7, 51, mudar_para_3   # Código ASCII de '3'
    beq $t7, 50, mudar_para_2   # Código ASCII de '2'
    beq $t7, 49, mudar_para_1   # Código ASCII de '1'
    beq $t7, 48, mudar_para_0   # Código ASCII de '0'
    
    j esperar_teclado           # Ignora qualquer outra tecla

mudar_para_3:
    li $s7, 3
    j atualizar_tela

mudar_para_2:
    li $s7, 2
    j atualizar_tela

mudar_para_1:
    li $s7, 1
    j atualizar_tela

mudar_para_0:
    li $s7, 0
    j atualizar_tela

# =========================================================================
# MÓDULOS DO JOGO
# =========================================================================
.include "Cenario1.asm"
.include "Personagem.asm"
.include "Hud.asm"