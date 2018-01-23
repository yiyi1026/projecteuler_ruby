'''
Write a function that takes a string as input and reverse only the vowels of a string.

Example 1:
Given s = "hello", return "holle".

Example 2:
Given s = "leetcode", return "leotcede".

Note:
The vowels does not include the letter "y".

'''

def reverse_vowels(s)
  vowels = 'aeiou'
  lst = s.chars
  i = 0
  j = lst.length - 1
  while i < j
    i += 1 until i == lst.length || vowels.include?(lst[i])
    j -= 1 until j < 0 || vowels.include?(lst[j])
    break if i >= j
    lst[i], lst[j] = lst[j], lst[i]
    i += 1
    j -= 1
  end

  lst.join("")
end

p reverse_vowels('leetcode')