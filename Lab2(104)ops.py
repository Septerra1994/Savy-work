# Objectives
# Create if statements using these logical conditionals below. Each statement should print information to the screen depending on if the condition is met.

# Equals: a == b
# Not Equals: a != b
# Less than: a < b
# Less than or equal to: a <= b
# Greater than: a > b
# Greater than or equal to: a >= b
# Create an if statement using a logical conditional of your choice and include elif keyword that executes when other conditions met or and else when no condition is met.



# Stretch Goals (Optional Objectives)
# Pursue stretch goals if you are a more advanced user or have remaining lab time.

# Create an if statement with two conditions by using and between conditions.

# Create an if statement with two conditions by using or between conditions.

# Create a nested if statement.

# Hint:  a = int(input("Enter a number "))


a = int(input("Enter a value for a: "))
b = int(input("Enter a value for b: "))


if a == b:
    print("a is equal to b")


if a != b:
    print("a is NOT equal to b")


if a < b:
    print("a is less than b")


if a <= b:
    print("a is less than or equal to b")


if a > b:
    print("a is greater than b")


if a >= b:
    print("a is greater than or equal to b")


if a == b:
    print("a and b are equal (if/elif/else check)")
elif a > b:
    print("a is greater than b (elif condition met)")
else:
    print("a is less than b (else condition met)")




if a > 0 and b > 0:
    print("Both a and b are positive numbers")


if a == 0 or b == 0:
    print("At least one of a or b is zero")


if a > 0:
    print("a is positive")
    if a % 2 == 0:
        print("a is also even")
    else:
        print("a is also odd")
