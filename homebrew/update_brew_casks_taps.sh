#/usr/bin/env bash
# Fix homebrew taps and simlinks

brewDir=$(brew --prefix)
taps=($(brew tap)) #Save off the current taps into an array

# Untap everything
for i in "${taps[@]}"
do
    printf "Untapping: $i\n"
    brew untap $i 2>&1 | sed "s/^/    /"
    printf "\n"
done

printf "Removing all tap formula directories and deleting all symlinks..."
rm -rf $brewDir/Library/Taps/*
find $brewDir/Library/Formula -type l -delete
printf "\n    Done.\n\n"

for i in "${taps[@]}"
do
    printf "Restoring tap: $i\n"
    brew tap $i 2>&1 | sed "s/^/    /"
    printf "\n"
done

printf "Cleaning up...\n"
brew cleanup 2>&1 | sed "s/^/    /"

printf "Find missing...\n"
brew missing 2>&1 | sed "s/^/    /"

printf "Checking for updates...\n"
brew update 2>&1 | sed "s/^/    /"

printf "\nChecking with the brew doctor...\n"
brew doctor 2>&1 | sed "s/^/    /"
