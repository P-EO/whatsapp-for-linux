#!/bin/bash

#Download desktop shortcut and the script to run WhatsApp
echo -e '\e[32mPreparing...\e[39m'
sudo mkdir WhatsApp
cd Whatsapp
wget https://raw.githubusercontent.com/ITdairy/whatsapp-nativefier-script/main/run-whatsapp.sh
wget https://raw.githubusercontent.com/ITdairy/whatsapp-nativefier-script/main/whatsapp.desktop

#Nativefier WhatsApp with user agent
echo -e '\e[32mNativefying WhatsApp from http://web.whatsapp.com ...\e[39m'
nativefier https://web.whatsapp.com --user-agent "Mozilla/5.0 (X11; CrOS armv7l 13597.84.0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/88.0.4324.187 Safari/537.36" -a `uname -m` --maximize -n WhatsApp
cd ./WhatsApp-linux-`uname -m`
sudo cp ../run-whatsapp.sh ./
sudo chmod +x ./run-whatsapp.sh
cd ..
echo -e '\e[32mDone installing WhatsApp, Creating desktop shortcut and menu shortcut...'

#Create desktop & menu shortcut
sudo cp ./whatsapp.desktop /usr/share/applications
sudo cp ./whatsapp.desktop ~/Desktop
echo -e '\e[32mDone! You can now run WhatsApp from desktop and menu bar.\e[39m'
echo -e "\e[101mPlease let me know if you can't see desktop shortcut and menu bar shortcut!\e[0m"
cd ~/
