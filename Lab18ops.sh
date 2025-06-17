#!/Bin/Bash

# Today's challenges is to create a script in bash that naviagetes to the document directory and list the files in there
# Then ask the user to create or edit a file and opens the file up in the terminal
#!/bin/bash

# Navigate to the Documents directory
cd ~/Documents || { echo "Documents directory not found!"; exit 1; }

# List the files
echo "Files in your Documents directory:"
ls -lh

# Ask user for filename
read -rp "Enter the filename you want to create or edit: " filename

# Open the file with nano (or use your preferred editor like vim)
nano "$filename"


