'''

Given a digit string, return all possible letter combinations that the number could represent.

A mapping of digit to letters (just like on the telephone buttons) is given below.

Input:Digit string "23"
Output: ["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"].
Note:
Although the above answer is in lexicographical order, your answer could be in any order you want.
'''
# 46M SOLUTION
def temp
  dict = ['','abc','def','ghi','jkl','mno','pqrs','tuv','wxyz']
  hash = {}
  dict.each_with_index do |str, idx|
    hash[idx+1] = str.chars
  end
  hash
end

def letter_combinations(digits, tmp="", ret=[], h = temp)

  if digits.length == 0
    return tmp.length > 0 ?  [tmp] : []
  end
  digit = digits[0]
  h[digit.to_i].each{ |x| ret += letter_combinations(digits[1..-1], tmp + x, [], h) }
  ret
end
p letter_combinations("2")

# ANOTHER SOLUTION FROM SAMPLE 46M SUBISSION
# def letter_combinations(digits)
#   return [] if digits.empty?
#   m = {
#       '2' => 'abc',
#       '3' => 'def',
#       '4' => 'ghi',
#       '5' => 'jkl',
#       '6'=> 'mno',
#       '7'=>'pqrs',
#       '8'=>'tuv',
#       '9' => 'wxyz'
#       }
#   m.default = ''
#   digits.each_char.reduce(['']) do |acc, d|
#       m[d].each_char.flat_map do |c|
#           acc.map do |s|
#               s + c
#           end
#       end
#   end
# end

# p letter_combinations('23')