#### Del

## __del__(self)
## x.__del__() = dex x

class C:
    def __init__(self):
        print("I'm method __init__.")
    def __del__(self):
        print("I'm method __del__.")

c = C()
b = c