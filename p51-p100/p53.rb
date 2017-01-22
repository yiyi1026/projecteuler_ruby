# Problem 53
# There are exactly ten ways of selecting three from five, 12345:
#     123, 124, 125, 134, 135, 145, 234, 235, 245, and 345
# In combinatorics, we use the notation, 5C3 = 10.
# It is not until n = 23, that a value exceeds one-million: 23C10 = 1144066.
# How many, not necessarily distinct, values of  nCr, for 1 ≤ n ≤ 100, are greater than one-million?

@cnt = 0

def combinations(n, r)
  (n-r+1..n).reduce(:*)/(1..r).reduce(:*)
  # Array.new(n).combination(r).to_a.length
end

def p53
  k = 11
  for i in 23..100
    for j in k.downto(1)
      if combinations(i, j) < 1000000
        k = j
        @cnt += 2 * (i/2 - j)
        @cnt -= 1 if i%2 ==0
        break
      end
    end
  end
end

a= Time.now
p53
p Time.now - a
p @cnt