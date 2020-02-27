#### Generator

def myGen():
    print("Generator is used.")
    yield 1
    yield 2

myG = myGen()
print(next(myG))    # 1
print(next(myG))    # 2

for i in myGen():
    print(i)
    # Generator is used.
    # 1
    # 2