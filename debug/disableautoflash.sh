#!/bin/bash
## Make sure script is run by root
if [[ $EUID -ne 0 ]]; then
    echo "Script must be run as root" 1>&2
    exit 1
fi

## Conf file that controls Update Settings
CONF="/Library/Application Support/Macromedia/mms.cfg"

## Set Updates to "Never Check"

cat > "${CONF}" << EOF
AutoUpdateDisable=1
SilentAutoUpdateEnable=0
EOF