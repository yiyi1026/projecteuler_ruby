'''
Given a string s, find the longest palindromic substring in s. You may assume that the maximum length of s is 1000.

Example:

Input: "babad"

Output: "bab"

Note: "aba" is also a valid answer.
Example:

Input: "cbbd"

Output: "bb"
'''
# def longest_palindrome(s)
#   # dynamic programming
#   n = s.length
#   # case 1
#   return nil unless n > 0
#   # case 2
#   return s if s == s.reverse
    
#   # case 3
#   table = Array.new(n){Array.new(n)}
#   maxlen = 1
#   # all single chars are palindrome
  
#   for i in 0...n
#     table[i][i] = true
#     maxlen = 1
#   end
#   start = -1
#   # all continuous same chars are palindrome
#   for i in 0...n-1
#     if s[i] == s[i+1]
#       table[i][i+1] = true
#       start = i # start is the start index of longest palindrome substring
#       maxlen = 2
#     end
#   end

#   # case 4
#   k = 3  # current length of substring

#   while k <= n
#     i = 0
#     while i + k - 1 < n
#       j = i + k - 1 # end index of current substring
#       if table[i+1][j-1] == true && s[i] == s[j]
#         table[i][j] = true
        
#         if k > maxlen
#           start = i
#           maxlen = k
#         end
#       end
#       i += 1
#     end
#     k += 1
#   end

#   s[start...start+maxlen]
# end
def longest_palindrome(str)
  len = str.length
  return nil if len == 0

  table = Array.new(len){Array.new(len)}
  max_len = 1

  # single char
  len.times do |i|
    table[i][i] = true
    max_len = 1
  end
  
  start_idx = 0
  # 2 continuous same chars
  (len-1).times do |j|
    if str[j] == str[j+1]
      table[j][j+1] = true
      start_idx = j
      max_len = 2
    end
  end

  k = 3 # current length of substring
  while k <= len
    i= 0
    while i + k - 1 < len
      j = i + k - 1
      if table[i+1][j-1] = true && str[i] == str[j]
        table[i][j] = true
        if k > max_len
          start_idx = i
          max_len = k
        end
      end
      i += 1
    end
    k += 1
  end
  max_len
end
p longest_palindrome('ababbabc')