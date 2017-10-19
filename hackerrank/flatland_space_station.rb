n = n.to_i
m = m.to_i
n, m = 6, 6
c = [0,1,2,4,3,5]
c = c.split(' ').map(&:to_i)
sort_c = c.sort
if m == 1
    p [n-m, m-1].max
else
    x = sort_c.each_cons(2).map do |a, b|
        (b-a) % 2 == 0 ? (b-a)/2 : (b-a-1)/2
    end
    m = x.max
    p [m,n - 1 - sort_c.last, sort_c.first].max
end

idx = 0
n.times do |i|
  until idx >=i && h[idx]  
      if idx >= m
          distance[i] = n - 1
          break
      end
      idx += 1
  end
  distance[i] = idx - i
end
i = 0
sort_c.each_with_index do |k,idx|
    next if idx == sort_c.length - 1
    (k..sort_c[idx+1]).each do |city|
        distance[i] = [distance[i], city-i].min
    end
end
p distance