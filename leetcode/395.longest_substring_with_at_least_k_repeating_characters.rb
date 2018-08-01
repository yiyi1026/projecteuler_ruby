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
  return 0 if (k < 1) || s.empty? || s.length < k
  hash = Hash.new{|h,k|h[k] = 0}

  s.each_char do |char|
    hash[char] += 1
  end

  possible_subs = []
  last_idx = -1
  return k if hash.length == 1 && hash.values[0] == k
  s.split("").each_with_index do |ch, idx|
    if hash[ch] < k
      possible_subs << s[last_idx+1...idx]
      last_idx = idx

    end
  end
  if last_idx < 0
    return s.length
  end
  possible_subs << s[last_idx+1..-1]  if last_idx < s.length - 1

  longest = 0
  possible_subs.each do |sub|
    longest = [longest, longest_substring(sub,k)].max
  end

  longest
end

s = "ababbc"
k = 2
p longest_substring(s,k)