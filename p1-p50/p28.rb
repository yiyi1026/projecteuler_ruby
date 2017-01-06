p28
def number_spiral_diagonals(n)
  result=0
  i=3
  while i<=n
    result+=4*(i**2)-6*i+6
    i+=2
  end
  return result+1
end
