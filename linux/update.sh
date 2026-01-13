#!/bin/bash
set -e

echo "== Atualizando WhatsApp API (Linux) =="

npm cache clean --force

npm update -g @wppconnect-team/wppconnect
npm update -g pm2

pm2 restart erpsol-whatsapp || true

echo "✅ Atualização concluída"
