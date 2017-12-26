r = 6
c = 7
n = 3

start = [
  ".......",
  "...0...",
  "....0..",
  ".......",
  "00.....",
  "00....."
]
new_start = [
  "..O",
  "..O",
  "..O"
]

grid = Array.new(r){Array.new}
start.each_with_index do |row, idx|
  grid[idx] = row.chars.map{|char|char == "." ? -2 : 0}
end

def print_grid(grid)
  grid.each{|row|puts row.map{|tile|tile < 0 ? "." : "O"}.join("")}
end



def neighbour(r,c,i,j)
  [[i+1,j],[i-1,j],[i,j+1],[i,j-1]].select do |x,y|
    x >= 0 && y >= 0 && x < r && y < c
  end
end

def step(grid)
  # new_grid = grid.dup
  r, c = grid.length, grid[0].length
  r.times do |i|
    c.times do |j|
      if grid[i][j] == 2
        grid[i][j] = -1
        neighbour(r,c,i,j).each do |x,y|
          case grid[x][y]
          when 2
          else
            grid[x][y] = -2
          end
        end
      else
        grid[i][j] += 1
      end
    end
  end
  grid
end

new_grid = step(grid)
cnt = 1
while cnt < n
  new_grid = step(new_grid)
  cnt += 1
end
print_grid(new_grid)






def explode(grid)
  new_grid = grid.dup
  r, c = grid.length, grid[0].length
  r.times do |i|
    c.times do |j|
      if new_grid[i][j] == 2
        neighbour(r,c,i,j).each do |x,y|
          case new_grid[x][y]
          when 2
          else
            grid[x][y] = -2
          end
        end
        new_grid[i][j] = -2
      else
        new_grid[i][j] += 1
      end
      
      
    end
  end
  grid
end




# new_n = n % 3
# cnt = n / 3
# cnt.times do |_|
#   explode(grid)
#   grid = grid.map{|row|row.map{|cell|cell == "1" ? "." : "0"}}
# end
# join_grid = grid.each{|row|puts row.join("")}
# case new_n
# when 0
#   join_grid
# when 1
#   join_grid
# when 2
#   len = grid.length
#   puts grid.map{|row|"0" * len}
# end



