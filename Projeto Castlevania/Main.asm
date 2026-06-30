# =========================================================================
# INSTRUÇÕES DE CONFIGURAÇÃO DO BITMAP DISPLAY:
#   - Unit Width in Pixels: 4
#   - Unit Height in Pixels: 4
#   - Display Width in Pixels: 512
#   - Display Height in Pixels: 256
#   - Base address for display: 0x10010000 (static data)
#
# COMANDOS DO TECLADO (MMIO SIMULATOR):
#   - W: Pular
#   - A: Mover para a esquerda
#   - D: Mover para a direita
#   - E: Atacar com o chicote
#   - Q: Esquiva
#   - F: Simular dano
#   - S: Iniciar o jogo (quando estiver no Menu Principal)
# =========================================================================

.data
    .align 2
    vram_real:         .space 32768

    jogo_iniciado:     .word 0
    no_ar:             .word 0        
    vel_y:             .word 0        

    zumbi_ativo:       .word 0        
    zumbi_x:           .word 120      
    zumbi_y:           .word 36       
    zumbis_mortos:     .word 0        

    morcego_ativo:     .word 0        
    morcego_x:         .word 120      
    morcego_y:         .word 15       
    morcego_hp:        .word 2        # 2 de vida inicial

    morcegos_mortos:   .word 0        

    zumbi_hp_atual:    .word 3        # 3 de vida inicial

    delay_spawn_zumbi:   .word 80     
    delay_spawn_morcego: .word 80     
    morcego_direcao:     .word 1      

    frames_dano:       .word 0        
    invulneravel:      .word 0        

    frames_chicote1:   .word 0
    frames_chicote2:   .word 0
    chicote_acertou:   .word 0    

    frames_esquiva:    .word 0
    ultima_direcao:    .word 1    

    # --- FLAG: 1 = todos inimigos mortos, aguardando jogador chegar na borda ---
    saida_liberada:    .word 0
    
    # --- FLAG: 1 = jogador já atacou uma vez durante o pulo atual ---
    chicote_no_ar_feito: .word 0

    .align 2
    buffer_oculto:     .space 32768

.text
.globl main

main:
    li $s6, 0
    li $s7, 3
    li $s5, 0
    li $s3, 1
    li $s4, 0                
    li $s0, 20
    li $s1, 36
    la $s2, buffer_oculto    

loop_principal:
    beq $s6, 0, rotina_menu
    j rotina_jogo

rotina_menu:
    move $a0, $s2
    jal exibir_menu_principal
    j checar_teclado

rotina_jogo:
    move $a0, $s2
    jal limpar_buffer_preto

    move $a0, $s2            
    beq $s3, 1, chamar_cen1
    jal desenha_cenario2
    j gerenciar_inimigos      

chamar_cen1:
    jal desenha_cenario1     
    li $t0, 95
    bgt $s0, $t0, transicionar_para_saguao
    j aplicar_gravidade       

transicionar_para_saguao:
    li $s3, 2                
    li $s0, 5                
    j aplicar_gravidade

# =========================================================================
# MOTOR DOS INIMIGOS
# =========================================================================
gerenciar_inimigos:
    li $t0, 2
    blt $s0, $t0, transicionar_para_portao

    # Se saida ja liberada, so checar posicao - nao processa mais inimigos
    la $t0, saida_liberada
    lw $t1, 0($t0)
    bne $t1, $zero, checar_posicao_saida

    # --- SPAWN DO ZUMBI ---
    la $t0, zumbi_ativo
    lw $t1, 0($t0)
    bne $t1, $zero, mover_zumbi 
    
    la $t2, zumbis_mortos
    lw $t3, 0($t2)
    li $t4, 2
    bge $t3, $t4, testar_morcego 

    la $t2, delay_spawn_zumbi
    lw $t3, 0($t2)
    addi $t3, $t3, 1
    sw $t3, 0($t2)
    li $t4, 80
    blt $t3, $t4, testar_morcego 
    sw $zero, 0($t2)              
    
    li $t1, 1
    sw $t1, 0($t0)              
    li $t5, 120
    la $t6, zumbi_x
    sw $t5, 0($t6)              
    li $t5, 3                    
    la $t6, zumbi_hp_atual
    sw $t5, 0($t6)              

mover_zumbi:
    la $t6, zumbi_x
    lw $t5, 0($t6)
    li $t7, 6
    beq $s5, $t7, checar_colisao_zumbi
    addi $t5, $t5, -2           # Velocidade do Zumbi aumentada para -2
    sw $t5, 0($t6)
    blt $t5, $zero, resetar_zumbi_fugiu

checar_colisao_zumbi:
    la $t0, invulneravel
    lw $t1, 0($t0)
    bne $t1, $zero, checar_chicote_zumbi   

    sub $t7, $s0, $t5
    abs $t7, $t7
    li $t8, 12                  
    bgt $t7, $t8, checar_chicote_zumbi     

    la $t0, zumbi_y
    lw $t1, 0($t0)
    sub $t7, $s1, $t1
    abs $t7, $t7
    li $t8, 8
    bgt $t7, $t8, checar_chicote_zumbi

    addi $s7, $s7, -1
    li $s5, 6                              
    la $t0, frames_dano
    sw $zero, 0($t0)
    la $t0, invulneravel
    li $t1, 1
    sw $t1, 0($t0)
    addi $t5, $t5, 15
    la $t6, zumbi_x
    sw $t5, 0($t6)
    beq $s7, $zero, game_over_zumbi
    j desenhar_zumbi_corpo

checar_chicote_zumbi:
    li $t7, 5
    bne $s5, $t7, desenhar_zumbi_corpo

    la $t0, chicote_acertou
    lw $t1, 0($t0)
    bne $t1, $zero, desenhar_zumbi_corpo

    la $t2, zumbi_y
    lw $t3, 0($t2)
    sub $t7, $s1, $t3        
    abs $t7, $t7
    li $t8, 10               
    bgt $t7, $t8, desenhar_zumbi_corpo

    addi $t9, $s0, -8
    blt $t5, $t9, desenhar_zumbi_corpo
    addi $t8, $s0, 45
    bgt $t5, $t8, desenhar_zumbi_corpo

    li $t1, 1
    sw $t1, 0($t0)

    la $t0, zumbi_hp_atual
    lw $t1, 0($t0)
    addi $t1, $t1, -1
    sw $t1, 0($t0)
    addi $t5, $t5, 18
    la $t6, zumbi_x
    sw $t5, 0($t6)
    bgt $t1, $zero, efeito_dano_zumbi
    la $t0, zumbi_ativo
    sw $zero, 0($t0)
    la $t2, zumbis_mortos
    lw $t3, 0($t2)
    addi $t3, $t3, 1
    sw $t3, 0($t2)
    move $a0, $t5
    la $t7, zumbi_y
    lw $a1, 0($t7)
    move $a2, $s2
    jal impacto_matar
    j testar_morcego

efeito_dano_zumbi:
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
    la $t0, morcego_ativo
    lw $t1, 0($t0)
    bne $t1, $zero, mover_morcego
    
    la $t2, morcegos_mortos
    lw $t3, 0($t2)
    li $t4, 2
    bge $t3, $t4, todos_mortos          

    la $t2, delay_spawn_morcego
    lw $t3, 0($t2)
    addi $t3, $t3, 1
    sw $t3, 0($t2)
    li $t4, 80
    blt $t3, $t4, aplicar_gravidade
    sw $zero, 0($t2)
    
    li $t1, 1
    sw $t1, 0($t0)              
    li $t5, 120
    la $t6, morcego_x
    sw $t5, 0($t6)              
    li $t5, 2                   
    la $t6, morcego_hp
    sw $t5, 0($t6)
    li $t5, 1
    la $t6, morcego_direcao
    sw $t5, 0($t6)              

mover_morcego:
    la $t6, morcego_x
    lw $t5, 0($t6)
    li $t7, 6
    beq $s5, $t7, checar_colisao_morcego

    la $t0, morcego_direcao
    lw $t1, 0($t0)
    bne $t1, $zero, morcego_vai_esquerda

    addi $t5, $t5, 3            # Velocidade do Morcego aumentada para 3
    li $t2, 120
    blt $t5, $t2, morcego_atualiza_pos
    li $t5, 120
    li $t1, 1
    sw $t1, 0($t0)              
    j morcego_atualiza_pos

morcego_vai_esquerda:
    addi $t5, $t5, -3           # Velocidade do Morcego aumentada para -3
    li $t2, 5
    bgt $t5, $t2, morcego_atualiza_pos
    li $t5, 5
    sw $zero, 0($t0)            

morcego_atualiza_pos:
    sw $t5, 0($t6)

checar_colisao_morcego:
    la $t0, invulneravel
    lw $t1, 0($t0)
    bne $t1, $zero, checar_chicote_morcego

    sub $t7, $s0, $t5
    abs $t7, $t7
    li $t8, 12                  
    bgt $t7, $t8, checar_chicote_morcego

    li $t7, 24
    bgt $s1, $t7, checar_chicote_morcego

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
    beq $s7, $zero, game_over
    j desenhar_morcego_corpo

checar_chicote_morcego:
    li $t7, 5
    bne $s5, $t7, desenhar_morcego_corpo

    la $t0, chicote_acertou
    lw $t1, 0($t0)
    bne $t1, $zero, desenhar_morcego_corpo

    la $t2, morcego_y
    lw $t3, 0($t2)
    sub $t7, $s1, $t3        
    abs $t7, $t7
    li $t8, 10               
    bgt $t7, $t8, desenhar_morcego_corpo

    addi $t9, $s0, -8
    blt $t5, $t9, desenhar_morcego_corpo
    addi $t8, $s0, 45
    bgt $t5, $t8, desenhar_morcego_corpo

    li $t1, 1
    sw $t1, 0($t0)

    la $t0, morcego_hp
    lw $t1, 0($t0)
    addi $t1, $t1, -1
    sw $t1, 0($t0)
    addi $t5, $t5, 18
    la $t6, morcego_x
    sw $t5, 0($t6)
    bgt $t1, $zero, efeito_dano_morcego 

    la $t0, morcego_ativo
    sw $zero, 0($t0)
    la $t2, morcegos_mortos
    lw $t3, 0($t2)
    addi $t3, $t3, 1
    sw $t3, 0($t2)
    move $a0, $t5
    la $t7, morcego_y
    lw $a1, 0($t7)
    move $a2, $s2
    jal impacto_matar
    j aplicar_gravidade

efeito_dano_morcego:
    move $a0, $t5
    la $t7, morcego_y
    lw $a1, 0($t7)
    move $a2, $s2
    jal impacto_dano
    j desenhar_morcego_corpo

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
    li $s3, 1                
    li $s0, 90               
    j aplicar_gravidade

# =========================================================================
# TODOS OS INIMIGOS MORTOS -> LIGA FLAG DE SAIDA (roda uma unica vez)
# =========================================================================
todos_mortos:
    la $t0, zumbis_mortos
    lw $t1, 0($t0)
    li $t2, 2
    blt $t1, $t2, aplicar_gravidade     

    la $t0, saida_liberada
    lw $t1, 0($t0)
    bne $t1, $zero, aplicar_gravidade   
    li $t1, 1
    sw $t1, 0($t0)                      
    j aplicar_gravidade

# =========================================================================
# CHECAR POSICAO DE SAIDA (roda toda frame apos saida_liberada = 1)
# =========================================================================
checar_posicao_saida:
    li $t0, 116
    blt $s0, $t0, aplicar_gravidade     

    li $s6, 0
    li $s7, 3
    li $s0, 20
    li $s1, 36
    li $s3, 1
    li $s5, 0
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
    la $t0, delay_spawn_zumbi
    li $t1, 80
    sw $t1, 0($t0)
    la $t0, delay_spawn_morcego
    sw $t1, 0($t0)
    la $t0, saida_liberada
    sw $zero, 0($t0)
    j loop_principal

# =========================================================================
# GAME OVER
# =========================================================================
game_over:
    li $s6, 0
    li $s7, 3                
    li $s0, 20                
    li $s1, 36
    li $s3, 1                
    li $s5, 0                
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
    la $t0, delay_spawn_zumbi
    li $t1, 80
    sw $t1, 0($t0)
    la $t0, delay_spawn_morcego
    sw $t1, 0($t0)
    la $t0, saida_liberada
    sw $zero, 0($t0)
    j loop_principal

# =========================================================================
# MOTOR DE GRAVIDADE E FISICA DO RICHTER
# =========================================================================
aplicar_gravidade:
    la $t0, no_ar
    lw $t1, 0($t0)
    beq $t1, $zero, renderizar_hud 
    
    la $t2, vel_y
    lw $t3, 0($t2)
    add $s1, $s1, $t3        
    addi $t3, $t3, 1         
    sw $t3, 0($t2)
    
    li $t4, 36
    blt $s1, $t4, manter_no_ar
    
    li $s1, 36
    sw $zero, 0($t0)         
    sw $zero, 0($t2)         
    
    # Reseta a flag de chicotada aérea ao tocar o chão
    la $t0, chicote_no_ar_feito
    sw $zero, 0($t0)

    li $t4, 6
    beq $s5, $t4, pular_reset_pose
    li $s5, 0                
pular_reset_pose:
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

    li $t0, 6
    beq $s5, $t0, tick_dano_frame

    li $t0, 3
    beq $s5, $t0, tick_esquiva_frame

    beq $a0, 119, comando_pulo     
    beq $a0, 97, mover_esq         
    beq $a0, 100, mover_dir        
    beq $a0, 101, atacar_chicote   
    beq $a0, 113, comando_esquiva  
    beq $a0, 102, simular_dano     
    
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
    beq $s5, 3, renderizar_richter
    beq $s5, 4, renderizar_richter
    beq $s5, 5, renderizar_richter
    beq $s5, 6, renderizar_richter

    la $t0, ultima_direcao
    lw $t1, 0($t0)
    beq $t1, $zero, esquiva_vai_direita

    addi $s0, $s0, -10
    j esquiva_finaliza

esquiva_vai_direita:
    addi $s0, $s0, 10

esquiva_finaliza:
    # --- TRAVA DE SEGURANÇA PARA ESQUIVA ---
    li $t0, 1
    bne $s3, $t0, esquiva_clamp_dir
    li $t0, 2
    bge $s0, $t0, esquiva_clamp_fim
    li $s0, 2
    j esquiva_clamp_fim
esquiva_clamp_dir:
    li $t0, 2
    bne $s3, $t0, esquiva_clamp_fim
    la $t0, saida_liberada
    lw $t1, 0($t0)
    bne $t1, $zero, esquiva_clamp_fim
    li $t0, 110
    ble $s0, $t0, esquiva_clamp_fim
    li $s0, 110
esquiva_clamp_fim:
    li $s5, 3                        
    la $t0, frames_esquiva
    sw $zero, 0($t0)
    j renderizar_richter

tick_esquiva_frame:
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
    la $t0, frames_dano
    lw $t1, 0($t0)
    addi $t1, $t1, 1
    sw $t1, 0($t0)
    li $t2, 6
    blt $t1, $t2, renderizar_richter
    sw $zero, 0($t0)
    li $s5, 0                        
    la $t0, invulneravel
    sw $zero, 0($t0)                
    j renderizar_richter

simular_dano:
    la $t0, invulneravel
    lw $t1, 0($t0)
    bne $t1, $zero, renderizar_richter
    li $t1, 1
    sw $t1, 0($t0)                  
    li $s5, 6                       
    la $t0, frames_dano
    sw $zero, 0($t0)                
    j renderizar_richter

comandos_menu:
    beq $a0, 115, cmd_iniciar       
    j mostrar_frame

cmd_iniciar:
    li $s6, 1                       
    j loop_principal

comando_pulo:
    la $t0, no_ar
    lw $t1, 0($t0)
    bne $t1, $zero, renderizar_richter 
    li $t1, 1
    sw $t1, 0($t0)           
    
    # Reseta flag de chicotada aérea no início do pulo
    la $t0, chicote_no_ar_feito
    sw $zero, 0($t0)

    li $t3, -6                  
    la $t2, vel_y
    sw $t3, 0($t2)
    li $s5, 2                
    j renderizar_richter

mover_esq:
    addi $s0, $s0, -2           # Velocidade horizontal aumentada para -2 pixels por frame       
    
    # --- PAREDE INVISÍVEL ESQUERDA (CENÁRIO 1) ---
    li $t0, 1
    bne $s3, $t0, fim_parede_esq
    li $t0, 2
    bge $s0, $t0, fim_parede_esq
    li $s0, 2
fim_parede_esq:

    la $t0, ultima_direcao
    sw $zero, 0($t0)         
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
    addi $s0, $s0, 2            # Velocidade horizontal aumentada para 2 pixels por frame         
    
    # --- PAREDE INVISÍVEL DIREITA (CENÁRIO 2 BLOQUEADO) ---
    li $t0, 2
    bne $s3, $t0, fim_parede_dir
    la $t0, saida_liberada
    lw $t1, 0($t0)
    bne $t1, $zero, fim_parede_dir
    li $t0, 110
    ble $s0, $t0, fim_parede_dir
    li $s0, 110
fim_parede_dir:

    la $t0, ultima_direcao
    li $t1, 1
    sw $t1, 0($t0)           
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
    # SISTEMA ANTI-SPAM (CHÃO E AR): Bloqueia input se já estiver executando o ataque
    li $t0, 4
    beq $s5, $t0, renderizar_richter
    li $t0, 5
    beq $s5, $t0, renderizar_richter

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
    # SISTEMA DE LIMITAÇÃO AÉREA: Impede se já chicoteou uma vez neste pulo
    la $t0, chicote_no_ar_feito
    lw $t1, 0($t0)
    bne $t1, $zero, renderizar_richter
    
    li $t1, 1
    sw $t1, 0($t0)              # Registra o uso único no ar

    li $s5, 5                
    j renderizar_richter

# =========================================================================
# DESENHO DO RICHTER
# =========================================================================
renderizar_richter:
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
    la $t0, frames_chicote1
    lw $t1, 0($t0)
    addi $t1, $t1, 1
    sw $t1, 0($t0)
    li $t2, 4                   # Reduzido de 7 para 4 frames para maior agilidade
    blt $t1, $t2, mostrar_frame
    sw $zero, 0($t0)
    li $s5, 5                   
    la $t0, frames_chicote2
    sw $zero, 0($t0)
    j mostrar_frame

r_chicote2: 
    jal desenhar_boneco_chicote2  
    la $t0, frames_chicote2
    lw $t1, 0($t0)
    addi $t1, $t1, 1
    sw $t1, 0($t0)
    li $t2, 4                   # Reduzido de 8 para 4 frames para encerramento veloz
    blt $t1, $t2, mostrar_frame
    sw $zero, 0($t0)
    la $t0, no_ar
    lw $t1, 0($t0)
    bne $t1, $zero, volta_pulo
    li $s5, 0                
    la $t0, chicote_acertou
    sw $zero, 0($t0)
    j mostrar_frame
volta_pulo:
    li $s5, 2                
    la $t0, chicote_acertou
    sw $zero, 0($t0)
    j mostrar_frame

r_dano:
    jal desenhar_boneco_dano
    j mostrar_frame

# =========================================================================
# FLIP GRAFICO
# =========================================================================
mostrar_frame:
    move $a0, $s2
    li $a1, 0x10010000
    li $t1, 512
copiar_loop:
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
# LIMPEZA GRAFICA
# =========================================================================
limpar_buffer_preto:
    move $t0, $a0            
    li $t1, 8192              
limpar_loop:
    sw $zero, 0($t0)
    addi $t0, $t0, 4
    addi $t1, $t1, -1
    bne $t1, $zero, limpar_loop
    jr $ra
