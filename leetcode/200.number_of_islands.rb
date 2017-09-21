def num_islands(grid)
  row = grid.length
  return 0 if row == 0
  col = grid[0].length
  hash = {}
  count = 0
  grid.each_with_index do |arr, r_idx|
    arr.each_char.with_index do |el, c_idx|
      position = [r_idx, c_idx]
      next if grid[r_idx][c_idx] == '0'
      add = false
      island(position,grid).each do |pos|
        if hash[pos]
          break
        else
          add = true
          hash[pos] = true
        end
      end
      count += 1 if add
    end
  end
  count
end

def island(pos, grid)
  hash = {}
  arr = [pos]
  hash[pos] = true
  until arr.empty?
    el = arr.pop
    positions = connected(el, grid)
    positions.each do |tile|
      x,y = tile
      if (grid[x][y] == '0') || hash[tile]
        next
      else
        hash[tile] = true
        arr << tile
      end
    end
  end
  hash.keys
end

def connected(pos, grid)
  row = grid.length
  col = grid[0].length

  arr = []
  x, y = pos
  arr = [[x-1, y],[x, y-1], [x, y+1], [x+1, y]]
  arr.select{|el|el[0]>= 0 && el[1]>=0 && el[0]< row && el[1] < col}
end

# grid = ["11000","11000","00100","00011"]
grid = ['1100','1000','0011','1001']
p num_islands(grid)
# p connected([2,3],grid)
# p island([2,3],grid)