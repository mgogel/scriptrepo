[ -z "$VARIABLE" ] && VARIABLE="abc"

if env | grep -q ^VARIABLE=
then
  echo env variable is already exported
else
  echo env variable was not exported, but now it is
  export VARIABLE
fi