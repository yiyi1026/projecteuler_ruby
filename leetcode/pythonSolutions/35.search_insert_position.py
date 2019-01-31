'''
35. Search Insert Position
Easy

1094

156

Favorite

Share
Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You may assume no duplicates in the array.

Example 1:

Input: [1,3,5,6], 5
Output: 2
Example 2:

Input: [1,3,5,6], 2
Output: 1
Example 3:

Input: [1,3,5,6], 7
Output: 4
Example 4:

Input: [1,3,5,6], 0
Output: 0
'''

class Solution:
    def searchInsert(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: int
        """
        
        if nums[0] >= target: return 0
        i = 0
        
        while i < len(nums) - 1:
          j = i + 1
          if nums[j] >= target:
            return j
          i += 1
        return i + 1