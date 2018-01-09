'''
Given an array of strings, group anagrams together.

For example, given: ["eat", "tea", "tan", "ate", "nat", "bat"], 
Return:

[
  ["ate", "eat","tea"],
  ["nat","tan"],
  ["bat"]
]
Note: All inputs will be in lower-case.
'''

def group_anagrams(strs)
  hash = Hash.new{|h,k|h[k] = []}
  strs.each do |str|
    sorted = str.chars.sort.join("")
    hash[sorted] << str
  end

  hash.values
end
strs = ["eat", "tea", "tan", "ate", "nat", "bat"]
p group_anagrams(strs)