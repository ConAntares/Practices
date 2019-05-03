#### Multiple inheritance

class Base1:
    def Foo1(self):
        print("Foo1 is under Base1")

class Base2:
    def Foo2(self):
        print("Foo2 is under Base2")

class C(Base1,Base2):
    pass

c = C()
c.Foo1()
    # Foo1 is under Base1
c.Foo2()
    # Foo2 is under Base2