#### Inheritance Fish

import random as rd

class Fish:
    def __init__(self):
        self.x = rd.randint(0,10)
        self.y = rd.randint(0,10)
    def move(self):
        self.x = self.x - 1
        print("My position is: (%d,%d)." %(self.x,self.y))

class Goldfish(Fish):
    pass

class Carp(Fish):
    pass

class Salmon(Fish):
    pass

class Shark(Fish):
    def __init__(self):
        super().__init__()              # or use: Fish.__init__(self)
        self.hungry = True
    def eat(self):
        if self.hungry:
            print("Eat fish!")
            self.hungry = False
        else:
            print("The party is over.")

fish = Fish()
fish.move()
fish.move()
goldfish = Goldfish()
goldfish.move()
goldfish.move()
shark = Shark()
shark.eat()
shark.eat()
shark.move()
shark.move()