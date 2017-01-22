# Powerful digit counts
# Problem 63
# The 5-digit number, 16807=75, is also a fifth power. Similarly, the 9-digit number, 134217728=89, is a ninth power.
# How many n-digit positive integers exist which are also an nth power?

def power_digit_cnt(n,times)
  return (n**times).to_s.length==times
end

def p63
  cnt=0
  for i in 1..9
    for j in 1..30
      a=(i**j).to_s.length
      break  if (i**j).to_s.length != j
      cnt+=1
    end
  end
  return cnt
end
p p63
