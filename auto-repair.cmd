:: Autor: https://t.me/Azriel_7589
@echo off
chcp 65001 > nul
mode con: cols=90 lines=25

:: File Loader
set "current_dir=%~dp0"
set "config_dir=%current_dir%"
set "config_file=%current_dir%config.properties"
for /f "usebackq tokens=1,* delims==" %%A in ("%config_file%") do (
    set "%%A=%%B"
)
set "lang_dir=%current_dir%languages"
set "lang_file=%lang_dir%\%lang%.properties"
for /f "usebackq tokens=1,* delims==" %%A in ("%lang_file%") do (
    set "%%A=%%B"
)

:: Verify if the requirements for optimal use are met, if they are not met, they will be self-applied.
color %permissionWarningTheme%
net session >nul 2>&1
if not %errorlevel% EQU 0 (
    cls
    echo: %separatorLarge%
    echo:
    echo: %permissionWarning0%
    echo: %permissionWarning1%
    echo: %separatorLarge%
    echo:
    pause
    powershell -Command "Start-Process '%~f0' -Verb RunAs"
    exit /b
)

:: Script main menu
:MainMenu
color %mainMenuTheme%
TITLE %menuWindowTitle%

echo: %separatorLarge%
echo:
echo: %mainMenuTitle%
echo:
echo: [1] %option1%
echo: [2] %option2%
echo: [3] %option3% (%partition%)
echo: %separatorSmall%
echo:
echo: [4] %option4%
echo: [5] %option5%
echo: [6] %option6% (%partition%)
echo: [7] %option7% (%partition%)
echo: %separatorSmall%     
echo:
echo: [8] %option8%
echo: [9] %option9%
echo: [0] %option0%
echo: [Q] %optionQ%
echo: %separatorLarge%
echo:

:: Script submenus and options
echo: %prompt%

choice /C:1234567890Q /N
set _erl=%errorlevel%

if %_erl% EQU 1 (
    color %repairMenuTheme%
    TITLE %options% sfc /scannow
    cls
    sfc /scannow
    pause
    cls
    goto MainMenu
)
if %_erl% EQU 2 (
    color %repairMenuTheme%
    TITLE %options% DISM /online /cleanup-image /restorehealth
    cls
    DISM /online /cleanup-image /restorehealth
    pause
    cls
    goto MainMenu
)
if %_erl% EQU 3 (
    color %repairMenuTheme%
    TITLE %options% chkdsk %partition% /f /r /x
    cls
    chkdsk %partition% /f /r /x
    pause
    cls
    goto MainMenu
)
if %_erl% EQU 4 (
    color %repairMenuTheme%
    TITLE %options% DISM /online /cleanup-image /scanhealth
    cls
    DISM /online /cleanup-image /scanhealth
    pause
    cls
    goto MainMenu
)
if %_erl% EQU 5 (
    color %repairMenuTheme%
    TITLE %options% DISM /Online /Cleanup-Image /startComponentCleanup
    cls
    DISM /Online /Cleanup-Image /startComponentCleanup
    pause
    cls
    goto MainMenu
)
if %_erl% EQU 6 (
    color %repairMenuTheme%
    TITLE %options% chkdsk %partition% /F /R
    cls
    chkdsk %partition% /F /R
    pause
    cls
    goto MainMenu
)
if %_erl% EQU 7 (
    color %repairMenuTheme%
    TITLE %options% defrag %partition% /U /V
    cls
    defrag %partition% /U /V
    pause
    cls
    goto MainMenu
)
if %_erl% EQU 8 (
    color %instructiveMenuTheme%
    TITLE %instructiveTitle%
    cls
    echo: %separatorSmall%     
    echo:
    echo: %instructiveMessage%
    echo:
    echo: %instructiveLink%
    echo: %separatorSmall%     
    echo:
    pause
    cls
    goto MainMenu
)
if %_erl% EQU 9 (
    color %sourcesMenuTheme%
    TITLE %sourcesTitle%
    cls
    echo: %separatorSmall%   
    echo:
    echo: %sourcesMessage%  
    echo:
    echo: %sourcesLink%
    echo: %separatorSmall%     
    echo:
    pause
    cls
    goto MainMenu
)
if %_erl% EQU 10 (
    color %aboutMenuTheme%
    TITLE %aboutTitle%
    cls
    echo: %separatorLarge%     
    echo:
    echo: %aboutMessageVersion% %scriptVersion%
    echo: %aboutMessageFirstDate% %scriptFirstDate%
    echo: %aboutMessageReleaseDate% %scriptReleaseDate%
    echo: %separatorSmall%
    echo:
    echo: %aboutMessageContact% %scriptAuthor%
    echo: %separatorLarge%     
    echo:
    pause
    cls
    goto MainMenu
)
if %_erl% EQU 11 (
    color %exitMessageTheme%
    cls
    echo: %separatorSmall%     
    echo:
    echo: %exitingMessage%
    echo: %separatorSmall%     
    echo:
    pause
    exit
)