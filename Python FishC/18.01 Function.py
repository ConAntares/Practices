#### Function in Python

## Basic Function

def my_first_function():
    print("Hello, Python!")
    print("Hello, World!")

my_first_function()
    # Hello, Python!
    # Hello, World!

def my_second_function(name):
    print("I love you, %s!" %(name))

my_second_function("Hina")
    # I love you, Hina!

def my_add(num1,num2):
    result = num1 + num2
    print(result)

my_add(12,34)
    # 46

## Parameter and Argument

def function1(str):
    "The document of function1."
    print(str)

parameter = "Hello"
function1(parameter)
    # Hello

function1("Argument")
    # Argument

## Function Document

function1.__doc__
    # The document of function1.

help(function1)
    # The document of function1.

## Keyword Parameter

def SaySome(name, words):
    print(name + " -> " + words)

SaySome('Programming','Change the World')
    # Programming -> Change the World

SaySome('Change the World','Programming')
    # Change the World -> Programming

SaySome(words='Change the World', name='Programming')
    # Programming -> Change the World

## Collecting Parameter / Variable parameter

def length(*params):
    print('Length of first parameter: ',len(params[0]))
    print('Length of second parameter: ',len(params[1]))

length("Hello","World")
    # Length of first parameter:  5
    # Length of second parameter:  5

def len_exp(*params,exp):
    print('Length of first parameter: ',len(params[0]))
    print('Length of second parameter: ',len(params[1]))
    print(exp)

len_exp("Hello","World", exp="Python")
    # Length of first parameter:  5
    # Length of second parameter:  5
    # Python

def back():
    return ["Hello, Python!"]

tex = back()
print(tex)
    # ['Hello, Python!']

## Local and Global Variables

source = float(input("Please input the source price. \n"))
rate = float(input("Please input the rate. \n"))

def discounts(price,rate):
    print("The source price is:",source)            # Global Variable
    fin = price * rate                              # Local Variable
    return fin

new = discounts(source,rate)
print("The new price is:",new)

## Global Keyword

source = 1

def my_fun1():
    source = 10
    print(source)

my_fun1()
    # 10
print(source)
    # 1

gl_source = 1

def my_fun2():
    global gl_source 
    gl_source = 10
    print(gl_source)

print(gl_source)
    # 10

##  Internal Function

def fun1():
    print("fun1 is working.")
    def fun2():
        print("fun2 is working.")
    fun2()

fun1()
    # fun1 is working.
    # fun2 is working.

## Closure

def fun_x(x):
    def fun_y(y):
        return x * y
    return fun_y

i = fun_x(8)
re = i(5)
print(re)
    # 40

re = fun_x(8)(5)
print(re)
    # 40


def fun_u(num):
    x = float(num)
    def fun_d():
        nonlocal x
        x = x*x
        return x
    return fun_d()

re = fun_u(6)
print(re)
    # 36.0

## Lambda Expression and Anonymous Function

def ds(x):
    return 2*float(x) + 1

re = ds(10)
print(re)
    # 21

re = lambda x: 2*float(x) + 1

print(re(10))
    # 21

def add(x,y):
    return float(x)+float(y)

print(add(3,4))
    # 7.0

re = lambda x,y : float(x)+float(y)
print(re(3,4))
    # 7.0