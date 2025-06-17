#!/bin/bash
# Create a script that ask the user for a number between 1 and 10.  Have the script tell the user if there
# number is greater than 5, less than 5, or equal to 5.  Please use an if/else or elif statement to make this happen.  
# Also put the if/else statemnt inside a function.
# -eq = equal
# -ne = are not equal
# -gt = greater than
# -ge = greater or equal to
# -lt = less than
# -le = less than or equal to
# >= (Greater than or equal to)
# <= (Less than or equalk to)
# > (Greater)
# < (Less)
# == (comparison)
# % (Remainder)
# * (Multiply)
#Here are some helpful commands to make this happen.
#!/bin/bash

# Function to evaluate the number
check_number() {
    if [ "$1" -gt 5 ]; then
        echo "Your number is greater than 5."
    elif [ "$1" -lt 5 ]; then
        echo "Your number is less than 5."
    else
        echo "Your number is equal to 5."
    fi
}

# Ask for input and validate it in one step
read -p "Enter a number between 1 and 10: " num

# Check if input is a number between 1 and 10
if [[ "$num" =~ ^[1-9]$|^10$ ]]; then
    check_number "$num"
else
    echo "Invalid input. Please enter a whole number from 1 to 10."
fi
