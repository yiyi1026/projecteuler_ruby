'''
Given two arrays, write a function to compute their intersection.

Example:
Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2].

Note:
Each element in the result must be unique.
The result can be in any order.
'''

def intersection(nums1, nums2)
  hash = {}
  nums1.each do |num|
    hash[num] = true
  end

  sol = []
  nums2.each do |n|
    if hash[n]
      sol << n
      #hash.delete(n)
      # revised
      hash[n] = false
    end
  end

  sol
end

nums1 = [1, 2, 2, 1]
nums2 = [2, 2]
p intersection(nums1, nums2)