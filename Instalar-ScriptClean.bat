@echo off
chcp 65001 >nul
title ScriptClean - Instalar Bot (repo privado)
cd /d "%~dp0"

echo.
echo  ╔══════════════════════════════════════════════════════════════╗
echo  ║  ScriptClean - Instalador do ScriptBot v3.0                  ║
echo  ║  Repo privado: github.com/ALN2025/bot-whatsapp              ║
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
mkdir config 2>nul
copy /Y "%~dp0config\license-db.config.json" "config\license-db.config.json"
copy /Y "%~dp0config\bot.config.json" "config\bot.config.json"

if not exist "node_modules" (
    echo  npm install...
    call npm install
)

if exist "%~dp0ScriptClean-Setup.exe" (
    copy /Y "%~dp0ScriptClean-Setup.exe" "ScriptClean-Setup.exe"
)

if exist "ScriptClean-Setup.exe" (
    echo.
    echo  Executando ScriptClean-Setup.exe...
    start /wait "" "ScriptClean-Setup.exe"
) else (
    echo  [AVISO] ScriptClean-Setup.exe nao encontrado.
    echo  Rode manualmente apos compilar na pasta do bot.
)

echo.
echo  Instalacao concluida. Pasta do bot: %BOT_DIR%
pause
