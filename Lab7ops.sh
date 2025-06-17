#!/bin/bash
# Take care to only perform this operation in user-created directories. Changing permissions in system files/directories is not advised, as this can cause malfunctions in the OS.

# Create a new bash script that performs the following:

# Prompts user for input directory path or file.
# Prompts user for input permissions number (e.g. 777 to perform a chmod 777, 775, 664)
# Navigates to the directory input by the user and changes all files inside it to the input setting.
# Prints to the screen the directory contents and the new permissions settings of everything in the directory or file you selected.

echo -e "Please provide a full directory name, with trailing '\', containing files to change permisions..."
read duhrectory

echo -e "Pleae provide a permission numbers (eg. 777,755) for the files in that directory..."
read permnos

eval "chmod -R "$permnos $duhrectory"

echo -e "\nJust so'z you know, these are the files in that directory"

eval "ls -l $duhrectory" | tail -n +2

# this is here to keep git bash from insta-closing the powershell window before anyone can see the output...
read -p "press Enter to contoniue..." </dev/tty