'''
Given numRows, generate the first numRows of Pascal\'s triangle.

For example, given numRows = 5,
Return

[
     [1],
    [1,1],
   [1,2,1],
  [1,3,3,1],
 [1,4,6,4,1]
]

'''

def generate(num_rows)
  return [] if num_rows == 0
  return [[1]] if num_rows == 1
  ret = generate(1)
  until ret.length == num_rows
    last = ret.last
    temp = [0] + last + [0]
    new_el = []
    for i in 0...temp.length-1
      new_el.push(temp[i]+temp[i+1])
    end
    ret.push(new_el)
  end

  ret
end

p generate(5)