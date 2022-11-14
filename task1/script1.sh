#!/bin/bash

RESET_TEXT='\033[0m'
STATUS_TEXT='\033[1;31m'


sudo apt-get update
echo -e $STATUS_TEXT
echo 'APT update done'
echo -e $RESET_TEXT
sudo apt-get upgrade
echo -e $STATUS_TEXT
echo 'APT upgrade done'
echo -e $RESET_TEXT

apt list --installed > installed.txt
echo -e $STATUS_TEXT
echo 'Installed packets list done - look out for installed.txt'
echo -e $RESET_TEXT

sudo apt-get install git
GIT_VERSION=$(git --version)
echo -e $STATUS_TEXT
echo "Git install done - $GIT_VERSION"
echo -e $RESET_TEXT

git clone https://git.savannah.gnu.org/git/grep.git 
echo -e $STATUS_TEXT
echo "Git clone done"
echo -e $RESET_TEXT

ls -RA ./grep > greplisting.txt
echo -e $STATUS_TEXT
echo 'Repository listing done - look out for greplisting.txt'
echo -e '\n\nExecution done'
echo -e $RESET_TEXT
