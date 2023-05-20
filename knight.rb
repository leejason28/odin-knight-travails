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
    queue = []
    visited = []
    pm = possible_moves(start)
    for i in 0...pm.length
      queue.push(pm[i])
    end
    while queue.length > 0
      move = queue[0]
      if move[0] == dest
        return move[1]
      else
        pm = possible_moves(move[0], move[1])
        for i in 0...pm.length
          queue.push(pm[i])
        end
      end
      queue = queue[1..-1]
    end
  end

  def possible_moves(start, path = [start])
    arr = []
    for i in 0...@@move_set.length
      move = [start[0]+@@move_set[i][0], start[1]+@@move_set[i][1]]
      if valid_move?(move)
        path.push(move)
        arr.push([move, path])
        path = path[0..-2]
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