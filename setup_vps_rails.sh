#!/bin/bash

## Configura cores nas mensagens ;)
YELLOW='\033[1;33m'
GREEN='\033[1;32m'
RED='\033[0;31m'
NEUTRO='\033[0m'
###########################################################################
echo
echo "${YELLOW} executando apt-get update ${NEUTRO}"
echo
if ! apt-get update; then
    echo "${RED} erro ao executar apt-get update ${NEUTRO}"
    exit 1
fi
echo
echo "${GREEN} apt-get update executado com sucesso ${NEUTRO}"
###########################################################################
echo
echo "${YELLOW} executando apt-get upgrade -y ${NEUTRO}"
echo
if ! apt-get upgrade -y; then
    echo "${RED} erro ao executar apt-get upgrade -y ${NEUTRO}"
    exit 1
fi
echo
echo "${GREEN} apt-get upgrade -y executado com sucesso ${NEUTRO}"
############################################################################

############################################################################
### Trecho de código para inserir o nome de um programa a instalar
# echo "${YELLOW} Digite o nome do programa que deseja instalar: ${NEUTRO}"
# read PROGRAMA
# if ! apt-get install $PROGRAMA; then
#     echo "${RED} erro ao tentar instalar: $PROGRAMA ${NEUTRO}"
#     exit 1
# fi
# echo "${GREEN} Fim da instalação ${NEUTRO}"
#############################################################################
