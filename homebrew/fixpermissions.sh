##FIX AND REPAIR
sudo chown -R mgogel:admin `brew --prefix`
sudo chgrp -R admin /usr/local
sudo chown -R `whoami` /usr/local
sudo chown -R $mgogel:admin /usr/local
sudo chmod -R g+w /usr/local
sudo chmod g+w /usr/local/bin/
sudo chmod go-w /usr/local/share
sudo chmod go-w /usr/local/bin
sudo mkdir -m 755 /usr/local/share
sudo chown mgogel:wheel /usr/local/include
sudo chown mgogel:wheel /usr/local/lib
sudo chown mgogel:wheel /usr/local/lib/pkgconfig
sudo chown -R $mgogel:staff /opt/homebrew-cask
sudo chown -R $USER /Library/Ruby /Library/Perl /Library/Python
sudo chown -R $USER /Library/Ruby /Library/Perl /Library/Python
sudo chown -R $USER /Library/Ruby /Library/Perl /Library/Python
sudo chown root:wheel /usr/local/Cellar/htop-osx/*/bin/htop
sudo chmod u+s /usr/local/Cellar/htop-osx/*/bin/htop
sudo chown root ~/Library/LaunchAgents/*
sudo chmod 644 ~/Library/LaunchAgents/*
find /usr/local/Library/Formula -type l -name "*requirement.rb"
find /usr/local/Library/Formula -type l -name "*requirement.rb" -delete
find $(brew --prefix)/Library/Formula -type l -name "*requirements.rb" -delete
find $(brew --prefix)/Library/Formula -type l -name "*requirement.rb" -delete

chmod -R g+w /Library/Caches/Homebrew
chown -R $mgogel:staff /opt/homebrew-cask
chmod -R g+w /usr/local
chgrp -R admin /Library/Caches/Homebrew
chmod -R g+w /Library/Caches/Homebrew

ls -la /Library/WebServer/

sudo chmod -R o+w /Library/WebServer/Documents
sudo chown -R :admin /Library/WebServer/Documents
sudo chmod -R g=rw,+X /Library/WebServer/Documents
sudo chown root:wheel /Library/WebServer/Documents
sudo chmod 755 /Library/WebServer/Documents
$ chmod 755 ~
$ chmod 755 ~/.ssh
$ chmod 644 ~/.ssh/authorized_keys


  rm -f ~/.zcompdump*; compinit
  chmod go-w /usr/local/share

sudo xcodebuild -license

xcodebuild -version || pbxbuild -version
