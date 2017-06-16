#!/usr/bin/env bash
#

brew install gnu-sed
sudo gem pristine --all --no-extensions
gems=$(gem -v 2>&1 | grep called | sed -r -e 's#^.*specifications/##' -e 's/-[0-9].*$//')

for gem in $gems
do
  echo Fixing $gem...
  sudo gem pristine $gem -- -build-arg
done