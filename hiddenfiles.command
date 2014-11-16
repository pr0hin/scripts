#!bin/bash


# Test if statements
file_status() {
 defaults read com.apple.finder AppleShowAllFiles
}
make_files_invisible() {
	defaults write com.apple.finder AppleShowAllFiles FALSE
	killall Finder
}

make_files_visible() {
	defaults write com.apple.finder AppleShowAllFiles TRUE
	killall Finder
}


if [ $(file_status)  = "TRUE" ]; then
	$(make_files_invisible)
	echo "Your files are now hidden"	
else
	$(make_files_visible)	
	echo "Your hidden files are now visible"
fi


