=begin
Given a string containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

The brackets must close in the correct order, "()" and "()[]{}" are all valid but "(]" and "([)]" are not.
=end

#Original
def is_valid1(s)
  parentheses = '{[()]}'
  str = '' 
  s.each_char do |char|
    char_idx = parentheses.index(char)
    next unless char_idx
    if str[-1] && parentheses.index(str[-1]) + char_idx == 5
      str = str[0...-1]
    else
      str += char
    end
  end
  str.empty? 

end

#Revised
def is_valid(s)
  str = [] 
  s.each_char do |char|
    case char
    when "[", "{", "(" 
      str.push(char)
    when "]"
      return false unless str.pop == "["
    when "}"
      return false unless str.pop == "{"
    when ")"
      return false unless str.pop == "("
    end
  end
  str.empty?
end
