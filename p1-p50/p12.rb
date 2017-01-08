#p12
require 'prime'
timer=Time.now
def factor(num)
  return 2 if Prime.prime?(num)
  cnt=0
  a=(Math.sqrt(num)).floor
  for i in 1..a
    cnt+=2 if num%i==0
  end
  return cnt-1 if a**2==num
  return cnt
end
def p12(n)
  i=1
  k=i*(i+1)/2
  while factor(k)<n
    i+=1
    k+=i
  end
  return k
end

p p12(500)
p Time.now-timer