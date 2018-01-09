'''
You are given an n x n 2D matrix representing an image.

Rotate the image by 90 degrees (clockwise).

Note:
You have to rotate the image in-place, which means you have to modify the input 2D matrix directly. DO NOT allocate another 2D matrix and do the rotation.

Example 1:

Given input matrix = 
[
  [1,2,3],
  [4,5,6],
  [7,8,9]
],

rotate the input matrix in-place such that it becomes:
[
  [7,4,1],
  [8,5,2],
  [9,6,3]
]
Example 2:

Given input matrix =
[
  [ 5, 1, 9,11],
  [ 2, 4, 8,10],
  [13, 3, 6, 7],
  [15,14,12,16]
], 

rotate the input matrix in-place such that it becomes:
[
  [15,13, 2, 5],
  [14, 3, 4, 1],
  [12, 6, 8, 9],
  [16, 7,10,11]
]
'''

def rotate(matrix)
  n = matrix.length
  hash = {}
  matrix.each_with_index do |row, idx_r|
    row.each_with_index do |tile, idx_c|
      next if hash[[idx_r,idx_c]]
      matrix[idx_r][idx_c], matrix[idx_c][idx_r] = matrix[idx_c][idx_r], matrix[idx_r][idx_c]
      hash[[idx_c,idx_r]] = true
    end
  end
  matrix.each_with_index do |row, idx_r|
    row.each_with_index do |tile, idx_c|
      next if idx_c >= n / 2
      matrix[idx_r][idx_c], matrix[idx_r][n-1- idx_c] = matrix[idx_r][n-1- idx_c], matrix[idx_r][idx_c]
    end
  end

  matrix
end

matrix = [
  [ 5, 1, 9,11],
  [ 2, 4, 8,10],
  [13, 3, 6, 7],
  [15,14,12,16]
]
p rotate(matrix)