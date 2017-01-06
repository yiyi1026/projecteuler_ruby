#P46
require 'prime'
#a=Time.now
def p46_single(n)
  return nil if  n%2 == 0 || Prime.prime?(n)
  k=Prime.each(n-2).to_a.reverse
  k.pop
  for i in k
    return i if (n-i)%2==0 && 2*(Math.sqrt((n-i)/2).to_i)**2==n-i
  end
  return false
end

def p46_multi(n)
  i=9
  while i<=n
    l=p46_single(i)
    return i if l==false
    i+=2
  end
  return false
end


p p46_multi(10000)
#p Time.now-a
