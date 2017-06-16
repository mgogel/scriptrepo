## BREW CLEANUP
brew cleanup --force -s
rm -rf $(brew --cache)
rm -rf "$(brew --cache)/*"
mkdir /Library/Caches/Homebrew/
chgrp -R admin /Library/Caches/Homebrew
chmod -R g+w /Library/Caches/Homebrew
brew update
brew cask update && brew cask doctor && brew cask cleanup
brew update && brew upgrade && brew doctor && brew cleanup
brew tap --repair
brewupdate
brew doctor
brew prune


for app in $(brew list); do
        brew install "${app}"; brew missing "${app}"; brew audit "${app}"; brew upgrade "${app}"
done

for app in $(brew cask list); do
    brew cask install "${app}"
done
for app in $(brew cask list); do
    brew cask audit "${app}"
done

for app in $(brew  list); do
    brew  test "${app}"
done

rm /usr/local/Library/Formula/abstract-php-extension.rb /usr/local/Library/Formula/abstract-php-extension.rb  /usr/local/Library/Formula/abstract-php-version.rb
brew doctor
brew update
