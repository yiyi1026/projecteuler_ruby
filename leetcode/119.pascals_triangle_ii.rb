'''
Given an index k, return the kth row of the Pascal\'s triangle.

For example, given k = 3,
Return [1,3,3,1].


[1],
[1,1],
[1,2,1],
[1,3,3,1],
[1,4,6,4,1]


Note:
Could you optimize your algorithm to use only O(k) extra space?

'''

def get_row(row_index)
  return [] if row_index == 0
  ret = [1]
  for i in 2...row_index
    temp = [0] + ret + [0]
    for j in 0...temp.length-1
    end
  end
end