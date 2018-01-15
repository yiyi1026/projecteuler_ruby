'''
Given a 2D board and a word, find if the word exists in the grid.

The word can be constructed from letters of sequentially adjacent cell, where "adjacent" cells are those horizontally or vertically neighboring. The same letter cell may not be used more than once.

For example,
Given board =
[
  [\'A\',\'B\',\'C\',\'E\'],
  [\'S\',\'F\',\'C\',\'S\'],
  [\'A\',\'D\',\'E\',\'E\']
]
word = "ABCCED", -> returns true,
word = "SEE", -> returns true,
word = "ABCB", -> returns false.
'''

def position_arr(board, target)
  solution = []
  m, n = board.length, board[0].length
  m.times do |i|
    n.times do |j|
      solution << [i,j] if board[i][j] == target
    end
  end
  solution
end

def surround_poses(board, pos)
  # return all unvisited possible surround positions
  m, n = board.length, board[0].length
  x, y = pos
  possible = [
  [x, y-1],
  [x-1, y],
  [x+1, y],
  [x, y+1]
]
  possible.select{|x, y|x < m && x >= 0 && y < n && y >= 0}
end

def trace_pos(board, char, visited = [])
  # return [] if visited.empty?
  # it donesn't word for first char search
  last_pos = visited.last
  solution = []
  surround_poses(board, last_pos).each do |pos|
    x, y = pos
    solution << pos if board[x][y] == char && (!visited.include?(pos))
  end
  solution
end

def exist(board, word, visited = [])
  return true if word.empty?
  # iterate through each row to find first char poses.
  if visited.empty?
    start = position_arr(board, word[0])
    # p start
    return start.any?{|pos|exist(board, word[1..-1], visited+[pos]) == true}
  else
  # if poses exist, iterate through poses to search for next character, until all chars searched or some char doesn't exist
    next_char = word[0]
    new_word = word[1..-1]

    solution = trace_pos(board, next_char, visited)

    solution.each do |pos|
      return true if exist(board, new_word, visited + [pos]) == true
    end

    return false
  end

end

board =
[
  ['A','B','C','E'],
  ['S','F','C','S'],
  ['A','D','E','E']
]

# p surround_poses(board, [0,1])

# position_arr(board, 'A').each do |pos|
#   p pos
#   p surround_poses(board, pos)
# end
word = 'ABCB'
p exist(board, word, visited = [])
# start = [[0, 0], [2, 0]]
# p trace_pos()
# visited = []
# pos = [0,0]
# p exist(board, word[1..-1], visited+[pos])