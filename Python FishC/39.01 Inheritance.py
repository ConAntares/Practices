#### Inheritance

"""
class Derived_Class_Name(Base_Class_Name):
    Derived_Class_Name: Sub Class
    Base_Class_Name: Parent Class
"""

class Parent:
    def hello(self):
        print("Parent Class")

class Child(Parent):
    pass

p = Parent()
p.hello()
    # Parent Class
c = Child()
c.hello()
    # Parent Class

class Sub(Parent):
    def hello(self):
        print("Sub Class")
s = Sub()
s.hello()
    # Sub Class