'''
14. Longest Common Prefix

Write a function to find the longest common prefix string amongst an array of strings.

If there is no common prefix, return an empty string "".

Example 1:

Input: ["flower","flow","flight"]
Output: "fl"
Example 2:

Input: ["dog","racecar","car"]
Output: ""
Explanation: There is no common prefix among the input strings.
Note:

All given inputs are in lowercase letters a-z.
'''

class Solution:
  def longestCommonPrefix1(self, strs):
    """
    :type strs: List[str]
    :rtype: str
    """ 
    # solution 1 vertical scanning
    length = len(strs[0])
    for string in strs:
      if len(string) < length:
        length = len(string)

    if length == 0:
      return '' 
    for i in range(length):
      currentChar = strs[0][i]
      for string in strs:
        if currentChar != string[i]:
          return string[:i]
    return strs[0][:length]

  def longestCommonPrefixTwo(self, strs):
    # solution 2 divide and conquer

    # list divided into two sublist
    length = len(strs)
    if length == 0:
      return ""
    if length == 1:
      return strs[0]
    midPoint = length//2 # python division /是精确除法，//是向下取整除法，%是求模
    left = strs[:midPoint]
    right = strs[midPoint:]
    # print ('here')
    leftMax = self.longestCommonPrefixTwo(left)
    rightMax = self.longestCommonPrefixTwo(right)
    return self.commonPrefix(leftMax, rightMax)
    
  def commonPrefix(self, leftString, rightString):
    length = min(len(leftString), len(rightString))
    if length == 0:
      return '' 
    for i in range(length):
      currentChar = leftString[i]
      if currentChar != rightString[i]:
        return leftString[:i]
    return leftString[:length]

  
s = ["flower","flow","flight"]

solution = Solution()
# print(solution.longestCommonPrefixTwo(s))

# print(solution.commonPrefix(s[0], s[1]))
# print ("" != False)
# print(not "" == True)