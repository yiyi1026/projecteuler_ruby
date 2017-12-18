def super_reduced_string(s)
  new_s = s.sub(/(.)\1/, "")
  while new_s.length < s.length
    s = new_s
    new_s = s.sub(/(.)\1/, "")
  end
  new_s.empty? ? 'Empty String' : new_s
end