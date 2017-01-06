#P29
def distinct_powers(n)
  lst=[]
  for a in 2..n
    b=2
    for b in 2..n
      lst.push(a**b)
    end
  end
  return lst.uniq.length
end

p distinct_powers(100)