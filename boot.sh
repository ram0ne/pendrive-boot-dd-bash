#!/usr/bin/env bash

if [[ $1 == "-h" ]];then
cat <<EOF
1- Primeiro digite o local exato onde esta localizada a imagem a ser gravada, ex: /home/imagem.iso
2- Abaixo listara os dispositos ativos, copie o diretorio e nome do pendrive
exemplo: /dev/sdb1
3- Depois o digite no campo LOCAL DO DISCO.
4- E aguarde todo processo, acompanhando a barra de progressos.

EOF
exit 0

fi

cat <<EOF
BEM-VINDO Usuario, ferramenta feita para criação de Pen-drive Bootavel no Linux.

Para ver ajuda use -h
2022 - Ram0n3 
EOF
sleep 3s && clear

#DD ESTA INSTALADO???=======================================
sleep 2s

if ! which dd &>/dev/null; then
  echo -e "\033[31;1mDD não encontrado nesta maquina! \033[m"
  echo -e "\033[32;1mExiting... \033[m"  
  exit 1
fi
#===========================================================

sleep 1s; echo -e "\033[32;1mIniciando... \033[m" ; sleep 1s;

echo -ne "\033[32;1mLOCAL DA IMAGEM: \033[m" ; read -e imagem

fdisk -l

echo -ne "\033[32;1mLOCAL DO DISCO: \033[m" ;read -e disco

echo -e "\033[35;1mINICIANDO .... \033[m"
sleep 2s

dd if=$imagem of=$disco bs=1M status=progress

echo -e "\033[33;1mCriado por: Ram0n3 (c) \033[m"
