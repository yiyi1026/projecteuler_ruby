'''
Given a collection of distinct numbers, return all possible permutations.

For example,
[1,2,3] have the following permutations:
[
  [1,2,3],
  [1,3,2],
  [2,1,3],
  [2,3,1],
  [3,1,2],
  [3,2,1]
]
'''

def permute(nums)
  return [[]] if nums.empty?
  return [nums] if nums.length == 1
  prev = permute(nums[0...-1])
  last = nums.last
  result = {}
  prev.map do |sub|
    (sub.length+1).times do |i|
      result[sub[0...i] + [last] + sub[i..-1]] = true
    end
  end
  result.keys
end

p permute([1,2,3])