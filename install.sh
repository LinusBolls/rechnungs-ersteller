#!/usr/bin/env bash

# download, extract and remove  git repo zip
curl -L https://github.com/linusbolls/rechnungs-ersteller/archive/refs/heads/master.zip --output ~/temp.zip
unzip ~/temp.zip -d ~/Library/Application\ Support/RechnungsErsteller
rm ~/temp.zip

# install dependencies from requirements.txt
pip3 install -r ~/Library/Application\ Support/RechnungsErsteller/rechnungs-ersteller-master/requirements.txt

# move startup script into home directory to make it more accessible via spotlight
mv ~/Library/Application\ Support/RechnungsErsteller/rechnungs-ersteller-master/launch.sh ~/Der\ Schuldner
# give startup script execution permissions
chmod u+x ~/Der\ Schuldner