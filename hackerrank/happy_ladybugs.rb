def happy_bugs?(str)
  return true if no_move_happy?(str)
  no_emp = str.chars.select{|char| char != '_'}
  return false if (str.length == no_emp.length) || (no_emp.length == 1)

  h = Hash.new{|h,k|h[k] = 0}
  no_emp.each do |char|
    h[char] += 1
  end
  h.values.all?{|v|v > 1}
  
end

def no_move_happy?(str)
  emp_count = str.count("_")
  no_emp = str.chars.select{|char| char != '_'}
  return true if no_emp.empty?
  return false if no_emp.length == 1
  i = 1
  while i < no_emp.length
    return false unless (no_emp[i] == no_emp[i+1]) || (no_emp[i] == no_emp[i-1])
    i += 1
  end
  true
  
end


s = "G"
p happy_bugs?(s)

# p no_move_happy?(s)

# s_no_move = 'AABBBC'
# s_no_move_false = 'AABBBCC'
# p no_move_happy?(s_no_move)
# p no_move_happy?(s_no_move_false)