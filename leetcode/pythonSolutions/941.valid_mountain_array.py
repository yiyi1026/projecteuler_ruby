'''
941. Valid Mountain Array
Easy

Share
Given an array A of integers, return true if and only if it is a valid mountain array.

Recall that A is a mountain array if and only if:

A.length >= 3
There exists some i with 0 < i < A.length - 1 such that:
A[0] < A[1] < ... A[i-1] < A[i]
A[i] > A[i+1] > ... > A[B.length - 1]
 

Example 1:

Input: [2,1]
Output: false
Example 2:

Input: [3,5,5]
Output: false
Example 3:

Input: [0,3,2,1]
Output: true
 

Note:

0 <= A.length <= 10000
0 <= A[i] <= 10000 

'''

class Solution(object):
    def validMountainArray(self, A):
        """
        :type A: List[int]
        :rtype: bool
        """
        length = len(A)
        i = 0
        j = length - 1
        if j < 2: return False
        while i <= j - 1 and A[i] < A[i+1]:
          i += 1
        while j >= i and A[j] < A[j-1]:
          j -= 1
        if j == length - 1:
          return False
        print(i)
        print(j)
        return i == j
arr = [1,3,2]

sol = Solution()
print(sol.validMountainArray(arr))