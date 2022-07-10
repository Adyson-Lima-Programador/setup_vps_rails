#!/bin/bash

## Configura cores nas mensagens ;)
YELLOW='\033[1;33m'
GREEN='\033[1;32m'
RED='\033[0;31m'
NEUTRO='\033[0m'
###########################################################################
echo
echo "${YELLOW} executando atualização do PATH ${NEUTRO}"
echo
if ! export PATH="/sbin:/usr/sbin:/bin:/usr/bin:/usr/local/bin:/usr/local/sbin:/usr/games"; then
    echo "${RED} erro ao executar atualização do PATH ${NEUTRO}"
    exit 1
fi
echo
echo "${GREEN} atualização do PATH executada com sucesso ${NEUTRO}"
############################################################################
echo
echo "${YELLOW} executando apt update ${NEUTRO}"
echo
if ! apt update; then
    echo "${RED} erro ao executar apt update ${NEUTRO}"
    exit 1
fi
echo
echo "${GREEN} apt update executado com sucesso ${NEUTRO}"
###########################################################################
echo
echo "${YELLOW} executando apt upgrade -y ${NEUTRO}"
echo
if ! apt upgrade -y; then
    echo "${RED} erro ao executar apt upgrade -y ${NEUTRO}"
    exit 1
fi
echo
echo "${GREEN} apt-get upgrade -y executado com sucesso ${NEUTRO}"
############################################################################
echo
echo "${YELLOW} executando apt install postgresql -y ${NEUTRO}"
echo
if ! apt install postgresql -y; then
    echo "${RED} erro ao executar apt install postgresql -y ${NEUTRO}"
    exit 1
fi
echo
echo "${GREEN} apt-get install postgresql -y executado com sucesso ${NEUTRO}"
############################################################################
echo
echo "${YELLOW} executando apt install git -y ${NEUTRO}"
echo
if ! apt install git -y; then
    echo "${RED} erro ao executar apt install git -y ${NEUTRO}"
    exit 1
fi
echo
echo "${GREEN} apt install git -y executado com sucesso ${NEUTRO}"
############################################################################
echo
echo "${YELLOW} executando apt install curl -y ${NEUTRO}"
echo
if ! apt install curl -y; then
    echo "${RED} erro ao executar apt install curl -y ${NEUTRO}"
    exit 1
fi
echo
echo "${GREEN} apt install curl -y executado com sucesso ${NEUTRO}"
############################################################################
echo
echo "${YELLOW} executando apt install gnupg2 -y ${NEUTRO}"
echo
if ! apt install gnupg2 -y; then
    echo "${RED} erro ao executar apt install gnupg2 -y ${NEUTRO}"
    exit 1
fi
echo
echo "${GREEN} apt install gnupg2 -y executado com sucesso ${NEUTRO}"
############################################################################
echo
echo "${YELLOW} executando import chaves gnupg2 ${NEUTRO}"
echo
if ! curl -sSL https://rvm.io/mpapis.asc | gpg2 --import -; then
    echo "${RED} erro ao executar import chaves gnupg2 ${NEUTRO}"
    exit 1
fi
echo
echo "${GREEN} import chaves gnupg2 executado com sucesso ${NEUTRO}"
############################################################################
echo
echo "${YELLOW} executando import chaves gnupg2 ${NEUTRO}"
echo
if ! curl -sSL https://rvm.io/pkuczynski.asc | gpg2 --import -; then
    echo "${RED} erro ao executar import chaves gnupg2 ${NEUTRO}"
    exit 1
fi
echo
echo "${GREEN} import chaves gnupg2 executado com sucesso ${NEUTRO}"
############################################################################
echo
echo "${YELLOW} executando instalação do RVM ${NEUTRO}"
echo
if ! \curl -sSL https://get.rvm.io | bash -s stable; then
    echo "${RED} erro ao executar instalação do RVM ${NEUTRO}"
    exit 1
fi
echo
echo "${GREEN} instalação do RVM executada com sucesso ${NEUTRO}"
############################################################################
echo
echo "${YELLOW} executando adicionar usuario ao grupo RVM ${NEUTRO}"
echo
if ! adduser usuario rvm; then
    echo "${RED} erro ao executar adicionar usuario ao grupo RVM ${NEUTRO}"
    exit 1
fi
echo
echo "${GREEN} adicionar usuario ao grupo RVM executado com sucesso ${NEUTRO}"
############################################################################
echo
echo "${YELLOW} executando adicionar root ao grupo RVM ${NEUTRO}"
echo
if ! adduser root rvm; then
    echo "${RED} erro ao executar adicionar root ao grupo RVM ${NEUTRO}"
    exit 1
fi
echo
echo "${GREEN} adicionar root ao grupo RVM executado com sucesso ${NEUTRO}"
############################################################################
echo
echo "${YELLOW} executando iniciar RVM ${NEUTRO}"
echo
if ! . /etc/profile.d/rvm.sh; then
    echo "${RED} erro ao iniciar RVM ${NEUTRO}"
    exit 1
fi
echo
echo "${GREEN} iniciar RVM executado com sucesso ${NEUTRO}"
############################################################################
echo
echo "${YELLOW} executando atualizar RVM ${NEUTRO}"
echo
if ! /usr/local/rvm/bin/rvm get head; then
    echo "${RED} erro ao atualizar RVM ${NEUTRO}"
    exit 1
fi
echo
echo "${GREEN} atualizar RVM executado com sucesso ${NEUTRO}"
############################################################################
echo
echo "${YELLOW} executando instalação do ruby ${NEUTRO}"
echo
if ! /usr/local/rvm/bin/rvm install 3.0.4; then
    echo "${RED} erro ao executar instalação do ruby ${NEUTRO}"
    exit 1
fi
echo
echo "${GREEN} instalação do ruby executada com sucesso ${NEUTRO}"
############################################################################
echo
echo "${YELLOW} executando definição da versão padrão do ruby ${NEUTRO}"
echo
if ! bash -l -c "rvm use 3.0.4 --default"; then
    echo "${RED} erro ao executar definição da versão padrão do ruby ${NEUTRO}"
    exit 1
fi
echo
echo "${GREEN} definição da versão padrão do ruby executada com sucesso ${NEUTRO}"
############################################################################
echo
echo "${YELLOW} executando instalação do rails 7.0.3 ${NEUTRO}"
echo
if ! bash -l -c "gem install rails --version 7.0.3"; then
    echo "${RED} erro ao executar instalação do rails 7.0.3 ${NEUTRO}"
    exit 1
fi
echo
echo "${GREEN} instalação do rails 7.0.3 executada com sucesso ${NEUTRO}"
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
