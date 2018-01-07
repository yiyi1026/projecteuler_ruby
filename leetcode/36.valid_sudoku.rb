'''
Determine if a Sudoku is valid, according to: Sudoku Puzzles - The Rules.

The Sudoku board could be partially filled, where empty cells are filled with the character ".".


A partially filled sudoku which is valid.

Note:
A valid Sudoku board (partially filled) is not necessarily solvable. Only the filled cells need to be validated.
'''
def line_check?(line)
  standard = ('1'..'9').to_a
  cnt = {}
  line.each do |tile|
    next if tile == '.'
    return false unless standard.include?(tile)
    if cnt[tile]
      return false
    else
      cnt[tile] = true
    end
  end

  true
end

def cell_check?(board)
  [0,3,6].each do |i|
    [0,3,6].each do |j|
      arr = []
      (0..2).each do |k|
        (0..2).each do |m|
          arr << board[i+k][j+m]
        end
      end
      return false unless line_check?(arr)
    end
  end
  true
end

def is_valid_sudoku(board)
  horizonal = board.all?{|row|line_check?(row)}
  vertical = board.transpose.all?{|row|line_check?(row)}
  cell_check = cell_check?(board)
  return false unless horizonal && vertical && cell_check
  true
end

# p is_valid_sudoku([])
a = [[1,2,3],
[4,5,6],
[7,8,9]]
board = [[".",".",".",".","5",".",".","1","."],[".","4",".","3",".",".",".",".","."],[".",".",".",".",".","3",".",".","1"],["8",".",".",".",".",".",".","2","."],[".",".","2",".","7",".",".",".","."],[".","1","5",".",".",".",".",".","."],[".",".",".",".",".","2",".",".","."],[".","2",".","9",".",".",".",".","."],[".",".","4",".",".",".",".",".","."]]
p cell_check?(board)
# board.each{|r|p r.join(" ")}
# p is_valid_sudoku(board)
# p a.transpose