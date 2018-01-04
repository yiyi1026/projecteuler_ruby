'''
Given an array of integers, return indices of the two numbers such that they add up to a specific target.

You may assume that each input would have exactly one solution, and you may not use the same element twice.

Example:
Given nums = [2, 7, 11, 15], target = 9,

Because nums[0] + nums[1] = 2 + 7 = 9,
return [0, 1]

'''
# naive solution
# time complexity O(n2)
# space complexity O(1)
def two_sum1(nums, target)
  nums.each_with_index do |num_first, idx_first|
    (idx_first+1...nums.length).each do |idx_second|
      num_second = nums[idx_second]
      return [idx_first, idx_second] if num_first + num_second == target
    end
  end
end

# time complexity is O(n)
# space complexity is O(n)
def two_sum2(nums, target)
  result = {}
  nums.each_with_index do |el1, idx1|
      result[el1] = [idx1]
  end
  
  nums.each_with_index do |el2, idx2|
      difference = target - el2
      
      other_idx = result[difference]
      if other_idx 
          return (other_idx+ [idx2]).sort if other_idx != [idx2]
      end
  end
end

# time complexity is O(n)
# space complexity is O(n)
# no need to do to separate iteration. When an element comes, look whether the difference exists in the hash. if true, return; else add the element to hash.
def two_sum3(nums, target)
  result = {}
  nums.each_with_index do |el, idx|
      difference = target - el
      if result[difference]
        return result[difference] + [idx]
      end
      result[el] = [idx]
  end

end



# test case 
p two_sum3([3,3], 6)  # [0, 1]
p two_sum3([3, 2, 4], 6) # [1, 2]

