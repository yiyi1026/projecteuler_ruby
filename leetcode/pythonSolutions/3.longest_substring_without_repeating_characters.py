'''
3. Longest Substring Without Repeating Characters
Medium

Given a string, find the length of the longest substring without repeating characters.

Example 1:

Input: "abcabcbb"
Output: 3 
Explanation: The answer is "abc", with the length of 3. 
Example 2:

Input: "bbbbb"
Output: 1
Explanation: The answer is "b", with the length of 1.
Example 3:

Input: "pwwkew"
Output: 3

Explanation: The answer is "wke", with the length of 3. 
             
Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
'''

class Solution:
  def lengthOfLongestSubstring(self, s):
    """
    :type s: str
    :rtype: int
    """
    length = len(s)
    max_length = 0
    start_idx = -1
    hash = {} # key->value pair of char-> last_occur_idx 

    for i in range(length):
      current_char = s[i]
      if hash.__contains__(current_char):
        last_occur_idx = hash[current_char]
        if last_occur_idx > start_idx:
          start_idx = last_occur_idx
      current_length = i - start_idx
      if current_length > max_length:
        max_length = current_length
      hash[current_char] = i
    
    return max_length



sol = Solution()
print(sol.lengthOfLongestSubstring("abcabcbb"))
    