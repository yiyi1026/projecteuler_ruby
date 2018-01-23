'''
Related to question Excel Sheet Column Title

Given a column title as appear in an Excel sheet, return its corresponding column number.

For example:

    A -> 1
    B -> 2
    C -> 3
    ...
    Z -> 26
    AA -> 27
    AB -> 28 
Credits:
Special thanks to @ts for adding this problem and creating all test cases.
'''
# version 1

def title_to_number(s)
  letter_lst=('A'..'Z').to_a
  s.chars.map.with_index{|letter,idx|(letter_lst.index(letter)+1)*26**(s.length-idx-1)}.reduce(:+)
end

# revised
def title_to_number(s)
  hash = {}
  ('A'..'Z').each_with_index{|chr, idx|hash[chr] = idx+1}
  s.chars.reduce(0){|acc, char| acc = acc*26 + hash[char]}
end

p title_to_number('AB')