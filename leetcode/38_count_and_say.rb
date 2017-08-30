def count_and_say(n)
  str = '1'
  return str if n == 1
  i = 2
  while i <= n
      str = cas(str)
      i += 1
  end
  str
end

def cas(str)
result = [[1, str[0]]]
i = 1
while i < str.length
  if str[i] == result[-1][1]
    result[-1][0] += 1
  else
    result << [1, str[i]]
  end
  i += 1
end

result.flatten.join 
  
end