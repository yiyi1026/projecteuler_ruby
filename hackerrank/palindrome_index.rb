def palindromeIndex(s)
  i = 0
  j = s.length - 1

  idx = -1

  while i < j
    if s[i] == s[j]
      i += 1
      j -= 1
    elsif s[i] = s[j - 1]
      idx = j
      break
    elsif s[i+1] == s[j]
      idx = i
      break
    end
  end

  idx    
end

p palindromeIndex('abab')