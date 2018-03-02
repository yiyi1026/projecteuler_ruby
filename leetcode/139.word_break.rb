'''
Given a non-empty string s and a dictionary wordDict containing a list of non-empty words, determine if s can be segmented into a space-separated sequence of one or more dictionary words. You may assume the dictionary does not contain duplicate words.

For example, given
s = "leetcode",
dict = ["leet", "code"].

Return true because "leetcode" can be segmented as "leet code".

UPDATE (2017/1/4):
The wordDict parameter had been changed to a list of strings (instead of a set of strings). Please reload the code definition to get the latest changes.

'''
# @param {String} s
# @param {String[]} word_dict
# @return {Boolean}
#dynamic programming
def word_break(s, word_dict)

  return false if word_dict.empty?
  return true if s.empty?
  dict = {}
  word_dict.each{|wrd|dict[wrd]=true}
  len = s.length

  sol = Array.new(len+1, false)
  sol[0] = true

  for i in (0..len)
    for j in (0...i)
      if sol[j] && dict[s[j...i]]
        sol[i] = true
      end
    end
  end
  sol[len]
end