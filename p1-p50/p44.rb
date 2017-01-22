# p44
# Pentagonal numbers are generated by the formula, Pn=n(3n−1)/2. The first ten pentagonal numbers are:
#   1, 5, 12, 22, 35, 51, 70, 92, 117, 145, ...
# It can be seen that P4 + P7 = 22 + 70 = 92 = P8. However, their difference, 70 − 22 = 48, is not pentagonal.
# Find the pair of pentagonal numbers, Pj and Pk, for which their sum and difference are pentagonal and D = |Pk − Pj| is minimised; what is the value of D?

def isPentagonal?(n)
  return true if (1+Math.sqrt(1+24*n))%6 ==0
end

def p44
  i = 1
  while true
    n = i * (3 * i - 1) / 2
    (i-1).downto(1){ |j|
      m = j * (3 * j - 1) / 2
      return n-m if isPentagonal?(n - m) && isPentagonal?(n + m)
    }
    i+=1
  end
end

a = Time.now
b = p44
p Time.now - a
p b