@echo off
chcp 65001 >nul
title ScriptClean - Instalar ScriptWhatsApp v3.0 (teste gratis 2 dias)
cd /d "%~dp0"

echo.
echo  ╔══════════════════════════════════════════════════════════════╗
echo  ║  ScriptClean - ScriptWhatsApp v3.0 — TESTE GRATIS 2 DIAS     ║
echo  ║  NAO execute ScriptClean-Setup.exe sozinho — use ESTE .bat     ║
echo  ╚══════════════════════════════════════════════════════════════╝
echo.

set "BOT_DIR=%~dp0bot-whatsapp"

where git >nul 2>nul
if errorlevel 1 (
    echo  [ERRO] Git nao instalado. Baixe: https://git-scm.com
    pause
    exit /b 1
)

where node >nul 2>nul
if errorlevel 1 (
    echo  [ERRO] Node.js nao instalado. Baixe: https://nodejs.org
    pause
    exit /b 1
)

if not exist "config\license-db.config.json" (
    echo  [ERRO] config\license-db.config.json nao encontrado.
    echo  Baixe o pacote completo do GitHub.
    pause
    exit /b 1
)

if not exist "config\bot.config.json" (
    if exist "config\bot.config.example.json" (
        copy /Y "config\bot.config.example.json" "config\bot.config.json" >nul
    )
)

findstr /C:"\"ADMIN_NUMBER\": \"\"" "config\bot.config.json" >nul 2>nul
if not errorlevel 1 (
    echo  [AVISO] Edite config\bot.config.json antes de continuar:
    echo    - ADMIN_NUMBER: seu WhatsApp com +55
    echo    - ALLOWED_GROUP_ID: ID do grupo ^(use #meugrupo depois^)
    echo.
    notepad "config\bot.config.json"
    echo  Salve o arquivo e pressione uma tecla para continuar...
    pause >nul
)

if "%GITHUB_TOKEN%"=="" (
    if exist "config\install.token" (
        set /p GITHUB_TOKEN=<config\install.token
    )
)

if "%GITHUB_TOKEN%"=="" (
    echo  Token de instalacao nao encontrado em config\install.token
    set /p GITHUB_TOKEN=Token GitHub: 
)

if "%GITHUB_TOKEN%"=="" (
    echo  [ERRO] Token obrigatorio para baixar o bot.
    pause
    exit /b 1
)

set "CLONE_URL=https://%GITHUB_TOKEN%@github.com/ALN2025/bot-whatsapp.git"

if exist "%BOT_DIR%\.git" (
    echo  Atualizando bot-whatsapp...
    cd /d "%BOT_DIR%"
    git pull
) else (
    echo  Clonando ScriptWhatsApp...
    git clone -b master "%CLONE_URL%" "%BOT_DIR%"
    if errorlevel 1 (
        echo  [ERRO] Falha ao clonar. Verifique o token em config\install.token
        pause
        exit /b 1
    )
    cd /d "%BOT_DIR%"
)

echo  Copiando configs...
if not exist "config" mkdir config
copy /Y "%~dp0config\license-db.config.json" "config\license-db.config.json" >nul
copy /Y "%~dp0config\bot.config.json" "config\bot.config.json" >nul

if not exist "node_modules" (
    echo  npm install...
    call npm install
    if errorlevel 1 (
        echo  [ERRO] npm install falhou.
        pause
        exit /b 1
    )
)

echo  Chrome do Puppeteer ^(1a vez pode demorar^)...
call npx puppeteer browsers install chrome

echo.
echo  Registrando trial de 2 dias neste PC...
node scripts/setup-install.js
if errorlevel 1 (
    echo  [ERRO] Registro de licenca falhou.
    pause
    exit /b 1
)

echo.
echo  ══════════════════════════════════════════════════════════════
echo   TESTE GRATIS ATIVO — 2 dias apos a 1a execucao do bot
echo   Gostou? Contrate em scriptclean.com.br
echo  ══════════════════════════════════════════════════════════════
echo.
echo  Pasta do bot: %BOT_DIR%
echo  Atalho: ScriptWhatsApp - Iniciar
echo.
pause
