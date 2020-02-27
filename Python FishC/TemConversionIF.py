#### Temperator

def c2f(cel):
    fah = cel * 1.8 + 32
    return fah

def f2c(fah):
    cel = (fah - 32)/1.8
    return cel

def test():
    print("Test",c2f(0))
    print("Test",f2c(0))

if __name__ == "__main__":
    test()