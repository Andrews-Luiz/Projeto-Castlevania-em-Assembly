# =========================================================================
#          MAIN.ASM - CASTLEVANIA MIPS
# =========================================================================

# MAPA DE REGISTRADORES GLOBAIS
# $s0 = pos_x do Richter (atual)
# $s1 = pos_y do Richter (atual)
# $s2 = filtro_inimigos (0=Nenhum, 1=Zumbi, 2=Morcego, 3=Ambos)
# $s3 = cenario_atual   (1=Cenario1, 2=Cenario2)
# $s4 = frame_andar     (cicla 0,1,2 para andar1/2/3)
# $s5 = pose_richter    (0=Parado,1=Andar1,2=Andar2,3=Andar3,4=Chicote1,5=Chicote2,6=Dano)
# $s6 = estado_jogo     (0=Menu, 1=Jogo)
# $s7 = vida_hud        (3=Cheia, 2=2/3, 1=1/3, 0=Vazia)

.data
    frames_chicote:  .word 0
    richter_prev_x:  .word 35
    richter_prev_y:  .word 36
    menu_desenhado:  .word 0    # 0 = precisa desenhar menu, 1 = já desenhado
    jogo_iniciado:   .word 0    # 0 = precisa desenhar fundo completo

.text
.globl main

main:
    li $s6, 0
    li $s7, 3
    li $s5, 0
    li $s3, 1
    li $s2, 3
    li $s4, 0
    li $s0, 35
    li $s1, 36

# =========================================================================
# LOOP PRINCIPAL
# =========================================================================
loop_principal:
    beq $s6, 0, rotina_menu
    j rotina_jogo

# =========================================================================
# ROTINA DO MENU - só desenha uma vez, sem piscar
# =========================================================================
rotina_menu:
    la $t0, menu_desenhado
    lw $t1, 0($t0)
    bne $t1, $zero, menu_so_teclado  # já desenhado, não redesenha

    # Primeira vez: limpa e desenha o menu
    jal limpar_tela_preto
    jal exibir_menu_principal
    li $t1, 1
    sw $t1, 0($t0)                   # marca como desenhado

menu_so_teclado:
    j checar_teclado

# =========================================================================
# ROTINA DO JOGO
# =========================================================================
rotina_jogo:

    # --- Verifica se precisa desenhar o fundo completo ---
    la $t0, jogo_iniciado
    lw $t1, 0($t0)
    bne $t1, $zero, jogo_frame_normal

    # Fundo completo: limpa + cenário + HUD + inimigos
    jal limpar_tela_preto
    beq $s3, 1, jogo_fundo_cen1
    jal desenha_cenario2
    j jogo_fundo_hud
jogo_fundo_cen1:
    jal desenha_cenario1

jogo_fundo_hud:
    # Desenha HUD
    beq $s7, 3, jogo_fundo_hud3
    beq $s7, 2, jogo_fundo_hud2
    beq $s7, 1, jogo_fundo_hud1
    j jogo_fundo_hud0
jogo_fundo_hud3: jal desenhar_hud_cheia    
                 j jogo_fundo_inim
jogo_fundo_hud2: jal desenhar_hud_2tercos  
                 j jogo_fundo_inim
jogo_fundo_hud1: jal desenhar_hud_1terco   
                 j jogo_fundo_inim
jogo_fundo_hud0: jal desenhar_hud_vazia

jogo_fundo_inim:
    # Desenha inimigos
    beq $s2, 0, jogo_fundo_richter
    beq $s2, 1, jogo_fundo_so_zumbi
    beq $s2, 2, jogo_fundo_so_morcego
    li $a0, 95
    li $a1, 36
    jal desenhar_zumbi1
    li $a0, 70
    li $a1, 32
    jal desenhar_morcego1
    j jogo_fundo_richter
jogo_fundo_so_zumbi:
    li $a0, 95
    li $a1, 36
    jal desenhar_zumbi1
    j jogo_fundo_richter
jogo_fundo_so_morcego:
    li $a0, 70
    li $a1, 32
    jal desenhar_morcego1

jogo_fundo_richter:
    # Marca jogo como iniciado e desenha Richter pela primeira vez
    la $t0, jogo_iniciado
    li $t1, 1
    sw $t1, 0($t0)
    # Salva posição inicial como anterior
    la $t0, richter_prev_x
    sw $s0, 0($t0)
    la $t0, richter_prev_y
    sw $s1, 0($t0)
    j desenhar_richter_agora

# =========================================================================
# FRAME NORMAL: apaga só o bloco 24x24 anterior e redesenha o Richter
# =========================================================================
jogo_frame_normal:

    # Apaga bloco anterior
    la $t0, richter_prev_x
    lw $a0, 0($t0)
    la $t0, richter_prev_y
    lw $a1, 0($t0)
    jal apagar_bloco_24x24

    # Tick da animação do chicote
    beq $s5, 4, tick_c1
    beq $s5, 5, tick_c2
    j desenhar_richter_agora

tick_c1:
    la $t0, frames_chicote
    lw $t1, 0($t0)
    addi $t1, $t1, 1
    sw $t1, 0($t0)
    li $t2, 8
    blt $t1, $t2, desenhar_richter_agora
    sw $zero, 0($t0)
    li $s5, 5
    j desenhar_richter_agora

tick_c2:
    la $t0, frames_chicote
    lw $t1, 0($t0)
    addi $t1, $t1, 1
    sw $t1, 0($t0)
    li $t2, 10
    blt $t1, $t2, desenhar_richter_agora
    sw $zero, 0($t0)
    li $s5, 0

# =========================================================================
# DESENHA O RICHTER NA POSIÇÃO ATUAL
# =========================================================================
desenhar_richter_agora:
    # Salva posição atual como anterior para o próximo frame
    la $t0, richter_prev_x
    sw $s0, 0($t0)
    la $t0, richter_prev_y
    sw $s1, 0($t0)

    move $a0, $s0
    move $a1, $s1

    beq $s5, 0, r_parado
    beq $s5, 1, r_andar1
    beq $s5, 2, r_andar2
    beq $s5, 3, r_andar3
    beq $s5, 4, r_chicote1
    beq $s5, 5, r_chicote2
    j r_dano

r_parado:   jal desenhar_boneco_parado   
            j checar_teclado
r_andar1:   jal desenhar_boneco_andar1   
            j checar_teclado
r_andar2:   jal desenhar_boneco_andar2   
            j checar_teclado
r_andar3:   jal desenhar_boneco_andar3   
            j checar_teclado
r_chicote1: jal desenhar_boneco_chicote1 
            j checar_teclado
r_chicote2: jal desenhar_boneco_chicote2 
            j checar_teclado
r_dano:     jal desenhar_boneco_dano
            j checar_teclado

# =========================================================================
# TECLADO
# =========================================================================
checar_teclado:
    li $t5, 0xffff0000
    lw $t6, 0($t5)
    andi $t6, $t6, 1
    beq $t6, $zero, frame_delay

    lw $t7, 4($t5)
    sw $zero, 4($t5)
    sw $zero, 0($t5)

    beq $s6, 0, comandos_menu
    j comandos_jogo

# =========================================================================
# COMANDOS DO MENU
# =========================================================================
comandos_menu:
    beq $t7, 115, cmd_iniciar       # 's'
    j frame_delay

cmd_iniciar:
    li $s6, 1
    # Reseta flags para o jogo começar do zero
    la $t0, jogo_iniciado
    sw $zero, 0($t0)
    la $t0, menu_desenhado
    sw $zero, 0($t0)
    j frame_delay

# =========================================================================
# COMANDOS DO JOGO
# =========================================================================
comandos_jogo:
    beq $t7, 109, cmd_voltar_menu   # 'm'

    # Movimento bloqueado durante ataque
    beq $s5, 4, checar_acoes
    beq $s5, 5, checar_acoes
    beq $t7, 97,  cmd_esquerda      # 'a'
    beq $t7, 100, cmd_direita       # 'd'

checar_acoes:
    beq $t7, 101, cmd_chicote       # 'e'
    beq $t7, 120, cmd_parar         # 'x'

    beq $t7, 49, cmd_cenario1       # '1'
    beq $t7, 50, cmd_cenario2       # '2'

    beq $t7, 122, cmd_fil_zumbi
    beq $t7, 98,  cmd_fil_morcego
    beq $t7, 99,  cmd_fil_ambos
    beq $t7, 118, cmd_fil_nenhum

    beq $t7, 117, cmd_hud3
    beq $t7, 105, cmd_hud2
    beq $t7, 111, cmd_hud1
    beq $t7, 112, cmd_hud0

    j frame_delay

# -----------------------------------------------------------------------
# MOVIMENTO
# -----------------------------------------------------------------------
cmd_esquerda:
    li $t0, 2
    slt $t1, $s0, $t0
    bne $t1, $zero, frame_delay
    beq $s0, $t0, frame_delay
    addi $s0, $s0, -1
    jal avancar_frame_andar
    j frame_delay

cmd_direita:
    li $t0, 110
    slt $t1, $t0, $s0
    bne $t1, $zero, frame_delay
    beq $s0, $t0, frame_delay
    addi $s0, $s0, 1
    jal avancar_frame_andar
    j frame_delay

avancar_frame_andar:
    addi $s4, $s4, 1
    li $t0, 3
    blt $s4, $t0, set_pose_andar
    li $s4, 0
set_pose_andar:
    addi $s5, $s4, 1
    jr $ra

# -----------------------------------------------------------------------
# CHICOTE
# -----------------------------------------------------------------------
cmd_chicote:
    beq $s5, 4, frame_delay
    beq $s5, 5, frame_delay
    la $t0, frames_chicote
    sw $zero, 0($t0)
    li $s5, 4
    j frame_delay

# -----------------------------------------------------------------------
# OUTROS COMANDOS
# -----------------------------------------------------------------------
cmd_parar:
    li $s5, 0
    j frame_delay

cmd_voltar_menu:
    li $s6, 0
    la $t0, menu_desenhado
    sw $zero, 0($t0)
    la $t0, jogo_iniciado
    sw $zero, 0($t0)
    j frame_delay

cmd_cenario1:
    li $s3, 1
    la $t0, jogo_iniciado
    sw $zero, 0($t0)
    j frame_delay

cmd_cenario2:
    li $s3, 2
    la $t0, jogo_iniciado
    sw $zero, 0($t0)
    j frame_delay

cmd_fil_nenhum:
    li $s2, 0
    j frame_delay

cmd_fil_zumbi:
    li $s2, 1
    j frame_delay

cmd_fil_morcego:
    li $s2, 2
    j frame_delay

cmd_fil_ambos:
    li $s2, 3
    j frame_delay

cmd_hud3:
    li $s7, 3
    j frame_delay

cmd_hud2:
    li $s7, 2
    j frame_delay

cmd_hud1:
    li $s7, 1
    j frame_delay

cmd_hud0:
    li $s7, 0
    j frame_delay

# =========================================================================
# APAGA BLOCO 24x24 NA POSIÇÃO ($a0=x, $a1=y)
# =========================================================================
apagar_bloco_24x24:
    li $t0, 0x10010000
    li $t9, 0
apagar_linha:
    add $t1, $a1, $t9
    sll $t1, $t1, 7
    add $t1, $t1, $a0
    sll $t1, $t1, 2
    add $t1, $t1, $t0
    li $t2, 0
apagar_coluna:
    sw $zero, 0($t1)
    addi $t1, $t1, 4
    addi $t2, $t2, 1
    li $t3, 24
    blt $t2, $t3, apagar_coluna
    addi $t9, $t9, 1
    blt $t9, $t3, apagar_linha
    jr $ra

# =========================================================================
# LIMPAR TELA COMPLETA
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

# =========================================================================
# FRAME DELAY
# =========================================================================
frame_delay:
    li $v0, 32
    li $a0, 16
    syscall
    j loop_principal
