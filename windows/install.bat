@echo off
echo == Instalando WhatsApp API (Windows) ==

where node >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
  echo Instale o Node.js: https://nodejs.org
  exit /b 1
)

npm install -g @wppconnect-team/wppconnect-server

echo Instalação concluída com sucesso.