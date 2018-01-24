'''
Given an arbitrary ransom note string and another string containing letters from all the magazines, write a function that will return true if the ransom note can be constructed from the magazines ; otherwise, it will return false.

Each letter in the magazine string can only be used once in your ransom note.

Note:
You may assume that both strings contain only lowercase letters.

canConstruct("a", "b") -> false
canConstruct("aa", "ab") -> false
canConstruct("aa", "aab") -> true
'''

def can_construct(ransom_note, magazine)
  hash = Hash.new(0)
  ransom_note.each_char do |chr|
    hash[chr] += 1
  end

  mag_hash = Hash.new(0)
  magazine.each_char do |char|    
    mag_hash[char] += 1
  end

  hash.all?{|k,v|mag_hash[k] && mag_hash[k] >= v}
end

p can_construct('a', 'b')
p can_construct('aa', 'ab')
p can_construct('aa', 'aab')