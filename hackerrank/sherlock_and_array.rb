def solve(a)
  return "YES" if a.length == 1
  return "NO" if a.length < 3
  i = 0
  j = a.length - 1
  left_sum = a[0]
  right_sum = a[j]
  while i < j - 2

    case left_sum <=> right_sum
    when 1
      j -= 1
      right_sum += a[j]
      next
    when -1
      i += 1
      left_sum += a[i]
      next
    when 0
      return "YES" if i == j-2
      i += 1
      j -= 1
      left_sum += a[i]     
      right_sum += a[j]
      next
    end
  end

  return (left_sum == right_sum) && (i == j - 2) ? "YES" : "NO"
      
end

p solve([1,5,1])
p solve(234)