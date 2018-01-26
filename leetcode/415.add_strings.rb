'''
Given two non-negative integers num1 and num2 represented as string, return the sum of num1 and num2.

Note:

The length of both num1 and num2 is < 5100.
Both num1 and num2 contains only digits 0-9.
Both num1 and num2 does not contain any leading zero.
You must not use any built-in BigInteger library or convert the inputs to integer directly.
'''
# @param {String} num1
# @param {String} num2
# @return {String}
def add_strings(num1, num2)
  a, b = num1.chars, num2.chars
  result = ''
  carry = 0
  until a.empty? && b.empty? && carry = 0
    x, y = a.pop || 0, b.pop || 0
    temp = x.to_i + y.to_i + carry
    carry = temp / 10
    result = (temp % 10).to_s + result
  end
  result
end
