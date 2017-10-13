def solve(n,w)
  route = []
  count = 0
  w.each_char do |char|
    case char
    when 'U'
      count += 1
      route << count
    when 'D'
      count -= 1
      route << count
    end
  end
  amt = 0
  route.each_with_index do |el, idx|
    next if (idx == 0) ||(el != 0) || (idx == route.length - 1)
    amt += 1 if (route[idx-1] != 0) || (route[idx+1] !=0)
  end
  amt
    
end

p solve(8, 'UDDDUDUU')