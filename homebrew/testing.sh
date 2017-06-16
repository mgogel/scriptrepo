chmod go-w /usr/local/share

## NPM
alias brewuu='brew update && {brew upgrade node --without-npm; brew upgrade}'

# TESTING
#Find
find . -type f -name "*.*" -print0 | xargs -0 grep "mxcl"

lsof | grep 20560 | awk '{print $2}' | xargs kill -9

ls -shal |grep "phinze-cask" |grep -oP "(?<=\d{2}:\d{2}\s)[\w\.\-]+" |xargs rm

## Check OPENSSL
# lsof | grep 20560 | awk '{print $2}' | xargs kill -9

cd /usr/local
find . -type d -exec chmod g+rws {} \;

sudo ntpd -qg
hwclock --systohc

Mac OS X Lion moves your php.ini to php.ini.applesaved.
sudo cp /etc/php.ini.default /etc/php.ini
You have to recreate your php.ini from php.ini.default or from php.ini.applesaved.
    alias php-start="sudo launchctl load ~/Library/LaunchAgents/homebrew.mxcl.php55.plist"
    alias php-stop="sudo launchctl unload ~/Library/LaunchAgents/homebrew.mxcl.php55.plist"
    alias php-restart="php-stop && php-start"

Now, add the following line to your httpd.conf.

LoadModule php5_module /usr/local/lib/libphp5.so

Remove or comment out any other line that contain LoadModule php5_module.

You can find your httpd.conf file path with the following command if you are using the OSX built-in apache

apachectl -V | grep "httpd.conf"


sudo apachectl restart

Set your timezone for php. I used the following in /usr/local/etc/php/5.3/php.ini.

date.timezone = America/New_York

Set the following for Symfony 2 compatibility in /usr/local/etc/php/5.3/php.ini:

detect_unicode = off


    Set the Apache user and group directives to your user shortname and the "admin" group. Do this in the file /etc/apache2/httpd.conf
        Restart Apache
        This allows Apache to host sites in folders other than ~/Sites

/usr/local/etc/my.cnf.d/


find /usr/local/Library/Formula -type l -name "*requirement.rb"
find $(brew --prefix)/Library/Formula -type l -name "*requirement.rb" -delete




    ARCHFLAGS="-arch x86_64" gem install zmq -- --with-zmq-dir=/usr/local/opt/zeromq

To enable rJava support, run the following command:
  R CMD javareconf JAVA_CPPFLAGS=-I/System/Library/Frameworks/JavaVM.framework/Headers

Setuptools has been installed, so easy_install is available.
To update setuptools itself outside of Homebrew:
    /usr/local/share/pypy/easy_install pip
    /usr/local/share/pypy/pip install --upgrade setuptools
/usr/local/share/pypy/pip install --upgrade distribute

  ## After upgrades, you can run
  gem pristine --all --only-executables

    ARCHFLAGS="-arch x86_64" gem install pg

cpanm -v  install R/RJ/RJBS/perl-5.20.0.tar.gz

ls pkg/*.gem | head -n 1 | xargs gem install -l

sudo ln -s "$(brew --prefix)/Library/Contributions/brew_zsh_completion.zsh" /usr/local/share/zsh/site-functions

