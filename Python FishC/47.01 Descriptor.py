#### Descriptor

## Special Types
"""
__get__(self, instance, owner)
__set__(self, instacne, value)
__delete__(self, instance)
"""

class MyDescriptor:
    def __get__(self, instance, owner):
        print("Getting...", self, instance,owner)
    def __set__(self, instance, value):
        print("Setting...", self, instance,value)
    def __delete__(self, instance):
        print("Deleting...", self, instance)

class Test:
    x = MyDescriptor()

test = Test()
test.x          
    # Getting... <__main__.MyDescriptor object at 0x000001DC8040A780> <__main__.Test object at 0x000001DC8040AE48> <class'__main__.Test'>
test.x = "X-man"
    # Setting... <__main__.MyDescriptor object at 0x000001D48EF4AF60> <__main__.Test object at 0x000001D48EF4AF98> X-man
del test.x
    # Deleting... <__main__.MyDescriptor object at 0x000001D66C74AF60> <__main__.Test object at 0x000001D66C74AF98>
