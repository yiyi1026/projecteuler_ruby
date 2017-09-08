'''
Given a string, find the length of the longest substring without repeating characters.

Examples:

Given "abcabcbb", the answer is "abc", which the length is 3.

Given "bbbbb", the answer is "b", with the length of 1.

Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
'''
def length_of_longest_substring(s)
  current_lst=[]
  longest_length=0
  s.chars.map do |letter|
      if current_lst && current_lst.include?(letter)
          longest_length=current_lst.length if longest_length==0 ||longest_length<current_lst.length
          current_lst=current_lst[current_lst.index(letter)+1..-1]+[letter]
      else
          current_lst<<letter
      end
  end
  [longest_length,current_lst.length].max
end