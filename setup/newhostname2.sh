# Keep-alive: update existing `sudo` time stamp until finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

if [[ -n $NEW_HOSTNAME ]]; then
  echo "MGMBPro"
  sudo scutil --set ComputerName "MGMBPro"
  sudo scutil --set HostName "MGMBPro"
  sudo scutil --set LocalHostName "MGMBPro"
  sudo defaults read /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string "MGMBPro"
else
  echo "---> !Computer name not updated; rerun with NEW_HOSTNAME set or ignore"
fi