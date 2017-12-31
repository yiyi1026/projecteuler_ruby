def rev?(arr)
  left = []
  i = 0
  while i < arr.length - 1
    if arr[i] > arr[i + 1]
      left << i
    end
    i += 1
  end

  if arr[left.last + 1] && arr[left.last + 1] < arr[left.last]
    left << left.last + 1
  end

  if left.length >= 2
    if left.count == left.last - left.first + 1
      if left.first == 0
        return [left.first+1, left.last+1].join(" ") unless arr[left.last+1]
        return [left.first+1, left.last+1].join(" ") if arr[0] < arr[left.last+1]
        return false
      else
        return [left.first+1, left.last+1].join(" ")  if arr[left.last] > arr[left.first - 1]
        return false
      end
    end
  elsif left.length == 1
    return [left[0]+1, left[0] + 2].join(" ") if left[0] == arr.length - 2 && arr.last > arr[left[0]-1]
    return false
  end
  false
end

# if sorted
#   return "yes"
# elsif swap?(arr)
#   puts 'yes'
#   puts "swap #{swap?(arr)}"
# elsif rev?(arr)
#   puts "yes"
#   puts "reverse #{rev?(arr)}"
# else
#   puts 'no'
# end
# arr = [4,2]
# p rev?(arr)

# arr = [1, 3, 5, 2]
# p rev?(arr)

# arr = [1,2,3]
# p rev?(arr)

# arr = [1,5,4,3,2,6]
# p rev?(arr)


def swap?(arr)
  # arr.length >= 2
  peak = []
  valley = []
  i = 0
  while i < arr.length - 1
    if arr[i] > arr[i + 1]
      if i == 0
        peak << i 
      else
        peak << i if arr[i] > arr[i-1]
      end

      if arr[i + 2]
        valley << i + 1 if arr[i+2] > arr[i+1]
      else
        valley << i + 1
      end
    end
    i += 1
  end
  p "peak = #{peak}"
  p "valley = #{valley}"
  if peak.length == 1 && valley.length == 1

    peak_idx = peak[0]
    valley_idx = valley[0]
    first, last = [peak_idx, valley_idx].sort 
 
    return false unless (first+1...last).each_cons(2).all?{|a,b|arr[a] <= arr[b]}
    if arr[peak_idx] > arr[valley_idx - 1] && arr[peak_idx+1] > arr[valley_idx]
      if peak_idx > 0
        return false unless arr[peak_idx-1] < arr[valley_idx]
      end

      if arr[valley_idx+1]
        return [peak_idx+1, valley_idx+1] if arr[peak_idx] < arr[valley_idx+1]
      else
        return [peak_idx+1, valley_idx+1]
      end
    end
    if last - first == 1
      new_arr = arr.dup
      new_arr[last], new_arr[first] = new_arr[first], new_arr[last]
      return [peak_idx+1, valley_idx+1].join(" ") if new_arr == new_arr.sort
    end 
  elsif peak.length == 2 && valley.length == 2
    peak_idx = peak[0]
    valley_idx = valley[1]
    first, last = [peak_idx, valley_idx].sort 

    return false unless (first+1...last).each_cons(2).all?{|a,b|arr[a] < arr[b]}
    if arr[peak_idx] > arr[valley_idx - 1] && arr[peak_idx+1] > arr[valley_idx]

      if peak_idx > 0
        return false unless arr[peak_idx-1] < arr[valley_idx]
      end
      if arr[valley_idx+1]

        return [peak_idx+1, valley_idx+1] if arr[peak_idx] < arr[valley_idx+1]
      else
        return [peak_idx+1, valley_idx+1]
      end
    end

  end
  false
end
s = "4104 8529 49984 54956 63034 82534 84473 86411 92941 95929 108831 894947 125082 137123 137276 142534 149840 154703 174744 180537 207563 221088 223069 231982 249517 252211 255192 260283 261543 262406 270616 274600 274709 283838 289532 295589 310856 314991 322201 339198 343271 383392 385869 389367 403468 441925 444543 454300 455366 469896 478627 479055 484516 499114 512738 543943 552836 560153 578730 579688 591631 594436 606033 613146 621500 627475 631582 643754 658309 666435 667186 671190 674741 685292 702340 705383 722375 722776 726812 748441 790023 795574 797416 813164 813248 827778 839998 843708 851728 857147 860454 861956 864994 868755 116375 911042 912634 914500 920825 979477"
# arr = s.split.map(&:to_i)

arr = [1,2,4,3,5,6]
p swap?(arr)