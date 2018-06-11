#####################################################################
# Prepare environments for Android Studio
#####################################################################
# Set working directory as the directory of this script
cd "$(dirname "$0")"

# Set local variable
studio_folder=/opt/android-studio
sdk_folder=/opt/android-sdk

# User input
echo "Input downloaded zip file name with full path."
echo "For example: /home/ooxxvv/Download/android-studio-ide-143.2915827-linux.zip:"
read -p "Input here >>> " download_file

# Create folder and change folder owner
sudo mkdir -p $studio_folder && sudo chown -R $USER $studio_folder
sudo mkdir -p $sdk_folder && sudo chown -R $USER $sdk_folder

# Unzip to /opt/android-studio
unzip $download_file -d /opt

# Delete install file
rm -f $download_file

# Install dependence
sudo apt-get install -y \
    libc6:i386 libncurses5:i386 libstdc++6:i386 \
    lib32z1 libbz2-1.0:i386

# Copy shortcut (.desktop) in user home folder
if [ ! -d ~/.local/share/applications ]
then
    mkdir -p ~/.local/share/applications
fi
cp ./local_share_applications/AndroidStudio.desktop ~/.local/share/applications/


