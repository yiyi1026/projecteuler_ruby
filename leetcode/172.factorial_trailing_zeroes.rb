'''
Given an integer n, return the number of trailing zeroes in n!.

Note: Your solution should be in logarithmic time complexity.

Credits:
Special thanks to @ts for adding this problem and creating all test cases.
'''

# 10 = 2 * 5
# cnt = how many times 5 exist in 1..n, iteratively

def trailing_zeroes(n)
  cnt = 0
  until n < 5
    cnt += n/5
    n /= 5
  end
  cnt
end