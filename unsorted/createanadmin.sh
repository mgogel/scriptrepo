#!/bin/sh
. /etc/rc.common
dscl . create /Users/administrator
dscl . create /Users/administrator RealName "Administrator Account"
dscl . create /Users/administrator hint "Password Hint"
dscl . create /Users/administrator picture "/Path/To/Picture.png"
dscl . passwd /Users/administrator thisistheaccountpassword
dscl . create /Users/administrator UniqueID 501
dscl . create /Users/administrator PrimaryGroupID 80
dscl . create /Users/administrator UserShell /bin/bash
dscl . create /Users/administrator NFSHomeDirectory /Users/administrator
cp -R /System/Library/User\ Template/English.lproj /Users/administrator
chown -R administrator:staff /Users/administrator

