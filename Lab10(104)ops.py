# Create a Python script that performs the following:

# Prompt the user to type a string input as the variable for your destination URL.

# Prompt the user to select a HTTP Method of the following options:
# GET
# POST
# PUT
# DELETE
# HEAD
# PATCH
# OPTIONS
# Print to the screen the entire request your script is about to send. Ask the user to confirm before proceeding.
# Add some comments of what these request are doing to your script
# Using the requests library, perform a GET request to your github.

# For the given header, translate the codes into plain terms that print to the screen; for example, a 404 error should print Site not found to the terminal instead of 404.
#response = requests.get()
# For the given URL, print response header information to the screen.
from urllib import response
import requests
b = input("Get, Post, Put, Delete , Head, Patch, Options:")


import requests

# Get URL input from user
url = input("Enter the destination URL (e.g., https://api.github.com): ")

# Choose HTTP method
method = input("Choose HTTP method (GET, POST, PUT, DELETE, HEAD, PATCH, OPTIONS): ").strip().upper()

# Confirm before sending the request
print(f"\nYou are about to send a {method} request to {url}")
confirm = input("Proceed? (yes/no): ").strip().lower()
if confirm != "yes":
    print("Request cancelled.")
    exit()

# Map HTTP method to requests function
methods = {
    "GET": requests.get,
    "POST": requests.post,
    "PUT": requests.put,
    "DELETE": requests.delete,
    "HEAD": requests.head,
    "PATCH": requests.patch,
    "OPTIONS": requests.options
}

# Send the request
try:
    response = methods[method](url)

    # Status code translation
    status_text = {
        200: "OK",
        201: "Created",
        204: "No Content",
        400: "Bad Request",
        401: "Unauthorized",
        403: "Forbidden",
        404: "Site not found",
        405: "Method Not Allowed",
        500: "Internal Server Error",
        502: "Bad Gateway",
        503: "Service Unavailable"
    }

    print(f"\nStatus: {status_text.get(response.status_code, 'Unknown')} ({response.status_code})")

    # Show headers
    print("\nResponse Headers:")
    for k, v in response.headers.items():
        print(f"{k}: {v}")

except Exception as e:
    print(f"Error: {e}")
