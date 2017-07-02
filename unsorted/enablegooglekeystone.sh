#!/usr/bin/env bash
 
sudo launchctl load /Library/LaunchDaemons/com.google.keystone.daemon.plist
sudo launchctl start com.google.keystone.daemon
osascript -e 'tell application "GoogleSoftwareUpdateAgent" to launch'
