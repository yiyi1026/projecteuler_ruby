'''
Given a string which consists of lowercase or uppercase letters, find the length of the longest palindromes that can be built with those letters.

This is case sensitive, for example "Aa" is not considered a palindrome here.

Note:
Assume the length of given string will not exceed 1,010.

Example:

Input:
"abccccdd"

Output:
7

Explanation:
One longest palindrome that can be built is "dccaccd", whose length is 7.
'''
def longest_palindrome(s)
  hash = Hash.new(0)
  s.chars.each do |char|
    hash[char] += 1
  end

  one = false
  cnt = 0
  hash.each do |k,v|
    if v % 2 > 0 && one == false
      one = true
    end
    cnt += v / 2 * 2
  end

  one ? (cnt + 1) : cnt
end

p longest_palindrome('abccccdd')