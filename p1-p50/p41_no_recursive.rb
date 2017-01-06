#P41
#Pandigital prime
#Problem 41
#We shall say that an n-digit number is pandigital if it makes use of all the digits 1 to n 
#exactly once. For example, 2143 is a 4-digit pandigital and is also prime.
#What is the largest n-digit pandigital prime that exists?
require 'prime'
def pandigital_prime(i)
  n=i
  a=(Array(1..n).reverse).join("").to_i
  result=0
  ini=a
  while ini>=1
    return ini if ini.to_s.split("").sort.join("")==Array(1..n).join && Prime.prime?(ini)
    ini-=1
    if ini.to_s.length<n
      n-=1
    end
  end
  return nil
end
p pandigital_prime(7)