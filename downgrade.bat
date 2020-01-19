@echo off
cls
set model=none
echo.
echo 8888888 888     888                                    
echo   888   888     888                                    
echo   888   888     888                                    
echo   888   Y88b   d88P 88888b.  888d888  .d88b.  88888b.  
echo   888    Y88b d88P  888 "88b 888P"   d8P  Y8b 888 "88b 
echo   888     Y88o88P   888  888 888     88888888 888  888 
echo   888      Y888P    888 d88P 888     Y8b.     888 d88P 
echo 8888888     Y8P     88888P"  888      "Y8888  88888P"  
echo                     888                       888      
echo                     888                       888      
echo                     888                       888      
echo.
echo Press Enter to downgrade your ThinkPad to an 1vyrain compatible BIOS version.
pause>nul
for /f "tokens=1 delims==" %%f in ('wmic csproduct get version ^| findstr /R ThinkPad') do set "model=%%f"
cd BIOS
if "%model%"=="ThinkPad W530  " winflash64 /sd /file W530.FL1
if "%model%"=="ThinkPad T530  " winflash64 /sd /file T530.FL1
if "%model%"=="ThinkPad X230  " winflash64 /sd /file X230.FL1
if "%model%"=="ThinkPad X230 Tablet  " winflash64 /sd /file X230t.FL1
if "%model%"=="ThinkPad T430  " winflash64 /sd /file T430.FL1
if "%model%"=="ThinkPad T430s  " winflash64 /sd /file T430s.FL1
if "%model%"=="none" echo No compatible model detected. Exiting.
pause>nul