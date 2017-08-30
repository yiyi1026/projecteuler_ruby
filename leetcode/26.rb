# 



def remove_duplicates(nums)
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
