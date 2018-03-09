'''
Given an array containing n distinct numbers taken from 0, 1, 2, ..., n, find the one that is missing from the array.

Example 1

Input: [3,0,1]
Output: 2
Example 2

Input: [9,6,4,2,3,5,7,0,1]
Output: 8

Note:
Your algorithm should run in linear runtime complexity. Could you implement it using only constant extra space complexity?

Credits:
Special thanks to @jianchao.li.fighter for adding this problem and creating all test cases.
'''


def missing_number(nums)
  len = nums.length
  hash = {}
  (0..len).each do |n|
    hash[n] = true
  end

  nums.each do |key|
    hash.delete(key)
  end

  hash.keys[0] || 1
end

p missing_number([9,6,4,2,3,5,7,0,1])
p missing_number([0])
p missing_number([1])
