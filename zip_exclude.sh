#!/bin/bash

# Nome do arquivo zip
ZIP_NAME="backup.zip"

# Diretório a ser zipado
TARGET_DIR="."

# Arquivos ou padrões a serem excluídos
EXCLUDES=(
  "*.log"  # Exemplo: exclua todos os arquivos .log
  "temp/*" # Exemplo: exclua a pasta temp e seus arquivos
  "*.tmp"  # Exemplo: exclua todos os arquivos .tmp
)

# Cria a lista de opções de exclusão para o comando zip
EXCLUDE_ARGS=()
for pattern in "${EXCLUDES[@]}"; do
  EXCLUDE_ARGS+=("-x")
  EXCLUDE_ARGS+=("$pattern")
done

# Cria o arquivo zip com os padrões de exclusão
zip -r "$ZIP_NAME" "$TARGET_DIR" "${EXCLUDE_ARGS[@]}"

echo "Arquivos zipados em $ZIP_NAME (exceto padrões especificados)."
