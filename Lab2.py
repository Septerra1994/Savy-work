age = int(input("How old are?"))
if age < 18:
    print("You are a minor.")
elif age < 65:
    print("You are an adult.")
else:
    print("You are a senior.")

username = "Lebron James"
is_logged_in = True
if is_logged_in:
    print("Hello,", username)
else:
    print("user not logged in.")

score = int(input("What is your score (0-100): "))
if score >= 90:
    grade = "A"
elif score >= 80:
    grade = "B"
elif score >=70:
    grade = "C"
else:
    grade = "F"
print("Your grade is a:", grade)

side = input("Choose a side (left/right):")
if side == "left":
    print("You fight a dragon")
elif side == "right":
    print("You find Davy Jones treasure")
else:
    print("You loose a leg.")