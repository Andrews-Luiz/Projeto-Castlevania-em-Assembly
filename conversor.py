from PIL import Image
import os

def gerar_mips_solid_8bit(caminho_imagem, nome_funcao, arquivo_saida="Personagem.asm"):
    if not os.path.exists(caminho_imagem):
        print(f"Erro: O arquivo {caminho_imagem} nao foi encontrado!")
        return
        
    img = Image.open(caminho_imagem).convert("RGBA")
    nova_alt = 14
    nova_larg = int(round(nova_alt * (img.width / img.height)))
    img_redimensionada = img.resize((nova_larg, nova_alt), Image.NEAREST)
    pixels = img_redimensionada.load()
    
    precisa_de_text = True
    if os.path.exists(arquivo_saida) and os.path.getsize(arquivo_saida) > 0:
        precisa_de_text = False
        
    with open(arquivo_saida, "a") as f:
        if precisa_de_text:
            f.write(".text\n")
            
        f.write(f"\n.globl {nome_funcao}\n")
        f.write(f"{nome_funcao}:\n")
        f.write("    li $t0, 0x10010000\n\n")
        
        for y in range(nova_alt):
            f.write(f"    # --- LINHA {y} ---\n")
            f.write("    add $v0, $a1, " + str(y) + "\n")
            f.write("    sll $v0, $v0, 6\n")
            f.write("    add $v0, $v0, $a0\n")
            f.write("    sll $v0, $v0, 2\n")
            f.write("    add $v0, $v0, $t0\n")
            
            for x in range(nova_larg):
                r, g, b, a = pixels[x, y]
                
                # Remove o fundo cinza claro
                if abs(r - 118) < 20 and abs(g - 118) < 20 and abs(b - 118) < 20:
                    continue
                if a == 0:
                    continue
                
                # MAPEAMENTO CORES SÓLIDAS (Estilo Atari/Retro Puro para dar leitura)
                # Transforma nuances borradas em blocos de cor definidos
                if r > 180 and g > 130 and b > 90:    # Tons de pele/cabelo claro
                    r, g, b = 248, 184, 120          # Pele sólida NES
                elif b > 120 and r < 100:             # Tons de azul da roupa
                    r, g, b = 0, 0, 252              # Azul puro e nítido
                elif r > 180 and g > 180 and b > 180: # Branco da faixa/detalhes
                    r, g, b = 255, 255, 255          # Branco puro
                elif r < 90 and g < 90 and b < 90:    # Contornos esguios que borravam
                    r, g, b = 0, 0, 0                # Preto puro para dar separação
                else:
                    r, g, b = 116, 116, 116          # Cinza sólido para botas/detalhes
                
                cor_hex = f"0x00{r:02X}{g:02X}{b:02X}"
                deslocamento = x * 4
                f.write(f"    li $t1, {cor_hex}\n")
                f.write(f"    sw $t1, {deslocamento}($v0)\n")
            f.write("\n")
            
        f.write("    jr $ra\n")
    print(f"Funcao '{nome_funcao}' convertida para blocos solidos com sucesso!")

# Executa a geração do lote estruturado
gerar_mips_solid_8bit("sprites/simon_movimentacao/simon_parado.png", "desenhar_simon_parado")
gerar_mips_solid_8bit("sprites/simon_movimentacao/simon_andar1.png", "desenhar_simon_andar1")
gerar_mips_solid_8bit("sprites/simon_movimentacao/simon_andar2.png", "desenhar_simon_andar2")