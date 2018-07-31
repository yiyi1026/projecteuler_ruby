# 76. Minimum Window Substring
# Given a string S and a string T, find the minimum window in S which will contain all the characters in T in complexity O(n).

# Example:

# Input: S = "ADOBECODEBANC", T = "ABC"
# Output: "BANC"
# Note:

# If there is no such window in S that covers all characters in T, return the empty string "".
# If there is such window, you are guaranteed that there will always be only one unique minimum window in S.

# @param {String} s
# @param {String} t
# @return {String}
def get_target_hash(t)
  hash = Hash.new{|h,k|h[k] = 0}
  t.each_char do |char|
    hash[char] += 1
  end
  hash
end

def min_window(source, target)
  hash = {}
  n = source.length
  min_window_len = n + 1
  target_hash = get_target_hash(target)
  min_window_start_idx = -1

  j = 0
  for i in 0...n
    while j < n && !target_hash.values.all?{|k|k <= 0}
      if target_hash[source[j]]
        target_hash[source[j]] -= 1
      end
      j += 1
    end
    if target_hash.values.all?{|k|k <= 0}
      if min_window_len > j-i
        min_window_len = j-i
        min_window_start_idx = i
      end
    end
    if target_hash[source[i]]
      target_hash[source[i]] += 1
    end
    
  end
  p min_window_start_idx
  p min_window_len

  source[min_window_start_idx...min_window_start_idx+min_window_len]
end

source = "ADOBECODEBANC"
target = "ABC"
p min_window(source, target)