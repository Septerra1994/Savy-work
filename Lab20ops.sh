#!/bin/bash
# Write a script that counts the number of the lines in a file.
# Hint need to use the wc command
#!/bin/bash

# Check if a filename was provided
if [ $# -eq 0 ]; then
  echo "Usage: $0 filename"
  exit 1
fi

# Assign the first argument to a variable
file=$1

# Check if the file exists
if [ ! -f "$file" ]; then
  echo "Error: File '$file' not found!"
  exit 1
fi

# Count the number of lines using wc -l
line_count=$(wc -l < "$file")
echo "The file '$file' has $line_count lines."

