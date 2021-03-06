'''
Given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.

You may assume no duplicates in the array.

Example 1:

Input: [1,3,5,6], 5
Output: 2
Example 2:

Input: [1,3,5,6], 2
Output: 1
Example 3:

Input: [1,3,5,6], 7
Output: 4
Example 1:

Input: [1,3,5,6], 0
Output: 0
'''
def search_insert(nums, target)
  len = nums.length
  for i in 0...len
    if nums[i] >= target
      return i
    end
  end

  len
end

def search_insert(nums, target)
  i = 0
  len = nums.length
  i += 1 until i == len || nums[i] >= target
  i
end


p search_insert([1,3,5,6], 7)