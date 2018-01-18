''' 14.Longest Common Prefix
  Write a function to find the longest common prefix string amongst an array of strings.
'''

def longest_common_prefix(strs)
  return '' if strs.empty?
  
  prefix = strs[0]
  cnt = 0
  prefix.chars.each_with_index do |char, idx|
    break unless strs[1..-1].all?{|s|s[idx] == char}
    cnt += 1
  end
 
  prefix.slice(0,cnt)
end

# revised
def longest_common_prefix(strs)
  return '' if strs.empty?
  prefix = strs[0]
  len = prefix.length
  return '' if len == 0
  i = len-1
  comp = strs[1..-1]
  comp.each do |str|
    i -= 1 until str[i] == prefix[i] || i < 0
    i -= 1 until str[0..i] == prefix[0..i] || i < 0
    break if i < 0
  end
  i >= 0 ? prefix[0..i] : ''
end

p longest_common_prefix(['flower', 'flow', 'flick'])
