''' 14.Longest Common Prefix
  Write a function to find the longest common prefix string amongst an array of strings.
'''

def longest_common_prefix(strs) # leetcode 14
  return '' if strs.empty?
  
  prefix = strs[0]
  cnt = 0
  prefix.chars.each_with_index do |char, idx|
    break unless strs[1..-1].all?{|s|s[idx] == char}
    cnt += 1
  end
 
  prefix.slice(0,cnt)
end

p longest_common_prefix(['flower', 'flow', 'flick'])
