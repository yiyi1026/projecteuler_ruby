def richieRich(s, n, k)
  # max_change k times
  i = 0
  j = n - 1
  if i == j
    return k > 0 ? 9 : s
  end
  s_arr = s.chars.map(&:to_i)
  cnt = 0
  idx_arr = []
  while i < j
    if s_arr[i] != s_arr[j]
      idx_arr << [i,j].min
      cnt += 1
      max = [s_arr[i],s_arr[j]].max
      s_arr[i], s_arr[j] = max, max
    end
    i += 1
    j -= 1
  end

  if cnt < k

    for m in (0...n)
      break if cnt == k
      if s_arr[m] < 9
        if idx_arr.include?(m)          
          if m == n-1-m
            s_arr[m] = 9
          else
            s_arr[m], s_arr[n-1-m] = 9, 9
            cnt += 1
          end
          break if cnt == k
        else
          if m == n - 1 - m
            break if cnt > k - 1       
            s_arr[m] = 9
            cnt += 1
          else
            next if cnt > k - 2
            s_arr[m], s_arr[n-1-m] = 9, 9
            cnt += 2
          end
        end
      end
      
    end
    return s_arr.join("")
  elsif cnt == k
    return s_arr.join("")
  else
    return -1   
  end

end

p richieRich("12321",5,1)