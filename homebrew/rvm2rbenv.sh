## Prepare ###################################################################

# Remove RVM
rvm implode

# Ensure your homebrew is working properly and up to date
brew doctor
brew update

## Install ###################################################################
brew install rbenv
brew install ruby-build

## Config ####################################################################

# Global git ignore
git config --global core.excludesfile ~/.gitignore
printf "vendor/bundle\n.DS_Store\n" >> ~/.gitignore

# Set default bundle path
mkdir -p ~/.bundle
printf -- "---\nBUNDLE_PATH: vendor/bundle" >> ~/.bundle/config

# Instantiate rbenv with your shell (choose preferred file - .profile, .bash_profile, .zshrc, etc)
printf 'eval "$(rbenv init -)"' >> ~/.profile

# Reload your profile
. ~/.profile

# Add autocompletion to IRB
touch ~/.irbrc

## Usage #####################################################################
rbenv

# Choose a ruby flavor version to install

# Rehash rbenv shims (run this after installing binaries)
rbenv rehash

# Set the global Ruby version and install bundler globally
rbenv global 1.9.3-p0
gem install bundler --pre
# gem install OTHER_GLOBAL_GEMS # eg) Rails, Heroku, etc - NOTE: You need to do this for each ruby version.
rbenv rehash

# Set a project specific ruby version
cd myproject
rbenv local 1.9.2-p290

# Install gems in Gemfile to vendor/bundle
cd ~/projects/newhotness
bundle

# Start app in context of bundled gems
bundle exec rails s

## RubyMine Notes ############################################################
# Open settings | Ruby SDK & Gems
# Remove ALL RVM related SDK's
# Add new Ruby SDK for project - Find path by found by running `rbenv which ruby` in project directory
# Edit launch/debug configurations | Bundler - enable/check - Run the script in the context of bundler
# Note: RubyMine debugger will install some additional needed gems into your global gem path - eg) ~/.gem/ruby/...
