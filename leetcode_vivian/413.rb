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

def ari_slice(arr)
  start_diff=nil
  start_idx=nil
  rtn=[]
  idx=0
  until idx>arr.length-1
    if arr[idx+1] && arr[idx+2]
      if arr[idx]-arr[idx+1]==arr[idx+1]-arr[idx+2] &&start_diff.nil?
        start_diff=arr[idx]-arr[idx+1]
        start_idx=idx
        idx+=2
      elsif start_diff.nil?
        idx+=1
      elsif start_diff && start_diff==arr[idx]-arr[idx+1]
        idx+=1
      elsif start_diff
        rtn<< arr[start_idx..idx]
        start_idx=nil
        start_diff=nil
        idx+=1
      end
    elsif arr[idx+1]
      if start_diff && start_diff==arr[idx]-arr[idx+1]
        idx+=1
      elsif start_diff
        rtn<< arr[start_idx..idx]
        start_idx=nil
        start_diff=nil
        idx+=1
      else
        idx+=1
      end
    else
      if start_diff
        rtn<< arr[start_idx..idx]
        start_idx=nil
        start_diff=nil
        idx+=1
      else
        idx+=1
      end
    end
  end
  rtn
end

def arithmetic_sequence(arr)
  ari_slice=ari_slice(arr)
  return nil if ari_slice.nil? ||ari_slice.empty?
  ari_slice.map { |a| (1..a.length-2).reduce(:+) }.reduce(:+)
end

p arithmetic_sequence([1, 2, 3, 4])
