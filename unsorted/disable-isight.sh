#!/bin/bash

# Disable iSight
# OS X 10.8.2

home=$HOME
bk=$home/backup-isight-extentions
mkdir $bk

#---------------------------------------------------------------------
# Extenstions
#---------------------------------------------------------------------
# Disable iSight
sudo mv /System/Library/Extensions/Apple_iSight.kext $bk
sudo mv /System/Library/Extensions/IOUSBFamily.kext/Contents/PlugIns/AppleUSBVideoSupport.kext/ $bk

#---------------------------------------------------------------------
# touch
sudo touch /System/Library/Extensions

echo 'Shut Down & Start'

