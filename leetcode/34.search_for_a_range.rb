'''
Given an array of integers sorted in ascending order, find the starting and ending position of a given target value.

Your algorithm\'s runtime complexity must be in the order of O(log n).

If the target is not found in the array, return [-1, -1].

For example,
Given [5, 7, 7, 8, 8, 10] and target value 8,
return [3, 4].
'''
def combine(arr)
  min = arr[0][0]
  max = arr[0][1]

  arr.each do |pos|
    x, y = pos
    next if x == -1 && y == -1
    if min == -1 && x > min
      min = x 
    elsif x < min
      min = x
    end
    max = y if y > max
  end

  [min, max]
end

def search_range(nums, target)
  len = nums.length
  return [-1, -1] if len == 0
  return [0,0] if len == 1 && nums[0] == target

  mid = len/2
  left = nums[0...mid]
  middle = nums[mid]
  right = nums[mid+1..-1]

  case middle <=> target
  when 1
    search_range(left, target)
  when 0
    x, y = search_range(right, target)
    if x > -1
      t = [x+mid+1, y+mid+1]
    else
      t = [-1,-1]
    end
    combine([search_range(left, target), [mid,mid], t])
  when -1
    x, y = search_range(right, target)
    if x > -1
      [x+mid+1, y+mid+1]
    else
      [-1,-1]
    end
  end
end

p search_range([5, 7, 7, 8, 8, 10], 8)

p search_range([], 8)

p search_range([5, 7, 7, 7], 8)

p search_range([5, 7, 8, 8], 8)




