def alternatingCharacters(s)
  # Complete this function
  len = s.length
  i = 0
  j = i + 1
  cnt = 0
  while i < len && j < len
    if s[i] != s[j]
      i = j
      j += 1
    else
      j += 1
      cnt += 1
    end

  end
  cnt
end

p alternatingCharacters("aaabbb")