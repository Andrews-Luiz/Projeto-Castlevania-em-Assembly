.data
# Variáveis de controle do estado do jogo
estado_jogo:    .word 0      # 0 = Tela de Menu, 1 = Tela de Jogo
vida_hud:       .word 3      # 3 = Cheia, 2 = 2/3, 1 = 1/3, 0 = Vazia
pose_richter:   .word 0      # 0 = Parado, 1 = Andar1, 2 = Andar2, 3 = Andar3

.text
.globl main

main:
    # Inicializa o jogo no Menu Principal (estado 0)
    li $t2, 0
    sw $t2, estado_jogo
    
    # Inicializa os atributos padrão do Richter
    li $s0, 35               # Coordenada X inicial do Richter
    li $s1, 36               # Coordenada Y inicial do Richter (Chão)
    li $t2, 3
    sw $t2, vida_hud
    li $t2, 0
    sw $t2, pose_richter

loop_principal:
    # 1. Checa em qual tela o jogo está agora
    lw $t2, estado_jogo
    beq $t2, 0, renderizar_menu
    j renderizar_jogo

# =========================================================================
# FLUXO DA TELA DE MENU
# =========================================================================
renderizar_menu:
    # Desenha o menu (Função global que deve estar dentro de Menu.asm)
    jal exibir_menu_principal  
    j checar_teclado

# =========================================================================
# FLUXO DA TELA DE JOGO (CENÁRIO + HUD + RICHTER + INIMIGOS)
# =========================================================================
renderizar_jogo:
    # 1. Desenha o Cenário de fundo primeiro
    jal desenha_cenario1     

    # 2. Desenha a HUD dinâmica com base na vida atual
    lw $t3, vida_hud
    beq $t3, 3, exibir_hud_3
    beq $t3, 2, exibir_hud_2
    beq $t3, 1, exibir_hud_1
    j exibir_hud_0

exibir_hud_3:
    jal desenhar_hud_cheia
    j desenhar_personagens
exibir_hud_2:
    jal desenhar_hud_2tercos
    j desenhar_personagens
exibir_hud_1:
    jal desenhar_hud_1terco
    j desenhar_personagens
exibir_hud_0:
    jal desenhar_hud_vazia
    # Lógica de Game Over: Zera a vida, volta pro menu principal automaticamente
    li $t2, 0
    sw $t2, estado_jogo
    li $t2, 3                # Reseta a vida para a próxima partida
    sw $t2, vida_hud
    j loop_principal

desenhar_personagens:
    # 3. Desenha os Inimigos (Fixos no cenário para teste visual)
    li $a0, 95               # X do Zumbi
    li $a1, 36               # Y do Zumbi (Chão)
    jal desenhar_zumbi1

    li $a0, 70               # X do Morcego
    li $a1, 10               # Y do Morcego (Voando alto)
    jal desenhar_morcego1

    # 4. Desenha o Richter baseado na tecla pressionada
    move $a0, $s0            # Passa a posição X
    move $a1, $s1            # Passa a posição Y
    
    lw $t4, pose_richter
    beq $t4, 0, richter_parado
    beq $t4, 1, richter_andar1
    beq $t4, 2, richter_andar2
    j richter_andar3

richter_parado:
    jal desenhar_boneco_parado
    j checar_teclado
richter_andar1:
    jal desenhar_boneco_andar1
    j checar_teclado
richter_andar2:
    jal desenhar_boneco_andar2
    j checar_teclado
richter_andar3:
    jal desenhar_boneco_andar3

# =========================================================================
# CONTROLE DE INPUT (MMIO TECLADO SIMULADO)
# =========================================================================
checar_teclado:
    # Verifica se alguma tecla foi pressionada no simulador
    li $t5, 0xffff0000       
    lw $t6, 0($t5)           
    andi $t6, $t6, 1         
    beq $t6, $zero, frame_delay # Se nenhuma tecla foi pressionada, pula direto pro delay

    # Lê o código ASCII da tecla pressionada
    lw $t7, 4($t5)           

    # --- CONTROLES DO MENU ---
    lw $t2, estado_jogo
    bne $t2, 0, comandos_jogo # Se não estiver no menu, pula pros comandos de jogo
    beq $t7, 115, iniciar_jogo # Tecla 's' (ASCII 115) inicia o jogo
    j frame_delay

iniciar_jogo:
    li $t2, 1
    sw $t2, estado_jogo      # Muda o estado para Jogo
    j frame_delay

# --- CONTROLES DO JOGO ---
comandos_jogo:
    beq $t7, 109, voltar_menu # Tecla 'm' (ASCII 109) volta pro menu
    
    # Poses do Richter (Teclas de movimento simuladas)
    beq $t7, 97, set_andar1   # Tecla 'a' -> pose andar1
    beq $t7, 100, set_andar2  # Tecla 'd' -> pose andar2
    beq $t7, 119, set_andar3  # Tecla 'w' -> pose andar3
    beq $t7, 32, set_parado   # Tecla Espaço -> volta a ficar parado

    # Controle Manual da HUD (Simulação de dano)
    beq $t7, 51, set_hud3     # Tecla '3' -> HUD 3/3
    beq $t7, 50, set_hud2     # Tecla '2' -> HUD 2/3
    beq $t7, 49, set_hud1     # Tecla '1' -> HUD 1/3
    beq $t7, 48, set_hud0     # Tecla '0' -> HUD 0/3 (Game over)
    j frame_delay

voltar_menu:
    li $t2, 0
    sw $t2, estado_jogo
    j frame_delay

set_andar1:
    li $t2, 1
    sw $t2, pose_richter
    j frame_delay
set_andar2:
    li $t2, 2
    sw $t2, pose_richter
    j frame_delay
set_andar3:
    li $t2, 3
    sw $t2, pose_richter
    j frame_delay
set_parado:
    li $t2, 0
    sw $t2, pose_richter
    j frame_delay

set_hud3:
    li $t2, 3
    sw $t2, vida_hud
    j frame_delay
set_hud2:
    li $t2, 2
    sw $t2, vida_hud
    j frame_delay
set_hud1:
    li $t2, 1
    sw $t2, vida_hud
    j frame_delay
set_hud0:
    li $t2, 0
    sw $t2, vida_hud

# =========================================================================
# DELAY DE SINCRONIZAÇÃO DA TELA (60 FPS)
# =========================================================================
frame_delay:
    li $v0, 32               # Syscall Sleep
    li $a0, 16               # Espera 16 milissegundos
    syscall                  
    j loop_principal         # Reinicia o ciclo de renderização