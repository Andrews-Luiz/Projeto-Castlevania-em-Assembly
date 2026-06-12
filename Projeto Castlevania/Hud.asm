.text

.globl desenhar_hud_cheia
desenhar_hud_cheia:
    li $t0, 0x10010000       # Endereço base do Bitmap Display

    li $v0, 0
    add $v0, $v0, $t0

    li $v0, 512
    add $v0, $v0, $t0
    li $t1, 0x00787878
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    sw $t1, 160($v0)
    sw $t1, 164($v0)

    li $v0, 1024
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    sw $t1, 160($v0)
    li $t1, 0x00787878
    sw $t1, 164($v0)

    li $v0, 1536
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00FFFFFF
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00E40000
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    li $t1, 0x00000000
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    li $t1, 0x00FFFFFF
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    li $t1, 0x00E40000
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    li $t1, 0x00000000
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    li $t1, 0x00FFFFFF
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    li $t1, 0x00E40000
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    li $t1, 0x00000000
    sw $t1, 160($v0)
    li $t1, 0x00787878
    sw $t1, 164($v0)

    li $v0, 2048
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00E40000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    li $t1, 0x00000000
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    li $t1, 0x00E40000
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    li $t1, 0x00000000
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    li $t1, 0x00E40000
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    li $t1, 0x00000000
    sw $t1, 160($v0)
    li $t1, 0x00787878
    sw $t1, 164($v0)

    li $v0, 2560
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00E40000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    li $t1, 0x00000000
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    li $t1, 0x00E40000
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    li $t1, 0x00000000
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    li $t1, 0x00E40000
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    li $t1, 0x00000000
    sw $t1, 160($v0)
    li $t1, 0x00787878
    sw $t1, 164($v0)

    li $v0, 3072
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    sw $t1, 160($v0)
    li $t1, 0x00787878
    sw $t1, 164($v0)

    li $v0, 3584
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    sw $t1, 160($v0)
    sw $t1, 164($v0)

    li $v0, 4096
    add $v0, $v0, $t0

    li $v0, 4608
    add $v0, $v0, $t0

    li $v0, 5120
    add $v0, $v0, $t0

    li $v0, 5632
    add $v0, $v0, $t0

    li $v0, 6144
    add $v0, $v0, $t0

    li $v0, 6656
    add $v0, $v0, $t0

    li $v0, 7168
    add $v0, $v0, $t0

    li $v0, 7680
    add $v0, $v0, $t0

    li $v0, 8192
    add $v0, $v0, $t0

    li $v0, 8704
    add $v0, $v0, $t0

    li $v0, 9216
    add $v0, $v0, $t0

    li $v0, 9728
    add $v0, $v0, $t0

    li $v0, 10240
    add $v0, $v0, $t0

    li $v0, 10752
    add $v0, $v0, $t0

    li $v0, 11264
    add $v0, $v0, $t0

    li $v0, 11776
    add $v0, $v0, $t0

    li $v0, 12288
    add $v0, $v0, $t0

    li $v0, 12800
    add $v0, $v0, $t0

    li $v0, 13312
    add $v0, $v0, $t0

    li $v0, 13824
    add $v0, $v0, $t0

    li $v0, 14336
    add $v0, $v0, $t0

    li $v0, 14848
    add $v0, $v0, $t0

    li $v0, 15360
    add $v0, $v0, $t0

    li $v0, 15872
    add $v0, $v0, $t0

    li $v0, 16384
    add $v0, $v0, $t0

    li $v0, 16896
    add $v0, $v0, $t0

    li $v0, 17408
    add $v0, $v0, $t0

    li $v0, 17920
    add $v0, $v0, $t0

    li $v0, 18432
    add $v0, $v0, $t0

    li $v0, 18944
    add $v0, $v0, $t0

    li $v0, 19456
    add $v0, $v0, $t0

    li $v0, 19968
    add $v0, $v0, $t0

    li $v0, 20480
    add $v0, $v0, $t0

    li $v0, 20992
    add $v0, $v0, $t0

    li $v0, 21504
    add $v0, $v0, $t0

    li $v0, 22016
    add $v0, $v0, $t0

    li $v0, 22528
    add $v0, $v0, $t0

    li $v0, 23040
    add $v0, $v0, $t0

    li $v0, 23552
    add $v0, $v0, $t0

    li $v0, 24064
    add $v0, $v0, $t0

    li $v0, 24576
    add $v0, $v0, $t0

    li $v0, 25088
    add $v0, $v0, $t0

    li $v0, 25600
    add $v0, $v0, $t0

    li $v0, 26112
    add $v0, $v0, $t0

    li $v0, 26624
    add $v0, $v0, $t0

    li $v0, 27136
    add $v0, $v0, $t0

    li $v0, 27648
    add $v0, $v0, $t0

    li $v0, 28160
    add $v0, $v0, $t0

    li $v0, 28672
    add $v0, $v0, $t0

    li $v0, 29184
    add $v0, $v0, $t0

    li $v0, 29696
    add $v0, $v0, $t0

    li $v0, 30208
    add $v0, $v0, $t0

    li $v0, 30720
    add $v0, $v0, $t0

    li $v0, 31232
    add $v0, $v0, $t0

    li $v0, 31744
    add $v0, $v0, $t0

    li $v0, 32256
    add $v0, $v0, $t0

    jr $ra

.globl desenhar_hud_2tercos
desenhar_hud_2tercos:
    li $t0, 0x10010000       # Endereço base do Bitmap Display

    li $v0, 0
    add $v0, $v0, $t0

    li $v0, 512
    add $v0, $v0, $t0
    li $t1, 0x00787878
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    sw $t1, 160($v0)
    sw $t1, 164($v0)

    li $v0, 1024
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    sw $t1, 160($v0)
    li $t1, 0x00787878
    sw $t1, 164($v0)

    li $v0, 1536
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00FFFFFF
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00E40000
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    li $t1, 0x00000000
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    li $t1, 0x00FFFFFF
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    li $t1, 0x00E40000
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    li $t1, 0x00000000
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    li $t1, 0x00141414
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    li $t1, 0x00282828
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    li $t1, 0x00000000
    sw $t1, 160($v0)
    li $t1, 0x00787878
    sw $t1, 164($v0)

    li $v0, 2048
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00E40000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    li $t1, 0x00000000
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    li $t1, 0x00E40000
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    li $t1, 0x00000000
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    li $t1, 0x00282828
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    li $t1, 0x00000000
    sw $t1, 160($v0)
    li $t1, 0x00787878
    sw $t1, 164($v0)

    li $v0, 2560
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00E40000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    li $t1, 0x00000000
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    li $t1, 0x00E40000
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    li $t1, 0x00000000
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    li $t1, 0x00282828
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    li $t1, 0x00000000
    sw $t1, 160($v0)
    li $t1, 0x00787878
    sw $t1, 164($v0)

    li $v0, 3072
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    sw $t1, 160($v0)
    li $t1, 0x00787878
    sw $t1, 164($v0)

    li $v0, 3584
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    sw $t1, 160($v0)
    sw $t1, 164($v0)

    li $v0, 4096
    add $v0, $v0, $t0

    li $v0, 4608
    add $v0, $v0, $t0

    li $v0, 5120
    add $v0, $v0, $t0

    li $v0, 5632
    add $v0, $v0, $t0

    li $v0, 6144
    add $v0, $v0, $t0

    li $v0, 6656
    add $v0, $v0, $t0

    li $v0, 7168
    add $v0, $v0, $t0

    li $v0, 7680
    add $v0, $v0, $t0

    li $v0, 8192
    add $v0, $v0, $t0

    li $v0, 8704
    add $v0, $v0, $t0

    li $v0, 9216
    add $v0, $v0, $t0

    li $v0, 9728
    add $v0, $v0, $t0

    li $v0, 10240
    add $v0, $v0, $t0

    li $v0, 10752
    add $v0, $v0, $t0

    li $v0, 11264
    add $v0, $v0, $t0

    li $v0, 11776
    add $v0, $v0, $t0

    li $v0, 12288
    add $v0, $v0, $t0

    li $v0, 12800
    add $v0, $v0, $t0

    li $v0, 13312
    add $v0, $v0, $t0

    li $v0, 13824
    add $v0, $v0, $t0

    li $v0, 14336
    add $v0, $v0, $t0

    li $v0, 14848
    add $v0, $v0, $t0

    li $v0, 15360
    add $v0, $v0, $t0

    li $v0, 15872
    add $v0, $v0, $t0

    li $v0, 16384
    add $v0, $v0, $t0

    li $v0, 16896
    add $v0, $v0, $t0

    li $v0, 17408
    add $v0, $v0, $t0

    li $v0, 17920
    add $v0, $v0, $t0

    li $v0, 18432
    add $v0, $v0, $t0

    li $v0, 18944
    add $v0, $v0, $t0

    li $v0, 19456
    add $v0, $v0, $t0

    li $v0, 19968
    add $v0, $v0, $t0

    li $v0, 20480
    add $v0, $v0, $t0

    li $v0, 20992
    add $v0, $v0, $t0

    li $v0, 21504
    add $v0, $v0, $t0

    li $v0, 22016
    add $v0, $v0, $t0

    li $v0, 22528
    add $v0, $v0, $t0

    li $v0, 23040
    add $v0, $v0, $t0

    li $v0, 23552
    add $v0, $v0, $t0

    li $v0, 24064
    add $v0, $v0, $t0

    li $v0, 24576
    add $v0, $v0, $t0

    li $v0, 25088
    add $v0, $v0, $t0

    li $v0, 25600
    add $v0, $v0, $t0

    li $v0, 26112
    add $v0, $v0, $t0

    li $v0, 26624
    add $v0, $v0, $t0

    li $v0, 27136
    add $v0, $v0, $t0

    li $v0, 27648
    add $v0, $v0, $t0

    li $v0, 28160
    add $v0, $v0, $t0

    li $v0, 28672
    add $v0, $v0, $t0

    li $v0, 29184
    add $v0, $v0, $t0

    li $v0, 29696
    add $v0, $v0, $t0

    li $v0, 30208
    add $v0, $v0, $t0

    li $v0, 30720
    add $v0, $v0, $t0

    li $v0, 31232
    add $v0, $v0, $t0

    li $v0, 31744
    add $v0, $v0, $t0

    li $v0, 32256
    add $v0, $v0, $t0

    jr $ra

.globl desenhar_hud_1terco
desenhar_hud_1terco:
    li $t0, 0x10010000       # Endereço base do Bitmap Display

    li $v0, 0
    add $v0, $v0, $t0

    li $v0, 512
    add $v0, $v0, $t0
    li $t1, 0x00787878
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    sw $t1, 160($v0)
    sw $t1, 164($v0)

    li $v0, 1024
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    sw $t1, 160($v0)
    li $t1, 0x00787878
    sw $t1, 164($v0)

    li $v0, 1536
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00FFFFFF
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00E40000
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    li $t1, 0x00000000
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    li $t1, 0x00141414
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    li $t1, 0x00282828
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    li $t1, 0x00000000
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    li $t1, 0x00141414
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    li $t1, 0x00282828
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    li $t1, 0x00000000
    sw $t1, 160($v0)
    li $t1, 0x00787878
    sw $t1, 164($v0)

    li $v0, 2048
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00E40000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    li $t1, 0x00000000
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    li $t1, 0x00282828
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    li $t1, 0x00000000
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    li $t1, 0x00282828
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    li $t1, 0x00000000
    sw $t1, 160($v0)
    li $t1, 0x00787878
    sw $t1, 164($v0)

    li $v0, 2560
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00E40000
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    li $t1, 0x00000000
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    li $t1, 0x00282828
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    li $t1, 0x00000000
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    li $t1, 0x00282828
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    li $t1, 0x00000000
    sw $t1, 160($v0)
    li $t1, 0x00787878
    sw $t1, 164($v0)

    li $v0, 3072
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    sw $t1, 160($v0)
    li $t1, 0x00787878
    sw $t1, 164($v0)

    li $v0, 3584
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    sw $t1, 160($v0)
    sw $t1, 164($v0)

    li $v0, 4096
    add $v0, $v0, $t0

    li $v0, 4608
    add $v0, $v0, $t0

    li $v0, 5120
    add $v0, $v0, $t0

    li $v0, 5632
    add $v0, $v0, $t0

    li $v0, 6144
    add $v0, $v0, $t0

    li $v0, 6656
    add $v0, $v0, $t0

    li $v0, 7168
    add $v0, $v0, $t0

    li $v0, 7680
    add $v0, $v0, $t0

    li $v0, 8192
    add $v0, $v0, $t0

    li $v0, 8704
    add $v0, $v0, $t0

    li $v0, 9216
    add $v0, $v0, $t0

    li $v0, 9728
    add $v0, $v0, $t0

    li $v0, 10240
    add $v0, $v0, $t0

    li $v0, 10752
    add $v0, $v0, $t0

    li $v0, 11264
    add $v0, $v0, $t0

    li $v0, 11776
    add $v0, $v0, $t0

    li $v0, 12288
    add $v0, $v0, $t0

    li $v0, 12800
    add $v0, $v0, $t0

    li $v0, 13312
    add $v0, $v0, $t0

    li $v0, 13824
    add $v0, $v0, $t0

    li $v0, 14336
    add $v0, $v0, $t0

    li $v0, 14848
    add $v0, $v0, $t0

    li $v0, 15360
    add $v0, $v0, $t0

    li $v0, 15872
    add $v0, $v0, $t0

    li $v0, 16384
    add $v0, $v0, $t0

    li $v0, 16896
    add $v0, $v0, $t0

    li $v0, 17408
    add $v0, $v0, $t0

    li $v0, 17920
    add $v0, $v0, $t0

    li $v0, 18432
    add $v0, $v0, $t0

    li $v0, 18944
    add $v0, $v0, $t0

    li $v0, 19456
    add $v0, $v0, $t0

    li $v0, 19968
    add $v0, $v0, $t0

    li $v0, 20480
    add $v0, $v0, $t0

    li $v0, 20992
    add $v0, $v0, $t0

    li $v0, 21504
    add $v0, $v0, $t0

    li $v0, 22016
    add $v0, $v0, $t0

    li $v0, 22528
    add $v0, $v0, $t0

    li $v0, 23040
    add $v0, $v0, $t0

    li $v0, 23552
    add $v0, $v0, $t0

    li $v0, 24064
    add $v0, $v0, $t0

    li $v0, 24576
    add $v0, $v0, $t0

    li $v0, 25088
    add $v0, $v0, $t0

    li $v0, 25600
    add $v0, $v0, $t0

    li $v0, 26112
    add $v0, $v0, $t0

    li $v0, 26624
    add $v0, $v0, $t0

    li $v0, 27136
    add $v0, $v0, $t0

    li $v0, 27648
    add $v0, $v0, $t0

    li $v0, 28160
    add $v0, $v0, $t0

    li $v0, 28672
    add $v0, $v0, $t0

    li $v0, 29184
    add $v0, $v0, $t0

    li $v0, 29696
    add $v0, $v0, $t0

    li $v0, 30208
    add $v0, $v0, $t0

    li $v0, 30720
    add $v0, $v0, $t0

    li $v0, 31232
    add $v0, $v0, $t0

    li $v0, 31744
    add $v0, $v0, $t0

    li $v0, 32256
    add $v0, $v0, $t0

    jr $ra

.globl desenhar_hud_vazia
desenhar_hud_vazia:
    li $t0, 0x10010000       # Endereço base do Bitmap Display

    li $v0, 0
    add $v0, $v0, $t0

    li $v0, 512
    add $v0, $v0, $t0
    li $t1, 0x00787878
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    sw $t1, 160($v0)
    sw $t1, 164($v0)

    li $v0, 1024
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    sw $t1, 160($v0)
    li $t1, 0x00787878
    sw $t1, 164($v0)

    li $v0, 1536
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00141414
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    li $t1, 0x00282828
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    li $t1, 0x00000000
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    li $t1, 0x00141414
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    li $t1, 0x00282828
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    li $t1, 0x00000000
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    li $t1, 0x00141414
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    li $t1, 0x00282828
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    li $t1, 0x00000000
    sw $t1, 160($v0)
    li $t1, 0x00787878
    sw $t1, 164($v0)

    li $v0, 2048
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00282828
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    li $t1, 0x00000000
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    li $t1, 0x00282828
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    li $t1, 0x00000000
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    li $t1, 0x00282828
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    li $t1, 0x00000000
    sw $t1, 160($v0)
    li $t1, 0x00787878
    sw $t1, 164($v0)

    li $v0, 2560
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    li $t1, 0x00282828
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    li $t1, 0x00000000
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    li $t1, 0x00282828
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    li $t1, 0x00000000
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    li $t1, 0x00282828
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    li $t1, 0x00000000
    sw $t1, 160($v0)
    li $t1, 0x00787878
    sw $t1, 164($v0)

    li $v0, 3072
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    li $t1, 0x00000000
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    sw $t1, 160($v0)
    li $t1, 0x00787878
    sw $t1, 164($v0)

    li $v0, 3584
    add $v0, $v0, $t0
    sw $t1, 8($v0)
    sw $t1, 12($v0)
    sw $t1, 16($v0)
    sw $t1, 20($v0)
    sw $t1, 24($v0)
    sw $t1, 28($v0)
    sw $t1, 32($v0)
    sw $t1, 36($v0)
    sw $t1, 40($v0)
    sw $t1, 44($v0)
    sw $t1, 48($v0)
    sw $t1, 52($v0)
    sw $t1, 56($v0)
    sw $t1, 60($v0)
    sw $t1, 64($v0)
    sw $t1, 68($v0)
    sw $t1, 72($v0)
    sw $t1, 76($v0)
    sw $t1, 80($v0)
    sw $t1, 84($v0)
    sw $t1, 88($v0)
    sw $t1, 92($v0)
    sw $t1, 96($v0)
    sw $t1, 100($v0)
    sw $t1, 104($v0)
    sw $t1, 108($v0)
    sw $t1, 112($v0)
    sw $t1, 116($v0)
    sw $t1, 120($v0)
    sw $t1, 124($v0)
    sw $t1, 128($v0)
    sw $t1, 132($v0)
    sw $t1, 136($v0)
    sw $t1, 140($v0)
    sw $t1, 144($v0)
    sw $t1, 148($v0)
    sw $t1, 152($v0)
    sw $t1, 156($v0)
    sw $t1, 160($v0)
    sw $t1, 164($v0)

    li $v0, 4096
    add $v0, $v0, $t0

    li $v0, 4608
    add $v0, $v0, $t0

    li $v0, 5120
    add $v0, $v0, $t0

    li $v0, 5632
    add $v0, $v0, $t0

    li $v0, 6144
    add $v0, $v0, $t0

    li $v0, 6656
    add $v0, $v0, $t0

    li $v0, 7168
    add $v0, $v0, $t0

    li $v0, 7680
    add $v0, $v0, $t0

    li $v0, 8192
    add $v0, $v0, $t0

    li $v0, 8704
    add $v0, $v0, $t0

    li $v0, 9216
    add $v0, $v0, $t0

    li $v0, 9728
    add $v0, $v0, $t0

    li $v0, 10240
    add $v0, $v0, $t0

    li $v0, 10752
    add $v0, $v0, $t0

    li $v0, 11264
    add $v0, $v0, $t0

    li $v0, 11776
    add $v0, $v0, $t0

    li $v0, 12288
    add $v0, $v0, $t0

    li $v0, 12800
    add $v0, $v0, $t0

    li $v0, 13312
    add $v0, $v0, $t0

    li $v0, 13824
    add $v0, $v0, $t0

    li $v0, 14336
    add $v0, $v0, $t0

    li $v0, 14848
    add $v0, $v0, $t0

    li $v0, 15360
    add $v0, $v0, $t0

    li $v0, 15872
    add $v0, $v0, $t0

    li $v0, 16384
    add $v0, $v0, $t0

    li $v0, 16896
    add $v0, $v0, $t0

    li $v0, 17408
    add $v0, $v0, $t0

    li $v0, 17920
    add $v0, $v0, $t0

    li $v0, 18432
    add $v0, $v0, $t0

    li $v0, 18944
    add $v0, $v0, $t0

    li $v0, 19456
    add $v0, $v0, $t0

    li $v0, 19968
    add $v0, $v0, $t0

    li $v0, 20480
    add $v0, $v0, $t0

    li $v0, 20992
    add $v0, $v0, $t0

    li $v0, 21504
    add $v0, $v0, $t0

    li $v0, 22016
    add $v0, $v0, $t0

    li $v0, 22528
    add $v0, $v0, $t0

    li $v0, 23040
    add $v0, $v0, $t0

    li $v0, 23552
    add $v0, $v0, $t0

    li $v0, 24064
    add $v0, $v0, $t0

    li $v0, 24576
    add $v0, $v0, $t0

    li $v0, 25088
    add $v0, $v0, $t0

    li $v0, 25600
    add $v0, $v0, $t0

    li $v0, 26112
    add $v0, $v0, $t0

    li $v0, 26624
    add $v0, $v0, $t0

    li $v0, 27136
    add $v0, $v0, $t0

    li $v0, 27648
    add $v0, $v0, $t0

    li $v0, 28160
    add $v0, $v0, $t0

    li $v0, 28672
    add $v0, $v0, $t0

    li $v0, 29184
    add $v0, $v0, $t0

    li $v0, 29696
    add $v0, $v0, $t0

    li $v0, 30208
    add $v0, $v0, $t0

    li $v0, 30720
    add $v0, $v0, $t0

    li $v0, 31232
    add $v0, $v0, $t0

    li $v0, 31744
    add $v0, $v0, $t0

    li $v0, 32256
    add $v0, $v0, $t0

    jr $ra
