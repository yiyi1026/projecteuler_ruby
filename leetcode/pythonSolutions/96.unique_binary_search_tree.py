'''
96. Unique Binary Search Trees
Medium

1436

61

Favorite

Share
Given n, how many structurally unique BST's (binary search trees) that store values 1 ... n?

Example:

Input: 3
Output: 5
Explanation:
Given n = 3, there are a total of 5 unique BST's:

   1         3     3      2      1
    \       /     /      / \      \
     3     2     1      1   3      2
    /     /       \                 \
   2     1         2                 3
'''
class Solution(object):
    def numTrees(self, n):
        """
        :type n: int
        :rtype: int
        """
        if n < 2:
          return 1
        hash = {}
        hash[0] = 1
        hash[1] = 1
        for k in range(2, n+1):
          hash[k] = 0
        for i in range(2, n+1):
          for r in range(1, i+1):
            hash[i] += hash[i-r] * hash[r-1]
        return hash[n]

sol = Solution()
# for i in range(4):
print(sol.numTrees(5))