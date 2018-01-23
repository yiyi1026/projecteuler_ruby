'''
Given an array of size n, find the majority element. The majority element is the element that appears more than ⌊ n/2 ⌋ times.

You may assume that the array is non-empty and the majority element always exist in the array.

Credits:
Special thanks to @ts for adding this problem and creating all test cases.
'''

def majority_element(nums)
  hash = Hash.new{|h,k|h[k] = 0}
  cnt = nums.length/2
  nums.each do |num|
    hash[num] += 1
    return num if hash[num] > cnt
  end
end