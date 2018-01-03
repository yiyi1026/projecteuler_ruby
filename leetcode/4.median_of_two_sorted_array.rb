def med(sorted, double, len)
  double ? (sorted[len] + sorted[len-1]) / 2.0 : sorted[len]
end

def find_median_sorted_arrays(left, right)
  len = left.length + right.length
  double = (len % 2 == 0)
  sorted = []
  until left.empty? || right.empty?
    case left[0] <=> right[0]
    when -1
      sorted << left.shift
    else
      sorted << right.shift
    end
    if sorted.length > len/2
      return med(sorted, double, len/2)
    end
  end
  sorted += left + right
  med(sorted, double, len/2) 
end
arr1 = [1,2]
arr2 = [3,4]
p find_median_sorted_arrays(arr1, arr2)