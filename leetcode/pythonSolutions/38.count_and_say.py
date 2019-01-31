'''
38. Count and Say
Easy

Share
The count-and-say sequence is the sequence of integers with the first five terms as following:

1.     1
2.     11
3.     21
4.     1211
5.     111221
1 is read off as "one 1" or 11.
11 is read off as "two 1s" or 21.
21 is read off as "one 2, then one 1" or 1211.

Given an integer n where 1 ≤ n ≤ 30, generate the nth term of the count-and-say sequence.

Note: Each term of the sequence of integers will be represented as a string.

Example 1:

Input: 1
Output: "1"
Example 2:

Input: 4
Output: "1211"
'''

class Solution:
    def say(self, s):
        ans = ''
        i = 0
        while i < len(s) - 1:
          count = 1
          char = s[i]
          while i < len(s) - 1 and s[i] == s[i+1]:
            i += 1
            count += 1
          ans = ans + str(count) + char
          if i == len(s) - 1: break
          i += 1

        if i > 0 and s[i] == s[i-1]:
          return ans
        return ans + '1' + s[i]
  
    def countAndSay(self, n):
        """
        :type n: int
        :rtype: str
        """
        s = '1'
        for i in range(n-1):
          s = self.say(s)
        return s
              
              
        