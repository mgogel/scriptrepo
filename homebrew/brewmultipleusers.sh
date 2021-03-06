#!/bin/bash

#This script is designed to install homebrew and configure a group to have access
#to it rather than a single user.

# Install brew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# Create brew group
sudo dscl . -create /Groups/brew
sudo dscl . -create /Groups/brew RealName “Brew Users”
sudo dscl . -create /Groups/brew passwd “*”
sudo dscl . -create /Groups/brew gid 400
STAFF=$(sudo dscl . -read /Groups/staff | grep GeneratedUID | cut -d: -f2)
sudo dscl . -append /Groups/brew GroupMembers $STAFF

#Change group ownership/permissions for brew directories.
chgrp -R brew /usr/local
chmod -R g+w /usr/local
chgrp -R brew /opt/homebrew-cask/Caskroom/
chmod -R g+w /opt/homebrew-cask/Caskroom/

sudo mkdir -p /Library/Caches/Homebrew
sudo chgrp -R brew /Library/Caches/Homebrew
sudo chmod -R g+w /Library/Caches/Homebrew
