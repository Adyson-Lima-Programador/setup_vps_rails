#!/bin/bash

## Configura cores nas mensagens ;)
YELLOW='\033[1;33m'
GREEN='\033[1;32m'
RED='\033[0;31m'
NEUTRO='\033[0m'
###############################################################
echo 
echo "${YELLOW} executando apt-get update ${NEUTRO}"
echo
if ! apt-get update; then
    echo "${RED} erro ao executar apt-get update ${NEUTRO}"
    exit 1
fi
echo
echo "${GREEN} apt-get update executado com sucesso ${NEUTRO}"
###############################################################
echo
echo "${YELLOW} executando apt-get upgrade -y ${NEUTRO}"
echo
if ! apt-get upgrade -y; then
    echo "${RED} erro ao executar apt-get upgrade -y ${NEUTRO}"
    exit 1
fi
echo
echo "${GREEN} apt-get upgrade -y executado com sucesso ${NEUTRO}"
###############################################################

### note que $1 aqui será substituído pelo Bash pelo primeiro argumento passado em linha de comando
# if ! apt-get install $1; then
#     echo “Não foi possível instalar o pacote $1”
#     exit 1
# fi
# echo “Instalação finalizada”
