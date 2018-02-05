'''
Given an integer (signed 32 bits), write a function to check whether it is a power of 4.

Example:
Given num = 16, return true. Given num = 5, return false.

Follow up: Could you solve it without loops/recursion?

Credits:
Special thanks to @yukuairoy for adding this problem and creating all test cases.
'''
def is_power_of_four(num)
  return false if num == 0
  return true if num == 1
  return false unless num & (num-1) == 0
  is_power_of_four(num/4)
end