#!/bin/bash

echo "== Atualizando WhatsApp API (Linux) =="

if ! command -v node &> /dev/null
then
  echo "Node.js não encontrado. Execute install.sh primeiro."
  exit 1
fi

npm update -g @wppconnect-team/wppconnect-server

echo "Atualização concluída com sucesso."