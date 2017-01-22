# Problem 56
# A googol (10100) is a massive number: one followed by one-hundred zeros; 100100 is almost unimaginably large: one followed by two-hundred zeros.
# Despite their size, the sum of the digits in each number is only 1.
# Considering natural numbers of the form, ab, where a, b < 100, what is the maximum digital sum?

def powsum(a,b)
  (a**b).to_s.split('').map{|x| x.to_i}.reduce(:+)
end
# p powsum(98,99)

def p56
  max_sum = 0
  for i in 80..99
    for j in 80..99
      s = powsum(i, j)
      max_sum = s if max_sum < s
    end
  end
  max_sum
end

a = Time.now
s = p56
p Time.now - a
p s