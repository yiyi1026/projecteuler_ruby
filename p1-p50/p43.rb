#P43
def sub_string_divisibility
  count=0
  divided_by_lst = [2,3,5,7,11,13,17]
  a = Array(0..9).permutation(10).to_a.reject{ |x| x[0]== 0 } 
  for i in 0...(a.length)
    k = a[i]
    cnt = 0
    for j in 1..7
      cnt += 1 if (k[j] * 100 + k[j+1] * 10 + k[j+2]) % divided_by_lst[j-1] == 0
    end
    if cnt==7
      count += k.map{|x| x.to_s}.join("").to_i
    end
  end
  return count
end
p sub_string_divisibility