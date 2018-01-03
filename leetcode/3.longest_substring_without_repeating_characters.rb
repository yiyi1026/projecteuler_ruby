'''
Given a string, find the length of the longest substring without repeating characters.

Examples:

Given "abcabcbb", the answer is "abc", which the length is 3.

Given "bbbbb", the answer is "b", with the length of 1.

Given "pwwkew", the answer is "wke", with the length of 3. Note that the answer must be a substring, "pwke" is a subsequence and not a substring.
'''
def length_of_longest_substring(s)
  max_length = 0
  start_idx = -1
  hash = {} # key -> value is char -> idx

  s.chars.each_with_index do |char, idx|
    current_idx = hash[char]
    if current_idx && current_idx > start_idx
      # reset start idx if char occurs twice
      start_idx = current_idx
    end

    hash[char] = idx
    len = idx - start_idx
    max_length = len if max_length < len
  end

  max_length
end