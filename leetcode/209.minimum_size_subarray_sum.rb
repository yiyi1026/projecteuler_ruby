'''209. Minimum Size Subarray Sum
Given an array of n positive integers and a positive integer s, find the minimal length of a contiguous subarray of which the sum ≥ s. If there isn\'t one, return 0 instead.

Example: 

Input: s = 7, nums = [2,3,1,2,4,3]
Output: 2
Explanation: the subarray [4,3] has the minimal length under the problem constraint.
Follow up:
If you have figured out the O(n) solution, try coding another solution of which the time complexity is O(n log n). '''

# @param {Integer} s
# @param {Integer[]} nums
# @return {Integer}
def min_sub_array_len(s, nums)
  len = nums.length
  min_length = len + 1
  sum = 0
  
  j = 0
  for i in 0...len
    while j < len && sum < s
      sum += nums[j]
      j += 1
    end
    if sum >= s
      min_length = [j-i, min_length].min
      sum -= nums[i]
    end
    
  end
  
  return min_length
  
end

nums = [2,3,1,2,4,3]

s = 7

p min_sub_array_len(s, nums)