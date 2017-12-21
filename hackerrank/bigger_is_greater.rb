def lex(str)
  s_arr = str.chars
  if str.length == 2
    if str[0].ord >= str[1].ord
      return 'no answer'
    else
      return str[1] + str[0]
    end
  elsif str.length < 2
    return 'no answer'
  end
  i = -2
  while i >= -s_arr.length
    # puts 'here'
    if s_arr[i].ord < s_arr[i+1].ord
      # puts 'here'
      slice = s_arr[i..-1].sort

      idx_slice = nil
      slice.each_index do |idx|
        if slice[idx].ord > s_arr[i].ord
          idx_slice = idx
          break
        end
      end
      idx_letter = slice[idx_slice]
      # puts idx_letter
      # p i
      if idx_slice == slice.length - 1
        piece = slice[0...idx_slice]
      else
        piece = slice[0...idx_slice] + slice[idx_slice+1..-1]
      end
      right_slice = ([idx_letter]+ (piece).sort).join("")

      return str[0..i-1] + right_slice
    end
    i -= 1 
  end
  # puts 'where'
  # return str[1] + (str[0] + str[2..-1]).chars.sort.join("")
end

p 'zedawdvyyfumwpupuinbdbfndyehircmylbaowuptgmw'
p lex('zedawdvyyfumwpupuinbdbfndyehircmylbaowuptgmw')

# p 'abdc'
# p lex('abdc')
# p 'dkhc'
# p lex('dkhc')

# s = 'ab'

# p s[0..-3]


