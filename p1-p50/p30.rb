#P30
def digit_fifth_powers
  sum=0
  n=2
  while n<=999999
    n_str_lst=n.to_s.split('')
    result=0
    for i in 0..5
      result+=(n_str_lst[i].to_i)**5
    end
    if result==n
      sum+=n 
      p n
    end
    n+=1
  end
  return sum
end
p digit_fifth_powers
