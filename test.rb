def digit_fifth
  list = []  
  (2..354_294).each {|n|
    sum=0
    n.to_s.chars.each {|x|
      sum += x.to_i**5
      break if sum>n
    }
    list << n if sum==n
  }
  list
end

p digit_fifth