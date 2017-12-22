def tp(n)
  3*(2**n-1)
end

def log2(n)
  Math.log(n)/Math.log(2)
end

def out(t)
  return 4-t if t <= 3
  prev = log2(t / 3.0 + 1).ceil
  start = 3 * 2**(prev-1)
  prev_cnt = tp(prev-1)
  start - (t - prev_cnt - 1) 

end

(1..12).each do |num|
  p out(num)

end

