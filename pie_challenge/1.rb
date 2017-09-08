#Consider a simple function that returns the maximum value stored in an array of non-negative integers. The size of the array is n. 

def maximum(arr)
  # O(n), space O(1)
  return -1 if arr.empty?
  max = arr[0]
  arr.each do |el|
    max = el if el > max
  end

  max
end

p maximum([1,3,2,8]) == 8
p maximum([]) == -1
p maximum([9,1,2]) == 9
p maximum([4,1,2,6]) == 6