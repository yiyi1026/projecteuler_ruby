'''
120. Triangle
Medium

Given a triangle, find the minimum path sum from top to bottom. Each step you may move to adjacent numbers on the row below.

For example, given the following triangle

[
     [2],
    [3,4],
   [6,5,7],
  [4,1,8,3]
]
The minimum path sum from top to bottom is 11 (i.e., 2 + 3 + 5 + 1 = 11).

Note:

Bonus point if you are able to do this using only O(n) extra space, where n is the total number of rows in the triangle.

'''
class Solution(object):
    def minimumTotal(self, triangle):
        """
        :type triangle: List[List[int]]
        :rtype: int
        """
        m = len(triangle)
        arr = [ [ 0 for y in range( x+1) ] for x in range(m) ]
        arr[0][0] = triangle[0][0]
        for i in range(1, m):
          for j in range(i+1):
            if j == 0:
              arr[i][j] = arr[i-1][j] + triangle[i][j]
            elif j == i:
              arr[i][j] = arr[i-1][j-1] + triangle[i][j]
            else:
              arr[i][j] = min([arr[i-1][j], arr[i-1][j-1]]) + triangle[i][j]
        return min(arr[-1])
