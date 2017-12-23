def swap(arr)
  half_len = arr.length / 2
  left = arr[0...half_len]
  right = arr[half_len..-1]
  right + left
end

def reconstruction(n, k)
  start = []
  (n /(2* k)).times do |i|
    first = i * 2  * k + 1
    last = 2 * (i + 1) * k
    start << (first..last).to_a
  end
  start
end

def abs_permutation(n,k)
  return (1..n).to_a.join(" ") if k == 0
  recon = reconstruction(n,k)

  case n % (2*k) == 0
  when true
    result = recon.map{|arr|swap(arr)}
  else
    result = nil
  end

  result.nil? ? -1 : result.flatten.join(" ")
end

p abs_permutation(100,2)