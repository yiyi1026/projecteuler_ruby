'''
Follow up for "Remove Duplicates":
What if duplicates are allowed at most twice?

For example,
Given sorted array nums = [1,1,1,2,2,3],

Your function should return length = 5, with the first five elements of nums being 1, 1, 2, 2 and 3. It doesn\'t matter what you leave beyond the new length.
'''
def remove_duplicates(nums)
  return 0 if nums.empty?
  len = nums.length
  return len if len < 3
  i = 0
  j = 1
  cnt = Hash.new{|h,k|h[k] = 0}
  cnt[nums[0]] += 1
  while j < len
    if nums[i] < nums[j] && cnt[nums[j]] < 2
      nums[i+1], nums[j] = nums[j], nums[i+1]
      cnt[nums[i+1]] += 1
      i += 1
    elsif nums[i] == nums[j] && cnt[nums[i]] < 2
      cnt[nums[i]] += 1
      nums[i+1], nums[j] = nums[j], nums[i+1]
      i += 1
    end
    j += 1
  end
  i + 1
end

# Revised
def remove_duplicates(nums)
  len = nums.length
  i = 0
  j = 0
  cnt = Hash.new{|h,k|h[k] = 0}
  while j < len
    if cnt[nums[j]] < 2
      cnt[nums[j]] += 1
      nums[i], nums[j] = nums[j], nums[i]
      i += 1
    end
    j += 1
  end
  p i
  nums
end

p remove_duplicates([])
p remove_duplicates([1,1,1,2,2,3])
p remove_duplicates([1,2,2,2,3,3,3,3,4,4,5])