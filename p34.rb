#P34
def factorials(n)
  result=1
  return result if n==0
  for i in 1..n
    result*=i
  end
  return result
end


def digit_factorials(n)
  sum=0
  for i in 3..n
    result=0
    i.to_s.split("").each {|k| result+=factorials(k.to_i); }
    sum+=i if result==i
  end
  return sum  
end
p digit_factorials(999999)