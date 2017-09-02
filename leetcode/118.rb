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

def generate(num_rows, h={})
  return h[num_rows] if h[num_rows]
  if num_rows == 1
      h[num_rows] = [[1]]
  elsif num_rows == 2
      h[num_rows] = [[1], [1,1]]
  else
      h_prev = generate(num_rows-1, h)   # all num_rows-1 lines
      pre_prev = h_prev[-1] # the num_rows-1 line
      prev = [0] + pre_prev + [0]
      result = []
      prev.each_with_index do |row, idx|
          next if idx == 0
          result << prev[idx-1] + row
      end
      h[num_rows] =  h_prev + [result]
  end
  h[num_rows]

end
p generate(200)