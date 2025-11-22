#!/bin/bash

echo "===================================================================="
echo "  PROJETO 2 - CENTRO DE DOCUMENTAÇÃO & RELATÓRIOS"
echo "  Organização • Visualização • Análise de Dados"
echo "===================================================================="
echo ""

# ============================================================
# OBJETIVO:
# Criar uma estrutura de documentação com relatórios e textos,
# visualizando e analisando conteúdo usando dois novos comandos:
#   - cat
#   - wc
# Além de continuar reforçando os comandos do Projeto 1.
# ============================================================

# ============================================================
echo "========== TODO 1: CRIAÇÃO DA ESTRUTURA DE DIRETÓRIOS =========="
echo ""

# Criando diretório principal e subpastas
mkdir -p centro_docs/{relatorios,textos,scripts,backup}

echo "OK: Estrutura de pastas criada!"
echo ""

# ============================================================
echo "========== TODO 2: CRIAÇÃO DE ARQUIVOS COM CONTEÚDO =========="
echo ""

# Criando arquivos em RELATORIOS
cd centro_docs
cd relatorios
echo "Criando relatórios em: $(pwd)"
touch relatorio1.txt relatorio2.txt

echo "Adicionando conteúdo nos relatórios..."
for i in {1..3}
do
    echo "Aprendizado ${i}" >> relatorio1.txt
    echo "Produtividade ${i}" >> relatorio2.txt
done

cd ..

# Criando arquivos em TEXTOS
cd textos
echo "Criando textos em: $(pwd)"

for i in {1..5}
do
    echo "Introdução ${i}" >> introducao.txt
    echo "Biografia ${i}" >> biografia.txt
done

cd ..

# Criando script em SCRIPTS
cd scripts
echo "Criando script executar.sh em: $(pwd)"
echo "#!/bin/bash" >> executar.sh
cd ..

echo "Arquivos criados com sucesso!"
echo ""

# ============================================================
echo "========== TODO 3: VISUALIZAÇÃO E ANÁLISE DE CONTEÚDO =========="
echo ""

# Exibindo conteúdo total do relatorio1.txt
echo ">>> Conteúdo de relatorio1.txt:"
cat relatorios/relatorio1.txt
echo ""

# Exibindo apenas últimas 2 linhas do biografia.txt
echo ">>> Últimas 2 linhas de biografia.txt:"
tail -2 textos/biografia.txt
echo ""

# Contando linhas de relatorio2.txt
echo ">>> Quantidade de linhas em relatorio2.txt:"
cat relatorios/relatorio2.txt | wc -l
echo ""

# Contando palavras de introducao.txt
echo ">>> Quantidade de palavras em introducao.txt:"
cat textos/introducao.txt | wc -w
echo ""

# ============================================================
echo "========== TODO 4: ORGANIZAÇÃO, MOVIMENTOS E CÓPIAS =========="
echo ""

echo "Copiando relatorio1.txt → backup/"
cp relatorios/relatorio1.txt backup
echo ""

echo "Movendo relatorio2.txt → textos/"
mv relatorios/relatorio2.txt textos
echo ""

echo "Copiando executar.sh → backup/"
cp scripts/executar.sh backup
echo ""

echo "Movendo introducao.txt → relatorios/"
mv textos/introducao.txt relatorios
echo ""

# ============================================================
echo "========== TODO 5: REMOÇÕES DE ARQUIVOS E PASTAS =========="
echo ""

echo "Removendo biografia.txt..."
rm -rf textos/biografia.txt
echo ""

echo "Removendo executar.sh..."
rm -rf scripts/executar.sh
echo ""

echo "Removendo diretório scripts..."
rm -rf scripts
echo ""

# ============================================================
echo "========== TODO 6: RESULTADO FINAL DA ESTRUTURA =========="
echo ""

echo ">>> Conteúdo da pasta RELATORIOS:"
ls -lah relatorios
echo ""

echo ">>> Conteúdo da pasta TEXTOS:"
ls -lah textos
echo ""

echo ">>> Conteúdo da pasta BACKUP:"
ls -lah backup
echo ""

echo "Localização atual:"
pwd
echo ""

echo "Listagem completa:"
ls -la
echo ""

echo "Árvore do diretório:"
tree . 2>/dev/null || echo "Instale 'tree' para visualizar a árvore."
echo ""

echo "===================================================================="
echo "=== PROJETO 2 FINALIZADO COM SUCESSO! ==="
echo "===================================================================="
