#----------------------------------------------------------------------------
#Required functions
def map(func,L):
    a=[]
    for i in L:
        a+=[func(i)]
    return a

def reduce(function, iterable, initializer=None):
    it = iter(iterable)
    if initializer is None:
        value = next(it)
    else:
        value = initializer
    for element in it:
        value = function(value, element)
    return value

def filter(func,L):
    a=[]
    for i in L:
        if func(i):
            a+=[i]
    return a

#----------------------------------------------------------------------------
#Data Types and operations

3.5*2
3.5+3.5
10-3
35/5
7
7.0
"7"
'7'

#----------------------------------------------------------------------------
#Variables

a=7
b=7.0
c="7"
d='7'

#----------------------------------------------------------------------------
#Lists, Tuples, and Dictionaries

a=[0,1,2]
b=range(3)
c=range(0,3)
d=range(len(a))

#----------------------------------------------------------------------------
#Basic Boolean Expressions/Truth tables

e1=not True or False
e2=True or not False
e3=not(True or False)
#   x | y | output
#   1 | 1 | 0
#   0 | 1 | 1
#   1 | 0 | 1
#   0 | 0 | 0
x=0
y=1


#----------------------------------------------------------------------------
#Indexing, Slicing, and Keys

a[0]==[0,1,2][0]
b[0:1]==[0]

#----------------------------------------------------------------------------
#Function definitions/Lambda expressions

def sum1(x,y):
    return x+y

sum2 = lambda x,y: x+y

sum1(1,2)==sum2(1,2)

#----------------------------------------------------------------------------
#Functional programming

def sumList1(L):
    return reduce(lambda x,y:x+y,L)

sumList2 = lambda L: reduce(lambda x,y: x+y, L)

def add2(L):
    return map(lambda x: x+2, L)

removeEvens = lambda L: filter(lambda x: x%2 == 1, L)

#----------------------------------------------------------------------------
#Recursion


































#----------------------------------------------------------------------------
#Memoization
















#----------------------------------------------------------------------------
#Algorithms (Knapsack, sorts)

































#----------------------------------------------------------------------------
#Loops