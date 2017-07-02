!/bin/sh
username="$3"

domainname=`dscl . -read /Users/$username | awk '/^OriginalNodeName:/,/^Password:/' | head -2 | tail -1 | cut -c 2- | cut -d/ -f4`
batchfilename=`/usr/bin/dscl /Search read /Users/$username SMBScriptPath | head -1 | awk '{print $2}'`

#If the domainname is still blank, report an error
if [ "$domainname" == "" ]; then
    echo "Error:  Could not obtain a domain name from dscl."
    exit 1
fi
echo "The domain name is $domainname"

#If the batchfilename is still blank, report an error.
if [ "$batchfilename" == "" ]; then
    echo "Error:  Could not obtain a batch file name from dscl."
    exit 1
fi
echo "The batch file name is $batchfilename"

#Create a path to access
batchfilelocation="//$domainname/NetLogon"
echo "Using $batchfilelocation as the batch file location"

#Check to see if the Volume is already mapped
if [ -d "/Volumes/Netlogon" ]; then
echo "Netlogon already in use"
else
    #mount Netlogon
    mkdir /Volumes/NetLogon
    mount -o nobrowse -t smbfs $batchfilelocation /Volumes/NetLogon
fi

#Put all of the file locations into an array
#IFS had to be written this way because it does not accept \n to pivot on newlines. You have to give it a newline to change it from spaces. This allows grep to dump a whole line into the array
IFS='
'
#make sure NetLogon actually mapped before trying to grep anything
if [ -d "/Volumes/Netlogon" ]; then
arr=($(grep '\\' "/Volumes/NetLogon/$batchfilename" | tr "[A-Z]" "[a-z]" | sed s:\"::g | sed s:\\\\:\/:g | sed 's| /persistent:no||g' | sed 's|net use [a-z]: ||g' | sed 's/[^a-z_/ .0-9]//g') )
else
    echo "Error: Netlogon Mount Failed"
    exit 1
fi

#process all the shares in the array
for i in "${arr[@]}"; do
    #make sure the line in the batch file was not commented out
    if [[ $i != *rem* ]] 
    then
        #Determine a volume name based on the share
        volumename=`echo $i | sed 's:\\\\: :g' | sed 's:/: :g' | awk '{print $(NF-0)}'`
        echo "Volume name will be created as $volumename"
        #Check to see if the Volume is already mapped
        if [ -d "/Volumes/$volumename" ]; then
        echo "Volume name $volumename already in use"
        else
            #Procede to mount the share
            mkdir /Volumes/$volumename
            mount -t smbfs $i /Volumes/$volumename
        fi
    fi
done
diskutil unmount /Volumes/NetLogon
exit 0

