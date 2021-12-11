#!/bin/bash

# use a certain version of opera
FILE=./opera-stable_82.0.4227.23_amd64.deb
DIR=https://download5.operacdn.com/pub/opera/desktop/82.0.4227.23/linux

# if a download was interrupted, start it over
if [ -f "$FILE" ]; then
    rm $FILE
fi

# download opera
wget $DIR/$FILE

# install from deb
sudo dpkg -i $FILE

# satisfy dependencies
sudo apt-get -f -y install

# install the altf4 script
sudo chmod +x ./altf4.sh
./altf4.sh install

# unpack the special Opera profile
cp profile.tar.gz ~/.config/profile.tar.gz
cd ~/.config/
tar xf profile.tar.gz
rm profile.tar.gz

exit
