# ubuntu-dev-setup
> Setup script that automatize creation of developer environment

# About script

**Ubuntu-dev-setup** is a script that should help developers to configure their Ubuntu environment and prepare it for coding. It will install common software like text editors, system packages and all environments (like nginx with php, node.js, etc.).

The main purpose of this script is to make fresh Ubuntu installation easier because all that stuff is boring and time consuming. Now you can run that script and go get some coffee. **This script will install all that you need :)**

# How to use

The one liner
-----------------------------

To download and run script on freshly installed system, simply copy&paste below command into your terminal and press 'ENTER'.

```
wget https://github.com/indust-software/ubuntu-dev-setup/archive/master.zip && unzip master.zip && cd ./ubuntu-dev-setup-master && chmod +x ./install.sh && ./install.sh
```

Thats it! Now answer for several questions and after all go and get some coffee! Meanwhile script will install all applications and packages you need to work with.

> NOTE: Please make sure that your internet connection is working properly before runing the script.

Manual download
--------------------------

1. Go to [releases](https://github.com/indust-software/ubuntu-dev-setup/releases) and choose one of the release you want to download. Most likely the newest one.

2. Unzip (or untar) downloaded folder and cd into it.

3. Run `chmod +x ./install.sh && ./install.sh`. It will run installator. You will be prompted for sudo password.

4. Answer for several configuration questions and after all, script will install all you need.
