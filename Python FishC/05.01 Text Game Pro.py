#### Text Game Pro

print("A Game for Gussing Number")
temp = input ("Please guess a number. \n")
guess = int(temp)

while guess != 6:
    if guess == 6:
        break
    elif guess < 6:
        print("Smaller than the number.")
        temp = input ("Please guess a number again. \n")
        guess = int(temp)
    elif guess > 6:
        print("Greater than the number.")
        temp = input ("Please guess a number again. \n")
        guess = int(temp)

print("You are right!")
print("Game Over")