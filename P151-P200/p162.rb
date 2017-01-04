#P162
def hexadecimal_numbers(n)
  cnt=0
  a=(1..n).each_with_object([]){|index,x| x<<index}

  for i in 1..n-2    
    for j in 1..n-2     
      for k in 1..n-2
        break if i+j+k>n
        cnt+=(13**(n-i-j-k))*((a[0,n-1]).combination(i).size)*((a[0,n-i]).combination(j).size)*((a[0,n-i-j]).combination(k).size)
      end
    end
  end
  return cnt  
end
result=0
for i in 3..16
  result+=hexadecimal_numbers(i)
end
p result.to_s(16).upcase
p hexadecimal_numbers(16)


#p (hexadecimal_numbers(16)).to_s(16)
#a=Array.new(16, 1)
#p 15*(16**15)-(15**16+14*2*15**15)+(13*14**15+2*14**16)-13**16         #11*(15**3)+30*(13**2)

