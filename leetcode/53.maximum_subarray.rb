class Solution(object):
  def maxSubArray(self, nums):
    # 1. O(nlgn) 
    # divide and conquer
    # the largest sum contiguous subarray is either in the left half side of array, or right side, or (part of left and part of right)


    # 2. O(n)
    # max_ending_here is the largest sum of subarray up to this position
    # initialize max_ending_here and max_so_far as the first element of the array
    max_so_far = nums[0]
    max_ending_here = nums[0]

    for num in nums[1:]:
      max_ending_here = max(num, num + max_ending_here)
      max_so_far = max(max_so_far, max_ending_here)
    return max_so_far

    
