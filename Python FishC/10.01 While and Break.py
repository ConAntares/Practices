#### While and Break

bingo = "6"
answer = input("Please input a number (0~10):")

while True:
    if answer == bingo:
        break
    answer = input("Please input a number again (0~10):")

print("Right!")