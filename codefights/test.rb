def multiplicationTable(n)
  return (1..n).map{|el|(1..n).map{|x|x*el}}
end

p multiplicationTable(5)