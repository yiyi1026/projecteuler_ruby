'''
15. 3Sum
Medium

Given an array nums of n integers, are there elements a, b, c in nums such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.

Note:

The solution set must not contain duplicate triplets.

Example:

Given array nums = [-1, 0, 1, 2, -1, -4],

A solution set is:
[
  [-1, 0, 1],
  [-1, -1, 2]
]
'''

class Solution:
    def threeSum(self, nums):
        """
        :type nums: List[int]
        :rtype: List[List[int]]
        """
        nums.sort()
        result = []
        length = len(nums)
        for i in range(length):
          if i > 0 and nums[i] == nums[i-1]:
            continue
          st_idx = i + 1
          end_idx = length - 1
          while st_idx < end_idx:
            current_sum = nums[i] + nums[st_idx] + nums[end_idx]
            if current_sum == 0:
              result.append([nums[i], nums[st_idx], nums[end_idx]])
              st_idx = st_idx + 1
              while st_idx < end_idx and nums[st_idx] == nums[st_idx-1]:
                st_idx = st_idx + 1
              end_idx = end_idx - 1
              while st_idx < end_idx and nums[end_idx] == nums[end_idx+1]:
                end_idx = end_idx - 1
            elif current_sum > 0:
              end_idx = end_idx - 1
              while st_idx < end_idx and nums[end_idx] == nums[end_idx+1]:
                end_idx = end_idx - 1
            else:
              st_idx = st_idx + 1
              while st_idx < end_idx and nums[st_idx] == nums[st_idx-1]:
                st_idx = st_idx + 1
        return result

list = [-2,0,0,2,2]
sol = Solution()
print(sol.threeSum(list))