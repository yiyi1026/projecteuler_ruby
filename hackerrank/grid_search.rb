
g = ["123412",
"561212",
"333634",
"781288"]


p = ["12", "12"]

def ceil_match(g,p)
  r1, c1 = g.length, g[0].length
  r2, c2 = p.length, p[0].length
  
  r1_idx = 0
  arr = []
  
  while r1_idx < r1
    g_row = g[r1_idx]
    p_row = p[0]

    if g_row.include?(p_row)
      (c1-c2+1).times do |i|
        if g_row[i..i+c2-1] == p_row
          arr << [r1_idx, i]
        end
      end
    end
    r1_idx += 1
  end
      
  arr
end

def grid_search?(g, p, i, j)
  slice = []
  r2, c2 = p.length, p[0].length

  (i...r2).each do |k|
    slice << g[k][j...j+c2]
  end

  slice.length.times do |idx|
    return false unless slice[idx] == p[idx]
  end
  true
end

arr = ceil_match(g,p)

def help(arr,g,p)
  arr.each do |pos|
    i,j = pos
    return true if grid_search?(g,p,i,j)
  end
end

p help(arr,g,p)



