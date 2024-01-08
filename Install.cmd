@echo off
cd /d %~dp0
chcp 65001
Title Micosoft 365 apps for Enterprise Installer
cls

echo Made by Hieu GL Lite (Làm bởi Hiếu GL Lite)
echo [1] Tiếng Việt (vi-vn)
echo [2] English (en-us)
choice /c:12 /n /m "Enter Your Choice: "

if errorlevel 2 set "lang=en"
if errorlevel 1 set "lang=vi"

if %lang%==en goto InstEn
if %lang%==vi goto InstVi

:InstEn
echo Do you want to install Microsoft 365 for Enterprise?
echo [1] Yes       [2] No

choice /c:12 /n /m "Enter Your Choice: "

if errorlevel 2 exit /b
if errorlevel 1 goto :StartEn

:StartEn
Title Installing Micosoft 365 apps for Enterprise...
Echo Installing...
setup.exe /configure Configuration-en.xml
pause
exit /b


:InstVi
echo Bạn có muốn cài đặt Microsoft 365 for Enterprise không?
echo [1] Có       [2] Không

choice /c:12 /n /m "Lựa chọn của bạn: "

if errorlevel 2 exit /b
if errorlevel 1 goto :StartVi

:StartVi
Title Đang cài đặt Micosoft 365 apps for Enterprise...
Echo Đang cài đặt...
setup.exe /configure Configuration-vi.xml
pause
exit /b
