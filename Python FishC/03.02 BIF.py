#### Build in Function

"""
dir(__builtins__)

[   'ArithmeticError', 'AssertionError', 'AttributeError', 
    'BaseException', 'BlockingIOError', 'BrokenPipeError', 'BufferError', 'BytesWarning', 
    'ChildProcessError', 'ConnectionAbortedError', 'ConnectionError', 'ConnectionRefusedError', 'ConnectionResetError', 
    'DeprecationWarning', 'EOFError', 'Ellipsis', 'EnvironmentError', 
    'Exception', 'False', 'FileExistsError', 'FileNotFoundError', 'FloatingPointError', 'FutureWarning', 
    'GeneratorExit', 'IOError', 'ImportError', 'ImportWarning', 'IndentationError', 'IndexError', 'InterruptedError', 'IsADirectoryError', 
    'KeyError', 'KeyboardInterrupt', 'LookupError', 
    'MemoryError', 'ModuleNotFoundError', 'NameError', 'None', 'NotADirectoryError', 'NotImplemented', 'NotImplementedError', 
    'OSError', 'OverflowError', 'PendingDeprecationWarning', 'PermissionError', 'ProcessLookupError', 
    'RecursionError', 'ReferenceError', 'ResourceWarning', 'RuntimeError', 'RuntimeWarning', 
    'StopAsyncIteration', 'StopIteration', 'SyntaxError', 'SyntaxWarning', 'SystemError', 'SystemExit', 
    'TabError', 'TimeoutError', 'True', 'TypeError', 
    'UnboundLocalError', 'UnicodeDecodeError', 'UnicodeEncodeError', 'UnicodeError', 'UnicodeTranslateError', 'UnicodeWarning', 'UserWarning', 
    'ValueError', 'Warning', 'WindowsError', 'ZeroDivisionError', 
    '__build_class__', '__debug__', '__doc__', '__import__', '__loader__', '__name__', '__package__', '__spec__', 
    'abs', 'all', 'any', 'ascii', 'bin', 'bool', 'breakpoint', 'bytearray', 'bytes', 
    'callable', 'chr', 'classmethod', 'compile', 'complex', 'copyright', 'credits', 'delattr', 'dict', 'dir', 'divmod', 
    'enumerate', 'eval', 'exec', 'exit', 'filter', 'float', 'format', 'frozenset', 'getattr', 'globals', 
    'hasattr', 'hash', 'help', 'hex', 'id', 'input', 'int', 'isinstance', 'issubclass', 'iter', 
    'len', 'license', 'list', 'locals', 'map', 'max', 'memoryview', 'min', 'next', 
    'object', 'oct', 'open', 'ord', 'pow', 'print', 'property', 'quit', 
    'range', 'repr', 'reversed', 'round', 'set', 'setattr', 'slice', 'sorted', 'staticmethod', 'str', 'sum', 'super', 
    'tuple', 'type', 'vars', 'zip'
]
"""

"""
help(input)

input(prompt=None, /)
    Read a string from standard input.  The trailing newline is stripped.

    The prompt string, if given, is printed to standard output without a
    trailing newline before reading input.

    If the user hits EOF (*nix: Ctrl-D, Windows: Ctrl-Z+Return), raise EOFError.
    On *nix systems, readline is used if available.
"""

## filter()

fi = filter(None,[1,0,False,True])
rfi = list(fi)
print(rfi)
    # [1, True]

def odd(x):
    return int(x)%2

temp = range(10)
re = filter(odd,temp)
lre = list(re)
print(lre)
    # [1, 3, 5, 7, 9]

re = filter(lambda x : x % 2, range(10))
lre = list(re)
print(lre)
    # [1, 3, 5, 7, 9]

## map()

me = map(lambda x : x*2, range(10))
lme = list(me)

print(lme)
    # [0, 2, 4, 6, 8, 10, 12, 14, 16, 18]

