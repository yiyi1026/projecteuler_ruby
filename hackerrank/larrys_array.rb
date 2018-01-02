$cnt = 0
def merge_sort(arr)
  return arr if arr.length < 2
  mid = arr.length / 2
  left = arr[0...mid]
  right = arr[mid..-1]
  sorted_l = merge_sort(left)
  sorted_r = merge_sort(right)
  merge(sorted_l, sorted_r)
end

def merge(left, right)
  sorted = []
  total = left.length + right.length
  cnt = 0
  i = 0
  j = 0
  while i < left.length && j < right.length
    left_el = left[i]
    right_el = right[j]

    cur_len = sorted.length
    case left_el <=> right_el
    when 1
      cnt += left.length - i
      sorted << right_el
      j += 1
    when -1

      sorted << left_el
      i += 1
    end
  end
  $cnt += cnt
  sorted + left[i..-1] + right[j..-1]
end

merge_sort([3,4,5,1,2])

p $cnt
$cnt = 10

p $cnt