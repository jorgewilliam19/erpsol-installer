@echo off
echo == Atualizando WhatsApp API (Windows) ==

npm cache clean --force

npm update -g @wppconnect-team/wppconnect
if errorlevel 1 (
  echo ❌ Erro ao atualizar WPPConnect
  exit /b 1
)

npm update -g pm2

pm2 restart erpsol-whatsapp >nul 2>&1

echo ✅ Atualização finalizada
exit /b 0
