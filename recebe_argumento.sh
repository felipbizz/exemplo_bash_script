#!/bin/bash

# Verifica se um nome foi fornecido
if [ $# -eq 0 ]; then
  echo "Por favor, forneça um nome como argumento."
  exit 1
fi

# Obtém o nome fornecido como argumento
nome=$1

# Cria o arquivo de texto
touch "Olá, $nome.txt"

# Escreve a mensagem no arquivo
echo "Olá, $nome! Seja bem-vindo ao mundo dos scripts Bash." > "Olá, $nome.txt"

# Exibe uma mensagem na tela
echo "O arquivo 'Olá, $nome.txt' foi criado com sucesso!"