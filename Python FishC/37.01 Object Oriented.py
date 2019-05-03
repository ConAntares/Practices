#### Object Oriented

"""
{Properties} + {Methods} = Object
"""

## Class: Encapsulation

class Turtle:
    # Properties
    color  = "green"
    weight = 10
    legs   = 4
    shell  = True
    mouth  = "Big"

    # Methods
    def climb(self):
        print("Climb")
    def run(self):
        print("Run")
    def bite(self):
        print("Bite")
    def eat(self):
        print("Eat")
    def Sleep(self):
        print("Sleep")

class MyList(list):
    pass
    
## Object:  Inheritance

tt = Turtle()
tt.eat()
    # Eat

list = MyList()
list.append(3.14)
list.append(6.18)
list.append(2.71)
print(list)

## Polymorphic

class A:
    def fun(self):
        print("A")

class B:
    def fun(self):
        print("B")

a = A()
b = B()
a.fun()
    # A
b.fun()
    # B