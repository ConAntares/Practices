#### With

with open("data.txt","w") as f:
    for each_line in f:
        print(each_line)

# Equals to

f = open("data.txt","w")
for each_line in f:
    print(each_line)
f.close()