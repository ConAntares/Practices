#### Random

import random

secret = random.randint(1,10)
print("A Game for Gussing Number")
temp = input ("Please guess a number. \n")
guess = int(temp)

while guess != secret:
    if guess == secret:
        break
    elif guess < secret:
        print("Smaller than the number.")
        temp = input ("Please guess a number again. \n")
        guess = int(temp)
    elif guess > secret:
        print("Greater than the number.")
        temp = input ("Please guess a number again. \n")
        guess = int(temp)

print("You are right!")
print("Game Over")