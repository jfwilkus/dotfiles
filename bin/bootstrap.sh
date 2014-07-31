#!/bin/bash

xcode-select --install

ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"

brew install wget
brew install gnupg
brew install git
brew install rbenv
brew install ruby-build

brew tap homebrew/binary

brew install packer

brew tap phinze/cask

brew install brew-cask

brew cask install alfred
brew cask alfred link

brew cask install virtualbox
brew cask install vagrant

brew cask install firefox
brew cask install google-chrome
brew cask install sublime-text
brew cask install harvest
brew cask install evernote
brew cask install kindle
brew cask install rdio

curl -L http://install.perlbrew.pl | bash

source ~/.bashrc

perlbrew install perl-5.18.2

rbenv install 2.1.0

