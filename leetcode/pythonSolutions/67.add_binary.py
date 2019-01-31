'''
67. Add Binary
Easy

Share
Given two binary strings, return their sum (also a binary string).

The input strings are both non-empty and contains only characters 1 or 0.

Example 1:

Input: a = "11", b = "1"
Output: "100"
Example 2:

Input: a = "1010", b = "1011"
Output: "10101"
'''

class Solution:
    def addBinary(self, a, b):
        """
        :type a: str
        :type b: str
        :rtype: str
        """
        lenA = len(a)
        lenB = len(b)
        
        strA = a
        strB = b
        if lenA > lenB:
          strB = (lenA - lenB) * "0" + strB
        else:
          strA = (lenB - lenA) * "0" + strA
        print(strA)
        print(strB)
        lenAB = len(strA)
        result = ''
        carry = 0
        
        for i in range(1, lenAB + 1):
          charA = strA[-i]
          charB = strB[-i]
          if charA == charB:
            result = str(carry) + result
            carry = 0 if charA == '0' else 1
          else:
            if carry == 0:
              result = '1' + result
            else:
              result = '0' + result
        if carry > 0:
          result = '1' + result
        return result
            
sol = Solution()
print(sol.addBinary('1', '111'))             