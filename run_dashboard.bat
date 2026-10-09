@echo off
chcp 65001 >nul
echo ========================================================
echo   Amazon Products Analytics & Comparison Dashboard
echo ========================================================
echo.
echo กำลังเปิดแดชบอร์ดในบราวเซอร์...
echo คุณสามารถเปิดไฟล์ index.html โดยตรง หรือเปิดผ่าน Local Web Server
echo.

:: Try opening via browser directly
start "" "%~dp0index.html"

echo หากต้องการรันผ่าน Web Server:
echo กดปุ่มใดๆ เพื่อเปิด Python Server ที่ http://localhost:8000
pause >nul

where python >nul 2>nul
if %errorlevel% equ 0 (
    echo เริ่มต้น Python Server...
    start http://localhost:8000/index.html
    python -m http.server 8000
) else (
    echo ไม่พบ Python ในระบบ แนะนำให้ดับเบิลคลิกไฟล์ index.html ได้โดยตรง
    pause
)
