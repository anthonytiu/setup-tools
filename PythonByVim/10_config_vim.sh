#####################################################################
# Set vimrc and install vim plugins by Vundle
#####################################################################
# Set working directory as the directory of this script
cd "$(dirname "$0")"

# Create .vimrc folder (if not exist)
mkdir -p ~/.vim &&

# Replace vimrc & Actinbox settings
cp -f vim/vimrc ~/.vim/vimrc
rm -rf ~/.vim/Actinbox
cp -rf ./vim/Actinbox ~/.vim/Actinbox

# Copy personal setting sample files
cp -i -r vim/*.vim ~/.vim

# Run vim for Vundle to install plugin
vim +PluginUpdate +qall

# Run YCM install
cd ~/.vim/bundle/YouCompleteMe
./install.py

