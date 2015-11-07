# !/bin/bash

# Default variables
# ------------------

source ./helpers/prompter;

# check if user is root
if [ $USER != 'root' ]; then
  error "Please run this script with sudo";
  exit 1;
fi

# Global constants
PROMPT_TITLE="Ubuntu Development Setup";
EX_USER="$(sh -c 'echo $SUDO_USER')"

# Default selected environments
ENV_NGINX=ON;
ENV_NODE=ON;
ENV_GO=ON;

# Default paths
NGINX_WWW_PATH=$HOME"/www";

# Create welcome screen
whiptail --title "$PROMPT_TITLE" \
--msgbox "This script will configure your development environment. It will install most common applications and configure system to be ready for developers.\n\n Choose Ok to continue." 13 60

# Collect environments to be installed
ENVIRONMENTS=$(whiptail --title "$PROMPT_TITLE" --checklist \
"Choose preferred environments that will be instaled on your machine:" 13 60 4 \
"nginx" "Nginx + PHP5 + MySQL + PhpMyAdmin    " $ENV_NGINX \
"node" "Node.js with Homebrew" $ENV_NODE \
"golang" "Go with GVM" $ENV_GO 3>&1 1>&2 2>&3)

exitstatus=$?
if [ $exitstatus = 0 ]; then
    ENVIRONMENTS=($ENVIRONMENTS);
else
    ENVIRONMENTS=''
fi

# For each selected environment collect all required data
for env in "${ENVIRONMENTS[@]}"; do
  # Run nginx prompt
  if [ "$env" == '"nginx"' ]
    then source ./prompts/nginx-prompt;
  fi

  # Run node prompt
  if [ "$env" == '"node"' ]
    then source ./prompts/node-prompt;
  fi

  # Run go prompt
  if [ "$env" == '"golang"' ]
    then source ./prompts/go-prompt;
  fi
done

#Preparing for installation

block 'Prepare system for installation'

info 'Updating system repositories...'
apt-get -qq update

# Install environments
if [ "$USE_NGINX" == 'true' ]
  then source ./installers/nginx-install;
fi

if [ "$USE_NODE" == 'true' ]
  then source ./installers/node-install;
fi

if [ "$USE_GOLANG" == 'true' ]
  then source ./installers/go-install;
fi
