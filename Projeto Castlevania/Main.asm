# main.asm - Arquivo principal do jogo. Inicializa o jogo, importa todos os modulos e executa o game loop principal.

.data
    base_address: .word 0x10010000
    cor_ceu:      .word 0x00001A57
    cor_terra:    .word 0x008B3A00
    cor_arvore:   .word 0x00146B00
    cor_parede:   .word 0x00A0522D
    cor_sombra:   .word 0x00000000
    cor_pedra:    .word 0x00808080

.text
.globl main

main:
    jal desenha_cenario1       # Desenha o fundo
    
    li $a0, 15                 # Mantém o X onde quiser
    li $a1, 15                 # Subimos o Y de 18 para 15 para compensar a nova altura de 14
    jal desenhar_simon_parado   # Teste primeiro o parado, depois mude para os de andar
    
    li $v0, 10
    syscall
    
.include "Cenario1.asm"
.include "Cenario2.asm"
.include "Personagem.asm"
