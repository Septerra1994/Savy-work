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
import random

# Generate random number between 1 and 20
secret_number = random.randint(1, 20)
guesses = 0

print("Guess a number between 1 and 20.")

while True:
    guess = int(input("Your guess: "))
    guesses += 1

    if guess < secret_number:
        print("HIGHER!")
    elif guess > secret_number:
        print("LOWER!")
    else:
        print(f"Yes! You guessed it in {guesses} guesses.")
        break
