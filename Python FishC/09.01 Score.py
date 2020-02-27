#### Score

#%% Method 1

# s = input("Please intput a score.")
s = 70
score = int(s)

if score > 100 or score < 0:
    print("Invalid Score")
if 100 >= score >= 90:
    print("A")
if 90 > score >= 80:
    print("B")
if 80 > score >= 70:
    print("C")
if 70 > score >= 60:
    print("D")
if 60 > score >= 0:
    print("Fail")

#%% Method 2

# s = input("Please intput a score.")
s = 64
score = int(s)

if score > 100 or score < 0:
    print("Invalid Score")
else:
    if 100 >= score >= 90:
        print("A")
    else:
        if 90 > score >= 80:
            print("B")
        else:
            if 80 > score >= 70:
                print("C")
            else:
                if 70 > score >= 60:
                    print("D")
                else:
                    if 60 > score >= 0:
                        print("Fail")

#%% Method 3

# s = input("Please intput a score.")
s = 89
score = int(s)

if 100 >= score >= 90:
    print("A")
elif 90 > score >= 80:
    print("B")
elif 80 > score >= 70:
    print("C")
elif 70 > score >= 60:
    print("D")
elif 60 > score >= 0:
    print("Fail")
else:
    print("Invalid Score")