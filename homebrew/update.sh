#!/bin/sh

echo "\n\t* zsh"
cd ~/.oh-my-zsh
git pull

echo "\n\t* ohmyzsh"
cd ~/
upgrade_oh_my_zsh

echo "\n\t* vim"
cd ~/.vim
git submodule foreach git pull


#update vim
## VIM
#mvim +BundleInstall +qall
#vim +BundleInstall +qall
mvim -v --startuptime /dev/stdout +qall
# vim +BundleInstall +BundleClean
# vim +BundleClean +BundleInstall,v

echo "\n\t* vim bundles"
cd ~/.vim/bundle
for i in `ls`; do
  cd "$i"
  git pull
  cd ..
done

cd ~/.vim/bundle/YouCompleteMe
./install.sh --clang-completer
echo "\n\t* emacs"
#M-x package-list-packages RET U x
#M-x prelude-update


#echo "\n\t* fish"
#cd ~/.oh-my-fish
#git pull

echo "\n\t* fish completions"
/usr/local/bin/fish -c fish_update_completions

echo "\n\t* update my dotfiles"
cd ~/dotfiles && sh bootstrap.sh

echo "\n\t* usr/local"
cd /usr/local && git gc
git pull

echo "\n\t* updating gcloud"
cd ~/
gcloud components update

# echo "\n\t* perl"
# cd ~
# perlbrew self-upgrade 2>/dev/null
# cpan-outdated | cpanm --sudo
# cpanm-reporter
# cpan-outdated -p |cpanm --sudo



## GHK
echo "\n\t* ghc"
ghc-pkg check --simple-output
ghc-pkg check --simple-output | xargs -n 1 ghc-pkg unregister --force

## Update Python
echo "\n\t* updating pip with freeze and more use virtualenv"
pip install -U $(pip freeze | awk '{split($0, a, "=="); print a[1]}')
pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip install -U
pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs pip install -U
# Pip has been installed. To update it
#They will install into the site-package directory
 # /usr/local/lib/python2.7/site-packages
 #


pip install --upgrade distribute
#/usr/local/share/pypy/easy_install pip
# /usr/local/share/pypy/easy_install pip
#    /usr/local/share/pypy/pip install --upgrade setuptools

sudo pip2 install --upgrade pip3 distribute
sudo gem update `gem list | cut -d ' ' -f 1`
sudo pip freeze | sed -e 's/==.*//' | sed -e '/git-remote-helpers/ d' | xargs pip install -U
sudo pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs
syspip install --upgrade pip distribute virtualenv
syspip install --upgrade pip pip3 distribute virtualenv
ls pkg/*.gem | head -n 1 | xargs gem install -l


  pip install --upgrade setuptools
  pip install --upgrade pip
pip freeze -l|cut -d "=" -f 1|sort -f|xargs pip search -v|grep "INSTALLED:" -B 1 -A 1|grep -i "latest" -B 2|grep -vE "^\-\-"
pip freeze | sed -e 's/==.*//' | sed -e '/git-remote-helpers/ d' | xargs pip install -U
pip freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs
pip2 freeze | sed -e 's/==.*//' | sed -e '/git-remote-helpers/ d' | xargs pip install -U
pip2 freeze --local | grep -v '^\-e' | cut -d = -f 1  | xargs
pip freeze | grep -v '^\-e' | cut -d = -f 1  | xargs pip install -U
pip freeze -l|cut -d "=" -f 1|sort -f| xargs pip search -v|grep "INSTALLED:" -B 1 -A 1|grep -i "latest" -B 2|grep -vE "^\-\-"
pip freeze --global | grep -v '^\-e' | cut -d = -f 1  | xargs
pip install -U $(pip freeze | awk '{split($0, a, "=="); print a[1]}')
pip3 install -U $(pip freeze | awk '{split($0, a, "=="); print a[1]}')
pip3 install --upgrade setuptools
syspip freeze | grep -v '^\-e' | cut -d = -f 1  | xargs syspip install -U

pip  install --upgrade setuptools
pip  install --upgrade pip
pip install --upgrade distribute
pip install --upgrade pip
pip3 install --upgrade distribute
pip3 install --upgrade pip
pip3 install --upgrade pip3
sudo pip install --upgrade distribute
sudo pip install --upgrade pip
sudo pip3 install --upgrade distribute
sudo pip3 install --upgrade pip

## PYTHON
pip freeze > requirements.txt
pip install --upgrade -r requirements.txt


echo "\n\t* rbenv rehash"
cd ~/
rbenv rehash

echo "\n\t* updating npm"
# install npm  curl -L https://npmjs.org/install.sh | sh
sudo npm -g cache clean
sudo npm -g outdated
sudo npm -g update
sudo npm update
sudo npm -g list --depth 0 | grep -v "^/" | cut -f2 -d" " | cut -f1 -d@ | grep -v "^npm$" | xargs sudo npm -g update
npm -gq update
npm -g list --depth 0 | grep -v "^/" | cut -f2 -d" " | cut -f1 -d@ | grep -v "^npm$" | xargs npm -g update
sudo npm update -gf
sudo npm i update -gq
npm i -q

echo "\n\t* updating cabal"
cabal update
cabal install cabal-install


echo "\n\t* updating go"
go get code.google.com/p/go.tools/cmd/godoc
go get code.google.com/p/go.tools/cmd/vet

echo "\n\t* updating java"

To enable rJava support, run the following command:
  R CMD javareconf JAVA_CPPFLAGS=-I/System/Library/Frameworks/JavaVM.framework/Headers

sudo env JAVA_HOME=$JAVA_HOME gem update --system


echo "\n\t* Checking Ruby"
env | grep -iE 'ruby|rbenv|gem' | sort
which in ruby
which ruby gem irb rails

echo "\n\t* Updating Ruby"
sudo gem install rubygems-update
sudo update_rubygems
sudo gem update `gem list | cut -d ' ' -f 1`


echo "\n\t* Updating Gems"
gem env
gem update `gem list | cut -d ' ' -f 1`
gem pristine --all
gem update --system
update_rubygems
gem install rubygems-update
gem update all
gem update
gem update all
gem update --system
sudo gem update `gem list | cut -d ' ' -f 1`
sudo gem update `gem list | cut -d ' ' -f 1`
sudo gem pristine --all
sudo gem update --system
sudo update_rubygems
sudo gem install rubygems-update
sudo gem update -V debug
sudo gem update --system --debug -V
gem update --system --backtrace
gem pristine --all
gem update --system
gem regenerate_binstubs

  ## After upgrades, you can run
  gem pristine --all --only-executables

## RAILS
RAILS_ENV="production" bundle exec "rake db:migrate --trace"
sudo gem install rails -V

gem install nokogiri -- --with-xml2-include=/Applications/Xcode.app/Contents/Developer/Platforms/MacOSX.platform/Developer/SDKs/MacOSX10.9.sdk/usr/include/libxml2
  ARCHFLAGS="-arch x86_64" gem install zmq -- --with-zmq-dir=/usr/local/opt/zeromq
    ARCHFLAGS="-arch x86_64" gem install pg

echo "\n\t* Install Bower dependencies"
#bower i -s
#bower update

echo "\n\t* updating perl with cpan"
sudo perl -MCPAN -e 'CPAN::Shell->notest(install => CPAN::Shell->r)'
#/usr/bin/perl -e "require XML::Parser"
# perl-cleaner --reallyall


## CPAN
echo "\n\t* Update with Cpanm"

sudo cpanm App::cpanoutdated
sudo cpan-outdated -p | cpanm
sudo cpanm --interactive -v App::cpanoutdated --sudo
sudo cpanm --interactive -v App::CPAN::Fresh --sudo
 sudo cpanm --self-upgrade
 sudo perl -MCPAN -e shell
sudo cpanm --interactive -v App::cpanoutdated
sudo cpanm --interactive -v App::CPAN::Fresh
cpanm App::cpanoutdated
cpan-outdated -p | cpanm
cpanm --interactive -v App::cpanoutdated --sudo
cpanm --interactive -v App::CPAN::Fresh --sudo
 cpanm --self-upgrade
 sudo perl -MCPAN -e shell
sudo perl -MCPAN -e 'CPAN::Shell->notest(install => CPAN::Shell->r)'
cpanm --interactive -v App::cpanoutdated
cpanm --interactive -v App::CPAN::Fresh
sudo cpanm --interactive -v App::cpanoutdated
sudo cpanm --interactive -v App::CPAN::Fresh
cpan-outdated -p | cpanm
cpan-outdated |cpanm
cpanm -v App::cpanoutdated
sudo cpan-outdated |cpanm
sudo cpanm -v App::cpanoutdated

echo "\n\t* mysql"
mysql_upgrade
sudo /usr/local/mysql/support-files/mysql.server start


## PEAR
#pear clear-cache
#pear update-channels
# pear upgrade-all

# TEXLIVE
# tlmgr update --all

#echo "\n\t* Check OpenSSL Version"
#openssl version -a
#  /usr/local/opt/openssl/bin/c_rehash
#openssl verify -CApath /etc/ssl/certs
#openssl verify -CApath  /usr/local/etc/openssl/certs
#find / -name "openssl" \( -type f -o -type l \) -exec ls -l {} \; 2>/dev/null


## BUNDLE
bundle install --path vendor/bundle
bundle update rspec-rails
bundle install --binstubs
bundle update
bundle update --system
bundle update --binstubs
bundle update --source gem-name
bundle install
bundle update
bundle outdated
bundle clean
bundle show
bundle check
bundle --trace

echo "\n\t* running homebrew basic checks"
## HOMEBREW
brew list
brew cask list
brew doctor
brew cleanup
brew update && brew upgrade
brew cask upgrade
brew update
brew doctor
brew update
brew outdated
brew missing
brew update
 brew cleanup -s —force -n
brew update && brew upgrade brew-cask && brew cleanup

brew update && brew upgrade brew-cask
brew cleanup && brew cask cleanup


echo "\n\t* updating system"

echo "\n\t* This finds and removes any broken symlinks in your homebrew Formula directory"

ls -l /usr/local/Library/Formula | grep phinze-cask | awk '{print $9}' | for evil_symlink in $(cat -); do rm -v /usr/local/Library/Formula/$evil_symlink; done

find $(brew --prefix)/Library/Formula -type l ! -exec test -r {} \; -print | for evil_symlink in $(cat -); do rm -v $evil_symlink; done

find $(brew --prefix)/Library/Formula -type l | for symlink in $(cat -); do readlink $symlink | grep phinze-cask | grep -v brew-cask > /dev/null && rm -v $symlink; done

# update meteor
#curl https://install.meteor.com | /bin/sh


echo "\n\t* updating Boost"
# First uninstall the gcc/libstdc++ compiled Boost binaries by running brew uninstall boost, then run
#brew uninstall boost
#brew install boost --build-from-source --HEAD
#brew uninstall boost
#brew install boost --c++11
#brew install --build-from-source boost
# brew install boost --build-from-source --HEAD

# update force hash
hash -rf

cd $HOME
## SYSTEM CLEANUP
# cdd
rm -f ~/.zcompdump*; compinit

echo "\n\t* updating system software"

#sudo softwareupdate --list
#sudo softwareupdate -i -r

#sudo periodic daily weekly monthly

#sudo /usr/libexec/locate.updatedb

# emptytrash
