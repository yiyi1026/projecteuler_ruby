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
    m, n = n, m if m > n
    if m == 1
      return 0 if grid[0].all?{|el|el==0}
    end


end