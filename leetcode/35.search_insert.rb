# 35. given a sorted array and a target value, return the index if the target is found. If not, return the index where it would be if it were inserted in order.
# You may assume no duplicates in the array.
def search_insert(nums, target)
  for i in 0...nums.length
    if nums[i] >= target
      return i
    end
  end

  nums.length
end

p search_insert([1,3,5,6], 7)