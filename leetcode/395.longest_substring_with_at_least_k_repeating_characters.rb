# 395. Longest Substring with At Least K Repeating Characters
# Find the length of the longest substring T of a given string (consists of lowercase letters only) such that every character in T appears no less than k times.

# Example 1:

# Input:
# s = "aaabb", k = 3

# Output:
# 3

# The longest substring is "aaa", as 'a' is repeated 3 times.
# Example 2:

# Input:
# s = "ababbc", k = 2

# Output:
# 5

# The longest substring is "ababb", as 'a' is repeated 2 times and 'b' is repeated 3 times.

# @param {String} s
# @param {Integer} k
# @return {Integer}

# divide and conquer, recursion
# walk through each character and count how many times of their appearance.
# if one character appears less than k times, then possible answers should only appear in substrings before this character or after this character(this character wouldn't be in the substring of the final answer)
# condition to terminate recursion: when the substring has less than k characters.
def longest_substring(s, k)
  return 0 if (s.empty?) || (s.length < k)

  hash = Hash.new{|h,key|h[key] = 0}
  s.each_char{|ch|hash[ch] += 1}

  return s.length if hash.all?{|_,v|v >= k}

  possible_subs = []
  last_slice_idx = -1
  s.chars.each_with_index do |char, idx|
    if hash[char] < k
      possible_subs << s[last_slice_idx+1...idx]
      last_slice_idx = idx
    end
  end

  if last_slice_idx < s.length - 1
    possible_subs << s[last_slice_idx+1..-1]
  end

  longest = 0
  possible_subs.each do |sub|
    longest = [longest, longest_substring(sub, k)].max
  end

  return longest
end

s = "bbaaacbd"
k = 3
p longest_substring(s,k)

