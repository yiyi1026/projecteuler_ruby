'''
Given two sorted integer arrays nums1 and nums2, merge nums2 into nums1 as one sorted array.

Note:
You may assume that nums1 has enough space (size that is greater or equal to m + n) to hold additional elements from nums2. The number of elements initialized in nums1 and nums2 are m and n respectively.
'''

# @param {Integer[]} nums1
# @param {Integer} m
# @param {Integer[]} nums2
# @param {Integer} n
# @return {Void} Do not return anything, modify nums1 in-place instead.
def merge(nums1, m, nums2, n)
  if m == 0
    n.times{|i|nums1[i] = nums2[i]}
    return
  end
  i = m - 1
  j = n - 1
  k = m + n - 1

  while k >= 0 && j >= 0
    case nums1[i] <=> nums2[j]
    when 1
      nums1[k] = nums1[i]
      i -= 1
    when 0
      nums1[k] = nums1[i]
      i -= 1
    when -1
      nums1[k] = nums2[j]
      j -= 1
    end
    k -= 1
  end
  (0..j).each{|idx|nums1[idx] = nums2[idx]} if j >= 0
  nums1
end

p merge([2,0],1,[1],1) #== [1,2]
p merge([1,0],1,[2],1) #== [1,2]

