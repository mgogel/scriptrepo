#!/bin/sh
# Written by Brian Gilbert @BrianGilbert_ https://github.com/BrianGilbert
# of Realityloop @Realityloop http://realitylop.com/
# I'm by no means a bash scripter, please submit pull requests/issues for improvements. :)
{
  # set volume so say text can be heard
  osascript -e "set Volume 5"

  curl --silent --head https://www.github.com/ | grep "20[0-9] Found|30[0-9] Found" > /dev/null
  if [[ $? -eq 1 ]] ; then
    printf "########\n# Online, continuing $(date +"%Y-%m-%d %H:%M:%S")\n"
  else
    printf "########\n# This script needs Internet access and you are offline, exiting\n########\n"
    say " you need to be online to run this script, exiting"
    exit
  fi

  # Set some variables for username installing aegir and the OS X version
  USERNAME=${USER-$LOGNAME} #`ps -o user= $(ps -o ppid= $PPID)`
  DRUSH='drush --php=/usr/local/bin/php'
  osx=`sw_vers -productVersion`

  # Make sure that the script wasn't run as root.
  if [ $USERNAME = "root" ] ; then
    printf "########\n# This script should not be run as sudo or root. exiting.\n########\n"
    say "This script should not be run as sudo or root. exiting."
    exit
  else
    #fresh installations of mac osx does not have /user/local, so we need to create it first in case it's not there.
    printf "########\n# Checking /usr/local exists..\n"
    ls /usr/local > /dev/null 2&>1
    if [[ $? -eq 1 ]] ; then
      printf "# It doesn't so I'm creating it..\n"
      say "you may need to enter your password"
      sudo mkdir -p /usr/local
    fi
    ls -l /usr/local| awk '{print $3}'|grep root > /dev/null
    if [[ $? -eq 0 ]] ; then
      printf "# Setting it's permissions correctly..\n########\n"
      sudo chown -R $USERNAME:admin /usr/local
      chmod 775 /usr/local
    fi
  fi

  printf "########
# This script is designed to be run by the primary account
# it has not been tested on a multi user setup.
########
# You will need the following information during this script:
# -a gmail account that is configured to allow remote smtp access
# -the password for the gmail account address
# -an email address to receive notifications from aegir
# -attention to what is being requested via the script
########
# You cannot use this script if you have macports installed
# so we will uninstall it automatically
########
# OS X's inbuilt apache uses port 80 if it's running we'll disable
# it for you during install so that nginx can run on port 80.
########
# Logging install process to file on desktop in case anything
# goes wrong during install, No passwords are logged..
########\n"

  port > /dev/null 2&>1
  if [[ $? -eq 127 ]] ; then
    printf "########\n# macports isn't installed continuing..\n"
  else
    printf "########\n# Attempting to uninstall macports..\nn"
    say "you may need to enter your password"
    sudo port -fp uninstall installed > /dev/null 2&>1
    sudo rm -rf \
        /opt/local \
        /Applications/DarwinPorts \
        /Applications/MacPorts \
        /Library/LaunchDaemons/org.macports.* \
        /Library/Receipts/DarwinPorts*.pkg \
        /Library/Receipts/MacPorts*.pkg \
        /Library/StartupItems/DarwinPortsStartup \
        /Library/Tcl/darwinports1.0 \
        /Library/Tcl/macports1.0 \
        ~/.macports > /dev/null 2&>1
  fi

  ps aux|grep "httpd"|grep -v grep > /dev/null
  if [[ $? -eq 1 ]] ; then
    printf "########\n# Apache isn't installed, continuing..\n########\n"
  else
    printf "########\n# Disabling apache now..\n########\n"
    say "you may need to enter your password"
    sudo launchctl unload -w /System/Library/LaunchDaemons/org.apache.httpd.plist
  fi

  printf "\n########\n# Checking OS version..\n########\n"
  if [ $osx = 10.8.4 -o $osx = 10.8.5 -o $osx = 10.9 -o $osx = 10.9.1 -o $osx = 10.9.2 ] ; then
    printf "# Your using $osx, so let's go!\n########\n"
  else
    printf "# This hasn't been tested on $osx yet, should I continue anyway? [Y/n]\n########\n"
    read OS
    if [[ $OS =~ ^(y|Y)$ ]]; then
      printf "\n########\n# You entered Y\n########\n"
    else
      printf "\n########\n# You entered N\n########\n"
      exit
    fi
  fi
##missing lines

  printf "# Checking if the Command Line Tools are installed..\n########\n"
  if type "/usr/bin/clang" > /dev/null 2>&1; then
    printf "# They're installed."
  else
    if [ $osx = 10.9 -o $osx = 10.9.1 -o $osx = 10.9.2 ] ; then
      printf "# Your using $osx so I'll just install them for you..\n########\n"
      xcode-select --install
    else
      printf "########\n# Nope. You need the Command Line tools installed before this script will work\n\n"
      printf "# You will need to install them via the Xcode Preferences/Downloads tab:\n"
      printf "#    http://itunes.apple.com/au/app/xcode/id497799835?mt=12\n\n"
      printf "# Continue the script after you've installed them.\n# Are they now installed? [Y/n]\n########\n"
      say "input required"
      read CLT
      if ! [[ $CLT =~ ^(y|Y)$ ]]; then
        printf "# You entered N\n########\n"
        exit
      else
        printf "# You entered Y\n########\n"
      fi
    fi
  fi


  printf "\n########\n# Checking if Homebrew is installed..\n########\n"
  if type "brew" > /dev/null 2>&1; then
    printf "\n########\n# Affirmative! Lets make sure everything is up to date..\n# Just so you know, this may throw a few warnings..\n########\n"
    say "Making sure homebrew is up to date, you may see some errors in the output, thats ok."
    export PATH=/usr/local/bin:/usr/local/sbin:$PATH
    brew prune
    brew update
    brew doctor
  else
    printf "# Nope! Installing Homebrew now..\n########\n"
    say "Installing homebrew now, you'll need to hit return when prompted"
    ruby -e "$(curl -fsSL https://raw.github.com/mxcl/homebrew/go/install)"
    echo  'export PATH=/usr/local/bin:/usr/local/sbin:$PATH' >> ~/.bash_profile
    echo  'export PATH=/usr/local/bin:/usr/local/sbin:$PATH' >> ~/.zshrc
    export PATH=/usr/local/bin:/usr/local/sbin:$PATH
  fi
}