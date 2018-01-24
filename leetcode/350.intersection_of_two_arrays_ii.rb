'''
Given two arrays, write a function to compute their intersection.

Example:
Given nums1 = [1, 2, 2, 1], nums2 = [2, 2], return [2, 2].

Note:
Each element in the result should appear as many times as it shows in both arrays.
The result can be in any order.
Follow up:
What if the given array is already sorted? How would you optimize your algorithm?
What if nums1\'s size is small compared to nums2\'s size? Which algorithm is better?
What if elements of nums2 are stored on disk, and the memory is limited such that you cannot load all elements into the memory at once?
'''

def intersect(nums1, nums2)
  hash = Hash.new(0)
  nums1.each do |n|
    hash[n] += 1
  end

  sol = []
  nums2.each do |num|
    if hash[num] > 0
      sol << num
      hash[num] -= 1
    end
  end

  sol
end

nums1 = [1,2,2,1]
nums2 = [2,2,3]
p intersect(nums1, nums2)