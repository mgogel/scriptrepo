#!/usr/bin/env bash
#
# Bootstrap my Mac
 
set -e
 
echo ''
echo 'Boostrapping...'
echo ''
 
# Check for Xcode command-line tools and prompt for install if missing
xcode-select -p > /dev/null
 
if [ "$?" == "2" ]
then
  xcode-select --install
else
  echo 'Sweet, Xcode command-line tools are installed.'
  echo ''
fi

# I'm forgetful. Just look at this repo's commits to see how many times I
# forgot to setup Git and GitHub.

cat <<EOF
If this is a remote server, run:
ssh-copy-id $USER@$(wanip) && ssh $USER@$(wanip)
EOF

# Install homebrew
if [ -n "`brew --version 2>/dev/null`" ]; then
	echo "Homebrew is already installed"
else
	ruby -e "$(curl -fsSkL raw.github.com/mxcl/homebrew/go)"
fi


get-brew () {
  ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}
 
get-brews () {
  brew update && \
  brew install git \
               gpg2 \
               node \
               vim \
               emacs \
               tmux \
               tree \
               pidof \
               htop \
               socat \
               tree \ 
               xz \ 
               rbenv \
               boot2docker \
               docker \
               docker-compose \
               maven
}
 
get-cask () {
  brew install caskroom/cask/brew-cask
}
 
get-casks () {
  brew cask update && \
  brew cask install iterm2 \
                    emacs \
                    gfxcardstatus \
                    virtualbox \
                    vagrant \
                    onyx \
                    cleanmymac \
                    hazel \
                    spectacle \
                    torbrowser \
                    little-snitch \
                    istat-menus \
                    carbon-copy-cloner \
                    textexpander \
                    xquartz \ 
                    gfxcardstatus \
                    java7 \
                    intellij-idea \
                    slack \
                    omnigraffle \
                    evernote \ 
                    google-chrome \
                    chromium \
                    clamxav \
                    ynab \
                    wireshark \
                    vlc \
                    transmission \
                    boom
}
 
get-brew 
get-brews
get-cask
get-casks
 
# Dockerize me, captain!
if [ -d "/Users/$USER/.boot2docker/" ]
then
  echo ''
  echo 'Docker is is installed, setting defaults...'
  $(boot2docker shellinit)
fi
 
# Lock this bish down (require password immediately after sleep/lock)
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0
 
# Enable key repition and make it really fast
defaults write -g ApplePressAndHoldEnabled -bool false
defaults write -g NSAutomaticSpellingCorrectionEnabled -bool false
defaults write NSGlobalDomain KeyRepeat -int 0
 
# Show ~/Library
chflags nohidden ~/Library
 
echo ''
echo "Don't forget to clone your dotfiles repos for emacs/vim."
echo 'BLAMMO! That happened - done!'
echo ''


# Fix php.ini for 5.4
#PHP_INI=`php -i 2>/dev/null| grep "Loaded Configuration File" | awk -F"=> " ' { print $2 } '`
# echo "date.timezone = UTC" >> $PHP_INI


# Fix PHP .ini normally
if [ -z "`cat /etc/php.ini | grep 'date.timezone = UTC'`" ]; then
  sudo cp /etc/php.ini.default /etc/php.ini && echo "date.timezone = UTC" | sudo tee -a /etc/php.ini
else
  echo "php.ini already patched"
fi
