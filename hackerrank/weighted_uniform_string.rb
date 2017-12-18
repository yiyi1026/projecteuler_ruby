require 'set'
def uni_set(s)
  return [] if s.empty?
  arr = ('a'..'z').to_a
  h = {}
  
  pre_letter = s[0]
  cnt = 1
  i = 1
  
  while i < s.length
    cur_letter = s[i]
    
    if pre_letter == cur_letter
      cnt += 1
    else
      h[pre_letter] = cnt unless h[pre_letter] && h[pre_letter] > cnt
      cnt = 1
      pre_letter = cur_letter
    end
    i += 1
  end

  h[pre_letter] = cnt unless h[pre_letter] && h[pre_letter] > cnt

  h
end

s = "abccddde"
x = 9
dic = ('a'..'z').to_a
hash = uni_set(s)
res = (1..26).any? do |i|
  if x % i > 0
    false
  else
    cur_l = dic[i-1]
    # puts cur_l
    cnt = hash[cur_l]
    cnt && cnt >= x / i ? true : false  
  end
end
  
puts res ? 'Yes' : 'No'