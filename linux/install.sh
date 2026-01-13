#!/bin/bash

echo "== Instalando WhatsApp API (Linux) =="

if ! command -v node &> /dev/null
then
  curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
  apt-get install -y nodejs
fi

npm install -g @wppconnect-team/wppconnect-server

echo "Instalação concluída com sucesso."