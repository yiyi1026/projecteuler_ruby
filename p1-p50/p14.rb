#p14
def collatz_sequence(n)
  cnt=0
  while n>1
    n=  n%2==0 ? n/2 : 3*n+1
    cnt+=1
  end
  return cnt
end
def p14(n)
  result=0
  tmp=0
  for i in (n-1).downto(n/2)
    a=collatz_sequence(i)
    if a>tmp
      tmp=a
      result=i
    end
  end
  return result
end
a=Time.now
p p14(1000000)
p Time.now-a
