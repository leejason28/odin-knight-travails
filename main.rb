require_relative './board'
require_relative './knight'

b = Board.new
k = Knight.new

p k.knight_moves([0,0],[1,2])
p k.knight_moves([0,0],[3,3])
p k.knight_moves([3,3],[0,0])
p k.knight_moves([3,3],[4,3])