''' 14.Longest Common Prefix
  Write a function to find the longest common prefix string amongst an array of strings.
'''

def longest_common_prefix(strs) # leetcode 14
  return '' if strs.empty?
  len_array = strs.map(&:length)
  limit = len_array.min
  return '' if limit == 0
  prefix = strs[0].slice(0, limit)
  strs.each do |el|
    # index method return index or nil
    prefix_idx = el.index(prefix)
    until prefix_idx && prefix_idx == 0
      limit -= 1
      # return '' if new_len == 0
      prefix = prefix.slice(0, limit)
      prefix_idx = el.index(prefix)
      return '' if prefix.empty?
    end
  end
  prefix
end

p longest_common_prefix(['flower', 'flow', 'flick'])

# p 'a'.index('a')