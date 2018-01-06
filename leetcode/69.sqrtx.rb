'''
Implement int sqrt(int x).

Compute and return the square root of x.

x is guaranteed to be a non-negative integer.


Example 1:

Input: 4
Output: 2
Example 2:

Input: 8
Output: 2
Explanation: The square root of 8 is 2.82842..., and since we want to return an integer, the decimal part will be truncated.

'''

def square_root(x)
  return x if x == 0 || x == 1
  i = 1
  until (i+1)**2 > x
    i += 1
  end

  i

end

p square_root(2)