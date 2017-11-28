#!/bin/bash

# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask


#--------------------- install common softwares ---------------------
# you can comment out any line to stop installing that software if you don't need it
# cakebrew, gui manager of homebrew
# https://www.cakebrew.com/
brew cask install cakebrew 
# browser made by google
brew cask install google-chrome
# switch app language with change system's language
# http://www.tj-hd.co.uk/en-gb/languageswitcher/
brew cask install language-switcher
# best media player for mac
# https://github.com/lhc70000/iina/
brew cask install iina
# code editor
# https://www.sublimetext.com/3
brew cask install sublime-text
# make SublimeText a commond-line shortcut "subl"
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
# dropbox cloud storage
# https://www.dropbox.com/
brew cask install dropbox
# cross platform remote control app
# https://www.teamviewer.com/
brew cask install teamviewer
# frontend dev toolkit
# https://codekitapp.com/
brew cask install codekit
# git gui 
# https://www.sourcetreeapp.com/
brew cask install sourcetree
# uninstall app and clear its associated files
# https://freemacsoft.net/appcleaner/
brew cask install appcleaner
# share a file/link in a second
# https://droplr.com/
brew cask install droplr
# little-snitch: the missing firewall for mac
# https://www.obdev.at/products/littlesnitch/index.html
#   this is a paid software, if you need it, just comment it out
# brew cask install little-snitch

# keep your Mac awake
# http://lightheadsw.com/caffeine/
brew cask install caffeine
# alfred: quick lauch utitlies
#   you need pay to unlock pro features
# https://www.alfredapp.com/
brew cask install alfred

# install quicklook plugins from https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package quicklookase qlvideo
#--------------------- install common softwares end ---------------------

# install mac app store commandline 
# https://github.com/mas-cli/mas
brew install mas

# install node for frontend develop
brew install node
# install yarn, use yarn to replace npm for project package management
brew install yarn
# Simplified and community-driven man pages
# https://github.com/tldr-pages/tldr
npm install -g tldr
# install grunt, gulp, standardjs()
npm install grunt-cli gulp standard -g

# -------------- RevokeChinaCerts ---------------------
# from https://github.com/chengr28/RevokeChinaCerts
git clone https://github.com/chengr28/RevokeChinaCerts.git RevokeChinaCerts
RevokeChinaCerts/Mac/import-trust-settings.sh
rm -rf RevokeChinaCerts
# -------------- RevokeChinaCerts end ---------------------


# -------------- install zsh ---------------------
# from https://github.com/robbyrussell/oh-my-zsh
echo "install zsh"
brew install zsh zsh-completions
# install zsh
sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
# -------------- install zsh end ---------------------
