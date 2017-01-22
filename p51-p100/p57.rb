# Problem 57
# It is possible to show that the square root of two can be expressed as an infinite continued fraction.
# √ 2 = 1 + 1/(2 + 1/(2 + 1/(2 + ... ))) = 1.414213...
# By expanding this for the first four iterations, we get:
# 1 + 1/2 = 3/2 = 1.5
# 1 + 1/(2 + 1/2) = 7/5 = 1.4
# 1 + 1/(2 + 1/(2 + 1/2)) = 17/12 = 1.41666...
# 1 + 1/(2 + 1/(2 + 1/(2 + 1/2))) = 41/29 = 1.41379...
# The next three expansions are 99/70, 239/169, and 577/408, but the eighth expansion, 1393/985, is the first example where the number of digits in the numerator exceeds the number of digits in the denominator.
# In the first one-thousand expansions, how many fractions contain a numerator with more digits than denominator?

def getNextExpansion(rational)
  1 + Rational(1, 1 + rational)
end

def p57
  cnt =0
  ret = 1
  for i in 1..1000
    ret = getNextExpansion(ret)
    # p i.to_s + ' : ' + ret.to_s
    if ret.numerator.to_s.length > ret.denominator.to_s.length
      cnt += 1
      # p i.to_s + ' : ' + ret.to_s
    end
  end
  cnt
end

a = Time.now
p p57
p Time.now - a
