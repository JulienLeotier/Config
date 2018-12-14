 sudo sh -c 'echo "deb [arch=amd64] https://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/google-chrome.list'\
 &&  wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | sudo apt-key add -\
 &&  sudo apt-get update\
 && sudo apt install curl\
 && curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg\
 && sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/\
 && sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'\
 && sudo apt-get install apt-transport-https\
 && sudo apt-get update\
 && sudo apt-get install code\
 && sudo apt-get install python-pip python-dev build-essential\
 && sudo pip install --upgrade pip \
 && sudo pip install --upgrade virtualenv \
 && sudo apt install git\
 && sudo apt install git-gui\
 && sudo curl -o /usr/local/bin/n https://raw.githubusercontent.com/visionmedia/n/master/bin/n \
 && sudo chmod +x /usr/local/bin/n\
 && sudo n stable\

