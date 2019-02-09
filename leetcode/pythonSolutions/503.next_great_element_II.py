'''
503. Next Greater Element II
Medium

Given a circular array (the next element of the last element is the first element of the array), print the Next Greater Number for every element. The Next Greater Number of a number x is the first greater number to its traversing-order next in the array, which means you could search circularly to find its next greater number. If it doesn't exist, output -1 for this number.

Example 1:
Input: [1,2,1]
Output: [2,-1,2]
Explanation: The first 1's next greater number is 2; 
The number 2 can't find next greater number; 
The second 1's next greater number needs to search circularly, which is also 2.
Note: The length of given array won't exceed 10000.
'''
class Solution(object):
    def nextGreaterElements(self, nums):
        """
        :type nums: List[int]
        :rtype: List[int]
        """
        length = len(nums)
        if length == 0:
          return nums
        stack = []
        # hash = {}
        result = [ 0 for i in range(length)]
        
        for i in range(length):
          num = nums[i]
          if i > 0:
            while len(stack)> 0 and num > stack[-1][0]:
              newPop = stack.pop()
              result[newPop[-1]] = num
          stack.append([num, i])
        largestNum = stack[0][0]
        
        for i in range(length):
          num = nums[i]
          while num > stack[-1][0]:
            newPop = stack.pop()
            result[newPop[-1]] = num
          if nums[i] == largestNum:
            break
        for el in stack:
          result[el[-1]] = -1
        return result
        

# arr = [1,2,3,4,5]
arr = [5,4,3,2,1]
# arr = [1,2,1]
sol = Solution()
print(sol.nextGreaterElements(arr))

