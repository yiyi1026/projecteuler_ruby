# solution 1
def f(target, list)
  ret = Array.new
  while true
    oneNumCnt = (1 .. list.length-1).inject(:*)
    ret.push(list.delete_at(target/oneNumCnt))
    target %= oneNumCnt
    break if target == 0
  end
  (ret + list).inject { |sum, n| sum *10 + n }
end


a = Time.now
p f(1000000 - 1, [0, 1, 2, 3, 4, 5, 6, 7, 8, 9])
p 1000*(Time.now - a)

#  solution 2
a = Time.now
p Array(0..9).permutation(10).to_a[1000000-1].map { |x| x.to_s }.join('').to_i
p 1000*(Time.now - a)