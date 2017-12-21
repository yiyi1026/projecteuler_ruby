def mat?(matrix)
  row = matrix.map{|r|r.reduce(0,:+)}.sort
  col = matrix.transpose.map{|c|c.reduce(0,:+)}.sort
  row == col
end

p mat?([
  [1,2],
  [3,1]
])