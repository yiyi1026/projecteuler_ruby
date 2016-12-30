#P35
#The number, 197, is called a circular prime because all rotations of the digits: 
#197, 971, and 719, are themselves prime.
#There are thirteen such primes below 100: 2, 3, 5, 7, 11, 13, 17, 31, 37, 
#71, 73, 79, and 97.#How many circular primes are there below one million?
timer_start=Time.now
require 'prime'
def circular_primes(n)
  result=0
  for i in 2..n
    result+=1 if circular_prime?(i)
  end
  return result
end

def circular_prime?(n)
  return false unless Prime.prime?(n)
  n_str=n.to_s.split("")
  return false if (n_str.include?('2')&&n_str.length>1)||n_str.include?('4')||n_str.include?('6')\
  ||n_str.include?('8')||n_str.include?('0')||(n_str.include?('5')&&n_str.length>1)
  for i in 1...n_str.length

    return false unless Prime.prime?((n_str[i,n_str.length-i]+n_str[0,i]).join('').to_i)    
  end
  return true
end

p circular_primes(999999)
p "Elapsed Time: #{(Time.now - timer_start)*1000} milliseconds"



