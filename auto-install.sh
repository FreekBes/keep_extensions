#!/bin/bash
bold=$(tput bold)
normal=$(tput sgr0)

echo "${bold}Codam Automatic Extension Installer for Google Chrome, version 1${normal}"
echo "================================================================"
echo
echo -n "Checking for updates..."
onlineSha=$(curl -s https://api.github.com/repos/FreekBes/codam_auto_extension_installer/contents/auto-install.sh | grep "sha" | awk '{ print substr( $0, 11, 40) }')
thisSha=$(git hash-object auto-install.sh)
if [[ "$onlineSha" != "$thisSha" ]]; then
	echo -e "\r\033[K${bold}An update for this script is available${normal}! Please pull it from the GitHub repository.";
	echo "https://github.com/FreekBes/codam_auto_extension_installer"
else
	echo -e " No updates available."
fi
echo
if [ "$(uname)" != "Darwin" ]; then
	echo "This install script only works on macOS. For installing this extension on Windows or Linux, please refer to the Chrome Web Store."
	exit
fi
cd ~/Library/ApplicationSupport/Google/Chrome/
if [ ! -d "External Extensions/" ]; then
	echo "Creating Chrome External Extensions folder in your profile..."
	mkdir -p "External Extensions"
fi
echo "Now commencing with the extension installation."
cd "External Extensions"
echo "Answer ${bold}Y${normal} to install, ${bold}N${normal} to skip, for every extension listed."
echo

while true; do
	read -p "Install ${bold}Improved Intra 42${normal}? [Y/n] " yn
	case $yn in
		[Yy]* ) echo '{ "external_update_url": "https://clients2.google.com/service/update2/crx" }' > "hmflgigeigiejaogcgamkecmlibcpdgo.json"; echo "Installed."; break;;
		[Nn]* ) echo "Skipped."; break;;
		* ) echo "Please answer ${bold}Y${normal}es or ${bold}N${normal}o.";;
	esac
done
echo

while true; do
	read -p "Install ${bold}uBlock Origin${normal}? [Y/n] " yn
	case $yn in
		[Yy]* ) echo '{ "external_update_url": "https://clients2.google.com/service/update2/crx" }' > "cjpalhdlnbpafiamejdnhcphjbkeiagm.json"; echo "Installed."; break;;
		[Nn]* ) echo "Skipped."; break;;
		* ) echo "Please answer ${bold}Y${normal}es or ${bold}N${normal}o.";;
	esac
done
echo

while true; do
	read -p "Install ${bold}ft_logtime${normal}? [Y/n] " yn
	case $yn in
		[Yy]* ) echo '{ "external_update_url": "https://clients2.google.com/service/update2/crx" }' > "mnohnflacgkmhaocfhhmjeeciibiciep.json"; echo "Installed."; break;;
		[Nn]* ) echo "Skipped."; break;;
		* ) echo "Please answer ${bold}Y${normal}es or ${bold}N${normal}o.";;
	esac
done
echo

echo "To uninstall an extension later, just remove it from Chrome."
echo "To reinstall an extension after that, add it from the Web Store."
echo
echo "${bold}If Chrome is running currently, right click it and choose QUIT."
echo "${bold}Then run it again and click ERROR in the top right."
echo "${bold}You'll be able to enable the installed extensions from there."
