'''
Given an array and a value, remove all instances of that value in place and return the new length.

Do not allocate extra space for another array, you must do this in place with constant memory.

The order of elements can be changed. It doesn\'t matter what you leave beyond the new length.

Example:
Given input array nums = [3,2,2,3], val = 3

Your function should return length = 2, with the first two elements of nums being 2.

'''

def remove_element(nums, val)
  len = nums.length
  i = 0
  j = len - 1
  # i for val value
  # j for non-val value
  while i < len && j >= 0
    i += 1 until i == len || nums[i] == val
    j -= 1 until j < 0 || nums[j] != val
    if j < i
      # p i
      # p j
      return nums
    else
      nums[i], nums[j] = nums[j], nums[i]
    end
  end
  # p i
  # p j
  nums

end

arr = [3,2,2,3]
p remove_element(arr, 3)

