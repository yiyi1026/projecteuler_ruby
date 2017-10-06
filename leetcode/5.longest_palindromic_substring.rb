def longest_palindrome(str)
  # dynamic programming
  n = str.length
  return nil unless n > 0
  return str if str == str.reverse
  table = Array.new(n){Array.new(n)}
  maxlen = 1
  for i in 0...n
    table[i][i] = true
    maxlen = 1
  end

  for i in 0...n-1
    if str[i] == str[i+1]
      table[i][i+1] = true
      start = i # start is the start index of longest palindrome substring
      maxlen = 2
    end
  end

  k = 3  # current length of substring

  while k <= n
    i = 0
    while i + k - 1 < n
      j = i + k - 1 # end index of current substring
      if table[i+1][j-1] == true && str[i] == str[j]
        table[i][j] = true
        
        if k > maxlen
          start = i
          maxlen = k
        end
      end

      i += 1
    end
    k += 1
  end

  str[start...start+maxlen]
end

p longest_palindrome('')