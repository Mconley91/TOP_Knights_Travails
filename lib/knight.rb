p 'knight file loaded'

def knight_moves(current_step, target, path = [])
  return path if current_step == target
  short_step = [1,2]
  long_step = [2,1]
  path << current_step

  #incrementing toward target
  if target[0] - current_step[0] > 2 && target[1] - current_step[1] > 2
    knight_moves([current_step[0] + long_step[0], current_step[1] + long_step[1]], target, path)
  end
  #decrementing toward target
  if current_step[0] - target[0] > 2 && current_step[1] - target[1] > 2
    knight_moves([current_step[0] - long_step[0], current_step[1] - long_step[1]], target, path)
  end
  
  path
end

p knight_moves([7,7],[0,0])
p knight_moves([0,0],[7,7])