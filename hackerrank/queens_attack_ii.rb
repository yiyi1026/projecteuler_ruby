n = 100000

queen = [4187, 5068]
# queen = [4, 3]
i, j = queen
p "i = #{queen[0]}, j = #{queen[1]}"
# position is 1-based index
obs_arr = [[5,5], [4,2], [2,3], [4,1]]
queen = [rQueen,cQueen]
i, j = queen
obs_arr = [] # keys are positions of all obstacles
for a0 in (0..k-1)
  rObstacle,cObstacle = gets.strip.split(' ')
  rObstacle = rObstacle.to_i
  cObstacle = cObstacle.to_i
  obs_arr << [rObstacle, cObstacle]
    # your code goes here
end



nearest_obstacles = Array.new(8){Array.new}

def on_the_way?(n, i, j, obs_pose)
  # i, j is position of queen
  # order is in "up" "down", "up_diag", "down_diag", "up_rev_diag", "down_rev_dia", "left", "right"
  sign = 0
  return false if obs_pose.empty?
  pos_x, pos_y = obs_pose

  if j == pos_y
    sign = i < pos_x ? 0 : 1
    return sign
  end

  if i - pos_x == j - pos_y
    sign = i < pos_x ? 2 : 3
    return sign
  end

  if i - pos_x == pos_y - j
    sign = i > pos_x ? 4 : 5 
    return sign
  end

  if i == pos_x
    sign = j < pos_y ? 7 : 6
    return sign
  end
  
  -1
end

def nearer?(n, i, j, old_pos, new_pos)
  # check if old_pos is nearer to queen than new_pos
  return false if old_pos.empty?
  old_x, old_y = old_pos
  new_x, new_y = new_pos

  ((i - old_x).abs <= (i - new_x).abs) && ((j - old_y).abs <= (j - new_y).abs)

end


obs_arr.each do |new_pos|
  idx = on_the_way?(n,i,j,new_pos)
  if idx >= 0
    old_pos = nearest_obstacles[idx]
    nearest_obstacles[idx] = new_pos unless old_pos && nearer?(n, i, j, old_pos, new_pos)
  end
end


def out?(n, x, y, obs_arr)
  return true if (x > n) || (y > n) || (x < 1) || (y < 1)
  return false if obs_arr.empty?
  return true if obs_arr.include?([x,y])
  false
end

# vertical
up_cnt = 0
i = queen[0] + 1
j = queen[1]

until out?(n, i, j, nearest_obstacles) 
  up_cnt += 1
  i += 1
end
# p "up_cnt = #{up_cnt}"

down_cnt = 0
i = queen[0] - 1
j = queen[1]
until out?(n, i, j, nearest_obstacles) 
  down_cnt += 1
  i -= 1
end
# p "down_cnt = #{down_cnt}"

up_diag_cnt = 0
i = queen[0] + 1
j = queen[1] + 1
until out?(n, i, j, nearest_obstacles) 
  up_diag_cnt += 1
  i += 1
  j += 1
end
# p "up_diag_cnt = #{up_diag_cnt}"


down_diag_cnt = 0
i = queen[0] - 1
j = queen[1] - 1
until out?(n, i, j, nearest_obstacles) 
  down_diag_cnt += 1
  i -= 1
  j -= 1
end
# p "down_diag_cnt = #{down_diag_cnt}"

up_rev_diag_cnt = 0
i = queen[0] - 1
j = queen[1] + 1
until out?(n, i, j, nearest_obstacles) 
  up_rev_diag_cnt += 1
  i -= 1
  j += 1
end
# p "up_rev_diag_cnt = #{up_rev_diag_cnt}"

down_rev_diag_cnt = 0
i = queen[0] + 1
j = queen[1] - 1
until out?(n, i, j, nearest_obstacles) 
  down_rev_diag_cnt += 1
  i += 1
  j -= 1
end
# p "down_rev_diag_cnt = #{down_rev_diag_cnt}"

left_cnt = 0
i = queen[0]
j = queen[1] - 1
until out?(n, i, j, nearest_obstacles) 
  left_cnt += 1
  j -= 1
end
# p "left_cnt = #{left_cnt}"

right_cnt = 0
i = queen[0]
j = queen[1] + 1
until out?(n, i, j, nearest_obstacles) 
  right_cnt += 1
  j += 1
end
# p "right_cnt = #{right_cnt}"

total = up_cnt + down_cnt + up_diag_cnt + down_diag_cnt + up_rev_diag_cnt + down_rev_diag_cnt + left_cnt + right_cnt

p total
