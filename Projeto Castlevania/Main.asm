# =========================================================================
#          MAIN.ASM - ENGINE CASTLEVANIA COM TRANSIÇÃO DE IDA E VOLTA
# =========================================================================

.data
    .align 2
    buffer_oculto:     .space 32768

    menu_desenhado:    .word 0
    jogo_iniciado:     .word 0
    
    no_ar:             .word 0        
    vel_y:             .word 0        

    # --- INIMIGOS (CENÁRIO 2) ---
    zumbi_ativo:       .word 0        
    zumbi_x:           .word 120      
    zumbi_y:           .word 36       
    zumbis_mortos:     .word 0        

    morcego_ativo:     .word 0        
    morcego_x:         .word 120      
    morcego_y:         .word 15       
    morcego_hp:        .word 1        
    morcegos_mortos:   .word 0        

    zumbi_hp_atual:    .word 2        

    # --- DELAY DE SPAWN E MOVIMENTO DO MORCEGO ---
    delay_spawn_zumbi:   .word 0      # sem delay: zumbi aparece na hora
    delay_spawn_morcego: .word 0      # sem delay: morcego aparece na hora
    morcego_direcao:     .word 1      # 1 = indo para esquerda, 0 = voltando para direita

    # --- VIDA E DANO DO RICHTER ---
    frames_dano:       .word 0        # contador de frames na pose de dano
    invulneravel:      .word 0        # 1 = não pode tomar dano agora

    # --- CONTROLE DA ANIMAÇÃO DO CHICOTE ---
    frames_chicote1:   .word 0
    frames_chicote2:   .word 0
    chicote_acertou:   .word 0   # 1 = esse golpe já causou dano, evita dano repetido

    # --- ESQUIVA (TECLA Q) ---
    frames_esquiva:    .word 0
    ultima_direcao:    .word 1   # 1 = última tecla foi 'd' (direita), 0 = foi 'a' (esquerda)

.text
.globl main

main:
    li $s6, 1                # Direto no Jogo (menu fica para depois)
    li $s7, 3                # Vida Cheia
    li $s5, 0                # Pose Parado
    li $s3, 1                # COMEÇA NO CENÁRIO 1 (PORTÃO)
    li $s4, 0                
    li $s0, 20               # X inicial (perto da esquerda)
    li $s1, 36               # Y inicial
    
    la $s2, buffer_oculto    

loop_principal:
    beq $s6, 0, rotina_menu
    j rotina_jogo

# =========================================================================
# ROTINA DO MENU
# =========================================================================
rotina_menu:
    la $t0, menu_desenhado
    lw $t1, 0($t0)
    bne $t1, $zero, menu_so_teclado

    jal limpar_tela_preto
    li $a0, 0x10010000       # Menu desenha direto na VRAM real
    jal exibir_menu_principal
    li $t1, 1
    sw $t1, 0($t0)

menu_so_teclado:
    j checar_teclado

# =========================================================================
# ROTINA DO JOGO
# =========================================================================
rotina_jogo:
    move $a0, $s2
    jal limpar_buffer_preto

    move $a0, $s2            
    beq $s3, 1, chamar_cen1
    jal desenha_cenario2
    j gerenciar_inimigos      

chamar_cen1:
    jal desenha_cenario1     
    
    # --- TRANSIÇÃO DO CENÁRIO 1 -> CENÁRIO 2 (AVANÇAR) ---
    li $t0, 95
    bgt $s0, $t0, transicionar_para_saguao
    j aplicar_gravidade       

transicionar_para_saguao:
    li $s3, 2                # Muda para Cenário 2 (Saguão)
    li $s0, 5                # Teleporta Richter para o começo esquerdo do saguão
    j aplicar_gravidade

# =========================================================================
# MOTOR DOS INIMIGOS (EXCLUSIVO DO CENÁRIO 2)
# =========================================================================
gerenciar_inimigos:
    # --- TRANSIÇÃO DO CENÁRIO 2 -> CENÁRIO 1 (VOLTAR) ---
    li $t0, 2
    blt $s0, $t0, transicionar_para_portao

    # --- SPAWN DO ZUMBI (instantâneo, sem delay) ---
    la $t0, zumbi_ativo
    lw $t1, 0($t0)
    bne $t1, $zero, mover_zumbi 
    
    la $t2, zumbis_mortos
    lw $t3, 0($t2)
    li $t4, 2
    bge $t3, $t4, testar_morcego 
    
    li $t1, 1
    sw $t1, 0($t0)              
    li $t5, 120
    la $t6, zumbi_x
    sw $t5, 0($t6)              
    li $t5, 2
    la $t6, zumbi_hp_atual
    sw $t5, 0($t6)              

mover_zumbi:
    la $t6, zumbi_x
    lw $t5, 0($t6)

    # Se o Richter está em pose de dano, zumbi fica parado (deu um tempo)
    li $t7, 6
    beq $s5, $t7, checar_colisao_zumbi

    addi $t5, $t5, -2           
    sw $t5, 0($t6)
    
    blt $t5, $zero, resetar_zumbi_fugiu

checar_colisao_zumbi:
    # --- COLISÃO CORPO A CORPO: zumbi encostou no Richter? ---
    la $t0, invulneravel
    lw $t1, 0($t0)
    bne $t1, $zero, checar_chicote_zumbi   # já invulnerável, ignora

    sub $t7, $s0, $t5
    abs $t7, $t7
    li $t8, 6
    bgt $t7, $t8, checar_chicote_zumbi     # muito longe, não encostou

    # Encostou! Richter toma dano
    addi $s7, $s7, -1
    li $s5, 6                              # pose de dano
    la $t0, frames_dano
    sw $zero, 0($t0)
    la $t0, invulneravel
    li $t1, 1
    sw $t1, 0($t0)
    # Recua o zumbi para dar espaço
    addi $t5, $t5, 15
    la $t6, zumbi_x
    sw $t5, 0($t6)
    beq $s7, $zero, game_over_zumbi
    j desenhar_zumbi_corpo

checar_chicote_zumbi:
    # --- COLISÃO DO CHICOTE: pose 5 = chicote2 (ataque de fato) ---
    li $t7, 5
    bne $s5, $t7, desenhar_zumbi_corpo

    # Já acertou nesse golpe? Evita dano repetido nos 8 frames do chicote2
    la $t0, chicote_acertou
    lw $t1, 0($t0)
    bne $t1, $zero, desenhar_zumbi_corpo

    # Hitbox generosa do chicote: do X do Richter até +30
    blt $t5, $s0, desenhar_zumbi_corpo
    addi $t8, $s0, 30
    bgt $t5, $t8, desenhar_zumbi_corpo

    # Acertou! Marca a flag para não acertar de novo nesse golpe
    li $t1, 1
    sw $t1, 0($t0)

    # Zumbi perde HP
    la $t0, zumbi_hp_atual
    lw $t1, 0($t0)
    addi $t1, $t1, -1
    sw $t1, 0($t0)
    # Recua o zumbi pelo impacto (empurrão)
    addi $t5, $t5, 18
    la $t6, zumbi_x
    sw $t5, 0($t6)
    bgt $t1, $zero, efeito_dano_zumbi
    # HP zerou: zumbi morre
    la $t0, zumbi_ativo
    sw $zero, 0($t0)
    la $t2, zumbis_mortos
    lw $t3, 0($t2)
    addi $t3, $t3, 1
    sw $t3, 0($t2)
    # Efeito visual de morte
    move $a0, $t5
    la $t7, zumbi_y
    lw $a1, 0($t7)
    move $a2, $s2
    jal impacto_matar
    j testar_morcego

efeito_dano_zumbi:
    # Efeito visual de dano (zumbi sobreviveu ao golpe)
    move $a0, $t5
    la $t7, zumbi_y
    lw $a1, 0($t7)
    move $a2, $s2
    jal impacto_dano
    j desenhar_zumbi_corpo

desenhar_zumbi_corpo:
    move $a0, $t5               
    la $t7, zumbi_y
    lw $a1, 0($t7)              
    move $a2, $s2               
    
    andi $t8, $t5, 4
    beq $t8, $zero, z_frame2
    jal desenhar_zumbi1
    j testar_morcego
z_frame2:
    jal desenhar_zumbi2
    j testar_morcego

game_over_zumbi:
    j game_over

resetar_zumbi_fugiu:
    la $t0, zumbi_ativo
    sw $zero, 0($t0)            

# -------------------------------------------------------------------------
testar_morcego:
    # --- SPAWN DO MORCEGO (instantâneo, sem delay) ---
    la $t0, morcego_ativo
    lw $t1, 0($t0)
    bne $t1, $zero, mover_morcego
    
    la $t2, morcegos_mortos
    lw $t3, 0($t2)
    li $t4, 2
    bge $t3, $t4, aplicar_gravidade 
    
    li $t1, 1
    sw $t1, 0($t0)              
    li $t5, 120
    la $t6, morcego_x
    sw $t5, 0($t6)              
    li $t5, 1
    la $t6, morcego_hp
    sw $t5, 0($t6)
    li $t5, 1
    la $t6, morcego_direcao
    sw $t5, 0($t6)              # sempre começa indo para a esquerda

mover_morcego:
    la $t6, morcego_x
    lw $t5, 0($t6)

    li $t7, 6
    beq $s5, $t7, checar_colisao_morcego

    # Movimento de ida e volta (não vai embora da tela)
    la $t0, morcego_direcao
    lw $t1, 0($t0)
    bne $t1, $zero, morcego_vai_esquerda

    # Direção 0: voltando para a direita
    addi $t5, $t5, 3
    li $t2, 120
    blt $t5, $t2, morcego_atualiza_pos
    li $t5, 120
    li $t1, 1
    sw $t1, 0($t0)              # inverte: agora vai para esquerda
    j morcego_atualiza_pos

morcego_vai_esquerda:
    addi $t5, $t5, -3
    li $t2, 5
    bgt $t5, $t2, morcego_atualiza_pos
    li $t5, 5
    sw $zero, 0($t0)            # inverte: agora volta para direita

morcego_atualiza_pos:
    sw $t5, 0($t6)

checar_colisao_morcego:
    # --- COLISÃO CORPO A CORPO: morcego encostou no Richter? ---
    la $t0, invulneravel
    lw $t1, 0($t0)
    bne $t1, $zero, checar_chicote_morcego

    sub $t7, $s0, $t5
    abs $t7, $t7
    li $t8, 6
    bgt $t7, $t8, checar_chicote_morcego

    # Checagem de altura: só encosta se Richter estiver alto (pulando)
    li $t7, 24
    bgt $s1, $t7, checar_chicote_morcego

    # Encostou! Richter toma dano
    addi $s7, $s7, -1
    li $s5, 6
    la $t0, frames_dano
    sw $zero, 0($t0)
    la $t0, invulneravel
    li $t1, 1
    sw $t1, 0($t0)
    addi $t5, $t5, 15
    la $t6, morcego_x
    sw $t5, 0($t6)
    beq $s7, $zero, game_over_morcego
    j desenhar_morcego_corpo

checar_chicote_morcego:
    # --- COLISÃO DO CHICOTE: pose 5 = chicote2 (ataque de fato) ---
    li $t7, 5
    bne $s5, $t7, desenhar_morcego_corpo

    la $t0, chicote_acertou
    lw $t1, 0($t0)
    bne $t1, $zero, desenhar_morcego_corpo

    addi $t9, $s0, -5
    blt $t5, $t9, desenhar_morcego_corpo
    addi $t8, $s0, 34
    bgt $t5, $t8, desenhar_morcego_corpo

    li $t1, 1
    sw $t1, 0($t0)

    # Acertou! Morcego morre direto (1 HP)
    addi $t5, $t5, 18
    la $t6, morcego_x
    sw $t5, 0($t6)
    la $t0, morcego_ativo
    sw $zero, 0($t0)
    la $t2, morcegos_mortos
    lw $t3, 0($t2)
    addi $t3, $t3, 1
    sw $t3, 0($t2)
    # Efeito visual de morte
    move $a0, $t5
    la $t7, morcego_y
    lw $a1, 0($t7)
    move $a2, $s2
    jal impacto_matar
    j aplicar_gravidade

desenhar_morcego_corpo:
    move $a0, $t5               
    la $t7, morcego_y
    lw $a1, 0($t7)              
    move $a2, $s2               
    
    andi $t8, $t5, 4
    beq $t8, $zero, m_frame2
    jal desenhar_morcego1
    j aplicar_gravidade
m_frame2:
    jal desenhar_morcego2
    j aplicar_gravidade

game_over_morcego:
    j game_over

resetar_morcego_fugiu:
    la $t0, morcego_ativo
    sw $zero, 0($t0)            
    j aplicar_gravidade

transicionar_para_portao:
    li $s3, 1                # Volta para o Cenário 1
    li $s0, 90               # Coloca o Richter saindo do portão à direita
    j aplicar_gravidade

# =========================================================================
# GAME OVER: volta ao jogo do zero (menu fica para depois)
# =========================================================================
game_over:
    li $s7, 3                # Restaura vida cheia
    li $s0, 20                # Reseta posição do Richter
    li $s1, 36
    li $s3, 1                # Volta para o cenário 1
    li $s5, 0                # Pose parado
    la $t0, invulneravel
    sw $zero, 0($t0)
    la $t0, zumbi_ativo
    sw $zero, 0($t0)
    la $t0, zumbis_mortos
    sw $zero, 0($t0)
    la $t0, morcego_ativo
    sw $zero, 0($t0)
    la $t0, morcegos_mortos
    sw $zero, 0($t0)
    j aplicar_gravidade

# =========================================================================
# MOTOR DE GRAVIDADE E FÍSICA DO RICHTER
# =========================================================================
aplicar_gravidade:
    la $t0, no_ar
    lw $t1, 0($t0)
    beq $t1, $zero, renderizar_hud 
    
    la $t2, vel_y
    lw $t3, 0($t2)
    
    add $s1, $s1, $t3        
    addi $t3, $t3, 3         
    sw $t3, 0($t2)
    
    li $t4, 36
    blt $s1, $t4, manter_no_ar
    
    li $s1, 36
    sw $zero, 0($t0)         
    sw $zero, 0($t2)         
    li $s5, 0                
    j renderizar_hud

manter_no_ar:
    li $t4, 4
    bge $s5, $t4, renderizar_hud
    li $s5, 2                

renderizar_hud:
    move $a2, $s2
    beq $s7, 3, hud_3
    beq $s7, 2, hud_2
    beq $s7, 1, hud_1
    jal desenhar_hud_vazia
    j checar_teclado

hud_3: 
    jal desenhar_hud_cheia   
    j checar_teclado
hud_2: 
    jal desenhar_hud_2tercos 
    j checar_teclado
hud_1: 
    jal desenhar_hud_1terco

# =========================================================================
# LEITURA DO TECLADO
# =========================================================================
checar_teclado:
    li $t5, 0xffff0000       
    lw $t6, 0($t5)           
    andi $t6, $t6, 1         
    beq $t6, $zero, input_vazio 
    
    lw $a0, 4($t5)           
    sw $zero, 4($t5)         
    sw $zero, 0($t5)
    j processar_comandos

input_vazio:
    li $a0, 0                

processar_comandos:
    beq $s6, 0, comandos_menu

    # Se está na pose de dano (6), conta frames antes de recuperar
    li $t0, 6
    beq $s5, $t0, tick_dano_frame

    # Se está na pose de esquiva (3), conta frames antes de recuperar
    li $t0, 3
    beq $s5, $t0, tick_esquiva_frame

    beq $a0, 119, comando_pulo     
    beq $a0, 97, mover_esq         
    beq $a0, 100, mover_dir        
    beq $a0, 101, atacar_chicote   
    beq $a0, 113, comando_esquiva  # Tecla 'q' = esquiva/desvio para trás
    beq $a0, 102, simular_dano     # Tecla 'f' = simula tomar dano (teste)
    
    la $t0, no_ar
    lw $t1, 0($t0)
    bne $t1, $zero, renderizar_richter
    
    li $t0, 4
    blt $s5, $t0, resetar_parado   
    j renderizar_richter

resetar_parado:
    li $s5, 0
    j renderizar_richter

comando_esquiva:
    # Não esquiva se já estiver atacando, tomando dano, ou já esquivando
    beq $s5, 3, renderizar_richter
    beq $s5, 4, renderizar_richter
    beq $s5, 5, renderizar_richter
    beq $s5, 6, renderizar_richter

    la $t0, ultima_direcao
    lw $t1, 0($t0)
    beq $t1, $zero, esquiva_vai_direita

    # Última tecla foi 'd' (indo direita) -> esquiva vai para ESQUERDA (trás)
    addi $s0, $s0, -10
    j esquiva_finaliza

esquiva_vai_direita:
    # Última tecla foi 'a' (indo esquerda) -> esquiva vai para DIREITA (trás)
    addi $s0, $s0, 10

esquiva_finaliza:
    li $s5, 3                       # Pose de esquiva (sprite andar3)
    la $t0, frames_esquiva
    sw $zero, 0($t0)
    j renderizar_richter

tick_esquiva_frame:
    # Esquiva dura 4 frames antes de voltar a ficar parado
    la $t0, frames_esquiva
    lw $t1, 0($t0)
    addi $t1, $t1, 1
    sw $t1, 0($t0)
    li $t2, 4
    blt $t1, $t2, renderizar_richter
    sw $zero, 0($t0)
    li $s5, 0
    j renderizar_richter

tick_dano_frame:
    # Pose de dano dura 15 frames antes de recuperar e ficar invulnerável
    la $t0, frames_dano
    lw $t1, 0($t0)
    addi $t1, $t1, 1
    sw $t1, 0($t0)
    li $t2, 6
    blt $t1, $t2, renderizar_richter
    sw $zero, 0($t0)
    li $s5, 0                       # Volta a ficar parado
    la $t0, invulneravel
    sw $zero, 0($t0)                # Recupera a vulnerabilidade
    j renderizar_richter

simular_dano:
    # Só toma dano se não estiver invulnerável
    la $t0, invulneravel
    lw $t1, 0($t0)
    bne $t1, $zero, renderizar_richter
    li $t1, 1
    sw $t1, 0($t0)                  # Fica invulnerável
    li $s5, 6                       # Pose de dano
    la $t0, frames_dano
    sw $zero, 0($t0)                # Reseta contador
    j renderizar_richter

comandos_menu:
    beq $a0, 115, cmd_iniciar       
    j mostrar_frame

cmd_iniciar:
    li $s6, 1                       
    la $t0, jogo_iniciado
    li $t1, 1
    sw $t1, 0($t0)
    j loop_principal

comando_pulo:
    la $t0, no_ar
    lw $t1, 0($t0)
    bne $t1, $zero, renderizar_richter 
    
    li $t1, 1
    sw $t1, 0($t0)           
    
    li $t3, -11              
    la $t2, vel_y
    sw $t3, 0($t2)
    
    li $s5, 2                
    j renderizar_richter

mover_esq:
    addi $s0, $s0, -3        
    la $t0, ultima_direcao
    sw $zero, 0($t0)         # 0 = última tecla foi 'a' (esquerda)
    la $t0, no_ar
    lw $t1, 0($t0)
    bne $t1, $zero, renderizar_richter 
    
    addi $s4, $s4, 1         
    li $t0, 2
    blt $s4, $t0, set_andar_esq
    li $s4, 0
set_andar_esq:
    addi $s5, $s4, 1         
    j renderizar_richter

mover_dir:
    addi $s0, $s0, 3         
    la $t0, ultima_direcao
    li $t1, 1
    sw $t1, 0($t0)           # 1 = última tecla foi 'd' (direita)
    la $t0, no_ar
    lw $t1, 0($t0)
    bne $t1, $zero, renderizar_richter 
    
    addi $s4, $s4, 1         
    li $t0, 2
    blt $s4, $t0, set_andar_dir
    li $s4, 0
set_andar_dir:
    addi $s5, $s4, 1         
    j renderizar_richter

atacar_chicote:
    la $t0, no_ar
    lw $t1, 0($t0)
    bne $t1, $zero, chicote_aereo 
    
    li $s5, 4                
    la $t0, frames_chicote1
    sw $zero, 0($t0)
    la $t0, chicote_acertou
    sw $zero, 0($t0)
    j renderizar_richter

chicote_aereo:
    li $s5, 5                
    j renderizar_richter

# =========================================================================
# DESENHO DO RICHTER
# =========================================================================
renderizar_richter:
    beq $s6, 0, mostrar_frame

    move $a0, $s0            
    move $a1, $s1            
    move $a2, $s2            
    
    beq $s5, 0, r_parado
    beq $s5, 1, r_andar1
    beq $s5, 2, r_andar2
    beq $s5, 3, r_andar3
    beq $s5, 4, r_chicote1
    beq $s5, 5, r_chicote2
    beq $s5, 6, r_dano
    j mostrar_frame

r_parado:   
    jal desenhar_boneco_parado   
    j mostrar_frame
r_andar1:   
    jal desenhar_boneco_andar1   
    j mostrar_frame
r_andar2:   
    jal desenhar_boneco_andar2   
    j mostrar_frame
r_andar3:   
    jal desenhar_boneco_andar3   
    j mostrar_frame

r_chicote1: 
    jal desenhar_boneco_chicote1 
    # Chicote1 (preparação) dura 2 frames antes de avançar
    la $t0, frames_chicote1
    lw $t1, 0($t0)
    addi $t1, $t1, 1
    sw $t1, 0($t0)
    li $t2, 2
    blt $t1, $t2, mostrar_frame
    sw $zero, 0($t0)
    li $s5, 5
    la $t0, frames_chicote2
    sw $zero, 0($t0)
    j mostrar_frame

r_chicote2: 
    jal desenhar_boneco_chicote2 
    # Chicote2 (ataque/janela de dano) dura 3 frames
    la $t0, frames_chicote2
    lw $t1, 0($t0)
    addi $t1, $t1, 1
    sw $t1, 0($t0)
    li $t2, 3
    blt $t1, $t2, mostrar_frame
    sw $zero, 0($t0)

    la $t0, no_ar
    lw $t1, 0($t0)
    bne $t1, $zero, volta_pulo
    
    li $s5, 0                
    j mostrar_frame
volta_pulo:
    li $s5, 2                
    j mostrar_frame

r_dano:
    jal desenhar_boneco_dano
    j mostrar_frame

# =========================================================================
# EXIBIÇÃO GRÁFICA TURBO (SEM BARRAS)
# =========================================================================
mostrar_frame:
    beq $s6, 0, frame_delay

    move $a0, $s2            
    li $a1, 0x10010000       
    
    li $t1, 512
copiar_loop:
    # Bloco 1 (Primeiras 8 palavras)
    lw  $t2, 0($a0)
    lw  $t3, 4($a0)
    lw  $t4, 8($a0)
    lw  $t5, 12($a0)
    lw  $t6, 16($a0)
    lw  $t7, 20($a0)
    lw  $t8, 24($a0)
    lw  $t9, 28($a0)
    
    sw  $t2, 0($a1)
    sw  $t3, 4($a1)
    sw  $t4, 8($a1)
    sw  $t5, 12($a1)
    sw  $t6, 16($a1)
    sw  $t7, 20($a1)
    sw  $t8, 24($a1)
    sw  $t9, 28($a1)

    # Bloco 2 (Próximas 8 palavras)
    lw  $t2, 32($a0)
    lw  $t3, 36($a0)
    lw  $t4, 40($a0)
    lw  $t5, 44($a0)
    lw  $t6, 48($a0)
    lw  $t7, 52($a0)
    lw  $t8, 56($a0)
    lw  $t9, 60($a0)
    
    sw  $t2, 32($a1)
    sw  $t3, 36($a1)
    sw  $t4, 40($a1)
    sw  $t5, 44($a1)
    sw  $t6, 48($a1)
    sw  $t7, 52($a1)
    sw  $t8, 56($a1)
    sw  $t9, 60($a1)

    addi $a0, $a0, 64
    addi $a1, $a1, 64
    addi $t1, $t1, -1
    bne $t1, $zero, copiar_loop

frame_delay:
    li $v0, 32
    li $a0, 16               
    syscall
    j loop_principal

# =========================================================================
# FUNÇÕES DE LIMPEZA GRÁFICA
# =========================================================================
limpar_buffer_preto:
    li $t1, 8192              
limpar_loop:
    sw $zero, 0($a0)
    addi $a0, $a0, 4
    addi $t1, $t1, -1
    bne $t1, $zero, limpar_loop
    jr $ra

limpar_tela_preto:
    li $t0, 0x10010000
    li $t1, 32768
limpar_tela_loop:
    sw $zero, 0($t0)
    addi $t0, $t0, 4
    addi $t1, $t1, -1
    bne $t1, $zero, limpar_tela_loop
    jr $ra