'''
5. Longest Palindromic Substring
Medium

Given a string s, find the longest palindromic substring in s. You may assume that the maximum length of s is 1000.

Example 1:

Input: "babad"
Output: "bab"
Note: "aba" is also a valid answer.
Example 2:

Input: "cbbd"
Output: "bb"
'''

class Solution:

    def longestPalindrome1(self, s):
        """
        :type s: str
        :rtype: str
        """
        #solution1 : dynamic programming
        length = len(s)

        if length == 0:
            return ""

        matrix = [[0 for i in range(length)] for j in range(length)]
        start_idx = 0
        max_len = 0

        for k in range(length):
            matrix[k][k] = True
            max_len = 1
        for t in range(length-1):
            if s[t] == s[t+1]:
                matrix[t][t+1] = True 
                max_len = 2
                start_idx = t
    
        sub_length = 3

        while sub_length <= length:
            fp = 0
            while fp + sub_length - 1 < length:
                sp = fp + sub_length - 1
                if s[fp] == s[sp] and matrix[fp+1][sp-1]:
                    matrix[fp][sp] = True
                    if sub_length > max_len:
                        max_len = sub_length
                        start_idx = fp
                fp = fp + 1
            sub_length = sub_length + 1

        return s[start_idx: start_idx+max_len]

    def expandAroundCenter(self, s,left_idx,right_idx):
        length = len(s)
        l = left_idx
        r = right_idx
        while l >= 0 and r < length and s[l] == s[r]:
            l = l - 1
            r = r + 1
        return r - l - 1
    def longestPalindrome(self, s):
        #solution2：
        length = len(s)
        max_len = 0
        start_idx = 0
    
        for i in range(length):
            length1 = self.expandAroundCenter(s, i, i)
            length2 = self.expandAroundCenter(s, i, i+1)
            current_length = max(length1, length2)
            if current_length > max_len:
                max_len = current_length
                start_idx = i - (max_len-1)//2
        return s[start_idx: start_idx+max_len]

sol = Solution()
sub = 'cbbd'
print(sol.longestPalindrome(sub))


        