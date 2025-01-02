#!/bin/bash

maquina_origem="user@ip_do_origem"
maquina_destino="user_destino@id_do_destino"
path_origem="path/do/seu/arquivo"
path_destino="path/do/destino"

# Adiciona opções comuns do rsync para melhor controle e tratamento de erros
rsync -avz --progress "$maquina_origem":"$path_origem" "$maquina_destino":"$path_destino"

if [ $? -eq 0 ]; then
  echo "Transferência concluída com sucesso."
else
  echo "Erro durante a transferência."
fi
