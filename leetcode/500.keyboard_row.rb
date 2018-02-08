'''
Given a List of words, return the words that can be typed using letters of alphabet on only one row\'s of American keyboard like the image below.


American keyboard


Example 1:
Input: ["Hello", "Alaska", "Dad", "Peace"]
Output: ["Alaska", "Dad"]
'''

# @param {String[]} words
# @return {String[]}
# def row_word?(word)
#   row_hash={}
#   'qwertyuiop'.each_char{|ch|row_hash[ch]=1}
#   'asdfghjkl'.each_char{|ch|row_hash[ch]=2}
#   'zxcvbnm'.each_char{|ch|row_hash[ch]=3}
  
#   word_split = word.chars
#   standard = nil
#   word_split.each do |ch|
#     if standard.nil?
#       standard = row_hash[ch]
#     else
#       return false unless standard == row_hash[ch]
#     end
#   end
#   true
# end
# def find_words(words)
#   words.select{|word|row_word?(word.downcase)}
# end

def find_words(words)
  row_hash={}
  'qwertyuiop'.each_char{|ch|row_hash[ch]=1}
  'asdfghjkl'.each_char{|ch|row_hash[ch]=2}
  'zxcvbnm'.each_char{|ch|row_hash[ch]=3}
  selected = []
  words.each do |word|
    standard = nil
    condition = true
    word.downcase.each_char do |ch|
      if standard.nil?
        standard = row_hash[ch]
      else
        unless standard == row_hash[ch]
          condition = false
          break
        end
      end
    end
    selected << word if condition
  end
  selected
    
end
