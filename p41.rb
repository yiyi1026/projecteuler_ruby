require 'prime'
t = Time.now
@max = 0

def recursive_call(current_num, remaining_list)
  if remaining_list.empty? && Prime.prime?(current_num) && current_num > @max
    @max = current_num
  end
  for i in 7.downto(1)
    if remaining_list.include?(i)
      recursive_call((current_num *10 + i), remaining_list.select { |x| x != i })
    end
    return if @max > 0
  end
end

for i in 7.downto(1)
  recursive_call(0, Array(1..i))
  break if @max > 0
end

p (Time.now - t)*1000
p @max
