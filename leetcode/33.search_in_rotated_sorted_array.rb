'''
Suppose an array sorted in ascending order is rotated at some pivot unknown to you beforehand.

(i.e., 0 1 2 4 5 6 7 might become 4 5 6 7 0 1 2).

You are given a target value to search. If found in the array return its index, otherwise return -1.

You may assume no duplicate exists in the array.
'''

def search(nums, target)
  return -1 if nums.empty?
  len = nums.length
  mid = nums[len/2]
  left = nums[0...len/2]
  right = nums[len/2+1..-1]
  return len/2 if mid == target
  if mid > target
    if left.first > target
      return search(left, target)
    else

    end
  end
end