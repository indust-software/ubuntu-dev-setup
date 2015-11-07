# !/bin/bash

source ./helpers/prompter;

# create temp directory
mkdir ./.tmp
# create empty post install script
touch ./.tmp/postinstall.sh
# make sure all paths are loaded after instalation
echo 'source $HOME/.bashrc' >> ./.tmp/postinstall.sh

# execute main instalation script as root
chmod +x ./setup.bash
sudo bash ./setup.bash

block 'Running postinstall scripts'

source ./.tmp/postinstall.sh

info 'Remove temp directory and all files'
rm -rf ./.tmp
