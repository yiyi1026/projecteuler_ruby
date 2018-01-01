# def subset(str)
#   return str if str.empty?
#   return ["", str] if str.length == 1
#   sub = subset(str[0...-1])
#   last_char = str[-1]
#   sub + sub.map{|s|s+last_char} 
# end

# def substring?(str, sub)
#   return true if sub.empty?
#   return false if str.empty? || str.length < sub.length
#   return str.include?(sub) if sub.length == 1

#   sub.each_char do |chr|
#     if str.include?(chr)
#       idx = str.index(chr)
#       new_str = str[idx+1..-1]
#       return true if substring?(str[idx+1..-1], sub[1..-1])
#     else
#       return false
#     end
#   end

#   false
# end

# def commonChild(s1, s2)
#   len = s1.length
#   arr = Array.new(len+1){Array.new(len+1, 0)}
  # p arr
#   # Complete this function 
#   s1, s2 = s2, s1 unless s1.length <= s2.length
#   max_len = s1.length
#   sub1 = subset(s1).sort_by{|s|-s.length}

#   sub1.each do |sub_s|
#     if substring?(s2, sub_s)
#       return sub_s.length
#     end
#   end
#   0
# end

def commonChild(s1, s2)
  m = [0]*(s1.size+1)
  for i in 1..s1.size
      new_el = [0]
      for j in 1..s2.size
          new_el.push s1[i-1] == s2[j-1] ? m[j-1]+1 : [new_el[j-1],m[j]].max 
      end
      m = new_el +[0] 
  end
  m[-2] 
end

p commonChild('HARRY','SALLY')
