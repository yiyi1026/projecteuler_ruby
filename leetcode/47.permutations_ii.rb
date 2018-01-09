'''
Given a collection of numbers that might contain duplicates, return all possible unique permutations.

For example,
[1,1,2] have the following unique permutations:
[
  [1,1,2],
  [1,2,1],
  [2,1,1]
]
'''

def permute_unique(nums)
  return [[]] if nums.empty?
  return [nums] if nums.length == 1
  prev = permute_unique(nums[0...-1])
  last = nums.last
  result = {}
  prev.map do |sub|
    (sub.length+1).times do |i|
      result[sub[0...i] + [last] + sub[i..-1]] = true
    end
  end
  result.keys
end

p permute_unique([1,1,2])