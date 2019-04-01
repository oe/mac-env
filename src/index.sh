#!/bin/bash

# colors
red='\033[0;31m'
green='\033[0;32m'
grey='\033[0;37m'

isCmdInstalled() {
	if [ $(which $1) ]; then
		echo 1
	else
		echo 0
	fi
}

installBrew() {
  if [ 1 -eq $(isCmdInstalled brew) ]; then
    echo -e "${grey}[skipped] homebrew has been installed\n"
  else
    echo -e "${green}install homebrew (press enter if it paused, enter your passcode if it asked)..." 
    # install homebrew
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    brew install caskroom/cask/brew-cask
    brew tap caskroom/cask
  fi
}

essentialApps=(
  "wget (alernative curl tools)"
  "cakebrew (gui manager for homebrew)"
  "google-chrome (browser made by google)"
  "language-switcher (switch app language anytime)"
  "iina (best media player for mac)"
  "dropbox (dropbox cloud storage)"
  "droplr (share a file/link in a second)"
  "teamviewer (cross platform remote control app)"
  "codekit (frontend dev toolkit)"
  "sourcetree (git gui )"
  "appcleaner (uninstall app and clear its associated files)"
  "little-snitch (the missing firewall for mac, paid software)"
  "caffeine (keep your Mac awake)"
  "alfred (quick lauch utitlies)"
  # qlcolorcode qlstephen qlmarkdown quicklook-json betterzip qlimagesize webpquicklook suspicious-package quicklookase qlvideo
  "quicklook plugins(quicklook plugins from https://github.com/sindresorhus/quick-look-plugins)"
)

source "./deps/checkbox_input.sh"
installEssentialApps() {
  checkbox_input "install essential apps" essentialApps selectedApps
  # echo "${green}"
  echo $(join selectedApps)
}

installEssentialApps



installFrontendApps() {
  #---------------- install nodejs -----------------------
  echo "${green}install nodejs for frontend dev environment..."

  #--------------- install and config sublime ---------------
  echo "${green}install sublime text..."
  # code editor
  # https://www.sublimetext.com/3
  brew cask install sublime-text

  # install node for frontend develop
  brew install node
  # install yarn, use yarn to replace npm for project package management
  brew install yarn
  # Simplified and community-driven man pages
  # https://github.com/tldr-pages/tldr
  npm install -g tldr
}

installIterm2() {
  # -------------- install zsh ---------------------
  # from https://github.com/robbyrussell/oh-my-zsh
  echo "install zsh"
  brew install zsh zsh-completions
  # install zsh
  sh -c "$(wget https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
  # -------------- install zsh end ---------------------
}


revokeChinaCerts() {
  # -------------- RevokeChinaCerts ---------------------
  # from https://github.com/chengr28/RevokeChinaCerts
  git clone https://github.com/chengr28/RevokeChinaCerts.git RevokeChinaCerts
  RevokeChinaCerts/Mac/import-trust-settings.sh
  rm -rf RevokeChinaCerts
  # -------------- RevokeChinaCerts end ---------------------
}



