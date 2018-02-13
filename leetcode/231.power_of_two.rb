'''
Given an integer, write a function to determine if it is a power of two.

'''

def is_power_of_two(n)
  return false if n < 1
  n & (n-1) == 0
end

p is_power_of_two(4)