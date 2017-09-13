'''
Given a string, determine if it is a palindrome, considering only alphanumeric characters and ignoring cases.

For example,
"A man, a plan, a canal: Panama" is a palindrome.
"race a car" is not a palindrome.

Note:
Have you consider that the string might be empty? This is a good question to ask during an interview.

For the purpose of this problem, we define empty string as valid palindrome.
'''

def is_palindrome(s)
  letter = ('a'..'z').to_a + ('0'..'9').to_a
  i, j = 0, s.length-1
  while i <= j
    i += 1 until (s[i] && s[i].downcase && letter.include?(s[i].downcase)) || i > j
    j -= 1 until (s[j] && s[j].downcase && letter.include?(s[j].downcase)) || j < i
    break if i > j
    if s[i].downcase == s[j].downcase
      i += 1
      j -= 1
    else
      return false
    end
  end
  true 
end


p is_palindrome('0p')