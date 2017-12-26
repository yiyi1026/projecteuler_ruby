hash = Hash.new{|h,k|hash[k] = 0}
b.each do |k|
  hash[k] += 1
end

a.each do |k|
  hash[k] -= 1
end

puts hash.keys.select{|k|hash[k] > 0}.sort.join(" ")