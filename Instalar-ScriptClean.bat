@echo off
setlocal EnableExtensions
set "SWA=ScriptWhatsApp"
title ScriptClean - Instalar %SWA% v3.0
cd /d "%~dp0"

echo.
echo  ================================================================
echo   ScriptClean - %SWA% v3.0 - TESTE GRATIS 2 DIAS
echo   NAO execute ScriptClean-Setup.exe sozinho - use ESTE .bat
echo  ================================================================
echo.

set "BOT_DIR=%~dp0bot-whatsapp"
set "LAUNCHER_CONFIG=%~dp0config"

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

if not exist "%LAUNCHER_CONFIG%\license-db.config.json" (
    if exist "%LAUNCHER_CONFIG%\license-db.config.example.json" (
        echo  Criando license-db.config.json a partir do exemplo...
        copy /Y "%LAUNCHER_CONFIG%\license-db.config.example.json" "%LAUNCHER_CONFIG%\license-db.config.json" >nul
    )
)

if not exist "%LAUNCHER_CONFIG%\license-db.config.json" (
    echo  [ERRO] config\license-db.config.json nao encontrado.
    echo  Baixe o pacote completo: github.com/ALN2025/scriptclean-launcher
    pause
    exit /b 1
)

if not exist "%LAUNCHER_CONFIG%\bot.config.json" (
    if exist "%LAUNCHER_CONFIG%\bot.config.example.json" (
        copy /Y "%LAUNCHER_CONFIG%\bot.config.example.json" "%LAUNCHER_CONFIG%\bot.config.json" >nul
    )
)

if not exist "%LAUNCHER_CONFIG%\bot.config.json" (
    echo  [ERRO] config\bot.config.json nao encontrado.
    pause
    exit /b 1
)

findstr /C:"\"ADMIN_NUMBER\": \"\"" "%LAUNCHER_CONFIG%\bot.config.json" >nul 2>nul
if not errorlevel 1 (
    echo  [AVISO] Edite config\bot.config.json antes de continuar:
    echo    - ADMIN_NUMBER: seu WhatsApp com +55
    echo    - ALLOWED_GROUP_ID: ID do grupo
    echo.
    notepad "%LAUNCHER_CONFIG%\bot.config.json"
    echo  Salve o arquivo e pressione uma tecla para continuar...
    pause >nul
)

set "GITHUB_TOKEN="
if exist "%LAUNCHER_CONFIG%\install.token" (
    set /p GITHUB_TOKEN=<"%LAUNCHER_CONFIG%\install.token"
)

if not defined GITHUB_TOKEN (
    echo  Token de instalacao nao encontrado em config\install.token
    set /p GITHUB_TOKEN=Token GitHub: 
)

if not defined GITHUB_TOKEN (
    echo  [ERRO] Token obrigatorio para baixar o bot.
    pause
    exit /b 1
)

set "CLONE_URL=https://%GITHUB_TOKEN%@github.com/ALN2025/bot-whatsapp.git"

if exist "%BOT_DIR%\.git" (
    echo  Atualizando bot-whatsapp...
    pushd "%BOT_DIR%"
    git pull
    popd
) else (
    echo  Clonando %SWA%...
    git clone -b master "%CLONE_URL%" "%BOT_DIR%"
    if errorlevel 1 (
        echo  [ERRO] Falha ao clonar. Verifique config\install.token
        pause
        exit /b 1
    )
)

pushd "%BOT_DIR%"

echo  Copiando configs...
if not exist "config" mkdir config
copy /Y "%LAUNCHER_CONFIG%\license-db.config.json" "config\license-db.config.json" >nul
copy /Y "%LAUNCHER_CONFIG%\bot.config.json" "config\bot.config.json" >nul

if not exist "node_modules" (
    echo  npm install...
    call npm install
    if errorlevel 1 (
        echo  [ERRO] npm install falhou.
        popd
        pause
        exit /b 1
    )
)

echo  Chrome do Puppeteer - 1a vez pode demorar...
call npx puppeteer browsers install chrome

echo.
echo  Registrando trial de 2 dias neste PC...
node scripts/setup-install.js
if errorlevel 1 (
    echo  [ERRO] Registro de licenca falhou.
    popd
    pause
    exit /b 1
)

popd

echo.
echo  ================================================================
echo   TESTE GRATIS ATIVO - 2 dias apos a 1a execucao do bot
echo   Gostou? Contrate em scriptclean.com.br
echo  ================================================================
echo.
echo  Pasta do bot: %BOT_DIR%
echo  Atalho: %SWA% - Iniciar
echo.
pause
endlocal
