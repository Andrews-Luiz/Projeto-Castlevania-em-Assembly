# cenario1.asm - Desenha o cenario 1: Entrada do Castelo. Contem os loops de renderizacao do ceu, arvores, parede e chao.

-
# .word significa que voce esta reservando 4 bytes de memoria para guardar 32 bits
.data # declara cores e variáveis do programa, cores, sprites e variáveis por exemplo
   base_address: .word 0x10010000 
   cor_ceu:      .word 0x00001A57
   cor_terra:    .word 0x008B3A00
.text # seção onde fica o código executável, ou seja, as intruções que o processador vai executar
.globl main

main:
     lw $t0, base_address #lw significa load word, ele carrega um valor da memoria para o registrador, # $t0 = endereço base do bitmap
     lw $t1, cor_ceu # cor do céu
     li $t2, 1920    # 30 linhas × 64 pixels = 1920 pixels
     lw $t3, cor_terra #t3 = cor do chão
     
loop_ceu:
     sw $t1, 0($t0)          # escreve a cor no endereço atual
     addiu $t0, $t0, 4       # avança 4 bytes pro próximo pixel
     addiu $t2, $t2, -1      # decrementa o contador
     bnez $t2, loop_ceu      # se contador != 0, repete
     
     li $t0, 0x10011E00      # endereço direto do início do chão
     li $t2, 128             # 2 linhas = 64 pixels x 2 = 128 pixels
     
loop_terra:
     sw $t3, 0($t0)          # escreve a cor no endereço atual
     addiu $t0, $t0, 4       # avança 4 bytes pro próximo pixel
     addiu $t2, $t2, -1      # decrementa o contador
     bnez $t2, loop_terra      # se contador != 0, repete
     
     li $v0, 10              # syscall 10 = encerrar programa
     syscall
     
     
 
     
     

