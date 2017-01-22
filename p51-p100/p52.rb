# p52
# It can be seen that the number, 125874, and its double, 251748, contain exactly the same digits, but in a different order.
# Find the smallest positive integer, x, such that 2x, 3x, 4x, 5x, and 6x, contain the same digits.

def contain_same_dig?(n, times)
  return (n*times).to_s.split('').sort == n.to_s.split('').sort
end

def p52
  i = 100
  while true
    i+=1
    k=0
    for j in 2..6
      break unless contain_same_dig?(i,j)
      k+=1
    end
    return i if k == 5
  end
end

# p contain_same_dig?(125874, 2)
p p52

