'''
46. Permutations
Medium

Share
Given a collection of distinct integers, return all possible permutations.

Example:

Input: [1,2,3]
Output:
[
  [1,2,3],
  [1,3,2],
  [2,1,3],
  [2,3,1],
  [3,1,2],
  [3,2,1]
]
'''

class Solution:
    def permute(self, nums):
        """
        :type nums: List[int]
        :rtype: List[List[int]]
        """
        if len(nums) == 0: return [[]]
        
        before = self.permute(nums[:-1])
        newEl = nums[-1]
        result = []
        for sub in before:
          for i in range(len(sub)+1):
            arr = sub[0:i] + [newEl] + sub[i:]
            result.append(arr)
        return result