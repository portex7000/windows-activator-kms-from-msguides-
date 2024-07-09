@echo off
setlocal

for /f "tokens=3" %%a in ('wmic os get caption /value ^| find "="') do set version=%%a

set version=%version:~0,-1%

if "%version%"=="Microsoft Windows 11 Home" (
    set "KEY=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99"
) else if "%version%"=="Microsoft Windows 11 Home N" (
    set "KEY=3KHY7-WNT83-DGQKR-F7HPR-844BM"
) else if "%version%"=="Microsoft Windows 11 Home Single Language" (
    set "KEY=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH"
) else if "%version%"=="Microsoft Windows 11 Home Country Specific" (
    set "KEY=PVMJN-6DFY6-9CCP6-7BKTT-D3WVR"
) else if "%version%"=="Microsoft Windows 11 Pro" (
    set "KEY=W269N-WFGWX-YVC9B-4J6C9-T83GX"
) else if "%version%"=="Microsoft Windows 11 Pro N" (
    set "KEY=MH37W-N47XK-V7XM9-C7227-GCQG9"
) else if "%version%"=="Microsoft Windows 11 Education" (
    set "KEY=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2"
) else if "%version%"=="Microsoft Windows 11 Education N" (
    set "KEY=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ"
) else if "%version%"=="Microsoft Windows 11 Enterprise" (
    set "KEY=NPPR9-FWDCX-D2C8J-H872K-2YT43"
) else if "%version%"=="Microsoft Windows 11 Enterprise N" (
    set "KEY=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4"
) else if "%version%"=="Microsoft Windows 10 Home" (
    set "KEY=TX9XD-98N7V-6WMQ6-BX7FG-H8Q99"
) else if "%version%"=="Microsoft Windows 10 Home N" (
    set "KEY=3KHY7-WNT83-DGQKR-F7HPR-844BM"
) else if "%version%"=="Microsoft Windows 10 Home Single Language" (
    set "KEY=7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH"
) else if "%version%"=="Microsoft Windows 10 Home Country Specific" (
    set "KEY=PVMJN-6DFY6-9CCP6-7BKTT-D3WVR"
) else if "%version%"=="Microsoft Windows 10 Pro" (
    set "KEY=W269N-WFGWX-YVC9B-4J6C9-T83GX"
) else if "%version%"=="Microsoft Windows 10 Pro N" (
    set "KEY=MH37W-N47XK-V7XM9-C7227-GCQG9"
) else if "%version%"=="Microsoft Windows 10 Education" (
    set "KEY=NW6C2-QMPVW-D7KKK-3GKT6-VCFB2"
) else if "%version%"=="Microsoft Windows 10 Education N" (
    set "KEY=2WH4N-8QGBV-H22JP-CT43Q-MDWWJ"
) else if "%version%"=="Microsoft Windows 10 Enterprise" (
    set "KEY=NPPR9-FWDCX-D2C8J-H872K-2YT43"
) else if "%version%"=="Microsoft Windows 10 Enterprise N" (
    set "KEY=DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4"
) else (
    echo %version% is not supported.
    exit /b 1
)

WScript.exe slmgr /ipk %KEY%
WScript.exe slmgr /skms kms8.msguides.com
WScript.exe slmgr /ato

endlocal
pause
