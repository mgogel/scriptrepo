#!/bin/bash
#
# $COMMAND is the command used to create the reverse ssh tunnel
COMMAND="ssh -p $SSH_PORT -q -N -R $REMOTE_HOST:$REMOTE_HTTP_PORT:localhost:80 $USER_NAME@$REMOTE_HOST"

# Is the tunnel up? Perform two tests:

# 1. Check for relevant process ($COMMAND)
pgrep -f -x "$COMMAND" > /dev/null 2>&1 || $COMMAND

# 2. Test tunnel by looking at "netstat" output on $REMOTE_HOST
ssh -p $SSH_PORT $USER_NAME@$REMOTE_HOST netstat -an | egrep "tcp.*:$REMOTE_HTTP_PORT.*LISTEN" \
   > /dev/null 2>&1
if [ $? -ne 0 ] ; then
   pkill -f -x "$COMMAND"
   $COMMAND
fi