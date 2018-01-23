'''
Description:

Count the number of prime numbers less than a non-negative number, n.

Credits:
Special thanks to @mithmatt for adding this problem and creating all test cases.
'''
require 'prime'
def count_primes(n)
  return 0 if n <= 2
  Prime.each(n-1).count
end

p count_primes(3)