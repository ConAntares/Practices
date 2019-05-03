#### Else

if 1 + 1 < 1:
    print("Oh My God!")
else:
    print("Nice")

def show_max_factor(num):
    count = num // 2
    while count > 1:
        if num % count == 0:
            print("The max factor of %d is %d." %(num,count))
            break
        count = count - 1
    else:
        print("%d is a prime number." % num)

num = int(input("Please input an integer."))
show_max_factor(num)


