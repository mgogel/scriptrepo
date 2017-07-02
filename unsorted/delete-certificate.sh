{\rtf1\ansi\ansicpg1252\cocoartf1187\cocoasubrtf390
{\fonttbl\f0\fmodern\fcharset0 Courier;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720

\f0\fs24 \cf0 #!/bin/sh\
BADDIGI=$(/usr/bin/security find-certificate -Z -e "info@diginotar.nl" /System/Library/Keychains/SystemRootCertificates.keychain | grep SHA | awk -F ": " '\{print $2\}')\
echo "Going to delete: $BADDIGIn"\
sudo /usr/bin/security delete-certificate -Z "$BADDIGI" /System/Library/Keychains/SystemRootCertificates.keychain}