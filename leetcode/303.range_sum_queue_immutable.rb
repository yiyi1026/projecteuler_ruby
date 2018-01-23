'''

Given an integer array nums, find the sum of the elements between indices i and j (i ≤ j), inclusive.

Example:
Given nums = [-2, 0, 3, -5, 2, -1]

sumRange(0, 2) -> 1
sumRange(2, 5) -> -1
sumRange(0, 5) -> -3
Note:
1. You may assume that the array does not change.
2. There are many calls to sumRange function.
'''

class NumArray

  =begin
      :type nums: Integer[]
  =end
  
      # def initialize(nums)
      #     @nums = nums
      # end
    
      # revised
      def initialize(nums)
        len = nums.length
          @dp = Array.new(len + 1, 0)
          (1..len).each do |idx|
            @dp[idx] = @dp[idx - 1] + nums[idx-1]
          end
      end
  
  
  =begin
      :type i: Integer
      :type j: Integer
      :rtype: Integer
  =end
      # def sum_range(i, j)
      #   @nums[i..j].reduce(0,:+)
      # end  
    
      # revised
      def sum_range(i, j)
        @dp[j+1] - @dp[i]
      end
  
  
  end
  
  # Your NumArray object will be instantiated and called as such:
  # obj = NumArray.new(nums)
  # param_1 = obj.sum_range(i, j)