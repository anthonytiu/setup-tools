#####################################################################
# Install base tools before first re-boot
#####################################################################
# Set working directory as the directory of this script
cd "$(dirname "$0")"

# Updates & Install
sudo apt-get update

# Chromium
sudo apt-get install -y chromium-browser

# Diodon
sudo apt-get install -y diodon

# Dropbox
sudo apt-get install -y dropbox

# KeepassX
sudo apt-get install -y keepassx

# Shutter
sudo apt-get install -y shutter libgoo-canvas-perl

# ZSH
sudo apt-get install -y zsh

# Powerline fonts
git clone https://github.com/powerline/fonts.git --depth=1
cd fonts && ./install.sh && cd .. && rm -rf fonts

# Oh-my-zsh
rm -fr ~/.oh-my-zsh/
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"
chsh -s /bin/zsh


