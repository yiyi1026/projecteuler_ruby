lines = [
  'GBGBGGB',
  'GBGBGGB',
  'GBGBGGB',
  'GGGGGGG',
  'GGGGGGG',
  'GBGBGGB',
  'GBGBGGB'
]

lines = [
  'GGGGGG',
  'GBBBGB',
  'GGGGGG',
  'GGBBGB',
  'GGGGGG'
]

# lines = [
#   'BGBB',
#   'GGGB',
#   'BGGG',
#   'BBGB'
# ]

matrix = lines.map{|row|row.chars}

def right_num(matrix, pos)
  n, m = matrix.length, matrix[0].length
  x, y = pos
  idx = matrix[x][y+1..-1].index('B')
  idx.nil? ?  (m - y - 1) : (idx)
end

def left_num(matrix, pos)
  n, m = matrix.length, matrix[0].length
  x, y = pos
  idx = matrix[x][0...y].rindex('B')
  idx.nil? ?  y : (y - idx - 1)
end

def up_num(matrix, pos)
  x, y = pos
  n, m = matrix.length, matrix[0].length

  cnt = 0
  j = 1

  while x - j >= 0 && matrix[x-j][y] == 'G'
    cnt += 1
    j += 1
  end

  cnt
end

def down_num(matrix, pos)
  x, y = pos
  n, m = matrix.length, matrix[0].length

  cnt = 0
  j = 1

  while x + j < n && matrix[x+j][y] == 'G'
    cnt += 1
    j += 1
  end

  cnt
end

def cross_table(matrix)
  n, m = matrix.length, matrix[0].length
  table = Array.new(n+1){Array.new(m+1, 0)}
  for i in (1..n)
    for j in (1..m)
      next unless matrix[i-1][j-1] == 'G'
      # left = table[i][j-1]
      # up = table[i-1][j]
      left = left_num(matrix, [i-1,j-1])
      up = up_num(matrix, [i-1,j-1])

      right = right_num(matrix, [i-1,j-1])
      down = down_num(matrix, [i-1,j-1])

      min_round = [left, up, right, down].min
      table[i][j] = min_round + 1
    end
  end
  table
  
end

cross_sets = []
# cross_sets stores all possible crosses [position, side_length]
table = cross_table(matrix)
table.each{|r|p r}
n, m = table.length, table[0].length

for i in (1...n)
  for j in (1...m)
    val = table[i][j]
    # if val > 1
      cross_sets << [[i,j], val]
    # end
  end
end

def overlap?(set1, set2)
  hash = {}
 
  set1.each do |el1|
    hash[el1.join(" ")] = true
  end

  set2.each do |el2|
    return true if hash[el2.join(" ")]
  end
  false
end

def restore(cross)
  x, y = cross[0]
  side = cross[-1] - 1
  cells = [[x,y]]
  (1..side).each do |step|
    cells << [x, y+step]
    cells << [x, y-step]
    cells << [x+step, y]
    cells << [x-step, y]
  end

  cells
end

def find_max(cr1, cr2, max_prod = 1)
  if cr1[1] < 1 ||  cr2[1] < 1
    return max_prod
  end
  return max_prod if (cr1.last*4-3) * (cr2.last*4-3) < max_prod

  set1 = restore(cr1)
  set2 = restore(cr2)
  overlap = overlap?(set1, set2)

  if overlap
    cr1_mod = [cr1[0], cr1[1]-1]
    cr2_mod = [cr2[0], cr2[1]-1]
    cr1_mod_max = find_max(cr1_mod, cr2, max_prod)
    cr2_mod_max = find_max(cr1, cr2_mod, max_prod)
    [cr1_mod_max, cr2_mod_max].max
  else
     [(cr1.last*4-3) * (cr2.last*4-3), max_prod].max
  end           

end


def max_prod(cross_sets)
  max_product = 1
  cross_sets.combination(2).each do |cr1, cr2|
    cur_prod = find_max(cr1, cr2, max_prod = max_product)
    max_product = cur_prod if max_product < cur_prod
  end

  max_product
end

p max_prod(cross_sets)

