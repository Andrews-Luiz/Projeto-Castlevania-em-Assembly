# main.asm - Arquivo principal do jogo. Inicializa o jogo, importa todos os modulos e executa o game loop principal.

.include "Cenario1.asm"

.text
.globl main

main:
     jal desenha_cenario1  #chama o cenario1
     
     li $v0, 10 # o li(load imediatte, carrega um valor direto no registrador sem pegar da memória, no caso ele pega o valor 10, cuja função é encerrar o programa)
     syscall
     
