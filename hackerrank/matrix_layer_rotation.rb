def extract_loop(matrix, pos)
  # pos should be the first position
  n, m = matrix.length, matrix[0].length
  x, y = pos
  arr = [[x,y]]
  i = 1
  # j = 0

  # right 
  until 2 * y + i == m - 1
    arr << [x,y+i]
    i += 1
  end
  y = y + i
  i = 1
  arr << [x, y]

  # down
  until 2 * x + i == n - 1
    arr << [x+i, y]
    i += 1
  end

  x = x + i
  i = 1
  arr << [x,y]
  
  #left
  until 2* y - i == m - 1
    arr << [x, y-i]
    i += 1
  end

  y = y - i
  i = 1
  arr << [x, y]

  #up
  until x - i == pos[0]
    arr << [x - i, y]
    i += 1
  end
  arr
end

def matrixRotation(matrix, r)
  m, n = matrix.length, matrix[0].length
  
  cnt = [m,n].min/2
  new_matrix = Array.new(m){Array.new(n,0)}

  i = 0
  start = [0, 0]
  x, y = start
  until i == cnt
    start = [x+i, y+i]
    poses = extract_loop(matrix,start)
    values = poses.map {|pos|matrix[pos[0]][pos[1]]}

    values = values.rotate(r)
    poses.each_with_index do |pos, idx|
      a, b = pos
      new_matrix[a][b] = values[idx]
    end
    i += 1
  end
  new_matrix
end

n = 7
m = 6
r = 31


matrix = [
[1, 2, 3, 4,5,6],
[7, 8, 9, 10,11,12],
[13, 14, 15, 16,17,18],
[19, 20, 21, 22,23,24],
[25, 26,27,28,29,30],
[31,32,33,34,35,36],
[35,36,37,38,39,40]
]

# matrix = [
# [1,2],
# [3,4] ,
# [5,6] 
# ]
'starting matrix'
matrix.each{|r|p r.join(" ")}


# arr = extract_loop(matrix,[1,1])
# sol = []
# arr.each do |pos|
#   sol << matrix[pos[0]][pos[1]]
# end
p 'result'
matrixRotation(matrix, r).each{|r|p r.join(" ")}