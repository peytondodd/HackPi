#!/bin/bash
clear
TRANS='\e[0m'
BLUE='\e[1;34m'
RED='\e[38;5;124m'
YELLOW='\e[38;5;226m'
GREEN='\e[38;5;46m'
PURPLE='\e[38;5;200m'
LIGHTBLUE='\e[38;5;44m'
echo -e "${GREEN}  __________.__   _____  ____  __.      .__  .__  "
echo " \______   \__| /  |  ||    |/ _|____  |  | |__| "
echo "  |     ___/  |/   |  ||      < \__  \ |  | |  | "
echo "  |    |   |  /    ^   /    |  \ / __ \|  |_|  | "
echo "  |____|   |__\____   ||____|__ (____  /____/__| "
echo "                   |__|        \/    \/          "
echo -e "${NC}"
echo -e "${YELLOW}   First Script For Kali Linux RPi 3 by Mr. SAGE ${TRANS}"
echo ""
echo -e "${YELLOW}   Update, Upgrade, Autologin, AutoVNC and Tools ${TRANS}"
echo ""
echo -e "${RED}   NOTE : This Script Must Run As R00T ${TRANS}"
echo ""
echo -e "${GREEN}   Follow Me : https://linktr.ee/thehackingsage ${TRANS}"
echo ""
echo "----------------------------------------------------"
echo ""
echo -e "${BLUE}   [>] Press ENTER to Continue, CTRL+C to Abort.. ${TRANS}"
read INPUT
echo ""
echo -e "${TRANS}"
echo -e "${GREEN}Performing Update.....${TRANS}"
echo ""
apt-get update
#apt-get full-upgrade
echo -e "${TRANS}"
echo -e "${GREEN}Installing XFCE4 GUI.....${TRANS}"
echo ""
apt-get install kali-defaults kali-root-login desktop-base xfce4 xfce4-places-plugin xfce4-goodies -y
apt-get install lightdm -y
dpkg-reconfigure lightdm
echo -e "${TRANS}"
echo -e "${GREEN}Installing Tight VNC.....${TRANS}"
echo ""
apt-get install tightvncserver -y
echo -e "${TRANS}"
echo -e "${GREEN}Making Autorun VNC Script.....${TRANS}"
echo ""
cp tightvncserver /etc/init.d/tightvncserver
chmod 755 /etc/init.d/tightvncserver
update-rc.d tightvncserver defaults
echo -e "${TRANS}"
echo -e "${GREEN}VNC Password Setting.....${TRANS}"
echo ""
vncpasswd
sudo /etc/init.d/tightvncserver start
echo "VNC Autorun On Startup Done..!!!"
echo -e "${TRANS}"
echo -e "${GREEN}Enabling AutoLogin.....${TRANS}"
echo ""
mv /etc/lightdm/lightdm.conf  /etc/lightdm/lightdm.conf.bak
mv /etc/pam.d/lightdm-autologin  /etc/pam.d/lightdm-autologin.bak
cp lightdm.conf /etc/lightdm/lightdm.conf
cp lightdm-autologin /etc/pam.d/lightdm-autologin
echo -e "${TRANS}"
echo -e "${GREEN}All Done...!!! Thanks For Using This Tool...!!!${TRANS}"
echo -e "${GREEN}Visit : https://linktr.ee/thehackingsage for more.. ${TRANS}"
echo "                                                               "
