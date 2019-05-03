# Multiple dispatch in Python
from functools import singledispatch

@singledispatch
def func(arg,verbose=False):
    print('initial...\n')

@func.register(int)
def _(arg, verbose=False):
    print(arg)

func(1.0)                   # initial...
func(1)                     # 1