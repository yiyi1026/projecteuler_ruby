def square?(num)
  sq = num ** 2
  sq_s = sq.to_s
  left = sq_s[0..(-(num.to_s).length-1)].to_i
  right = sq_s[(-(num.to_s).length)..-1].to_i

  num == left + right  
end

p = 1
q = 100


result = (p..q).select do |num|
  square?(num)
  end.join(" ")

puts result.empty? ? "INVALID RANGE" : result