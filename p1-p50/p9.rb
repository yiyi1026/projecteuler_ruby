#p9
def spt(p)
  for a in 1..p-1/2
    b=(p**2-2*p*a)/(2*(p-a))
    return b*a*(p-b-a) if (p**2-2*p*a)%(2*(p-a))==0
  end
  return nil
end
p spt(1000)