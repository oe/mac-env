#!/bin/bash

# colors
red='\033[0;31m'
green='\033[0;32m'
grey='\033[0;37m'

echo "${green}install homebrew..."
# install homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
brew tap caskroom/cask

echo "${green}install essential tools..."
# essential tools
brew install wget 

#--------------------- install common softwares ---------------------
echo "${green}install common softwares..."
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
echo "${green}install plugins for quicklook..."
# install quicklook plugins from https://github.com/sindresorhus/quick-look-plugins
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package quicklookase qlvideo
#--------------------- install common softwares end ---------------------



# install mac app store commandline 
# https://github.com/mas-cli/mas
echo "${green}install mac app command line tool <mas>..."
brew install mas


#---------------- install nodejs -----------------------
echo "${green}install nodejs for frontend dev environment..."
# install node for frontend develop
brew install node
# install yarn, use yarn to replace npm for project package management
brew install yarn
# Simplified and community-driven man pages
# https://github.com/tldr-pages/tldr
npm install -g tldr
# install grunt, gulp, standardjs()
npm install csslint coffeelint grunt-cli gulp standard -g

#---------------- install nodejs end-----------------------



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


#--------------- install and config sublime ---------------
echo "${green}install sublime text..."
# code editor
# https://www.sublimetext.com/3
brew cask install sublime-text
# make SublimeText a commond-line shortcut "subl"
ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
# install packagecontrol, see https://packagecontrol.io/
wget https://packagecontrol.io/Package%20Control.sublime-package -O "/Users/saiya/Library/Application Support/Sublime Text 3/Installed Packages/Package Control.sublime-package"
user_dir=~
subl_cfg_path="${user_dir}/Library/Application Support/Sublime Text 3/Packages/User/Preferences.sublime-settings"
# backup if config file exists already
[ -f $subl_cfg_path ] && mv $subl_cfg_path "${subl_cfg_path}.backup"
cat <<EOF > $subl_cfg_path
{
  "font_size": 15,
  "ignored_packages":
  [
  ],
  "rulers":
  [
    80
  ],
  "tab_size": 2,
  "translate_tabs_to_spaces": true,
  "word_wrap": true
}
EOF
# update package controll config file to install new packages
subl_pkg_ctrl_cfg_path="${user_dir}/Library/Application Support/Sublime Text 3/Packages/User/Package Control.sublime-settings"
# backup if config file exists already
[ -f $subl_pkg_ctrl_cfg_path ] && mv $subl_pkg_ctrl_cfg_path "${subl_pkg_ctrl_cfg_path}.backup"
cat <<EOF > $subl_pkg_ctrl_cfg_path
{
  "bootstrapped": true,
  "in_process_packages":
  [
  ],
  "installed_packages":
  [
    "Alignment",
    "AutoFileName",
    "AVR-ASM-Sublime",
    "Better CoffeeScript",
    "BracketHighlighter",
    "ConvertToUTF8",
    "DocBlockr",
    "EditorConfig",
    "Emmet",
    "HTML-CSS-JS Prettify",
    "Jade",
    "JavaScript Completions",
    "JS Snippets",
    "JSX",
    "LESS",
    "LoremIpsum",
    "MarkdownEditing",
    "Nodejs",
    "Package Control",
    "ReactJS",
    "Sass",
    "SideBarEnhancements",
    "StandardFormat",
    "Stylus",
    "SublimeCodeIntel",
    "SublimeLinter",
    "SublimeLinter-coffeelint",
    "SublimeLinter-csslint",
    "SublimeLinter-html-tidy",
    "Terminal",
    "Theme - Soda",
    "Theme - Sodarized",
    "Trimmer",
    "URLEncode",
    "Vue Syntax Highlight",
    "Vuejs Snippets"
  ]
}
EOF

echo "${red}Notice: Sublime Text has been installed
  You can access sublime in terminal by `subl`
  After you start Sublime at first time, it may take a while to install all the packages.
"
#--------------- install and config sublime end ---------------

