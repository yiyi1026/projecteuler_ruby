n, a, b = 73,25,25
a, b = b, a unless a <= b  # make sure a <= b
if a == b
  puts (n-1) * a

else
  arr = [(n-1)*a]
  while true
    (1..n).each do |multiplier|
      prev = arr[-1]
      arr << prev + (b-a)
      break if arr.length == n
    end
    break if arr.length == n
    (1..n).each do |i|
      prev = arr[-1]
      arr << prev + a
      break if arr.length == n
    end
    break if arr.length == n
  end
  puts arr.join(" ")
end