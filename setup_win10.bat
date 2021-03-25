@echo downloading into %cd%
@curl https://dl.google.com/android/repository/platform-tools_r31.0.1-windows.zip --output platform-tools_r31.0.1-windows.zip
@echo extracting files into %cd%\platform-tools
@powershell -command "Expand-Archive %cd%\platform-tools_r31.0.1-windows.zip %cd%" -Force
@echo setting enviroment variables
@echo updating path...
@setx path "%PATH%;%cd%\platform-tools" /M
@echo finished
