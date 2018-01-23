'''
Given two strings s and t, determine if they are isomorphic.

Two strings are isomorphic if the characters in s can be replaced to get t.

All occurrences of a character must be replaced with another character while preserving the order of characters. No two characters may map to the same character but a character may map to itself.

For example,
Given "egg", "add", return true.

Given "foo", "bar", return false.

Given "paper", "title", return true.

Note:
You may assume both s and t have the same length.
'''

def is_isomorphic(s, t)
  len = s.length
  key_hash = {}
  val_hash = {}
  len.times do |i|
    key = s[i]
    val = t[i]
    if key_hash[key]
      return false unless key_hash[key] == t[i]
    else
      return false if val_hash[t[i]] 
      key_hash[key] = t[i]
      val_hash[val] = true
    end
  end
  true
end

p is_isomorphic('ab', 'aa')
p is_isomorphic('ab', 'ca')
p is_isomorphic('egg', 'add')