#!/bin/bash

# Lista de anos
lopp_vars=("1" "2" "3" "4" "5" "6")

#Configurações
valor_1='teste_1'
valor_2='teste_2'

# Loop para imprimir cada ano
for var in "${lopp_vars[@]}"; do
  echo "Processando a pasta $var"
  echo "faça algo com o valor $valor_1 e com o valor $valor_2"
done