@echo off
echo == Instalando WhatsApp API (Windows) ==

:: Node
node -v >nul 2>&1
if errorlevel 1 (
  echo ❌ Node.js não encontrado
  exit /b 1
)

:: NPM
npm -v >nul 2>&1
if errorlevel 1 (
  echo ❌ NPM não encontrado
  exit /b 1
)

:: Limpa cache (previne erros estranhos)
npm cache clean --force

:: Instala WPPConnect correto
npm install -g @wppconnect-team/wppconnect
if errorlevel 1 (
  echo ❌ Erro ao instalar WPPConnect
  exit /b 1
)

echo ✅ WhatsApp API instalada com sucesso
exit /b 0
