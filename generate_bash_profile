#!bin/bash

if [ $(uname) == Darwin ]; then
	if [ -f .bash_profile ]; then
		echo "You already have a bash profile" 
	
    else

	touch .bash_profile
	#Set CLICOLOR if you want ANSI colors in iTerm2	 
	echo "export CLICOLOR=1" >> .bash_profile
	# Set colors to match iTerm2 Terminal Colors
	echo "export TERM=xterm-256color" >> .bash_profile
	# Add android platform-toosl to path
	echo "export PATH=$PATH://Users/rohinpatel/Documents/android-sdk-macosx/platform-tools" >> .bash_profile
	#Set Default Editor 
	echo "export EDITOR=/usr/local/bin/vim" >> .bash_profile
	# Aliases
	echo "alias vim='/usr/local/bin/vim'" >> .bash_profile
	echo "alias rm='rm -i'" >> .bash_profile
	echo "alias cp='cp -i'" >> .bash_profile
	echo "alias ..='cd ../'" >> .bash_profile
	echo "alias ...='cd ../../'" >> .bash_profile
	echo "alias .3='cd ../../../'" >> .bash_profile
	fi

else
	if [ -f .bashrc ]; then
		echo "You already have a bash profile" 
	else
	touch .bash_rc
	#Set CLICOLOR if you want ANSI colors in iTerm2	 
	echo "export CLICOLOR=1" >> .bashrc
	# Set colors to match iTerm2 Terminal Colors
	echo "export TERM=xterm-256color" >> .bashrc
	# Add android platform-toosl to path
	echo "export PATH=$PATH://Users/rohinpatel/Documents/android-sdk-macosx/platform-tools" >> .bashrc
	#Set Default Editor 
	echo "export EDITOR=/usr/local/bin/vim" >> .bashrc
	# Aliases
	echo "alias vim='/usr/local/bin/vim'" >> .bashrc
	echo "alias rm='rm -i'" >> .bashrc
	echo "alias cp='cp -i'" >> .bashrc
	echo "alias ..='cd ../'" >> .bashrc
	echo "alias ...='cd ../../'" >> .bashrc
	echo "alias .3='cd ../../../'" >> .bashrc
    fi
fi



		    



