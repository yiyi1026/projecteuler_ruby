'''
Given an array S of n integers, are there elements a, b, c in S such that a + b + c = 0? Find all unique triplets in the array which gives the sum of zero.

Note: The solution set must not contain duplicate triplets.

For example, given array S = [-1, 0, 1, 2, -1, -4],

A solution set is:
[
  [-1, 0, 1],
  [-1, -1, 2]
]
'''

def three_sum(nums)
  nums = nums.sort
  p nums
  result = []
  n = nums.length
  i = 0
  while i < n - 2
    j = i + 1
    k = n - 1
    while j < k
      case nums[j] + nums[k] + nums[i] <=> 0
      when 0
        result << [nums[i], nums[j],nums[k]]
        j += 1
        # these one line while loop is to skip duplicate solution
        j += 1 while j < k && nums[j-1] == nums[j]
        k -= 1
        k -= 1 while j < k && nums[k] == nums[k+1]
      when -1
        j += 1
      when 1
        k -= 1
      end

    end
    i += 1
    i += 1 while i < n && nums[i] == nums[i-1]
  end
  result
end

p three_sum([-1, 0, 1, 2, -1, -4])