  # Update and upgrade system
  sudo apt update && sudo apt upgrade -y 

  # Install packages
   sudo apt install -y vim ssh pass htop net-tools
 
  wget https://zoom.us/client/latest/zoom_amd64.deb 
  sudo apt install ./zoom_amd64.deb 
  echo "zoom installed successfully."
  
  wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
  sudo dpkg -i google-chrome-stable_current_amd64.deb
  sudo apt -f install
  sudo apt update -y
  sudo apt install google-chrome-stable 
  echo "Chrome installed successfully."



 sudo apt-get install x2goclient -y
 echo "X2go installed successfully."

 # Update and upgrade system
 sudo apt update && sudo apt upgrade -y 
