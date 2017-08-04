#!/bin/bash -       
#title			:mac_install.sh
#description	:This script targets MacOS and will install and configure Z shell 
#				  along with Oh-My-Zsh, Antigen, pyenv, rbenv, tfenv, spf13-vim, 
#				  among a few usefull tools like Homebrew.
#author			:dad2jrn
#date			:20170801
#version 		:0.1    
#usage			:./install.sh
#license 		:Licensed under the MIT License requiring preservation 
#				  of copyright and license notices.
#bash_version 	:4.1.5(1)-release
#==============================================================================

#==============================================================================
#=========================== DEFINE FUNCTIONS =================================
#==============================================================================

## install homebrew package manager
install_hombrew () {
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
}

## Install/Upgrade GIT.  Git is installed on MacOS when Xcode is installed. This will install the latest version.
install_git () {
    brew install git
}

## Install pyenv using the prefered method for MacOS which is Homebrew.
install_pyenv () {
    brew install pyenv
}

## Install rbenv using the prefered method for MacOS which is Homebrew.
install_pyenv () {
    brew install rbenv
}

## Install tfenv using the prefered method for MacOS which is Homebrew.
install_pyenv () {
    brew install tfenv
}
## Install spf13-vim 
install_spf13-vim () {
    curl http://j.mp/spf13-vim3 -L -o - | sh
}

## Install Z shell 
install_zsh () {
    brew install zsh zsh-completions
}

## Install Oh-My-Zsh via curl
install_omz () {
    sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
}

## Install wget
install_wget () {
    brew install wget
}


## Download latest version of iterm2 and install
install_iterm2 () {
	cd ~/Downloads
	curl -O https://iterm2.com/downloads/stable/iTerm2-3_0_15.zip
	unzip iTerm2-3_0_15.zip
	mv -f iTerm.app/ /Applications/
	rm -f iTerm2-3_0_15.zip
	cd ~
}


##  Create the default .zshrc file for the current user.
create_zshrc_file () {
    cd ~
    wget -O .zshrc https://raw.githubusercontent.com/dad2jrn/ultimate_zsh_setup/master/zshrc
}

##  Add zsh completions to the .zshrc file:
# fpath=(/usr/local/share/zsh-completions $fpath)



#==============================================================================
#========================== Begin script execution ============================
#==============================================================================

# install iTerm2
install_iterm2

# install Homebrew
install_homebrew

# install ZSH
install_zsh

# install Oh My ZSH
install_omz

## Make zsh the default shell for current user.

chsh -s $(which zsh)





#==============================================================================
#================================== To Do!!! ==================================
#==============================================================================

# Finish script
# create default .zshrc file
# create function to get latest iterm2 download link
# anything else I can think of...


















