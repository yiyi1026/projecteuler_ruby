# @param {Integer} n
# @return {Integer}

@hash = Hash.new
def rec_call(left, right)
  ll = left.length
  rl = right.length
  if ll <= 1 && rl <= 1
    return 1
  end

  lc = 0
  if @hash[ll]
    lc = @hash[ll]
  else
    left.each_index do |i|
      lc += rec_call(left[0...i], left[i+1..-1])
    end
    @hash[ll] = lc
  end
  lc = 1 if lc ==0

  rc = 0
  if @hash[rl]
    rc = @hash[rl]
  else
    right.each_with_index do |_,i|
      rc += rec_call(right[0...i], right[i+1..-1])
    end
    @hash[rl] = rc
  end
  rc = 1 if rc ==0

  lc * rc
end

def num_trees(n)
  cnt = 0
  x = (0...n).to_a
  x.each do |i|
    cnt += rec_call(x[0...i], x[i+1..-1])
  end
  cnt
end

# revised
def num_trees2(n)
  hash = Hash.new{|h,k|h[k] = 0}
  hash[0] = 1
  hash[1] = 1
  for i in (2..n)
    # i for (1..i) node
    for r in (1..n)
      # r for root
      hash[i] += hash[i-r] * hash[r-1]
    end
  end
  
  hash[n]
end


p num_trees(19)
