#P37
#The number 3797 has an interesting property. Being prime itself, it is possible to 
#continuously remove digits from left to right, and remain prime at each 
#stage: 3797, 797, 97, and 7. Similarly we can work from right to 
#left: 3797, 379, 37, and 3.
#Find the sum of the only eleven primes that are both truncatable from left to 
#right and right to left.
#NOTE: 2, 3, 5, and 7 are not considered to be truncatable primes.
a=Time.now
require 'prime'
def truncatable_prime?(n)
  n_str=n.to_s
  #return false unless Prime.prime?(n)
  return false unless ['1','2','3','5','7'].include?(n_str[0])
  for j in 1...n_str.length
    return false if n_str[j].to_i%2==0||n_str[j].to_i%5==0
  end
  for i in 1...n_str.length
    return false unless Prime.prime?((n_str[i,n_str.length-i]).to_i)
    return false unless Prime.prime?((n_str[0,i]).to_i)
  end
  return true
end
def truncatable_primes
  cnt=0
  sum=0
  i = 11
  while cnt<11
    p i if i%1000000 == 1 
    if Prime.prime?(i)&&truncatable_prime?(i)
      cnt += 1
      sum += i
      p "find one : " + i.to_s + " , currently find count is " + cnt.to_s
    end
    i += 2
  end
  p sum, cnt
  return sum
end
p truncatable_primes
p 1000*(Time.now-a)