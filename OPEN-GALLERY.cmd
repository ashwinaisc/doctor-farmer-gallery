@echo off
title Doctor Farmer Gallery
cd /d "%~dp0"
set "GALLERY_PYTHON=C:\Users\LENOVO\.cache\codex-runtimes\codex-primary-runtime\dependencies\python\python.exe"
if not exist "%GALLERY_PYTHON%" (
  where python >nul 2>nul && set "GALLERY_PYTHON=python"
)
if not exist "%GALLERY_PYTHON%" if not "%GALLERY_PYTHON%"=="python" (
  echo Python could not be found. Please keep this window open and contact support.
  pause
  exit /b 1
)
start "" powershell.exe -NoProfile -WindowStyle Hidden -Command "Start-Sleep -Milliseconds 900; Start-Process 'http://127.0.0.1:8765/'"
echo Doctor Farmer Gallery is running.
echo Keep this window open while using the gallery.
echo Press Ctrl+C here when you are finished.
"%GALLERY_PYTHON%" -m http.server 8765 --bind 0.0.0.0
