def beauty?(s)
  s_len = s.length
  s_dup = s.dup

  (1..s_len).each do |i|
    j = i
    slice = s_dup[0...i]
    new_dup = s_dup[i..-1]

    next if new_dup.length < i

    until j >= s_len

      next_slice = (slice.to_i+1).to_s
      new_step = next_slice.length
      new_slice = new_dup[0...new_step]

      if new_slice == next_slice
        slice = next_slice
        new_dup = new_dup[new_step..-1]
        j += new_step
      else
        j = s_len + 1
      end
    end
    return s[0...i] if j == s_len
  end
  false
end

p beauty?('9101113')