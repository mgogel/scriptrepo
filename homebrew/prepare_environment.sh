#!/bin/bash
# this script installs all my tools and applications.
# PREREQUISITE: homebrew needs to be already installed

## install homebrew
function exiting(){
    echo "Finalizing program..."
    echo $1
    exit
}

[ "$USER" != root ] && exiting "You are not root!"

# Check for Homebrew
if test ! $(which brew)
then
  echo "  x You should probably install Homebrew first:"
  echo "    https://github.com/mxcl/homebrew/wiki/installation"
  exit
fi

echo "installing homebrew"
ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"
brew doctor
# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

echo "after homebrew is installed update the path"
echo "export PATH='/usr/local/bin:$PATH'\n" >> ~/.bashrc
source ~/.bashrc

echo "fix required before we can install rvm / ruby"
brew install libksba

# echo "install rvm / fix gcc / install the latest ruby"
# curl -L https://get.rvm.io | bash -s stable --ignore-dotfiles
# source ~/.rvm/scripts/rvm
# echo "source ~/.rvm/scripts/rvm" >> ~/.bashrc
source ~/.bashrc
sudo ln -s /usr/bin/gcc /usr/bin/gcc-4.2

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils
# Install Bash 4
brew install bash

# Install wget with IRI support
brew install wget --enable-iri

echo "install the fundamentals"
brew install tig
brew install tree
brew install node
brew install phantomjs
brew install ack
# Fixing copy and paste bug in tmux / vim
brew install tmux
brew install reattach-to-user-namespace
brew install postgresql
brew install mysql
brew install memcached

# install useful tools
brew update
brew install wget
brew install git
brew install autojump
brew install graphviz
brew install curl
brew install imagemagick
brew install ghostscript
brew install meld
brew install libyaml
brew install stunnel

brew install xz
brew install coreutils
brew install a2ps
brew install colordiff
brew install ctags
brew install curl
brew install dos2unix
brew install htop
brew install nmap
brew install par
brew install subversion
brew install unrar
brew install watch
brew install wget
brew install bash-completion
brew install grep
brew install openssh
brew install ssh-copy-id
brew install md5sha1sum
brew install zsh-completions

# Install MacVim
brew install macvim --enable-cscope --enable-clipboard \
                    --custom-icons --with-envycoder --override-system-vim
mkdir -p ~/Applications
brew linkapps

echo "launch memcached on startup"
ln -sfv /usr/local/opt/memcached/*.plist ~/Library/LaunchAgents

echo "add a few other rails gems"
gem install bundler pg foreman thin --no-rdoc --no-ri

echo "setup pip and virtualenv"
# install pip
sudo easy_install pip

# install virtualenv
sudo pip install virtualenv
sudo pip install virtualenvwrapper


export WORKON_HOME=~/.virtualenvs
source /usr/local/bin/virtualenvwrapper.sh

echo '==='
if which pip > /dev/null; then
    pip install ipython
    echo '==='
    pip install pep8
    echo '==='
    pip install virtualenvwrapper
fi

echo "add jedi globally for better python support in vim"
sudo pip install jedi

echo "finish the postgres setup"
initdb /usr/local/var/postgres -E utf8

echo "install the latest vim"
brew install mercurial
brew install vim

echo "install zsh"
# install zsh
brew install zsh
wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

echo "install exuberant-ctags"
brew install ctags
sudo mv /usr/bin/ctags /usr/bin/ctags_orig

echo "add GNU gettext and gettext-tools for django compile messages"
brew install gettext
brew link gettext --force

echo "Setting up homebrew-cask"
# Install native apps
brew tap phinze/homebrew-cask
brew install brew-cask

function installcask() {
  if brew cask info "${@}" | grep "Not installed" > /dev/null; then
    brew cask install "${@}"
  else
    echo "${@} is already installed."
  fi
}


echo "install chrome"
brew cask install google-chrome

echo "install firefox"
brew cask install firefox

echo "install iterm2"
brew cask install iterm2

echo "install alfred"
brew cask install alfred

echo "change the default shell to zsh"
chsh -s /bin/zsh

echo "install nvm for better node version management"
curl https://raw.github.com/creationix/nvm/master/install.sh | sh

# devel boxen
echo "install virtualbox"
brew cask install virtualbox

echo "install vagrant"
brew cask install vagrant

# Install RingoJS and Narwhal
# Note that the order in which these are installed is important; see http://git.io/brew-narwhal-ringo.
# brew install ringojs
# brew install narwhal

# Install more recent versions of some OS X tools
# brew tap homebrew/dupes
# brew install homebrew/dupes/grep
# brew tap josegonzalez/homebrew-php
# brew install php54

# Install other useful binaries
brew install readline
brew install python
brew linkapps
pip install --upgrade setuptools
pip install --upgrade pip

# install ipython notebook prerequisites
sudo easy_install readline pyzmq pygments tornado
sudo easy_install https://github.com/ipython/ipython/tarball/master

sudo easy_install-2.7 pip
sudo pip install virtualenv
sduo pip install virtualenvwrapper
sudo touch /System/Library/Frameworks/Python.framework/Versions/2.7/lib/python2.7/distutils/__init__.py
sudo pip install psycopg2
sudo pip install mysql-python
sudo pip install PIL
pip install numpy
pip install scipy
pip install pandas
brew install freetype #see my last post if you want to know why
pip install matplotlib

brew tap samueljohn/homebrew-python
brew update
pip install matplotlib

brew install pyqt --with-python3

If you wish to test your installations, you need only

 $pip install nose  #needed for all tests

 #inside of IDLE or iPython
 [In:] import numpy
 [In:] numpy.test('full')
 [In:] import scipy
 [In:] scipy.test()

 #from command prompt
 $ nostetests pandas


brew install xz
brew install git
brew install hub
brew install git-extras
brew install emacs --cocoa
brew install noweb
brew install gdal
brew install gsl # needed by qgis
brew install sbcl # Lisp is a must!
brew install google-app-engine
brew install xz
brew install git
brew install hub
brew install git-extras
brew install emacs --cocoa
brew install noweb
brew install gdal
brew install gsl # needed by qgis
brew install sbcl # Lisp is a must!


brew tap homebrew/science # python
pip-2.7 install nose
brew tap samueljohn/python
brew install numpy
brew link numpy
pip install Shapely

# install global packages used by all virtualenvs
sudo pip install ipdb
sudo pip install mysql-python
sudo pip install pillow
sudo pip install watchdog

/usr/local/share/pypy/easy_install pip
/usr/local/share/pypy/pip install --upgrade setuptools


brew install opencv

brew tap atlassian/tap
brew install atlassian/tap/atlassian-plugin-sdk

# Lisp-y devel
brew install emacs
brew install sbcl
brew install clojure
brew install leiningen
brew cask install light-table



# C++ devel
brew install open-mpi
brew install boost --with-mpi --without-single --with c++11
brew install doxygen --with-dot --with-doxywizard --with-libclang
brew install cmake


# Research
brew install eigen
brew install cgal --imaging --with-eigen3 --with-lapack
brew cask install zotero
brew cask install anki
brew install dieharder

# Sysadmin
brew install ssh-copy-id
brew cask install menu-meters

# enhancements
brew install aspell --lang=en

# Terminal utilities
brew install irssi
brew install netcat

# General devel
brew cask install sublime-text
brew install ruby
brew install legit
legit install
brew cask install github

# PHP and Apache
brew install httpd
brew install php55 --with-thread-safety --homebrew-apxs
brew install php55-pthreads


# Fun
brew cask install steam

# Cleanup
brew cleanup

# Additions
pear install PHP_CodeSniffer


brew cask install adium
brew cask install adium
brew cask install arduino
brew cask install dropbox
brew cask install github
brew cask install gitx
brew cask install fluid
brew cask install google-chrome
brew cask install google-chrome-canary
brew cask install inkscape
brew cask install iterm2
brew cask install open-office
brew cask install opera
brew cask install skype
brew cask install spotify
brew cask install sublime-text
brew cask install komodo-edit
brew cask install tor-browser
brew cask install transmission
brew cask install brackets
brew cask install adventure
brew cask install google-app-engine
brew cask install google-earth
brew cask install bettertouchtool
brew cask install adapter
brew cask install geektool
brew cask install lastfm
brew cask install sigil
brew cask install unetbootin
brew cask install bit-torrent-sync
brew cask install controlplane
brew cask install gimp
brew cask install x-quartz
brew cask install vlc
brew cask install sourcetree
brew cask install caffeine
brew cask install dropbox
brew cask install onyx
brew cask install xtra-finder
brew cask install platypus
brew cask install grand-perspective
brew cask install hiss
brew cask install app-cleaner
brew cask install calibre
brew cask install dia
brew cask install alfred
brew cask install arduino
brew cask install dropbox
brew cask install github
brew cask install gitx
brew cask install fluid
brew cask install google-chrome-canary
brew cask install inkscape
# brew cask install gimp
brew cask install open-office
brew cask install opera
brew cask install skype
brew cask install spotify
brew cask install sublime-text
brew cask install komodo-edit
brew cask install tor-browser
brew cask install transmission
brew cask install brackets
brew cask install adventure
brew cask install google-app-engine
brew cask install google-earth


function brew cask install() {
        if brew cask info "${@}" | grep "Not installed" > /dev/null; then
                brew cask install "${@}"
        else
                echo "${@} is already installed."
        fi
}

## CLEANUP
#
#
# updating
brew update
brew upgrade
brew readall

# checking
brew services
brew services clean

## clean fonts
fc-cache -vf ~/.fonts
brew update
brew uninstall zsh
brew install zsh

brew unlink python
brew unlink macvim
brew remove macvim
brew install -v --force macvim
brew link macvim
brew link python


# Jam
jam upgrade
jam install jquery
jam install bower

# Pear
  pear config-set auto_discover 1
  pear update-channels
  pear upgrade



# needed for twitter bootstrap
brew install nodejs
https://npmjs.org/install.sh | sh

sudo npm install -g alloy titanium phantomjs
npm install -g bower

npm install -g grunt

npm install -g yo

npm install -g generator-angular
### npm
npm install -g topojson
npm install -g bower


npm install jshint
brew install jsboss-forge

curl http://npmjs.org/install.sh | sh
npm install recess uglify-js jshint -g
npm install less --global

npm install jarvis
npm install zombie
sudo npm install volo -g


npm outdated
npm prune
# npm test

sudo npm install -g titanium
sudo npm install coffee-script -g
npm install jamjs
sudo npm install -g alloy

### npm
npm install -g topojson
npm install -g bower



### gems
gem install gist


# Must have git first
# Install homesick
gem install homesick
homesick clone https://github.com/acgetchell/dotfiles.git

# Remove outdated versions from the cellar
brew cleanup

brew cask linkapps



# Remove outdated versions from the cellar
brew cleanup

brew tap homebrew/versions


####################
#TODO: see brew list to get the other ones!!!!!!!
####################



# Install bash_it
# git clone http://github.com/revans/bash-it.git ~/.bash_it
# ~/.bash_it/install.sh
# Pull .bash_profile from github dotfiles, overwriting the one bash_it just made
# homesick pull dotfiles
# homesick symlink dotfiles -f

# I use the virtualenvwrapper plugin that comes with oh-my-zsh
# It depends on readlink which is different on OSX than on Ubuntu but
# coreutils contains greadlink which has the expected functionality
# so I replace the OSX readlink with greadlink via a symlink.
brew install coreutils
mkdir -p ~/bin && cd ~/bin && ln -s `which greadlink` readlink

# install fabric completion
brew install bash-completion
cd /usr/local/etc/bash_completion.d
wget https://github.com/marcelor/fabric-bash-autocompletion/raw/master/fab


In terminal

Eventually the screen version that comes with OSX will not work with 265 colors. Therefore you might need to build it from scratch::

git clone git://git.savannah.gnu.org/screen.git
cd screen/src
./autogen.sh
./configure --enable-colors256 --with-sys-screenrc=/etc/screenrc
make   # I got a lot of warnings here, but they don't seem to matter
sudo make install

Misc

    If you need graphviz in one of your venvs, try pip install pygraphviz. It will fail but you will see a pygraphviz folder in your ~/Envs/envname/build/ folder. Open it's setup.py and uncomment the lines for OSX. Try pip install again.
    sudo nano /usr/local/bin/mvim and make sure that the line with the variable is commented out and we use the variable set in .bashrc
    You might need to change the default-storage-engine in your /etc/my.cnf to MyISAM.
    Import solarized terminal colors from here: https://github.com/altercation/solarized/tree/master/osx-terminal.app-colors-solarized/xterm-256color
    Install PIL: http://devdetails.com/2011/09/20/install-pil-in-a-virtualenv-on-mac-osx-lion/
    Installing meld might be troublesome. You might need to change the owner of some locale folder, then run brew link xz




export PATH=/usr/local/bin:/usr/local/sbin:/usr/local/share/python:$PATH
# Include user's bin folder.
if [ -d "$HOME/bin" ] ; then
    export PATH="$HOME/bin:$PATH"
fi


# cd $HOME
# ln -s ~/mgogel-dotfiles/osx/.bash_profile
# ln -s ~/mgogel-dotfiles/osx/.bashrc
# ln -s ~/mgogel-dotfiles/osx/.gitconfig

# Tell OSX to show full path in Finder title
defaults write com.apple.finder _FXShowPosixPathInTitle -bool YES

killall Finder
