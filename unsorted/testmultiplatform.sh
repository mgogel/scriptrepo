#!/bin/bash
if [ -x "/usr/local/bin/uname" ]; then
    uname="/usr/local/bin/uname"
elif [ -x "/opt/local/bin/uname" ]; then
    uname="/opt/local/bin/uname"
elif [ -x "/bin/uname" ]; then
    uname="/bin/uname"
elif [ -x "/usr/bin/uname" ]; then
    uname="/usr/bin/uname"
else
    echo "$0: command: uname not found"
fi
echo "Platform = `$uname`"
