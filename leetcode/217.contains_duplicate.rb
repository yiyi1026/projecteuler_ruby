'''
Given an array of integers, find if the array contains any duplicates. Your function should return true if any value appears at least twice in the array, and it should return false if every element is distinct.
'''

def contains_duplicate(nums)
  hash = {}
  nums.each do |num|
    return true if hash[num]
    hash[num] = true
  end
  false
end