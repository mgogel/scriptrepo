#!/usr/bin/env bash
 
osascript -e 'tell application "GoogleSoftwareUpdateAgent" to quit'
sudo launchctl unload /Library/LaunchDaemons/com.google.keystone.daemon.plist