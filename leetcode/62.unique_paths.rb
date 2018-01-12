'''
A robot is located at the top-left corner of a m x n grid (marked \'Start\' in the diagram below).

The robot can only move either down or right at any point in time. The robot is trying to reach the bottom-right corner of the grid (marked \'Finish\' in the diagram below).

How many possible unique paths are there?


Above is a 3 x 7 grid. How many possible unique paths are there?

Note: m and n will be at most 100.
'''
# mathmatical solution
def unique_paths1(m, n)
  return 1 if m == 1 || n == 1
  m, n = n, m if m > n
  (n..(m + n - 2)).reduce(1,:*) / (1...m).reduce(1,:*)
end

def unique_paths(m, n)
  matrix = Array.new(m){Array.new(n,0)}
  for i in (0...m)
    matrix[i][0] = 1
  end
  for j in (0...n)
    matrix[0][j] = 1
  end

  for k in (1...m)
    for l in (1...n)
      matrix[k][l] = matrix[k-1][l] + matrix[k][l-1]
    end
  end
  matrix[m-1][n-1]
end

p unique_paths(3,3)