echo Welcome to the Dolphin Installer
read -p "Do you want to Continue?" -n 1 -r
echo 
if [[ $REPLY =~ ^[Yy]$ ]]
then
echo Starting Installation...
fi