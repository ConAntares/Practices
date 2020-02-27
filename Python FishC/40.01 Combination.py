#### Combination

class Turtle:
    def __init__(self,x):
        self.num = x

class Fish:
    def __init__(self,x):
        self.num = x

class Pool:
    def __init__(self,x,y):
        self.turtle = Turtle(x)
        self.fish = Fish(y)
    def print_num(self):
        print("There are %d turtles and %d fishes in this pool." %(self.turtle.num,self.fish.num))

pool = Pool(2,3)
pool.print_num()
    # There are 2 turtles and 3 fishes in this pool.