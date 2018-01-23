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
  return [1] if row_index == 0
  prev = get_row(row_index-1)
  temp = [0] + prev + [0]
  ret = []
  temp.each_cons(2){|a,b|ret << a + b}
  ret
end

def get_row(row_index)
  return [1] if row_index == 0
  prev = get_row(row_index-1)
  temp = [0] + prev + [0]
  temp.each_cons(2).map{|a,b|a + b}
end

p get_row(2)
p get_row(3)
p get_row(4)