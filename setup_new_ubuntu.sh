set -e

# Can't do without a good window manager
sudo apt-get -y install awesome awesome-extra

# Dev tools
sudo apt-get -y install gcc
sudo apt-get -y install build-essential
sudo apt-get -y install cscope exuberant-ctags
sudo apt-get -y install vim vim-gnome
sudo apt-get -y install curl
sudo apt-get -y install git git-core
sudo apt-get -y install apt-file

# System monitoring
sudo apt-get -y install htop
sudo apt-get -y install lm-sensors
sudo apt-get -y install lsscsi

# For fun
sudo apt-get -y install fortune-mod fortunes fortunes-ubuntu-server
sudo apt-get -y install audacious  # Least sucky music player
sudo apt-get -y install extremetuxracer

# mp3 plugins and stuff
sudo apt-get -y install ubuntu-restricted-addons ubuntu-restricted-extras

# For Oracle/ Sun JDK 6.
sudo add-apt-repository ppa:webupd8team/java
sudo apt-get update

# Misc dev
sudo apt-get -y install ant
sudo apt-get -y install libxss1  # Needed by Google-chrome.
sudo apt-get -y install nmap
sudo apt-get -y install python-dev
sudo apt-get -y install python-pip
sudo apt-get -y install ssh
sudo apt-get -y install whois
sudo apt-get -y install xsel
sudo apt-get -y install zip
sudo apt-get -y install wireshark wireshark-common netmate

sudo apt-get -y remove thunderbird

# Use pip instead of easy_install.
# http://stackoverflow.com/questions/3220404/why-use-pip-over-easy-install
sudo pip install pylint
sudo pip install Pygments
sudo pip install pdbpp  # A powerful improvement to pdb CLI.
# Install Google chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb

#### Ubuntu specific settings. ####
# Via fixubuntu.com
sudo apt-get remove -y unity-lens-shopping
sudo sh -c 'echo "127.0.0.1 productsearch.ubuntu.com" >> /etc/hosts'
# Save gnome session on exit.
command -v dconf 1>/dev/null &&
 dconf write /org/gnome/gnome-session/auto-save-session true 1>/dev/null &&

