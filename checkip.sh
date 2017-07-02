#!/bin/sh
#getting the first 7 bytes of the IP address to see if the address is internal or external
en0ipsuffix=$((ifconfig en0 inet) | grep inet | cut -d" " -f2 | cut -b1-7)
en1ipsuffix=$((ifconfig en1 inet) | grep inet | cut -d" " -f2 | cut -b1-7)

#get the logged in user
user=$3

if [ "$user" = "" ]; then
    echo "Error:  This script must be run at the login trigger.  Please correct the trigger that is being used to run the policy."
    exit 1
fi

#error handling to make sure we have retrieved at least one good IP address
if [ "$en0ipsuffix" = "" ] && [ "$en1ipsuffix" = "" ]; then
    echo "Error did not retrieve an IP address"
    exit 1
fi


#determine if one or more ip address is internal    
if [ "$en0ipsuffix" = "138.237" ] || [ "$en1ipsuffix" = "138.237" ] ; then
    echo "Computer is on the internal network, leaving SUS settings alone"
    exit 0
else
    echo "Computer is on an external network, changing SUS back to default"
    #delete the managed preferences that set the SUS to internal servers (must be run as root)
    defaults delete "/Library/Managed Preferences/com.apple.SoftwareUpdate" CatalogURL
    defaults delete "/Library/Managed Preferences/$user/com.apple.SoftwareUpdate" CatalogURL
fi


exit 0
