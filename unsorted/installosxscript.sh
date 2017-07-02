# ~/.osx — http://mths.be/osx
## #!/usr/bin/env bash
# Some stuff was taken from
# https://github.com/mathiasbynens/dotfiles/blob/master/.osx
# This file was forked from https://gist.github.com/2260182
# inspired by http://mths.be/osx
# TODO: customize for myself, espin!!!!!
# root check

if [[ $EUID -ne 0 ]]; then
    echo "################################";
    echo "## YOU ARE NOT RUNNING AS ROOT #";
    echo "################################";
    echo "#";
    echo "# USAGE: sudo $0";
    exit;
fi

# select yn in "Yes" "No"; do
#     case $yn in
#         Yes )
#               break;;
#         No ) exit;;
#     esac
# done


# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

echo "This script will make your Mac awesome. Follow the prompts and you'll be fine."

echo "Happy Hacking!"

###############################################################################
# General UI/UX                                                               #
###############################################################################

echo "Want to set the computer name? (as done via System Preferences → Sharing)"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo 'What is your computer name going to be? '
              read comp_name
              scutil --set ComputerName $comp_name
              scutil --set HostName $comp_name
              scutil --set LocalHostName $comp_name
              break;;
        No ) exit;;
    esac
done

# Set computer name (as done via System Preferences → Sharing)
# machinename=$(cat $HOME/.hostname)
# machinename=${machinename:-"MGLIFE PRO"}
# sudo scutil --set ComputerName $machinename
# sudo scutil --set HostName $machinename
# sudo scutil --set LocalHostName ${machinename// /-} # substitute spaces with dashes
# sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string ${machinename// /-}
sudo defaults write /Library/Preferences/SystemConfiguration/com.apple.smb.server NetBIOSName -string ${comp_name// /-}
#########################################################


# Menu bar, hide icons for:
# - Time Machine
# - Volume 
echo "Hide the useless Time Machine, Volume, Bluetooth and Spotlight icons? "
select yn in "Yes" "No"; do
    case $yn in
        Yes ) defaults write com.apple.systemuiserver menuExtras -array "/System/Library/CoreServices/Menu Extras/Bluetooth.menu" "/System/Library/CoreServices/Menu Extras/AirPort.menu" "/System/Library/CoreServices/Menu Extras/Battery.menu" "/System/Library/CoreServices/Menu Extras/Clock.menu"
              sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search
              break;;
        No ) exit;;
    esac
done


# Set highlight color to green
defaults write NSGlobalDomain AppleHighlightColor -string '0.764700 0.976500 0.568600'

# Set sidebar icon size to medium
defaults write NSGlobalDomain NSTableViewDefaultSizeMode -int 2

# Always show scrollbars
defaults write NSGlobalDomain AppleShowScrollBars -string "Always"

echo "Increasing the window resize speed for Cocoa applications whether you like it or not"
defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

echo "Expanding the save panel by default"
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true

echo "Expand print panel by default"
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# Automatically quit printer app once the print jobs complete
defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# Save to disk (not to iCloud) by default
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

echo "Disable the 'Are you sure you want to open this application?' dialog"
defaults write com.apple.LaunchServices LSQuarantine -bool false

echo "Display ASCII control characters using caret notation in standard text views"
# Try e.g. `cd /tmp; unidecode "\x{0000}" > cc.txt; open -e cc.txt`
echo "Do some ASCII shit"
defaults write NSGlobalDomain NSTextShowsControlCharacters -bool true

# Disable Resume system-wide
echo "Do you want to disable the stupid system-wide resume?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Yay, you made the right choice! Disabling system-wide resume"
            defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false
              break;;
        No ) exit;;
    esac
done

# Disable automatic termination of inactive apps
echo "OSX Y U TERMINATE INACTIVE APPS? DO NOT DO THAT"
defaults write NSGlobalDomain NSDisableAutomaticTermination -bool true


# Reveal IP address, hostname, OS version, etc. when clicking the clock
# in the login window
sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName


###############################################################################
# Trackpad, mouse, keyboard, Bluetooth accessories, and input                 #
###############################################################################

echo "Enable tap to click (Trackpad)"
# Trackpad: enable tap to click for this user and for the login screen
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool true
defaults -currentHost write NSGlobalDomain com.apple.mouse.tapBehavior -int 1
defaults write NSGlobalDomain com.apple.mouse.tapBehavior -int 1

echo "Map bottom right Trackpad corner to right-click"
# Trackpad: map bottom right corner to right-click
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadCornerSecondaryClick -int 2
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadRightClick -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.trackpadCornerClickBehavior -int 1
defaults -currentHost write NSGlobalDomain com.apple.trackpad.enableSecondaryClick -bool true


# Trackpad: swipe between pages with three fingers
defaults write NSGlobalDomain AppleEnableSwipeNavigateWithScrolls -bool true
defaults -currentHost write NSGlobalDomain com.apple.trackpad.threeFingerHorizSwipeGesture -int 1
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadThreeFingerHorizSwipeGesture -int 1

echo "Increasing sound quality for Bluetooth headphones/headsets, because duhhhhh"
defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

echo "Why is this not default anymore?! Enabling full keyboard access for all controls (e.g. enable Tab in modal dialogs)"
defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

echo "Disabling press-and-hold for keys in favor of key repeat and setting a blazingly fast keyboard repeat rate (ain't nobody got time fo special chars while coding!)"
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
defaults write NSGlobalDomain KeyRepeat -int 0

# Allow key holding
defaults write -g ApplePressAndHoldEnabled -bool false

echo "I don't even... (disabling auto-correct)"
defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

echo "Set a shorter Delay until key repeat"
defaults write NSGlobalDomain InitialKeyRepeat -int 12

# Disable “natural” (Lion-style) scrolling
# defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# TODO: avoid GUI password prompt somehow (http://apple.stackexchange.com/q/60476/4408)
# sudo osascript -e 'tell application "System Events" to set UI elements enabled to true'

# Enable access for assistive devices
echo -n 'a' | sudo tee /private/var/db/.AccessibilityAPIEnabled > /dev/null 2>&1
sudo chmod 444 /private/var/db/.AccessibilityAPIEnabled


# Automatically illuminate built-in MacBook keyboard in low light
defaults write com.apple.BezelServices kDim -bool true
# Turn off keyboard illumination when computer is not used for 5 minutes
defaults write com.apple.BezelServices kDimTime -int 300

# Use scroll gesture with the Ctrl (^) modifier key to zoom
defaults write com.apple.universalaccess closeViewScrollWheelToggle -bool true
defaults write com.apple.universalaccess HIDScrollZoomModifierMask -int 262144
# Follow the keyboard focus while zoomed in
defaults write com.apple.universalaccess closeViewZoomFollowsFocus -bool true


# Set language and text formats
# Note: if you’re in the US, replace `EUR` with `USD`, `Centimeters` with
# `Inches`, `en_GB` with `en_US`, and `true` with `false`.
defaults write NSGlobalDomain AppleLanguages -array "en"
defaults write NSGlobalDomain AppleLocale -string "en_US@currency=USD"
defaults write NSGlobalDomain AppleMeasurementUnits -string "Inches"
defaults write NSGlobalDomain AppleMetricUnits -bool true

# Set the timezone; see `systemsetup -listtimezones` for other values
systemsetup -settimezone "America/New_York" > /dev/null

###############################################################################
# Screen                                                                      #
###############################################################################

echo "I'm in yer computer, hax0ring yr passwords!"
echo "Requiring password immediately after sleep or screen saver begins"
defaults write com.apple.screensaver askForPassword -int 1
defaults write com.apple.screensaver askForPasswordDelay -int 0

echo "Where do you want screenshots to be stored? (hit ENTER if you want ~/Desktop as default)"
read screenshot_location
if [ -z "$1" ]
then
    echo "Setting location to ~/Desktop"
    defaults write com.apple.screencapture location -string "$HOME/Desktop"
else
    echo "Setting location to ~/$screenshot_location"
    defaults write com.apple.screencapture location -string "$HOME/$screenshot_location"
fi

echo "What format should screenshots be saved as? (options: BMP, GIF, JPG, PDF, TIFF) "
read screenshot_format
if [ -z "$1" ]
then
    echo "Setting screenshot format to PNG"
    defaults write com.apple.screencapture type -string "png"
else
    echo "Setting screenshot format to $screenshot_format"
    defaults write com.apple.screencapture type -string "$screenshot_format"
fi

echo "Enabling subpixel font rendering on non-Apple LCDs"
defaults write NSGlobalDomain AppleFontSmoothing -int 2

# Enable HiDPI display modes (requires restart)
sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

###############################################################################
# Finder                                                                      #
###############################################################################

echo "Show icons for hard drives, servers, and removable media on the desktop?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
              break;;
        No ) exit;;
    esac
done

defaults write com.apple.finder ShowHardDrivesOnDesktop -bool false
defaults write com.apple.finder ShowMountedServersOnDesktop -bool true
defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

echo "Finder: show hidden files by default?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) defaults write com.apple.Finder AppleShowAllFiles -bool true
              break;;
        No ) exit;;
    esac
done

echo "Enable the 2D Dock?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) defaults write com.apple.dock no-glass -bool true
              break;;
        No ) exit;;
    esac
done

echo "Make Dock icons of hidden applications translucent?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) defaults write com.apple.dock showhidden -bool true
              break;;
        No ) exit;;
    esac
done

echo "Show dotfiles in Finder?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) defaults write com.apple.finder AppleShowAllFiles TRUE
              break;;
        No ) exit;;
    esac
done

echo "Finder: show all filename extensions?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) defaults write NSGlobalDomain AppleShowAllExtensions -bool true
              break;;
        No ) exit;;
    esac
done

echo "Disable menu bar transparency?"
select yn in "Yes" "No"; do
    case $yn in
        No ) defaults write NSGlobalDomain AppleEnableMenuBarTransparency -bool false
              break;;
        Yes ) exit;;
    esac
done

echo "Finder: show status bar?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) defaults write com.apple.finder ShowStatusBar -bool true
              break;;
        No ) exit;;
    esac
done

echo "FindFinder: show path bar?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) defaults write com.apple.finder ShowPathbar -bool true
              break;;
        No ) exit;;
    esac
done

echo "Allow quitting Finder via ⌘ + Q; doing so will also hide desktop icons?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) defaults write com.apple.finder QuitMenuItem -bool true
              break;;
        No ) exit;;
    esac
done

echo "Finder: allow text selection in Quick Look/Preview?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) defaults write com.apple.finder QLEnableTextSelection -bool true
              break;;
        No ) exit;;
    esac
done

echo "Display full POSIX path as Finder window title?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) defaults write com.apple.finder _FXShowPosixPathInTitle -bool true
              break;;
        No ) exit;;
    esac
done

echo "Disable the warning when changing a file extension?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
              break;;
        No ) exit;;
    esac
done



# When performing a search, search the current folder by default
defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# Enable spring loading for directories
defaults write NSGlobalDomain com.apple.springing.enabled -bool true

echo "Avoiding creating stupid .DS_Store files on network volumes"
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true


# Use list view in all Finder windows by default
# Four-letter codes for the other view modes: `icnv`, `clmv`, `Flwv`
# defaults write com.apple.finder FXPreferredViewStyle -string "Nlsv"

echo "Enable AirDrop over Ethernet and on unsupported Macs running Lion"
defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

echo "Disable disk image verification?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) defaults write com.apple.frameworks.diskimages skip-verify -bool true
              defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
              defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true
              break;;
        No ) exit;;
    esac
done

echo "Automatically open a new Finder window when a volume is mounted?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
              defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
              defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true
              break;;
        No ) exit;;
    esac
done

echo "Enable snap-to-grid for icons on the desktop and in other icon views?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) /usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
              /usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
              /usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
              break;;
        No ) exit;;
    esac
done


# Show item info near icons on the desktop and in other icon views
# /usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
# /usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
# /usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist

# Show item info to the right of the icons on the desktop
# /usr/libexec/PlistBuddy -c "Set DesktopViewSettings:IconViewSettings:labelOnBottom false" ~/Library/Preferences/com.apple.finder.plist

# Enable snap-to-grid for icons on the desktop and in other icon views
# /usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
# /usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
# /usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

# Increase grid spacing for icons on the desktop and in other icon views
# /usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist
# /usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist
# /usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:gridSpacing 100" ~/Library/Preferences/com.apple.finder.plist

# Increase the size of icons on the desktop and in other icon views
# /usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:iconSize 80" ~/Library/Preferences/com.apple.finder.plist
# /usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:iconSize 80" ~/Library/Preferences/com.apple.finder.plist
# /usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:iconSize 80" ~/Library/Preferences/com.apple.finder.plist


# Disable the warning before emptying the Trash
defaults write com.apple.finder WarnOnEmptyTrash -bool false

echo "Setting Trash to empty securely by default"
defaults write com.apple.finder EmptyTrashSecurely -bool true

echo "Show the ~/Library folder?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) chflags nohidden ~/Library
              break;;
        No ) exit;;
    esac
done



###############################################################################
# Dock & hot corners                                                          #
###############################################################################

echo "Setting the icon size of Dock items to 36 pixels for optimal size/screen-realestate"
defaults write com.apple.dock tilesize -int 36

echo "Speeding up Mission Control animations and grouping windows by application"
defaults write com.apple.dock expose-animation-duration -float 0.1
defaults write com.apple.dock "expose-group-by-app" -bool true

echo "Setting Dock to auto-hide and removing the auto-hiding delay"
defaults write com.apple.dock autohide -bool true
defaults write com.apple.Dock autohide-delay -float 0
defaults write com.apple.dock autohide-time-modifier -float 0

echo "Disable shadow in screenshots"
defaults write com.apple.screencapture disable-shadow -bool true

echo "Enable highlight hover effect for the grid view of a stack (Dock)"
defaults write com.apple.dock mouse-over-hilte-stack -bool true

echo "Enable spring loading for all Dock items"
defaults write enable-spring-load-actions-on-all-items -bool true

echo "Show indicator lights for open applications in the Dock"
defaults write com.apple.dock show-process-indicators -bool true


# Add a spacer to the left side of the Dock (where the applications are)
#defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
# Add a spacer to the right side of the Dock (where the Trash is)
#defaults write com.apple.dock persistent-others -array-add '{tile-data={}; tile-type="spacer-tile";}'


# Don’t group windows by application in Mission Control
# (i.e. use the old Exposé behavior instead)
#defaults write com.apple.dock expose-group-by-app -bool false

# Disable Dashboard
#defaults write com.apple.dashboard mcx-disabled -bool true

# Don’t show Dashboard as a Space
defaults write com.apple.dock dashboard-in-overlay -bool true

# Don’t automatically rearrange Spaces based on most recent use
defaults write com.apple.dock mru-spaces -bool false

# Add a spacer to the left side of the Dock (where the applications are)
#defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
# Add a spacer to the right side of the Dock (where the Trash is)
#defaults write com.apple.dock persistent-others -array-add '{tile-data={}; tile-type="spacer-tile";}'

# Hot corners
# Possible values:
#  0: no-op
#  2: Mission Control
#  3: Show application windows
#  4: Desktop
#  5: Start screen saver
#  6: Disable screen saver
#  7: Dashboard
# 10: Put display to sleep
# 11: Launchpad
# 12: Notification Center
# Top left screen corner → Mission Control
# tl = [t]op [l]eft; br = [b]ottom [r]ight ...
defaults write com.apple.dock wvous-tl-corner -int 2
defaults write com.apple.dock wvous-tl-modifier -int 0
# Top right screen corner → Desktop
defaults write com.apple.dock wvous-tr-corner -int 4
defaults write com.apple.dock wvous-tr-modifier -int 0
# Bottom left screen corner → Start screen saver
defaults write com.apple.dock wvous-bl-corner -int 5
defaults write com.apple.dock wvous-bl-modifier -int 0

###############################################################################
# Startup                                                                     #
###############################################################################
# Restart automatically if the computer freezes
# systemsetup -setrestartfreeze on

# Never go into computer sleep mode
# systemsetup -setcomputersleep Off > /dev/null

# Check for software updates daily, not just once per week
defaults write com.apple.SoftwareUpdate ScheduleFrequency -int 1

###############################################################################
# Safari & WebKit                                                             #
###############################################################################

echo "Disabling Safari’s thumbnail cache for History and Top Sites"
defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

echo "Enabling Safari’s debug menu"
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

echo "Making Safari’s search banners default to Contains instead of Starts With"
defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

# Set Safari’s home page to `about:blank` for faster loading
defaults write com.apple.Safari HomePage -string "about:blank"

# Prevent Safari from opening ‘safe’ files automatically after downloading
defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

echo "Removing useless icons from Safari’s bookmarks bar"
defaults write com.apple.Safari ProxiesInBookmarksBar "()"

echo "Enabling the Develop menu and the Web Inspector in Safari"
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari "com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled" -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2BackspaceKeyNavigationEnabled -bool true

echo "Adding a context menu item for showing the Web Inspector in web views"
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# Hide Safari’s bookmarks bar by default
defaults write com.apple.Safari ShowFavoritesBar -bool false

###############################################################################
# Address Book, Dashboard, iCal, iTunes, Mail, and Disk Utility               #
###############################################################################

echo "Enabling Dashboard dev mode (allows keeping widgets on the desktop)"
defaults write com.apple.dashboard devmode -bool true

echo "Copy email addresses as 'foo@example.com' instead of 'Foo Bar <foo@example.com>' in Mail.app?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false
              break;;
        No ) exit;;
    esac
done

echo "Enabling the debug menu in Disk Utility"

# Enable the debug menu in Disk Utility
defaults write com.apple.DiskUtility DUDebugMenuEnabled -bool true
defaults write com.apple.DiskUtility advanced-image-options -bool true


###############################################################################
# iTunes                                                                      #
###############################################################################

# Disable the iTunes store link arrows
defaults write com.apple.iTunes show-store-link-arrows -bool false

# Disable the Genius sidebar in iTunes
defaults write com.apple.iTunes disableGeniusSidebar -bool true

# Disable the Ping sidebar in iTunes
defaults write com.apple.iTunes disablePingSidebar -bool true

# Disable all the other Ping stuff in iTunes
defaults write com.apple.iTunes disablePing -bool true

# Disable radio stations in iTunes
defaults write com.apple.iTunes disableRadio -bool true

# Make ⌘ + F focus the search input in iTunes
# To use these commands in another language, browse iTunes’s package contents,
# open `Contents/Resources/your-language.lproj/Localizable.strings`, and look
# for `kHiddenMenuItemTargetSearch`.
defaults write com.apple.iTunes NSUserKeyEquivalents -dict-add "Target Search Field" "@F"

###############################################################################
# Mail                                                                        #
###############################################################################

# Disable send and reply animations in Mail.app
defaults write com.apple.mail DisableReplyAnimations -bool true
defaults write com.apple.mail DisableSendAnimations -bool true

# Copy email addresses as `foo@example.com` instead of `Foo Bar <foo@example.com>` in Mail.app
defaults write com.apple.mail AddressesIncludeNameOnPasteboard -bool false

# Add the keyboard shortcut ⌘ + Enter to send an email in Mail.app
defaults write com.apple.mail NSUserKeyEquivalents -dict-add "Send" "@\\U21a9"

###############################################################################
# Mac App Store                                                               #
###############################################################################

# Enable the WebKit Developer Tools in the Mac App Store
defaults write com.apple.appstore WebKitDeveloperExtras -bool true

# Enable Debug Menu in the Mac App Store
defaults write com.apple.appstore ShowDebugMenu -bool true

###############################################################################
# Google Chrome & Google Chrome Canary                                        #
###############################################################################

# Allow installing user scripts via GitHub or Userscripts.org
defaults write com.google.Chrome ExtensionInstallSources -array "https://*.github.com/*" "http://userscripts.org/*"
defaults write com.google.Chrome.canary ExtensionInstallSources -array "https://*.github.com/*" "http://userscripts.org/*"

###############################################################################
# Terminal                                                                    #
###############################################################################

echo "Enabling UTF-8 ONLY in Terminal.app and setting the Pro theme by default"
defaults write com.apple.terminal StringEncodings -array 4
defaults write com.apple.Terminal "Default Window Settings" -string "Pro"
defaults write com.apple.Terminal "Startup Window Settings" -string "Pro"


# Use the solarized color settings
# open "$HOME/git/solarized/osx-terminal.app-colors-solarized/Solarized Light ansi.terminal"
# sleep 1 # Wait a bit to make sure the theme is loaded
# defaults write com.apple.terminal "Default Window Settings" -string "Solarized Light ansi"
# defaults write com.apple.terminal "Startup Window Settings" -string "Solarized Light ansi"

###############################################################################
# iTerm2                                                                      #
###############################################################################
# use UTF-8 in iTerm2.app
# defaults write com.apple.terminal StringEncodings -array 4

# # Use a modified version of the Pro theme by default in Terminal.app
# open "$HOME/git/solarized/iterm2-colors-solarized/Light.itermcolors"
# sleep 1 # Wait a bit to make sure the theme is loaded
# defaults write com.googlecode.iterm2 "Default Window Settings" -string "Solarized Light ansi"
# defaults write com.googlecode.iterm2 "Startup Window Settings" -string "Solarized Light ansi"

# Enable “focus follows mouse” for Terminal.app and all X11 apps
# i.e. hover over a window and start typing in it without clicking first
#defaults write com.apple.terminal FocusFollowsMouse -bool true
#defaults write org.x.X11 wm_ffm -bool true

###############################################################################
# Time Machine                                                                #
###############################################################################

echo "Preventing Time Machine from prompting to use new hard drives as backup volume"
defaults write com.apple.TimeMachine DoNotOfferNewDisksForBackup -bool true

echo "Disabling local Time Machine backups"
hash tmutil &> /dev/null && sudo tmutil disablelocal

###############################################################################
# Personal Additions                                                          #
###############################################################################
echo "Deleting space hogging sleep image and disabling"
rm /private/var/vm/sleepimage
pmset -a hibernatemode 0

echo "Speed up wake from sleep to 24 hours from an hour"
# http://www.cultofmac.com/221392/quick-hack-speeds-up-retina-macbooks-wake-from-sleep-os-x-tips/
pmset -a standbydelay 86400

echo "Disable OS X logging of downloaded files? (highly advised)"
echo "For more info visit http://www.macgasm.net/2013/01/18/good-morning-your-mac-keeps-a-log-of-all-your-downloads/"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) defaults write com.apple.LaunchServices LSQuarantine -bool NO
              break;;
        No ) exit;;
    esac
done

###############################################################################
# Sublime Text 2                                                              #
###############################################################################
echo "Do you use Sublime Text as your editor of choice and is it installed?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Linking Sublime Text 2 command line"
              ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /bin/subl
              echo "Setting Git to use Sublime Text 2 as default editor"
              git config --global core.editor "subl -n -w"
              break;;
        No ) exit;;
    esac
done



###############################################################################
# Address Book, Dashboard, iCal, TextEdit, and Disk Utility                   #
###############################################################################

# Enable the debug menu in Address Book
defaults write com.apple.addressbook ABShowDebugMenu -bool true

# Enable Dashboard dev mode (allows keeping widgets on the desktop)
defaults write com.apple.dashboard devmode -bool true

# Enable the debug menu in iCal (pre-10.8)
defaults write com.apple.iCal IncludeDebugMenu -bool true

# Use plain text mode for new TextEdit documents
defaults write com.apple.TextEdit RichText -int 0
# Open and save files as UTF-8 in TextEdit
defaults write com.apple.TextEdit PlainTextEncoding -int 4
defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4


###############################################################################
# DROPBOX                                                                     #
###############################################################################
echo "Remove Dropbox’s green checkmark icons in Finder"
file=/Applications/Dropbox.app/Contents/Resources/check.icns
[ -e "$file" ] && mv -f "$file" "$file.bak"
unset file

# Remove Dropbox’s green checkmark icons in Finder
# file=/Applications/Dropbox.app/Contents/Resources/emblem-dropbox-uptodate.icns
# [ -e "$file" ] && mv -f "$file" "$file.bak"

###############################################################################
# Git                                                                         #
###############################################################################
echo "Create a nicely formatted git log command accessible via 'git lg'?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) echo "Creating nice git log command"
              git config --global alias.lg "log --graph --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --date=relative"
              break;;
        No ) exit;;
    esac
done

echo "Reset Launchpad?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) find ~/Library/Application\ Support/Dock -name "*.db" -maxdepth 1 -delete
              break;;
        No ) exit;;
    esac
done


###############################################################################
# Twitter.app                                                                 #
###############################################################################
# # Disable smart quotes as it’s annoying for code tweets
# defaults write com.twitter.twitter-mac AutomaticQuoteSubstitutionEnabled -bool false

# # Show the app window when clicking the menu icon
# defaults write com.twitter.twitter-mac MenuItemBehavior -int 1

# # Enable the hidden ‘Develop’ menu
# defaults write com.twitter.twitter-mac ShowDevelopMenu -bool true

# # Open links in the background
# defaults write com.twitter.twitter-mac openLinksInBackground -bool true

# # Allow closing the ‘new tweet’ window by pressing `Esc`
# defaults write com.twitter.twitter-mac ESCClosesComposeWindow -bool true

# # Show full names rather than Twitter handles
# defaults write com.twitter.twitter-mac ShowFullNames -bool true

# # Hide the app in the background if it’s not the front-most window
# defaults write com.twitter.twitter-mac HideInBackground -bool true


###############################################################################
# Transmission.app                                                            #
###############################################################################

# Use `~/Documents/Torrents` to store incomplete downloads
defaults write org.m0k.transmission UseIncompleteDownloadFolder -bool true
defaults write org.m0k.transmission IncompleteDownloadFolder -string "${HOME}/Documents/Torrents"

# Don’t prompt for confirmation before downloading
defaults write org.m0k.transmission DownloadAsk -bool false

# Trash original torrent files
defaults write org.m0k.transmission DeleteOriginalTorrent -bool true

# Hide the donate message
defaults write org.m0k.transmission WarningDonate -bool false
# Hide the legal disclaimer
defaults write org.m0k.transmission WarningLegal -bool false


###############################################################################
# Spotlight                                                                   #
###############################################################################

# Hide Spotlight tray-icon (and subsequent helper)
#sudo chmod 600 /System/Library/CoreServices/Search.bundle/Contents/MacOS/Search
# Disable Spotlight indexing for any volume that gets mounted and has not yet
# been indexed before.
# Use `sudo mdutil -i off "/Volumes/foo"` to stop indexing any volume.
sudo defaults write /.Spotlight-V100/VolumeConfiguration Exclusions -array "/Volumes"
# Change indexing order and disable some file types
defaults write com.apple.spotlight orderedItems -array \
  '{"enabled" = 1;"name" = "APPLICATIONS";}' \
  '{"enabled" = 1;"name" = "SYSTEM_PREFS";}' \
  '{"enabled" = 1;"name" = "DIRECTORIES";}' \
  '{"enabled" = 1;"name" = "PDF";}' \
  '{"enabled" = 1;"name" = "FONTS";}' \
  '{"enabled" = 0;"name" = "DOCUMENTS";}' \
  '{"enabled" = 0;"name" = "MESSAGES";}' \
  '{"enabled" = 0;"name" = "CONTACT";}' \
  '{"enabled" = 0;"name" = "EVENT_TODO";}' \
  '{"enabled" = 0;"name" = "IMAGES";}' \
  '{"enabled" = 0;"name" = "BOOKMARKS";}' \
  '{"enabled" = 0;"name" = "MUSIC";}' \
  '{"enabled" = 0;"name" = "MOVIES";}' \
  '{"enabled" = 0;"name" = "PRESENTATIONS";}' \
  '{"enabled" = 0;"name" = "SPREADSHEETS";}' \
  '{"enabled" = 0;"name" = "SOURCE";}'
# Load new settings before rebuilding the index
killall mds
# Make sure indexing is enabled for the main volume
sudo mdutil -i on /
# Rebuild the index from scratch
sudo mdutil -E /

for app in "Address Book" "Calendar" "Contacts" "Dashboard" "Dock" "Finder" \
  "Mail" "Safari" "SizeUp" "SystemUIServer" "Terminal" "Transmission" \
  "Twitter" "iCal" "iTunes"; do
  killall "$app" > /dev/null 2>&1
done
echo "Done. Note that some of these changes require a logout/restart to take effect."

# Restart Dock
killall Dock
###############################################################################
# Kill affected applications                                                  #
###############################################################################

echo ""
echo "Done!"
echo ""
echo ""
echo "###############################################################################"
echo ""
echo ""
echo "Note that some of these changes require a logout/restart to take effect."
echo "Killing some open applications in order to take effect."
for app in Finder Dock Mail Safari iTunes iCal Address\ Book SystemUIServer Twitter; do
    killall "$app" > /dev/null 2>&1
done
