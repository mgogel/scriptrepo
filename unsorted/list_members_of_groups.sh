!/bin/bash

# members -- list all members of a group
#
# SYNOPSIS
#   members groupname
#
# http://superuser.com/questions/279891/list-all-members-of-a-group-mac-os-x
#  by Arne
# Expected to work on Mac OS 10.5 and newer, tested on 10.6 and 10.7.
# It could be rewritten to work on 10.4 by using "dseditgroup -o checkmember"
# instead of "dsmemberutil checkmembership".
# By using dseditgroup, the script could also be extended to handle
# other Directory Service nodes than the default local node.
#

the_group="$1"
# Input check and usage
  if [[ $# != 1 || $1 == -* || $1 =~ [[:space:]] ]]; then
    echo "Usage: ${0##*/} groupname" >&2
    echo "Lists all members of the group." >&2
    exit 64
  elif (dsmemberutil checkmembership -U root -G "$the_group" 2>&1 \
    | grep "group .* cannot be found") >&2; then
    exit 1
  fi

# Check every user
exec dscl . -list /Users \
  | while read each_username
  do
    printf "$each_username "
    dsmemberutil checkmembership -U "$each_username" -G "$the_group"
  done \
    | grep "is a member" | cut -d " " -f 1

# eof
