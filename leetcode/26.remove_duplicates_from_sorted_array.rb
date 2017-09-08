'''
Given a sorted array, remove the duplicates in place such that each element appear only once and return the new length.

Do not allocate extra space for another array, you must do this in place with constant memory.

For example,
Given input array nums = [1,1,2],

Your function should return length = 2, with the first two elements of nums being 1 and 2 respectively. It doesn\'t matter what you leave beyond the new length.

'''
#Original
def remove_duplicates1(nums)
  i = 0
  j = i + 1
  while j < nums.length
    if nums[i] == nums[j]
      nums.delete_at(i)
    else
      i, j = i + 1, j + 1
    end
  end
  nums.length

end

#Revised
def remove_duplicates(nums)
  return nums.length if nums.length < 2
  i = 0
  j = 1
  while j < nums.length
    if nums[i] == nums[j]
      j += 1
    else
      nums[i+1], nums[j] = nums[j], nums[i+1]
      i += 1
      j += 1
    end
  end
  i+1
end

p remove_duplicates([1,1,2,3,3,6,8,10,10,13])