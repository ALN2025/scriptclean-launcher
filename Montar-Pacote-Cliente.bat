@echo off
setlocal EnableExtensions
cd /d "%~dp0"

set "ZIP=ScriptClean-Cliente-v3.0.zip"
set "TMP=%~dp0_pacote-tmp"

echo.
echo  Montando pacote para clientes (com install.token local)...
echo.

if not exist "config\install.token" (
    echo  [ERRO] Coloque config\install.token nesta pasta primeiro.
    echo  O token fica SO na sua maquina - nao vai para o GitHub.
    pause
    exit /b 1
)

if exist "%TMP%" rmdir /s /q "%TMP%"
mkdir "%TMP%"

copy /Y "Instalar-ScriptClean.bat" "%TMP%\" >nul
copy /Y "ScriptClean-Setup.exe" "%TMP%\" >nul 2>nul
copy /Y "README.md" "%TMP%\" >nul
xcopy /E /I /Y "config" "%TMP%\config" >nul

if exist "%ZIP%" del /F "%ZIP%"

powershell -NoProfile -Command "Compress-Archive -Path '%TMP%\*' -DestinationPath '%~dp0%ZIP%' -Force"
rmdir /s /q "%TMP%"

echo.
echo  Pacote criado: %ZIP%
echo  Envie este ZIP aos clientes ou anexe em GitHub Releases.
echo  (O token vai DENTRO do ZIP, nao no codigo do GitHub)
echo.
pause
