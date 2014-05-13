#!/bin/bash
############################
# link.sh
# This script creates symlinks from the home directory to any desired dotfiles in ~/dotfiles
############################

########## Variables

dir=~/dotfiles                    # dotfiles directory
olddir=~/dotfiles/old             # old dotfiles backup directory
files="bash_profile vimrc"    # list of files/folders to symlink in homedir

##########

# create dotfiles_old in homedir
echo "Creating $olddir for backup of any existing dotfiles in ~"
mkdir -p $olddir
echo "...done"

# change to the dotfiles directory
echo "Changing to the $dir directory"
cd $dir
echo "...done"

# move any existing dotfiles in homedir to dotfiles_old directory 
echo "Moving any existing dotfiles from ~ to $olddir"
for file in $files; do
    mv ~/.$file $olddir/
done
mv ~/.bashrc $olddir/


# Create symlinks
for file in $files; do
    echo "Creating symlink: ~/.$file -> $dir/$file"
    ln -s $dir/$file ~/.$file
done

echo "Creating symlink: ~/.bashrc -> $dir/bash_profile"
ln -s $dir/bash_profile ~/.bashrc
