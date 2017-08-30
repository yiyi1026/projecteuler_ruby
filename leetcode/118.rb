=begin
Given numRows, generate the first numRows of Pascal's triangle.

For example, given numRows = 5,
Return

[
     [1],
    [1,1],
   [1,2,1],
  [1,3,3,1],
 [1,4,6,4,1]
]
=end


# def generate(num_rows)
#   return [1] if num_rows == 1
#   return [1, 1] if num_rows == 2
#   prev = [0] + generate(num_rows-1) + [0]
#   new_row = []
#   prev.each_with_index do |el, idx|
#       next if idx == 0
#       new_row << prev[idx -1] + el
#   end
#   new_row
# end
def generate(num_rows, h = {})
#   return h[num_rows] if h[num_rows]
#   if num_rows == 1
#       h[1] = [1]
#       return generate(num_rows, h)
#   elsif num_rows == 2
#       h[2] = [1,1]
#       return generate(num_rows, h)
#   end
#   prev = [0] + generate(num_rows-1, h) + [0]
#   new_row = []
#   prev.each_with_index do |el, idx|
#       next if idx == 0
#       new_row << prev[idx -1] + el
#   end
#   h[num_rows] = new_row
# end

p generate(5)