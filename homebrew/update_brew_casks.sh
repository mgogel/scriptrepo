#!/bin/bash

caskApps=$(ls /opt/homebrew-cask/Caskroom/) # Lists the casks in the Caskroom

for app in ${caskApps}; do # For every app there, do this
    appToCheck=$(brew cask list | grep "${app}") # If the app is not present in `brew cask list`, this variable will be empty

    if [[ -z "${appToCheck}" ]]; then # If the variable is empty, then
        brew cask install --force "${app}" # Force an install of the app
    fi
done
