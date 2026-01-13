@echo off
echo == Atualizando WhatsApp API (Windows) ==

where node >nul 2>nul
IF %ERRORLEVEL% NEQ 0 (
  echo Node.js não encontrado. Execute install.bat primeiro.
  exit /b 1
)

npm update -g @wppconnect-team/wppconnect-server

echo Atualização concluída com sucesso.