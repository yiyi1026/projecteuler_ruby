# s = gets.strip
# s = 'chillout'
# len = s.length
# s_lst = s.split("")
# row = Math.sqrt(len).floor
# col = Math.sqrt(len).ceil
# selected = []
# (row..col).each do |i|
#     j = len/i
#     j += 1 until i * j >= len
#     selected = [i,j] if selected.empty? || selected[0] * selected[1] > i * j
# end
# row, col = selected
# arr = Array.new(row){Array.new(col,"")}
# row.times do |i|
#   col.times do |j|
#     arr[i][j] = s_lst.shift
#   end
# end
# puts arr.transpose.map(&:join).join(" ")
i = 45
square = i ** 2
puts square.to_s.split("").map(&:to_i).reduce(0,:+)