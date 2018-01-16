'''
Given a matrix of m x n elements (m rows, n columns), return all elements of the matrix in spiral order.

For example,
Given the following matrix:

[
 [ 1, 2, 3 ],
 [ 4, 5, 6 ],
 [ 7, 8, 9 ]
]
You should return [1,2,3,6,9,8,7,4,5].
'''

def spiral_order(matrix)
  return matrix if matrix.empty? 
  m, n = matrix.length, matrix[0].length
  return matrix.reduce([]){|el, acc|el+ acc} if m == 1 || n == 1

  selected = []
  while matrix.length > 0
    break if matrix.all?{|r|r.empty?}

    selected += matrix.shift
    break if matrix.empty?
    matrix.each do |row|
      selected << row.pop
    end
    break if matrix.all?{|r|r.empty?}
    last = matrix.last
    until last.empty?
      selected << last.pop
    end
    matrix.pop

    matrix.length.times do |i|
      idx = - i - 1
      next if matrix[idx].empty?
      selected << matrix[idx].shift
    end
  end
  selected
end

matrix = [
  [ 1, 2, 3 ],
  [ 4, 5, 6 ],
  [ 7, 8, 9 ]
 ]

matrix = [
[7],
[9],
[6]  
]

matrix = [[1,11],[2,12],[3,13],[4,14],[5,15],[6,16],[7,17],[8,18],[9,19],[10,20]]

p spiral_order(matrix)