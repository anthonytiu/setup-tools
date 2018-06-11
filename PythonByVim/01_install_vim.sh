#####################################################################
# Install Vim for Python development
#####################################################################
# Set working directory as the directory of this script
cd "$(dirname "$0")"

# VIM 8
sudo add-apt-repository -y ppa:jonathonf/vim
sudo apt update
sudo apt install -y vim vim-gtk3

# VIM plugin dependence (ALE)
# Uninstall buid-in pylint, because that is python2 version
sudo apt-get remove -y pylint
# Re-install pylint by pip3
sudo apt install -y python3-pip
yes | sudo pip3 install --upgrade pip setuptools
yes | sudo pip3 install --upgrade pylint

# VIM plugin dependence (YCM)
sudo apt install -y exuberant-ctags build-essential cmake python-dev python3-dev

