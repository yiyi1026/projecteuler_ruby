#p27
require 'prime'
def quadratic_primes(n)
  max_cnt=0
  n_cnt=0
  for a in 1-n..n-1
    next if a%2==0
    for b in  1-n..n-1
        next if b%2==0||b%3==0||b%5==0
        next if !Prime.prime?(b.abs)
        cnt=0
        i=0
        while Prime.prime?(i**2+i*a+b)
          cnt+=1
          i+=1
        end
        if cnt>max_cnt
          max_cnt=cnt
          prod=a*b
        end
    end
  end
  return prod
end
#a=Time.now
p quadratic_primes(1000)
#p 1000*(Time.now-a)
