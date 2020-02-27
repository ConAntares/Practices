#### Try Except

try:
    f = open("Why I am a file.tet")
    print(f.read())
    f.close()
except OSError as reason:
    print("Error: " + str(reason))
        # Error: [Errno 2] No such file or directory: 'Why I am a file.tet'
    
try:
    sum = 1 + '1'
except TypeError as reason:
    print("Error: " + str(reason))
        # Error: unsupported operand type(s) for +: 'int' and 'str'

try:
    int("a")
except:
    print("Error")
        # Error

try:
    a = 1 + int(1.2)
    print(a)
    b = 1 + int("a")
    print(b)
except:
    print("Error")
finally:
    print(a)