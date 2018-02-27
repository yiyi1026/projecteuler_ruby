'''
There are two sorted arrays nums1 and nums2 of size m and n respectively.

Find the median of the two sorted arrays. The overall run time complexity should be O(log (m+n)).

Example 1:
nums1 = [1, 3]
nums2 = [2]

The median is 2.0
Example 2:
nums1 = [1, 2]
nums2 = [3, 4]

The median is (2 + 3)/2 = 2.5
'''

# first try
def med(sorted, double, len)
  double ? (sorted[len] + sorted[len-1]) / 2.0 : sorted[len]
end

def find_median_sorted_arrays1(left, right)
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


# revised
def find_median_sorted_arrays(nums1, nums2)
  l1 = nums1.length
  l2 = nums2.length
  len = (l1 + l2+1)/2

  sorted = []
  cnt = 0
  i = 0
  j = 0
  until cnt == len || i == l1 || j == l2
    case nums1[i] <=> nums2[j]
      when 1
        sorted << nums2[j]
        j += 1
      else
        sorted << nums1[i]
        i += 1
      end   
  end

  if cnt < len
    sorted += nums1[i..-1] + nums2[j..-1]
  end
  (l1+l2).even? ? (sorted[len] + sorted[len-1])/2.0 : (sorted[len-1]/1.0)
end

arr1 = [1,2]
arr2 = [3,4]
p find_median_sorted_arrays(arr1, arr2)