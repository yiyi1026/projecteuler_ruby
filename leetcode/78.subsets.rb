'''
Given a set of distinct integers, nums, return all possible subsets (the power set).

Note: The solution set must not contain duplicate subsets.

For example,
If nums = [1,2,3], a solution is:

[
  [3],
  [1],
  [2],
  [1,2,3],
  [1,3],
  [2,3],
  [1,2],
  []
]'''

def subsets(nums)
  return [[]] if nums.empty?
  prev = subsets(nums[0...-1])
  last = nums.last
  prev + prev.map{|sub|sub+[last]}
end

p subsets([1,2,3])