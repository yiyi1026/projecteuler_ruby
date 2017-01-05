#P45
#def triangular(n)
#  return n*(n+1)/2
#end
a=Time.now
def pentagonal(n)
  return n*(3*n-1)/2
end

def hexagonal(n)
  return n*(2*n-1)
end

def mixed_function(n)
  tri_lst=[]
  pen_lst=[]
  hex_lst=[]
  for i in n..100000
#    tri_lst.push(triangular(i))
    pen_lst.push(pentagonal(i))
    hex_lst.push(hexagonal(i))   
  end
  return (pen_lst&hex_lst).sort if pen_lst&hex_lst
end

p mixed_function(1)
p Time.now-a


