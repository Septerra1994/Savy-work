# Here is a short story:

# Once upon a time in Appleland, John had three apples, Mary had five apples, and Adam had six apples. They were all very happy and lived for a long time. End of story.

# Your task is to:

# create the variables: john, mary, and adam;
# assign values to the variables. The values must be equal to the numbers of fruit possessed by John, Mary, and Adam respectively;
# having stored the numbers in the variables, print the variables on one line, and separate each of them with a comma;
# now create a new variable named total_apples equal to the addition of the three previous variables.
# print the value stored in total_apples to the console;
# experiment with your code: create new variables, assign different values to them, and perform various arithmetic operations on them (e.g., +, -, *, /, //, etc.). Try to print a string and an integer together on one line, e.g., "Total number of apples:" and total_apples.

John=3
Mary=5
Adam=6
print(John, Mary, Adam)
total_apples = John + Mary + Adam
print(total_apples)
Johns_apples_left = John - 3
Marys_apples_shared = Mary // 2
Adam_doubled = Adam * 2
print("Total number of apples:", total_apples)
print("John's ate all his apples, now he has:", Johns_apples_left)
print("Mary gave away 3 apples, now she has:", Marys_apples_shared)
print("Adam recieved 6 more apples from a friend:", Adam_doubled)

