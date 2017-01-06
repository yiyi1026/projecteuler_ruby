#P40
def integer_lst(k)
  lst=[9]
  i=0
  while i<k
    i+=1
    lst[i]=lst[i-1]/i*(i+1)*10
    end
  return lst
end
#p integer_lst(5)
def d(n)
  return n if n<10
  i=0
  while integer_lst(i).reduce(:+)<n
    i+=1      
  end
  a=n-((integer_lst(i)[0,i]).reduce(:+))
  return ((a-1)/(i+1)+10**i).to_s[a % (i+1)-1].to_i
end



