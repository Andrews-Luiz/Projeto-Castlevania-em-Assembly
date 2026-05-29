# main.asm - Arquivo principal do jogo. Inicializa o jogo, importa todos os modulos e executa o game loop principal.

.data
    base_address: .word 0x10010000
    cor_ceu:      .word 0x00001A57
    cor_terra:    .word 0x008B3A00
    cor_arvore:   .word 0x00146B00
    cor_parede:   .word 0x00A0522D
    cor_sombra:   .word 0x00000000

.text
.globl main

main:
    jal desenha_cenario1    # chama o cenario 1

    li $v0, 10
    syscall

.include "Cenario1.asm"