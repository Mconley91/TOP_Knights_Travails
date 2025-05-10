# frozen_string_literal: true

def knight_moves(current_step, target)
  moves = [[1,2],
           [2,1],
           [2,-1],
           [1,-2],
           [-1,-2],
           [-2,-1],
           [-2,1],
           [-1,2]]

  queue = [[current_step,[current_step]]]
  visited = {current_step => true}

  def in_bounds?(coordinates)
    coordinates.all? {|coordinate| coordinate >= 0 && coordinate < 8}
  end

  until queue.empty?
    current_step, path = queue.shift
    moves.each do |move|
      return "You made it in #{path.length-1} moves!  Here's your path: #{path}" if current_step == target
      potential_move = [current_step[0] + move[0], current_step[1] + move[1]]
      if !visited[potential_move] && in_bounds?(potential_move)
        visited[potential_move] = true
        queue << [potential_move, path + [potential_move]] 
      end
    end
  end
end

#---------------------------test area
p knight_moves([0,0],[3,3])
p knight_moves([0,0],[7,7])
p knight_moves([3,3],[0,0])
p knight_moves([7,7],[0,0])
p knight_moves([3,3],[4,3])
p knight_moves([4,3],[3,3])