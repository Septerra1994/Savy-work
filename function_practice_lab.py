def greet_user(name):
    def format_name():
        return name.capitalize()
    return f"What's up, {format_name()}!"
print(greet_user("shaq"))

count = 100

def counter():
    global count  
    count += 25   
    return count 
print(counter())
print(counter())
print(counter())
print(counter())

numbers = list(range(1, 11))
is_even = lambda x: x % 2 == 0
even_numbers = list(filter(is_even, numbers))
print(even_numbers) 
