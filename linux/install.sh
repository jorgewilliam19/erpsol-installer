#!/bin/bash
set -e

echo "== Instalando WhatsApp API (Linux) =="

# Root?
if [ "$EUID" -ne 0 ]; then
  echo "❌ Execute como root (sudo)"
  exit 1
fi

# Node.js LTS
if ! command -v node >/dev/null 2>&1; then
  echo "Instalando Node.js LTS..."
  curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
  apt-get install -y nodejs
fi

# NPM
if ! command -v npm >/dev/null 2>&1; then
  echo "❌ NPM não encontrado"
  exit 1
fi

npm cache clean --force

# PM2
if ! command -v pm2 >/dev/null 2>&1; then
  npm install -g pm2
fi

# WPPConnect
npm install -g @wppconnect-team/wppconnect

echo "✅ WhatsApp API instalada com sucesso"
