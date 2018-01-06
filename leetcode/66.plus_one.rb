'''
Given a non-negative integer represented as a non-empty array of digits, plus one to the integer.

You may assume the integer do not contain any leading zero, except the number 0 itself.

The digits are stored such that the most significant digit is at the head of the list.


'''

def plus_one(digits, carry = 0)
    len = digits.length
    result = []
    carry = 1
    temp_add = 0
    (1..len).each do |i|
      temp_add = carry + digits[-i]
      carry = 0
      # only works for plus_one
      if temp_add > 9
        temp_add -= 10
        carry = 1
      end
      # this also works for two integer adding together
      # until temp_add < 10
      #   carry += 1
      #   temp_add -= 10
      # end
      result.unshift(temp_add)

    end
    carry > 0 ? [carry] + result : result

end

p plus_one([0])
p plus_one([2])
p plus_one([9])
p plus_one([9,9])
p plus_one([1,3,1,4])
