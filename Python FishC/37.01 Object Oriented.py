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

## Self in Object

class Ball:
    # Methods
    def set_name(self,name):
        self.name = name
    def kick(self):
        print("I'm %s, Damn! Who kicked me?" %self.name)

a = Ball()
a.set_name("Ball A")
b = Ball()
b.set_name("Ball B")
c = Ball()
c.set_name("Potato")
a.kick()
    # I'm Ball A, Damn! Who kicked me?
c.kick()
    # I'm Potato, Damn! Who kicked me?

## __init__

class iBall:
    def __init__(self,name):
        self.name = name
    def kick(self):
        print("I'm %s, Damn! Who kicked me?" %self.name)

d = iBall("Tomato")
d.kick()
    # I'm Tomato, Damn! Who kicked me?

## Public Variable

class Person:
    name = "FishC"

p = Person()
print(p.name)
    # FishC

## Private Variable

class PersonP:
    __name = "FishC"
    def get_name(self):
        return self.__name

p = PersonP()
print(p.get_name())
    # FishC
re = p._PersonP__name
print(re)
    # FishC