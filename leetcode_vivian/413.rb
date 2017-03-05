# A sequence of number is called arithmetic if it consists of at least three elements and if the difference between any two consecutive elements is the same.
# For example, these are arithmetic sequence:
# 1, 3, 5, 7, 9
# 7, 7, 7, 7
# 3, -1, -5, -9
# The following sequence is not arithmetic.
# 1, 1, 2, 5, 7
# A zero-indexed array A consisting of N numbers is given.A slice of that array is any pair of integers (P, Q) such that 0 <= P < Q < N.
# A slice (P, Q) of array A is called arithmetic if the sequence:
# A[P], A[p + 1], ..., A[Q - 1], A[Q] is arithmetic.In particular, this means that P + 1 < Q.
# The function should return the number of arithmetic slices in the array A.

def arithmetic_slice(arr)
  start_diff=nil
  start_idx=nil

end


a=Array.new(7, 1)

#p (3..a.length).reduce(:+)+(a.length+1)*(a.length-3+1)

def arithmetic_sequence(arr)
  return nil if arr.nil? ||arr.empty?|| arr.length<=2
  arr_diff=[]
  arr.map.with_index { |num, idx| arr[idx+1] ? arr_diff<<num-arr[idx+1] : next }
  cnt=[]

  arr_diff.reduce do |num1, num2|
    if num1==num2
    end
  end
end

starting_sequence=[1, 1]
