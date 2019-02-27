class Solution(object):
    def findLengthOfLCIS(self, nums):
        """
        :type nums: List[int]
        :rtype: int
        """
        if not nums:
          return 0
        
        maxLen = 1
        idx = 0
        
        i = 1
        curLen = 1
        length = len(nums)
        while i < length:
          if nums[i] > nums[i-1]:
            curLen += 1
          else:
            if curLen > maxLen:
              maxLen = curLen
            idx = i
            curLen = 1
          i += 1
        return max(maxLen, curLen)
                
sol = Solution()

print(sol.findLengthOfLCIS([1,3,5,4,2,3,4,5]))