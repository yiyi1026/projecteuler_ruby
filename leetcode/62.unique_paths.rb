'''
A robot is located at the top-left corner of a m x n grid (marked 'Start' in the diagram below).

The robot can only move either down or right at any point in time. The robot is trying to reach the bottom-right corner of the grid (marked 'Finish' in the diagram below).

How many possible unique paths are there?


Above is a 3 x 7 grid. How many possible unique paths are there?

Note: m and n will be at most 100.
'''

def unique_paths(m, n)
  return 1 if m == 1 || n == 1
  m, n = n, m if m > n
  (n..(m + n - 2)).reduce(1,:*) / (1...m).reduce(1,:*)
end

p unique_paths(3,3)