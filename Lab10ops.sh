#!/bin/bash
# Lets create an until loop that takes a variable and adds 1 till it reachs 10
# Have the script echo out what are current number is
#!/bin/bash

number=1

until [ $number -gt 10 ]
do
  echo "Current number is: $number"
  ((number++))
done