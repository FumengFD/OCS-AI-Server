@echo off
cd /d "%~dp0"
title ocs-AI-bridge

echo ============================================
echo   ocs-AI-bridge
echo ============================================
echo.

if exist "dist\ocs-server.exe" (
    dist\ocs-server.exe
    pause
    exit /b
)

where python >nul 2>&1 && python --version >nul 2>&1 || where py >nul 2>&1 || goto no_python
python ocs_server.py
pause
exit /b

:no_python
echo [FAIL] Python not found.
echo Download exe from: https://github.com/FumengFD/ocs-AI-bridge/releases/latest
echo Or install Python from: https://www.python.org/downloads/
pause
