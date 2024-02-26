#!/bin/bash
# https://posintech.com/
echo "Select an option:"
echo "1. Install packages"
echo "2. Remove packages"
read -p "Enter your choice (1 or 2): " choice

if [ $choice -eq 1 ]; then
  # Installation
  sudo apt update -y
  sudo apt upgrade -y
  sudo apt install vim 
  echo "Startup Disk Creator (usb-creator) installed successfully."
  
  wget https://zoom.us/client/latest/zoom_amd64.deb 
  sudo apt install ./zoom_amd64.deb 
  echo "zoom installed successfully."
  
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  sudo dpkg -i google-chrome-stable_current_amd64.deb
  sudo apt -f install
  sudo apt update -y
  sudo apt install google-chrome-stable 
  echo "Chrome installed successfully."

  curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
  sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
  sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/edge stable main" > /etc/apt/sources.list.d/microsoft-edge-dev.list'
  sudo rm microsoft.gpg
  sudo apt install microsoft-edge-stable
  echo "microsoft-edge installed successfully."

  sudo apt install curl
  sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
  echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
  sudo apt update
  sudo apt install brave-browser
  echo " Brave-browser installed successfully."
  
  sudo snap install whatsapp-for-linux 
  echo " whatsapp installed successfully."
  
  sudo apt-get install x2goclient -y
  echo "X2go installed successfully."

# Update and upgrade system
sudo apt update && sudo apt upgrade -y

# Download and add VirtualBox signing key to keyring
sudo apt-get purge virtualbox*
sudo apt-get autoremove
sudo apt-get purge virtualbox* && sudo apt-get autoremove
dpkg -l | grep virtualbox
deb [arch=amd64 signed-by=/usr/share/keyrings/oracle-virtualbox-2016.gpg] https://download.virtualbox.org/virtualbox/debian <mydist> contrib
sudo apt-get update
sudo apt-get install virtualbox-6.1

# Update again to refresh package lists
sudo apt update && sudo apt upgrade -y
echo "VirtualBox has been installed successfully"


  DOWNLOAD_URL="https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
  PACKAGE_NAME="vscode.deb"
  wget -O "$PACKAGE_NAME" "$DOWNLOAD_URL"
  sudo dpkg -i "$PACKAGE_NAME"
  sudo apt-get install -f
  echo "Visual Studio Code has been successfully installed."

  sudo apt install snapd -y
  sudo snap install notepad-plus-plus --classic
  echo "Notepad++ installed successfully."
  
  sudo snap install thincast-client
  snap run thincast-client
  echo "if cast application was not run then follow the below step"
  echo "/snap/bin/thincast-client"
  

  sudo apt update -y
  sudo apt upgrade -y

elif [ $choice -eq 2 ]; then

# Removal
sudo apt remove code 
sudo apt remove gimp 
sudo apt remove vim 
sudo apt-get remove mypaint  
sudo apt remove zoom_amd64.deb 
sudo apt remove zoom 
sudo apt remove --purge google-chrome-stable 
sudo apt remove microsoft-edge-stable
sudo apt remove brave-browser
sudo snap remove unofficial-webapp-todo
sudo snap remove office365webdesktop
sudo snap remove unofficial-webapp-fork
sudo add-apt-repository -r ppa:linuxuprising/shutter
sudo snap remove whatsapp-for-linux
sudo apt-get remove --purge x2goclient 
sudo dpkg --remove vscode.deb
sudo snap remove notepad-plus-plus
sudo snap remove thincast-client
sudo apt-get purge virtualbox*
sudo apt-get autoremove
sudo apt-get purge virtualbox* && sudo apt-get autoremove

# Cleanup
sudo apt autoremove -y
sudo apt autoclean

echo "Packages removed successfully."

else
  echo "Invalid choice. Exiting."
fi

