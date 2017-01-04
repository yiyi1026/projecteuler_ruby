#Double-base palindromes
#The decimal number, 585 = 10010010012 (binary), is palindromic in both bases.
#Find the sum of all numbers, less than one million, which are palindromic in base 10 and base 2.
#(Please note that the palindromic number, in either base, may not include leading zeros.)

def palindromic? (str)
  for i in 0..str.length/2
    return false if str[i] != str[str.length - i - 1]
  end
  return true
end

def main
  sum = 0
  for i in 1..1000000
    sum += i if palindromic?(i.to_s) && palindromic?(i.to_s(2))
#    p i if i%1000 == 0 
  end
  p sum
end

main