#!/bin/bash

# Nome do arquivo zip
ZIP_NAME="backup.zip"

# Diretório a ser zipado
TARGET_DIR="path/to/your/dir"

# Arquivos ou padrões a serem excluídos
EXCLUDES=(
  "*/.venv/*"
  "*.log"  # Exemplo: exclua todos os arquivos .log
  "*/reports/*" # Exemplo: exclua a pasta reports e seus arquivos
  "*.csv"  
  "*/parquet_files/*"
  "*.parquet"
  "*/npy_files/*"
  "*.npy"
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
