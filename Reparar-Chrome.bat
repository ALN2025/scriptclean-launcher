@echo off
chcp 65001 >nul
title ScriptClean - Reparar Chrome Puppeteer
cd /d "%~dp0bot-whatsapp"
if not exist "package.json" (
    echo [ERRO] Pasta bot-whatsapp nao encontrada. Execute na pasta do launcher.
    pause
    exit /b 1
)

echo.
echo  Reparando Chrome do Puppeteer...
echo.

if exist "%USERPROFILE%\.cache\puppeteer\chrome" (
    echo  Removendo cache incompleto...
    for /d %%D in ("%USERPROFILE%\.cache\puppeteer\chrome\*") do (
        if not exist "%%D\chrome-win64\chrome.exe" rmdir /s /q "%%D" 2>nul
    )
)

if exist "node_modules" (
    echo  node_modules OK
) else (
    echo  npm install...
    set PUPPETEER_SKIP_DOWNLOAD=true
    call npm install
    set PUPPETEER_SKIP_DOWNLOAD=
)

echo  Baixando Chrome...
call npx puppeteer browsers install chrome
if errorlevel 1 (
    echo.
    echo  [ERRO] Ainda falhou. Tente:
    echo  1. Abrir CMD como Administrador
    echo  2. Instalar Google Chrome: https://google.com/chrome
    echo  3. Rodar este bat de novo
    pause
    exit /b 1
)

echo.
echo  Chrome OK! Pode iniciar o ScriptWhatsApp.
pause
