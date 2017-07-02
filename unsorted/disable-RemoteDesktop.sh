#!/bin/bash

# disable RemoteDesktop
# OS X 10.8.2
# https://gist.github.com/3870057

home=$HOME
bk=$home/backup-remotedesktop-extentions
mkdir $bk

#---------------------------------------------------------------------
# Agent
#---------------------------------------------------------------------
# RemoteDesktop
launchctl unload -w /System/Library/LaunchAgents/com.apple.RemoteDesktop.plist
# Screnshare
launchctl unload -w /System/Library/LaunchAgents/com.apple.screensharing.agent.plist
# AFP
launchctl unload -w /System/Library/LaunchAgents/com.apple.afpstat.plist

#---------------------------------------------------------------------
# Daemon
#---------------------------------------------------------------------
# RemoteDesktop
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.RemoteDesktop.PrivilegeProxy.plist
# AFP
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.afpfs_checkafp.plist
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.afpfs_afpLoad.plist

#---------------------------------------------------------------------
# Extenstions
#---------------------------------------------------------------------
sudo mv /System/Library/CoreServices/RemoteManagement $bk


#---------------------------------------------------------------------
# touch
sudo touch /System/Library/Extensions

echo 'Shut Down & Restart'

