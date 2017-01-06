#P3 Largest prime factor
#The prime factors of 13195 are 5, 7, 13 and 29.
#What is the largest prime factor of the number 600851475143 ?

#Solution1
#use Prime.prime_division
#Prime.prime_division(12, generator = Prime::Generator23.new) returns[[2,2],[3,1]]
require 'prime'
def largest_prime_factor(num)
  arr = Prime.prime_division(num, generator = Prime::Generator23.new)
  return arr[-1][0]
end
  
p largest_prime_factor(600851475143)

#Solution2
require 'prime'
def largest_prime_factor(num)
  
  
  
  
end

