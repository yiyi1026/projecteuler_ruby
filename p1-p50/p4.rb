#P4
#a=Time.now
def largest_palindrome_product(n)
  result=0
  for i in (10**n-1).downto(10**(n-1))
    for j in (i-1).downto(10**n/2)
      a=(i*j).to_s
      result=a.to_i if a.reverse==a && a.to_i>result
    end
  end
  return result
end

p  largest_palindrome_product(3)
#p Time.now-a