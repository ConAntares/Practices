#### Inheritance Fish

import random as rd

class Fish:
    def __init__(self):
        self.x = rd.randint(0,10)
        self.y = rd.randint(0,10)
    def move(self):