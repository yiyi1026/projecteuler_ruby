# Write an algorithm to determine if a number is happy.
# A happy number is a number defined by the following process: Starting with any positive integer, replace the number by the sum of the squares of its digits, and repeat the process until the number equals 1 (where it will stay), or it loops endlessly in a cycle which does not include 1. Those numbers for which this process ends in 1 are happy numbers.
# 
# Example
# 19 is a happy number

# 1^2 + 9^2 = 82
# 8^2 + 2^2 = 68
# 6^2 + 8^2 = 100
# 1^2 + 0^2 + 0^2 = 1

# class Solution:
#     """
#     @param: n: An integer
#     @return: true if this is a happy number or false
#     """
#     def isHappy(self, n):
#       if n == 1:
#         return True
#       elif n < 4:
#         return False
#       def helper(m):
#         return reduce(lambda x,y: int(x)**2 + int(y)**2, str(m),0)
#       return self.isHappy(helper(n))


# sol = Solution()
# # print isHappy(sol, 19)
# print sol.isHappy(7)
# a = 3
# a = a
# print a

a = [1,2,3,4,5]

