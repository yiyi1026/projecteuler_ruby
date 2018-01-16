'''
Given a collection of integers that might contain duplicates, nums, return all possible subsets (the power set).

Note: The solution set must not contain duplicate subsets.

For example,
If nums = [1,2,2], a solution is:

[
  [2],
  [1],
  [1,2,2],
  [2,2],
  [1,2],
  []
]
'''
require 'set'

def subsets_with_dup(nums)
  return [[]] if nums.empty?
  prev = subsets_with_dup(nums[0...-1])
  new_el = nums.last

  new_sub = []
  cnt = nums.count(new_el) - 1
  prev.each do |sub|
    # subset increases only when the new_el in the sub has the same amouts of new_el as the complete nums array.
    next unless sub.count(new_el) == cnt
    new_sub << sub + [new_el]
  end
  prev + new_sub

end

nums = [1,1,1]
nums = [1,1,2]
nums = [1,1,2,2]

p subsets_with_dup(nums)
