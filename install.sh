# !/bin/bash
#
# Wrapper for installation script. This script should be executed by user as it will run main installation script
# with sudo privilages and then run postinstall script without sudo for those commands that require it.

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

block 'Running instalation tests'
source ./helpers/postinstall
source ./.tmp/test.sh
source ./.tmp/summary.sh

# Remove temp directory
if [ -f  ./.tmp ];
then
   rm -rf ./.tmp
fi
