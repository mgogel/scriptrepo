#!/bin/bash

/sbin/mount -uw /

software=$(sw_vers -productVersion)

shortresult=${software:0:4}

result=$(echo "$shortresult > 10.6" | bc)

if [ result="1" ]; then
	#10.7+
	echo "MORE"
		launchctl load /System/Library/LaunchDaemons/com.apple.opendirectoryd.plist
	else
	#10.6-
	echo "LESS"
		launchctl load /System/Library/LaunchDaemons/com.apple.DirectoryServices.plist
	fi

echo "Found the following users:"
ls -1 /Users/ | grep -v "Shared" | grep -v "Deleted Users" | grep -v "\."
declare -a userarray
userarray=( `ls /Users/ | grep -v "Shared" | grep -v "Deleted Users" | grep -v "\."` )
for (( i = 0 ; i < ${#userarray[@]} ; i++ ));
do
	   echo -n "Delete user ${userarray[i]} (Y/N)?: "
           read -n 1 answer
           case "$answer" in
		y|Y)
		   rm -Rf "/Users/${userarray[i]}"
		   dscl . -delete "/Users/${userarray[i]}"
		   echo ""
                   echo "${userarray[i]} deleted."
		;;
		n|N)
		    echo ""
                    echo "${userarray[i]} NOT deleted."
		;;
		*)
  		    echo ""
                    echo "$answer unknown. Please answer Y or N."
		    let i=(i-1)
		;;
           esac
   echo ""
done
rm -Rf "/Users/Deleted Users/"
if [ -d /var/db/dslocal ]; then
     rm -Rf /var/db/dslocal
     mkdir -p /var/db/dslocal/nodes
     cp -Rp /System/Library/DirectoryServices/DefaultLocalDB/Default /var/db/dslocal/nodes/
fi
rm -rf /private/var/db/netinfo
rm -rf /private/var/db/openldap
rm -rf /private/var/db/samba
rm -rf /private/var/db/dhcpclient
rm /var/db/.AppleSetupDone
rm -rf /Library/Preferences/*
rm -rf /Library/Logs/*
rm -rf /private/var/log/*
rm -rf /Library/Caches/*
rm -rf /System/Library/Caches/*
rm /private/var/vm/swapfile*
rm -rf /private/var/folders/*
rm /missinglegoldencat
rm -rf /private/var/root/*

echo "MissingLeGoldenCat successfully removed user databases."
echo ""
echo "Press any key to shutdown."
read -n 1 nothing
/sbin/fsck -fy
shutdown -h now
