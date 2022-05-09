#!/usr/bin/env bash

# download, extract and remove  git repo zip
wget "https://github.com/linusbolls/rechnungs-ersteller/archive/refs/heads/master.zip" -O ~/temp.zip
unzip temp.zip -d ~/Library/Application\ Support/RechnungsErsteller
rm ~/temp.zip

# install dependencies from requirements.txt
pip3 install -r ~/Library/Application\ Support/RechnungsErsteller/requirements.txt

# move startup script into home directory to make it more accessible via spotlight
mv ~/Library/Application\ Support/RechnungsErsteller/launch.sh ~/Rechnungs\ Ersteller
# give startup script execution permissions
chmod u+x ~/Rechnungs\ Ersteller