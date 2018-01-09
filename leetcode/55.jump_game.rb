'''
Given an array of non-negative integers, you are initially positioned at the first index of the array.

Each element in the array represents your maximum jump length at that position.

Determine if you are able to reach the last index.

For example:
A = [2,3,1,1,4], return true.

A = [3,2,1,0,4], return false.
'''
require 'set'
def can_jump(nums, visited = Set[])
  n = nums.length
  return true if nums.all?{|x|x>0}
  
  nums.reverse.each_with_index do |num, idx|
    # add every idx that could reach to last of nums
    idx_from_start = n - 1 - idx
    if num >= idx
      visited << idx_from_start
      return true if idx_from_start == 0
    end

    add = false
    visited.each do |idx_v|
      if idx_v > idx_from_start &&  num >= idx_v - idx_from_start
        add = true
        return true if idx_from_start == 0
        break
      end
    end
    visited << idx_from_start if add
  end
  
  visited.include?(0)
end

arr = [3,2,1,0,4]
# arr = [2,5,0,0]
p can_jump(arr)
