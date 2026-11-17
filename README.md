# 🍩 Cardápio pronto — The Donut House

Pasta gerada automaticamente para a **Feira de Empreendedorismo**.

## Arquivos

| Arquivo | O que é |
|---|---|
| `index.html` | Versão digital navegável (frente e verso, com botões de navegação e impressão). |
| `cardapio-impressao.html` | Versão A4 print-ready, frente e verso, margens de 12 mm. |
| `cardapio.pdf` | PDF final com 2 páginas A4, pronto para imprimir. |
| `local-fonts.css` + `fonts/` | Fontes Bungee, Chewy, Luckiest Guy e Baloo 2 embutidas localmente (o PDF não depende da internet). |
| `gerar-pdf.sh` | Regera o PDF a partir do HTML de impressão. |
| `../assets/` | Logo e arte promocional originais da marca. |
| `../config.txt` | Dados de negócio usados na geração. |

## Personalizar

1. Edite `../config.txt` (preço unitário, preço do combo, WhatsApp, Instagram, estande/local).
2. Rode, na pasta do pacote:
   ```bash
   ./rodar-cardapio.sh
   ```
   Ele atualiza `prompt-cardapio-final.md` e gera novamente os arquivos.
3. Para ajustes de texto/design, edite `../cardapio.md` (prompt-especificação) e rode de novo.

Campos que estavam como `__NAO_INFORMADO__` aparecem no cardápio como espaços pontilhados (`R$ ____`, `@____`, `Estande: ____`). Eles foram mantidos de propósito para não inventar dados.

## Imprimir

- Use `cardapio.pdf` diretamente: 2 páginas A4, frente e verso.
- Se preferir imprimir pelo navegador, abra `cardapio-impressao.html`, pressione `Ctrl+P`, escolha A4, margens personalizadas de **12 mm** e marque **“Gráficos de segundo plano”**.
- Para imprimir frente e verso no mesmo papel, ative a opção de duplex do seu impressor.

## Regenerar o PDF

```bash
./gerar-pdf.sh
```

O script usa o Google Chrome instalado. Se ele não estiver disponível, o Chrome comum também funciona: abra `cardapio-impressao.html` → `Ctrl+P` → Salvar como PDF.

## Conteúdo conferido

- Massas: Maracujá · Baunilha · Cereja
- Coberturas: Paçoca · Doce de leite · Brigadeiro tradicional
- Granulados: Tradicional · Colorido · Preto e branco · Amendoim
- 36 combinações (3 × 3 × 4) na tabela do verso
- 3 combos assinatura: Tropical Acidez · Do Norte ao Sul · Cereja do Bolo
- Diferencial dos pacotinhos lacrados, selos e slogans oficiais
- Paleta preto `#0D0D0D` + rosa-choque `#FF2E88` + branco

Feito com 🍩 carinho para a feira.
