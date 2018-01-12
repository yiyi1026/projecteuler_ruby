'''
Follow up for "Unique Paths":

Now consider if some obstacles are added to the grids. How many unique paths would there be?

An obstacle and empty space is marked as 1 and 0 respectively in the grid.

For example,
There is one obstacle in the middle of a 3x3 grid as illustrated below.

[
  [0,0,0],
  [0,1,0],
  [0,0,0]
]
The total number of unique paths is 2.

Note: m and n will be at most 100.
'''

def unique_paths_with_obstacles(grid)
    m, n = grid.length, grid[0].length
    if grid[0][0] == 0
      # obstacle = false
      grid[0][0] = 1
    else
      # obstacle = true
      grid[0][0] = 0
    end
    (1...n).each do |j|
      if grid[0][j-1] == 1 && grid[0][j] == 0
        grid[0][j] = 1
      else
        grid[0][j] = 0
      end
    end

    (1...m).each do |i|
      if grid[i-1][0] == 1 && grid[i][0] == 0
        grid[i][0] = 1
      else
        grid[i][0] = 0
      end
    end

    for k in (1...m)
      for l in (1...n)
        if grid[k][l] == 1
          grid[k][l] = 0
        else
          grid[k][l] = grid[k-1][l] + grid[k][l-1]
        end
      end
    end
    # grid
    grid[m-1][n-1]
end

grid = [
  [0,0,0],
  [0,1,0],
  [0,0,0]
]

p unique_paths_with_obstacles(grid)