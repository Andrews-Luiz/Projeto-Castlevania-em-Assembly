# =========================================================================
#          MAIN.ASM - ENGINE DE TESTE DE SPRITES, HUD E CENÁRIOS
# =========================================================================

.text
.globl main

main:
    # --- CONFIGURAÇÃO DE HARDWARE ---
    # $s6 = estado_jogo   (0 = Menu, 1 = Jogo)
    # $s7 = vida_hud      (3 = Cheia, 2 = 2/3, 1 = 1/3, 0 = Vazia)
    # $s5 = pose_richter  (0=Parado, 1=Andar1, 2=Andar2, 3=Andar3, 4=Chicote, 5=Dano)
    # $s3 = cenario_atual (1 = Cenario1, 2 = Cenario2)
    # $s2 = filtro_inimigos (0 = Nenhum, 1 = Zumbi, 2 = Morcego, 3 = Ambos)
    # $s4 = precisa_desenhar_fundo (1 = Desenhar fundo neste frame, 0 = Não desenhar)
    
    li $s6, 0                # Inicia na Tela de Menu
    li $s7, 3                # Inicia com Vida Cheia (3/3)
    li $s5, 0                # Inicia com Richter na pose Parado
    li $s3, 1                # Padrão: Cenário 1
    li $s2, 3                # Padrão: Mostrar Ambos os Inimigos
    li $s4, 1                # Força o primeiro desenho da tela

    # Coordenadas geográficas fixas do Richter
    li $s0, 35               
    li $s1, 36               

loop_principal:
    beq $s6, 0, rotina_menu
    beq $s6, 1, rotina_jogo
    j frame_delay            

# =========================================================================
# ROTINA DA TELA DE MENU
# =========================================================================
rotina_menu:
    bne $s4, 1, pular_fundo_menu
    jal limpar_tela_preto
    jal exibir_menu_principal  
    li $s4, 0                
pular_fundo_menu:
    j checar_teclado         

# =========================================================================
# ROTINA DO JOGO
# =========================================================================
rotina_jogo:
    # O cenário SÓ é desenhado se o gatilho $s4 for ativado (via teclado ou troca de tela)
    bne $s4, 1, renderizar_hud
    
    jal limpar_tela_preto
    beq $s3, 1, chamar_background1
    jal desenha_cenario2     
    j fim_background
chamar_background1:
    jal desenha_cenario1     
fim_background:
    li $s4, 0                # Trava o desenho do cenário novamente

renderizar_hud:
    # 2. Atualiza a HUD continuamente por cima do cenário estático
    beq $s7, 3, chamar_hud_3
    beq $s7, 2, chamar_hud_2
    beq $s7, 1, chamar_hud_1
    j chamar_hud_0

chamar_hud_3:
    jal desenhar_hud_cheia
    j desenhar_entidades
chamar_hud_2:
    jal desenhar_hud_2tercos
    j desenhar_entidades
chamar_hud_1:
    jal desenhar_hud_1terco
    j desenhar_entidades
chamar_hud_0:
    jal desenhar_hud_vazia
    
    # Game Over
    li $s6, 0
    li $s7, 3                
    li $s4, 1                
    j frame_delay

desenhar_entidades:
    # 3. Desenha os Inimigos baseados no filtro ativo
    beq $s2, 0, render_richter 
    beq $s2, 1, render_zumbi
    beq $s2, 2, render_morcego
    
render_zumbi:
    li $a0, 95               
    li $a1, 36               
    jal desenhar_zumbi1
    beq $s2, 1, render_richter 

render_morcego:
    li $a0, 70               
    li $a1, 32               
    jal desenhar_morcego1

render_richter:
    # 4. Processa e desenha a pose atual selecionada para o Richter
    move $a0, $s0            
    move $a1, $s1            
    
    beq $s5, 0, chamar_parado
    beq $s5, 1, chamar_andar1
    beq $s5, 2, chamar_andar2
    beq $s5, 3, chamar_andar3
    beq $s5, 4, chamar_chicote
    j chamar_dano

chamar_parado:
    jal desenhar_boneco_parado
    j checar_teclado
chamar_andar1:
    jal desenhar_boneco_andar1
    j checar_teclado
chamar_andar2:
    jal desenhar_boneco_andar2
    j checar_teclado
chamar_andar3:
    jal desenhar_boneco_andar3
    j checar_teclado
chamar_chicote:
    jal desenhar_boneco_chicote1   # Desenha Richter atacando!
    j checar_teclado
chamar_dano:
    jal desenhar_boneco_dano      # Desenha Richter sofrendo impacto!

# =========================================================================
# SISTEMA DE CONTROLE DE INPUTS (TECLADO SIMULADO)
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

# --- COMANDOS: TELA DE MENU ---
comandos_menu:
    beq $t7, 115, acao_iniciar 
    j frame_delay

acao_iniciar:
    li $s6, 1                
    li $s4, 1                
    j frame_delay

# --- COMANDOS: TELA DE JOGO ---
comandos_jogo:
    beq $t7, 109, acao_voltar  
    
    # Atalho manual de Refresh / Limpeza de rastro (Tecla 'r')
    beq $t7, 114, acao_refresh # ASCII 114 = 'r'

    # Seleção de Cenários
    beq $t7, 49, set_cenario1  
    beq $t7, 50, set_cenario2  

    # Filtros de Inimigos
    beq $t7, 122, fil_zumbi    
    beq $t7, 98, fil_morcego   
    beq $t7, 99, fil_ambos     
    beq $t7, 118, fil_nenhum   

    # Seleção de Poses do Richter
    beq $t7, 97, set_andar1    
    beq $t7, 100, set_andar2   
    beq $t7, 119, set_andar3   
    beq $t7, 120, set_parado   
    beq $t7, 101, set_chicote  # Tecla 'e' (ASCII 101) -> Ataque!
    beq $t7, 102, set_dano     # Tecla 'f' (ASCII 102) -> Dano!

    # Teste de Vida da HUD
    beq $t7, 117, set_hud3     
    beq $t7, 105, set_hud2     
    beq $t7, 111, set_hud1     
    beq $t7, 112, set_hud0     
    j frame_delay

acao_voltar:
    li $s6, 0                
    li $s4, 1                
    j frame_delay

acao_refresh:
    li $s4, 1                # Ativa o desenho do fundo por um frame para limpar os clones
    j frame_delay

# --- ALTERADORES DE ESTADO DESMEMBRADOS ---
set_cenario1:
    li $s3, 1
    li $s4, 1
    j frame_delay

set_cenario2:
    li $s3, 2
    li $s4, 1
    j frame_delay

fil_nenhum:
    li $s2, 0
    j frame_delay

fil_zumbi:
    li $s2, 1
    j frame_delay

fil_morcego:
    li $s2, 2
    j frame_delay

fil_ambos:
    li $s2, 3
    j frame_delay

set_andar1:
    li $s5, 1
    j frame_delay

set_andar2:
    li $s5, 2
    j frame_delay

set_andar3:
    li $s5, 3
    j frame_delay

set_parado:
    li $s5, 0
    j frame_delay

set_chicote:
    li $s5, 4
    j frame_delay

set_dano:
    li $s5, 5
    j frame_delay

set_hud3:
    li $s7, 3
    j frame_delay

set_hud2:
    li $s7, 2
    j frame_delay

set_hud1:
    li $s7, 1
    j frame_delay

set_hud0:
    li $s7, 0
    j frame_delay

# =========================================================================
# FUNÇÃO AUXILIAR: LIMPAR TELA COMPLETA
# =========================================================================
limpar_tela_preto:
    li $t0, 0x10010000       
    li $t1, 32768            
    li $t3, 0x00000000       
limpar_loop:
    sw $t3, 0($t0)           
    addi $t0, $t0, 4         
    addi $t1, $t1, -1        
    bne $t1, $zero, limpar_loop
    jr $ra

# =========================================================================
# CONTROLE DO FRAMERATE (60 FPS)
# =========================================================================
frame_delay:
    li $v0, 32               
    li $a0, 16               
    syscall                  
    j loop_principal