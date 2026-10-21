@echo off
setlocal
title n8n Starter Kit
cd /d "%~dp0"

echo ============================================
echo   n8n Starter Kit
echo ============================================
echo.

where node >nul 2>nul
if errorlevel 1 (
  echo [ERROR] Node.js not found. Install it first from https://nodejs.org
  pause
  exit /b 1
)

where n8n >nul 2>nul
if errorlevel 1 (
  echo n8n not found. Installing now, this may take a few minutes...
  call npm install -g n8n
  if errorlevel 1 (
    echo [ERROR] Failed to install n8n.
    pause
    exit /b 1
  )
)

if not exist ".imported" (
  echo Importing bundled workflows ^(first run only^)...
  call n8n import:workflow --separate --input=".\workflows"
  echo done > ".imported"
  echo Import finished.
)

echo.
echo Starting n8n...
echo n8n will be available at http://localhost:5678
echo Keep this window open. Closing it will stop n8n.
echo.
call n8n start

pause
