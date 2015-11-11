# Ubuntulator v0.1.0
> The script for automatic preparation of Ubuntu Linux as a development environment.

# About script

The script allows you to perform an unattended installation of the most commonly used software for developers as well as development environments like PHP, Node.js, Go. You can use it directly on a freshly installed Ubuntu system.

The main idea of ​​this script is to carry out a complex system environments and programs with threrefore the best configuration which in most cases is tedious, boring and time-consuming task. The list of possible applications and environments ready to install with this script will continue to increase.

The script offers two installation modes:
- **Basic** - for those who need only basic configuration and installation with the default configuration
- **Advanced** - for those who want to have more control over configuration, as well as the need to further simplify the software installation process. **[CURRENTLY UNDER DEVELOPMENT]**

You can use this script anywhere, there are no licensing restrictions. Any comments on the script are welcome, as well as the wish to contribute to this project.

# Compatibility

- **Ubuntu 14.04.3** - status stable
- **Ubuntu 15.04** - status unknown

# Basic use

Quick start-up
-------------------------------

To quickly download and run the script on a freshly installed operating system, copy and paste the text below into the system terminal. Then execute it.

> Due to the fact that most operations require administrator privileges, you will be prompted for the root password.

```
wget https://github.com/indust-software/ubuntu-dev-setup/archive/master.zip && unzip master.zip && cd ./ubuntu-dev-setup-master && chmod +x ./install.sh && time ./install.sh
```

**And that's it !** You should see a welcome screen. In further steps, select the items you want to install and configure. After saving all the necessary information, the script will carry out installation and configuration of your system. This process can take tens of minutes (depending on the options you chose) so...

![Keep calm and drink coffee](https://s-media-cache-ak0.pinimg.com/236x/32/82/df/3282df596720e1489e6d0399d69123ea.jpg)

Manual download
--------------------------

1. Go to [releases](https://github.com/indust-software/ubuntu-dev-setup/releases) and choose one of the release you want to download. Most likely the newest one.

2. Unzip (or untar) downloaded file and cd into extracted directory.

3. Run `chmod +x ./install.sh && time ./install.sh`.

> IMPORTANT! : In project root directory there is also `setup.bash` script. Don't execute it! You should only run `install.sh` file.

# Contents

A list of installed applications is constantly increasing. But if you think that the script should find something else that you have two options:
- Contribute - fork a repository, add software installer or system configuration script and PR to a development branch
- Report - Create an appropriate topic in the issues or append to an existing one.
