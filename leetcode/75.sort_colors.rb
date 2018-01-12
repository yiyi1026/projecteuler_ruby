'''
Given an array with n objects colored red, white or blue, sort them so that objects of the same color are adjacent, with the colors in the order red, white and blue.

Here, we will use the integers 0, 1, and 2 to represent the color red, white, and blue respectively.

Note:
You are not suppose to use the library\'s sort function for this problem.

click to show follow up.

Follow up:
A rather straight forward solution is a two-pass algorithm using counting sort.
First, iterate the array counting number of 0\'s, 1\'s, and 2\'s, then overwrite array with total number of 0\'s, then 1\'s and followed by 2\'s.

Could you come up with an one-pass algorithm using only constant space?
'''

def sort_colors(nums)
  cnt = {}
  cnt[0] = 0
  cnt[1] = 0
  cnt[2] = 0
  nums.each do |num|
    cnt[num] += 1
  end
  k = [cnt[0], cnt[0] + cnt[1], cnt[0]+cnt[1]+cnt[2]]
  nums.length.times do |i|
    if i < k[0]
      nums[i] = 0
    elsif i < k[1]
      nums[i] = 1
    elsif i < k[2]
      nums[i] = 2
    end
  end

  nums
end

p sort_colors([1,0])

