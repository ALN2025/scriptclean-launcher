@echo off
chcp 65001 >nul
title ScriptClean - Instalar ScriptWhatsApp v3.0
cd /d "%~dp0"

echo.
echo  ╔══════════════════════════════════════════════════════════════╗
echo  ║  ScriptClean - Instalador do ScriptWhatsApp v3.0               ║
echo  ║  NAO execute ScriptClean-Setup.exe sozinho — use ESTE .bat     ║
echo  ╚══════════════════════════════════════════════════════════════╝
echo.

set "BOT_REPO=https://github.com/ALN2025/bot-whatsapp.git"
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
    echo  [ERRO] Coloque config\license-db.config.json nesta pasta.
    echo  A ScriptClean envia este arquivo apos a compra.
    pause
    exit /b 1
)

if not exist "config\bot.config.json" (
    echo  [ERRO] Coloque config\bot.config.json nesta pasta.
    echo  A ScriptClean envia com admin e grupo WhatsApp.
    pause
    exit /b 1
)

if "%GITHUB_TOKEN%"=="" (
    echo  Informe o token GitHub de leitura do repo privado
    echo  (a ScriptClean envia apos a compra):
    set /p GITHUB_TOKEN=Token: 
)

if "%GITHUB_TOKEN%"=="" (
    echo  [ERRO] Token obrigatorio para repo privado.
    pause
    exit /b 1
)

set "CLONE_URL=https://%GITHUB_TOKEN%@github.com/ALN2025/bot-whatsapp.git"

if exist "%BOT_DIR%\.git" (
    echo  Atualizando bot-whatsapp...
    cd /d "%BOT_DIR%"
    git pull
) else (
    echo  Clonando bot-whatsapp (branch master)...
    git clone -b master "%CLONE_URL%" "%BOT_DIR%"
    if errorlevel 1 (
        echo  [ERRO] Falha ao clonar. Verifique o token.
        pause
        exit /b 1
    )
    cd /d "%BOT_DIR%"
)

echo  Copiando configs do cliente...
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

echo  Chrome do Puppeteer (1a vez pode demorar)...
call npx puppeteer browsers install chrome

echo.
echo  Registrando licenca neste PC...
node scripts/setup-install.js
if errorlevel 1 (
    echo  [ERRO] Registro de licenca falhou.
    pause
    exit /b 1
)

echo.
echo  Instalacao concluida!
echo  Pasta do bot: %BOT_DIR%
echo  Use o atalho: ScriptWhatsApp - Iniciar
echo.
pause
