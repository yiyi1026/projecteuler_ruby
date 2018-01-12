'''
Given a m x n matrix, if an element is 0, set its entire row and column to 0. Do it in place.

'''

def set_zeroes(matrix)
  m, n = matrix.length, matrix[0].length
  hor = {}
  ver = {}

  m.times do |i|
    n.times do |j|
      if matrix[i][j] == 0
        hor[i] = true
        ver[j] = true
      end
    end
  end
  hor.keys.each do |i|
    matrix[i] = [0] * n
  end

  ver.keys.each do |j|
    m.times do |i|
      matrix[i][j] = 0
    end
  end

  matrix
end