'''
240. Search a 2D Matrix II
Medium

Share
Write an efficient algorithm that searches for a value in an m x n matrix. This matrix has the following properties:

Integers in each row are sorted in ascending from left to right.
Integers in each column are sorted in ascending from top to bottom.
Example:

Consider the following matrix:

[
  [1,   4,  7, 11, 15],
  [2,   5,  8, 12, 19],
  [3,   6,  9, 16, 22],
  [10, 13, 14, 17, 24],
  [18, 21, 23, 26, 30]
]
Given target = 5, return true.

Given target = 20, return false.
'''



class Solution:
    def searchMatrix(self, matrix, target, i = None, j = 0):
        """
        :type matrix: List[List[int]]
        :type target: int
        :rtype: bool
        """
        
        m = len(matrix)
        i = m - 1 if i is None else i
        if i < 0 or j == len(matrix[0]):
          return False
        
        # pivot is the lowerleft position of submatrix 
        pivot = matrix[i][j]
        
        if pivot == target:
          return True
        elif pivot > target:
          return self.searchMatrix(matrix, target, i - 1, j)
        else:
          return self.searchMatrix(matrix, target, i, j + 1)
        
        