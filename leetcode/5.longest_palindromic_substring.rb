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

# revised
def longest_palindrome(s)
  return '' if s.empty?
  return s if s==s.reverse
  len = s.length
  start_idx = 0 
  table = Array.new(len){Array.new(len)}
  max_len = 1
  for i in (0...len)
    table[i][i] = true
    # start_idx = i
  end
  
  for i in (0...len-1)
    if s[i] == s[i+1]
      table[i][i+1] = true
      max_len = 2
      start_idx = i
    end
      
  end
  
  k = 3 # current_length_of_subs
  
  while k <= len
    i = 0
    
    while i+k-1 < len
      j = i + k - 1
      if table[i+1][j-1] && (s[i] == s[j])
        table[i][j] = true
        if k > max_len
          max_len = k
          start_idx = i
        end
      end
      i += 1
    end
    k += 1
  end
  s[start_idx...start_idx+max_len]
end
p longest_palindrome('ac')

def longest_palindrome(s)
