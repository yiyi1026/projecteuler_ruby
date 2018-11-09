'''
20. Valid Parentheses

Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

An input string is valid if:

Open brackets must be closed by the same type of brackets.
Open brackets must be closed in the correct order.
Note that an empty string is also considered valid.

Example 1:

Input: "()"
Output: true
Example 2:

Input: "()[]{}"
Output: true
Example 3:

Input: "(]"
Output: false
Example 4:

Input: "([)]"
Output: false
Example 5:

Input: "{[]}"
Output: true
'''

class Solution:
    def isValid(self, s):
        """
        :type s: str
        :rtype: bool
        """
        list = []
        length = len(s)
        for i in range(length):
          char = s[i]
          if char in ['(','[','{']:
            list.append(char)
          else:
            if len(list) < 1: return False
            lastChar = list.pop()
            if (char == ')') and (lastChar != '('):  return False
            if char == ']' and lastChar != '[': return False 
            if char == '}' and lastChar != '{': return False
        return len(list) == 0

str = "{[]}"
sol = Solution()
print(sol.isValid(str))

        