# def multiplicationTable(n):
#     return list(map(lambda x: range(x,x*(n+1),x), range(1,n+1)))
from collections import deque

# print multiplicationTable(5)

# print sorted(set(map(lambda x: x, 'abc EFD')))
# a = []
# b = [5,2,1,4]
digits = [5,2,3,1,4]
# print b < a and b < a
# print set(a) < set(b)
# print a < b
# print b < c
# print c[2:]
# print c[:2]
# print c[2:] + c[:2]
n = 5
# res = [deque(digits) for _ in range(n)]
# map(lambda x: res[x].rotate(n-x),range(n))
# print res

from itertools import dropwhile

def memoryPills(pills):
    gen = dropwhile(lambda x: len(x) % 2 > 0, pills)
    next(gen)
    # return next(gen)
    return [next(gen) for _ in range(3)]
    # return gen
    # return [next(gen) for _ in range(3)]
# print memoryPills(['abc','abcd','abx', 'ab'])

print int('3')