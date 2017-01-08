#p6
def sum_square_diff(n)
  return (n*(n+1)/2)**2-(1..n).map{|x|x**2}.reduce(:+)
end
p sum_square_diff(100)
