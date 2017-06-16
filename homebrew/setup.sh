#!/bin/sh

##### Preparations ##### 
#-----------------------
# Description is available at http://mlayer.org/tech/2014/11/25/setup-mac-os-x.html

# install homebrew
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew install caskroom/cask/brew-cask # makes available to install apps as packages
brew tap caskroom/versions # for beta version available through cask

# this will install rmtree feature for brew to uninstall packages with dependecies
brew tap beeftornado/rmtree && brew install beeftornado/rmtree/brew-rmtree

##### Software installing ##### 
#------------------------------

# Misc
brew cask install google-chrome
#brew cask install dropbox
#brew cask install yandexdisk
#brew cask install google-drive
#brew cask install telegram
#brew cask install viber
#brew cask install skype
#brew cask install twitter

# Utilites
brew cask install iterm2
# curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
#brew cask install alfred
#brew cask install bartender
# brew cask install evernote
#brew cask install the-anarchiver
#brew cask install virtualbox
#brew cask install vlc
#brew cask install cyberduck
#brew cask install ynab
#brew cask install android-file-transfer
#brew cask install divvy
#brew cask install fantastical
brew install tree
brew install ffmpeg
# brew cask install cleanmymac
# brew cask install kid3

brew install git
brew install git-flow
brew cask install sublime-text3
#brew cask install mou
brew cask install genymotion
brew cask install github
brew cask install java
# For jenv don't forget to add to you profile: 
# export PATH="$HOME/.jenv/bin:$PATH" 
# eval "$(jenv init -)"
#brew install jenv 
#brew install gradle
#brew install scala
#brew install sbt
#brew cask install intellij-idea
#brew cask install android-studio
#brew cask install dash
#brew install rbenv
#brew install ruby-build # don't forget to add to you profile: eval "$(rbenv init -)"
#brew cask install ngrok
#brew install mongodb
#brew cask install mongodbpreferencepane
brew install node
# if you don't need sublimelinter plugins for js/css/json comment next 2 lines
#npm install -g jshint
#npm install -g csslint