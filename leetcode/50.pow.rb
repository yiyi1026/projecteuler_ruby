'''
Implement pow(x, n).


Example 1:

Input: 2.00000, 10
Output: 1024.00000
Example 2:

Input: 2.10000, 3
Output: 9.26100
'''

def my_pow(x, n)
  return 1 if n == 0
  return 1 / my_pow(x, -n) if n < 0
  if n % 2 == 0
    my_pow(x, n/2) ** 2
  else
    my_pow(x,(n-1)/2) ** 2 * x
  end
end

p my_pow(3,2)