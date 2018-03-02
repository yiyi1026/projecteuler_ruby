'''
Given an array of integers, every element appears twice except for one. Find that single one.

Note:
Your algorithm should have a linear runtime complexity. Could you implement it without using extra memory?
'''
# @param {Integer[]} nums
# @return {Integer}

# first try
def single_number(nums)
  nums_sort=nums.sort
  nums_sort.each_with_index  do |num,idx|
    return num unless num==nums_sort[idx+1]||num==nums_sort[idx-1]
  end
  nums[0]
end

# revised
def single_number(nums)
  hash=Hash.new{|h,k|h[k]=0}
  nums.each{|num|hash[num]+=1}
  hash.each{|k,v|return k if v == 1}
end