#p21
def amicable_numbers(n)
  return 0 if n<2
  sum=1
  limit=Math.sqrt(n).floor
  for i in 2..limit
    sum+=i+n/i if n%i==0
    sum=sum-i if limit**2==n
  end
  return sum
end

def p21(n)
  sum=0
  for i in 2...n
    sum+=i if i==amicable_numbers(amicable_numbers(i)) && amicable_numbers(i)!=i
  end
  return sum
end
