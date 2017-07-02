#!/bin/sh

if [ -z "$HOME" ]; then
 echo "$0: HOME not set, cannot disable 802.1x thing. QUIT."
 exit 1
fi

if [ `whoami` = "root" ]; then
  echo "$0: Must run as regular user, not root! QUIT."
  exit 1
fi

# get host uuid
HOSTUUID=`/usr/sbin/ioreg -rd1 -c IOPlatformExpertDevice | grep -E '(UUID)' | cut -d\" -f4`
# define path to eapol prefs
PREFFILE="$HOME/Library/Preferences/ByHost/com.apple.network.eapolcontrol.$HOSTUUID.plist"

# write new setting
defaults write $PREFFILE EthernetAutoConnect -bool false
