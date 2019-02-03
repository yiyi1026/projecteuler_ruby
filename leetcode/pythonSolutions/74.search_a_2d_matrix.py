'''
74. Search a 2D Matrix
Medium

Share
Write an efficient algorithm that searches for a value in an m x n matrix. This matrix has the following properties:

Integers in each row are sorted from left to right.
The first integer of each row is greater than the last integer of the previous row.
Example 1:

Input:
matrix = [
  [1,   3,  5,  7],
  [10, 11, 16, 20],
  [23, 30, 34, 50]
]
target = 3
Output: true
Example 2:

Input:
matrix = [
  [1,   3,  5,  7],
  [10, 11, 16, 20],
  [23, 30, 34, 50]
]
target = 13
Output: false
'''

class Solution:
    def searchMatrix(self, matrix, target):
        """
        :type matrix: List[List[int]]
        :type target: int
        :rtype: bool
        """
        idx = self.bsearchRowIndex(matrix, target)
        print(idx)
        if idx < 0: 
          return False
        return self.bsearch(matrix[idx], target) >= 0
          

        
    def targetRowIndex(self, matrix, target):
      for i in range(len(matrix)):
        if len(matrix[i]) == 0:
          return -1
        if matrix[i][-1] >= target:
          return i
      return -1

    def bsearchRowIndex(self, matrix, target):
      if len(matrix[0]) == 0: return -1
      arr = [ matrix[x][-1] for x in range(len(matrix))]
      for i in range(len(arr)):
        if arr[i] >= target: return i
      return -1

    def bsearch(self, array, target):
      if len(array) == 0: return -1
      if len(array) == 1 and array[0] == target: return 0
      midIdx = len(array)//2
      if array[midIdx] == target:
        return midIdx
      elif array[midIdx] > target:
        return self.bsearch(array[0:midIdx], target)
      else:
        right = array[midIdx+1:]
        rightIdx = self.bsearch(right, target)
        if rightIdx >= 0:
          return midIdx + 1 + rightIdx
        else:
          return -1
      

matrix = [[1,3,5]]
target = 5
sol = Solution()
print(sol.searchMatrix(matrix, target))
