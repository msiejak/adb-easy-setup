::============================
:: This file is licensed under the GNU GENERAL PUBLIC LICENSE Version 3 -> https://www.gnu.org/licenses/gpl-3.0.en.html
:: View on Github -> https://github.com/msiejak/adb-easy-setup
:: Created by Michael Siejak, MSIEJAK Development -> https://msiejak.dev
::
:: Instructions:
:: 1. Move the file to the directory (folder) you want to install adb in
:: 2. Run the file as an administrator
::============================
@cd /d "%~dp0"
@echo downloading into %cd%
@curl https://dl.google.com/android/repository/platform-tools_r31.0.1-windows.zip --output platform-tools.zip
@echo extracting files into %cd%\platform-tools
@powershell -command "Expand-Archive %cd%\platform-tools.zip %cd%" -Force
@echo deleting original file
@del /a platform-tools.zip
@echo setting enviroment variables
@echo updating path
@setx path "%PATH%;%cd%\platform-tools" /M
@echo finished
@echo you need to reboot the system to apply enviroment variables
@set /p reb="reboot now? (Y/N): "
@if %reb% == Y (Shutdown /r /t 0)
