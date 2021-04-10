# ============================
# This file is licensed under the GNU GENERAL PUBLIC LICENSE Version 3 -> https://www.gnu.org/licenses/gpl-3.0.en.html
# View on Github -> https://github.com/msiejak/adb-easy-setup
# Created by Michael Siejak, MSIEJAK Development -> https://msiejak.dev
#
# Instructions:
# 1. Run the file
# ============================
#!/bin/bash

rebootPrompt () {
  echo "reboot now? Y/N: "
  read reboot
  if $reboot = "Y"
  then
    reboot
  elif $reboot = "N"
    then
      echo "done"
      exit
  else
      tput setaf 1; echo "invalid input: please enter Y or N"
      rebootPrompt
    fi
}

sudo apt install -y adb
sudo apt-get install -y android-sdk-platform-tools-common
sudo usermod -aG plugdev $LOGNAME
echo "setup complete - you need to reboot to apply changes"
rebootPrompt
