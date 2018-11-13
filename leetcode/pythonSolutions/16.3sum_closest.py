'''
16. 3Sum Closest
Medium
743
57


Given an array nums of n integers and an integer target, find three integers in nums such that the sum is closest to target. Return the sum of the three integers. You may assume that each input would have exactly one solution.

Example:

Given array nums = [-1, 2, 1, -4], and target = 1.

The sum that is closest to the target is 2. (-1 + 2 + 1 = 2).
'''

class Solution:
    def threeSumClosest(self, nums, target):
        """
        :type nums: List[int]
        :type target: int
        :rtype: int
        """
        nums.sort()
        n = len(nums)
        st_idx = 0
        
        nearest = sum(nums[0:3])

        st_idx = 0
        for st_idx in range(n - 2):
          en_idx = n-1
          pointer = st_idx + 1
          while pointer < en_idx:
            current_sum =nums[st_idx] + nums[en_idx] + nums[pointer]
            if current_sum == target:
              return current_sum
            elif abs(target-current_sum) < abs(target-nearest):
              nearest = current_sum
            if current_sum < target:
              pointer += 1
            elif current_sum > target:
              en_idx -= 1
        return nearest

nums = [-1, 2, 1, -4]
target =  1
sol = Solution()
print(sol.threeSumClosest(nums, target))
