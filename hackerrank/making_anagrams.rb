def makingAnagrams(s1, s2)
  s1_sorted = s1.chars.sort
  s2_sorted = s2.chars.sort
  i = 0
  j = 0
  cnt = 0
  
  while i < s1_sorted.length && j < s2_sorted.length
    l1 = s1_sorted[i]
    l2 = s2_sorted[j]
    case compare(l1, l2)
    when 0
      i += 1
      j += 1
    when -1
      i += 1
      cnt += 1
    when 1
      j += 1
      cnt += 1
    end
  end

  s1_sorted.length - i + s2_sorted.length - j + cnt
  
end

def compare(l1, l2)
  l1.ord - l2.ord <=> 0
end

p makingAnagrams('bacdc', 'abcdc')