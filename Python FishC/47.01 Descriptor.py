#### Descriptor

## Special Types
"""
__get__(self, instance, owner)
__set__(self, instacne, value)
__delete__(self, instance)
"""

class MyDescriptor:
    def __get__(self, instance, owner):
        print("Getting...",self,instance,owner)