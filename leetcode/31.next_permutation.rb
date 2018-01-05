'''
Implement next permutation, which rearranges numbers into the lexicographically next greater permutation of numbers.

If such arrangement is not possible, it must rearrange it as the lowest possible order (ie, sorted in ascending order).

The replacement must be in-place, do not allocate extra memory.

Here are some examples. Inputs are in the left-hand column and its corresponding outputs are in the right-hand column.
1,2,3 → 1,3,2
3,2,1 → 1,2,3
1,1,5 → 1,5,1
'''

def next_permutation(nums)
  len = nums.length
  i = len - 1
  while i > 0
    if nums[i-1] < nums[i]
      
      k = i
      min = nums[i]
      (i+1..len-1).each do |idx|
        if min > nums[idx] && nums[idx] > nums[i-1]
          k = idx
          min = nums[idx]
        end
      end
      
      nums[i-1], nums[k] = nums[k], nums[i-1]
      nums[i..-1] = nums[i..-1].sort     
      
      return nums
    end
    i -= 1
  end
  l = 0
  m = len - 1
  while l < m && nums[l] > nums[m]
    nums[l], nums[m] = nums[m], nums[l]
    l += 1
    m -= 1
  end
  
  nums
end

arr = [3,2,1]
p next_permutation(arr)