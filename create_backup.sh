#!/bin/bash

# Diretório a ser feito o backup
DIRETORIO="/path/do/diretorio"

# Nome do arquivo de log
LOG="/path/log/backup.log"

# Cria o diretório de backups, se não existir
BACKUP_DIR="/path/to/backups"
mkdir -p "$BACKUP_DIR"

# Função para registrar mensagens no log
log() {
  echo "$(date +"%Y-%m-%d %H:%M:%S") - $@" >> "$LOG"
}

# Cria o nome do arquivo de backup com data e hora
ARQUIVO_BACKUP="$BACKUP_DIR/backup_$(date +%Y%m%d_%H%M%S).tar.gz"

# Cria o backup
tar czvf "$ARQUIVO_BACKUP" "$DIRETORIO"

# Registra no log o resultado do backup
if [ $? -eq 0 ]; then
  log "Backup criado com sucesso: $ARQUIVO_BACKUP"
else
  log "Erro ao criar o backup: $ARQUIVO_BACKUP"
fi