class Knight

  @@move_set = [[-2,1], [-2,-1], [-1,2], [-1,-2], [1,2], [1,-2], [2,1], [2,-1]]

  attr_accessor :pos

  def initialize(pos=[0,0])
    @pos = pos
  end

  def knight_moves(start, dest)
    # use "bfs" 
    # queue of possible_moves(start)
    # if move == dest, done -> return path
    # else pop move from queue and add possible_moves(move) to queue
    # each element of queue should be [move, [path to move]] where path begins at start
  end

  def possible_moves(start)
    arr = []
    for i in 0...@@move_set.length
      move = [start[0]+@@move_set[i][0], start[1]+@@move_set[i][1]]
      if valid_move?(move)
        arr.push(move)
      end
    end
    arr
  end

  def valid_move?(move)
    if move[0]<0 || move[0]>7
      false
    elsif move[1]<0 || move[1]>7
      false
    else
      true
    end
  end

end