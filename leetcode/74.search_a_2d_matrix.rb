'''
Write an efficient algorithm that searches for a value in an m x n matrix. This matrix has the following properties:

Integers in each row are sorted from left to right.
The first integer of each row is greater than the last integer of the previous row.
For example,

Consider the following matrix:

[
  [1,   3,  5,  7],
  [10, 11, 16, 20],
  [23, 30, 34, 50]
]
Given target = 3, return true.

'''

def search_matrix(matrix, target)
  matrix.each do |row|
    case row[0] <=> target
      when -1
        next if row.last < target
        return row.include?(target)
      when 1
        return false
      when 0
        return true
      end
  end
  false
end

matrix = [
  [1,   3,  5,  7],
  [10, 11, 16, 20],
  [23, 30, 34, 50]
]

p search_matrix(matrix, 3)