#!/bin/bash
#title           :socksProxySSH.sh
#description     :initiates SSH dynamic port forwarding and sets up 
#                 the network proxy settings for you
#author          :Gabriele Facciolo (http://linuxtoosx.blogspot.com/)
#date            :20130615
#version         :1.0
#OSX version     :Tested on OSX 10.6.8  
#usage           :socksProxySSH.sh [remoteHost [localPort (default:1080)]]

DEFAULTSSHHOST=""
DEFAULTLOCALSOCKSPORT=1080

# DEAL WITH COMMAND LINE PARAMETERS
if [ "${1}" != "" ]
then
   SSHHOST=$1
else
   SSHHOST=$DEFAULTSSHHOST
fi
if [ "${2}" != "" ]
then
   LOCALSOCKSPORT=$2
else
   LOCALSOCKSPORT=$DEFAULTLOCALSOCKSPORT
fi
# SORRY NO SSHHOST
if [ "${SSHHOST}" == "" ]
then 
   echo "${0}: initiates SSH dynamic port forwarding and "
   echo "sets up the network proxy settings for you."
   echo ""
   echo "    Usage:   ${0} [remoteHost [localPort(default:1080)]]"
   echo ""
   echo "Indicate a remoteHost, or set the DEFAULTSSHHOST variable" 
   exit 1
fi


# ENABLE SOCKS ON ACTIVE INTERFACES 
networksetup -listallnetworkservices | grep -v asterisk | while read line ; do 
t=`networksetup -getinfo "$line" | grep "IP address" | grep -v none`
if [ "$t" ]; then
   tt=`networksetup -getsocksfirewallproxy "$line" | grep -v Authenticated | grep "Enabled: No"` 
   if [ "$tt" ]; then
      echo Enabling SOCKS on $line
      networksetup -setsocksfirewallproxy "$line" localhost $LOCALSOCKSPORT
   fi
fi
done 


# OPEN CONNECTION AND INITIATE SOCKS SERVER
echo ""
echo "INITIATING SSH CONNECTION AND SOCKS SERVER..."
echo "========================================================="
echo "TO DISCONNECT FIRST HIT Ctrl-D, WAIT A SECOND THEN Ctrl-C"
echo "========================================================="
echo ""
ssh -C -D *:$LOCALSOCKSPORT $SSHHOST


# DISABLE SOCKS ON ACTIVE INTERFACES 
networksetup -listallnetworkservices | grep -v asterisk | while read line ; do 
t=`networksetup -getinfo "$line" | grep "IP address" | grep -v none`
if [ "$t" ]; then
   tt=`networksetup -getsocksfirewallproxy "$line" | grep -v Authenticated | grep "Enabled: Yes"` 
   if [ "$tt" ]; then
      echo Disabling SOCKS on $line
      networksetup -setsocksfirewallproxystate "$line" off
   fi
fi
done 