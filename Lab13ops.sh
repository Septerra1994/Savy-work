#!/bin/bash
# Bob is back at it again! Now he needs us to script something that if user inserts between 2 to 5, it will print out “Valid Number” and “your number is ___”.
# And if the user input is not between 2 and 5, it will print out “not valid!”
 
#Main
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
#!/bin/bash

read -p "Enter a number: " num

if [[ "$num" -ge 2 && "$num" -le 5 ]]; then
    echo "Valid Number"
    echo "Your number is $num"
else
    echo "Not valid!"
fi
