'''
Given a m x n grid filled with non-negative numbers, find a path from top left to bottom right which minimizes the sum of all numbers along its path.

Note: You can only move either down or right at any point in time.

Example 1:
[[1,3,1],
 [1,5,1],
 [4,2,1]]
Given the above grid map, return 7. Because the path 1→3→1→1→1 minimizes the sum.
'''

def min_path_sum(grid)
  m, n = grid.length, grid[0].length
  (1...n).each do |j|
    grid[0][j] += grid[0][j-1]
  end

  (1...m).each do |i|
    grid[i][0] += grid[i-1][0]
  end

  for k in (1...m)
    for l in (1...n)
      min = [grid[k-1][l], grid[k][l-1]].min
      grid[k][l] += min
    end
  end

  grid[m-1][n-1]
end

grid = [
  [1,3,1],
  [1,5,1],
  [4,2,1]
]

p min_path_sum(grid)