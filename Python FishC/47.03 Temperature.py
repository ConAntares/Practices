#### Temperature

class Celsius:
    def __init__(self, value = 26.0):
        self.value = float(value)
    def __get__(self, instance, owner):
        return self.value
    def __set__(self, instance, value):
        self.value = float(value)

class Fahrenheit:
    def __get__(self, instance, owner):
        return instance.cel * 1.8 + 32
    def __set__(self, instance, value):
        instance.cel = (float(value)-32)/1.8

class Temperature:
    cel = Celsius()
    fah = Fahrenheit()

temp = Temperature()
temp.cel = 30
print(temp.fah)     # 86.0
temp.fah = 100
print(temp.cel)     # 37.77777777777778

