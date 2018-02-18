'''
A message containing letters from A-Z is being encoded to numbers using the following mapping:

\'A\' -> 1
\'B\' -> 2
...
\'Z\' -> 26
Given an encoded message containing digits, determine the total number of ways to decode it.

For example,
Given encoded message "12", it could be decoded as "AB" (1 2) or "L" (12).

The number of ways decoding "12" is 2.
'''

# @param {String} s
# @return {Integer}
def num_decodings(s)
  len = s.length
  track = [1]
  i = 0
  return 0 if len < 1 || (len < 2 && s == '0')
  return 1 if len < 2
  # s.chars.each_cons(2){|a,b|return 0 unless (a+b).to_i > 9}
  while i < len
    last = track.last
    if i < 1
      return 0 if s[i].to_i < 1
      track << last
    elsif s[i].to_i < 1
      if s[i-1].to_i < 1 || s[i-1].to_i > 2
        return 0
      else
        track << track[-2]
      end
    elsif s[i-1].to_i < 1
      track << last
    elsif s[i-1].to_i < 2
      track << last + track[-2]
    elsif s[i-1].to_i < 3
      if s[i].to_i < 7
        track << last + track[-2]
      else
        track << last
      end
    else
      track << last
    end
    i += 1
  end
  track.last
end

# p num_decodings('230')
p num_decodings('110')