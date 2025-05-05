p 'knight file loaded'

def knight_moves(current_step, target, path = [])
  x_axis_difference = target[0] - current_step[0] #Note: negative differences means the current coordinate exceeds the target & we must decrement.
  y_axis_difference = target[1] - current_step[1]
  x_axis_value = current_step[0]
  y_axis_value = current_step[1]
  if x_axis_difference == 0 && y_axis_difference == 0 # --------------arrived to the target
    path << [x_axis_value,y_axis_value]
    return path
  else
    path << [x_axis_value,y_axis_value]
    # p current_step
    p path
    p "X:#{x_axis_value} Y:#{y_axis_value}"
    #-------------------------------------------------------finishing moves
    if x_axis_difference == 2 && y_axis_difference == 1
      knight_moves(move_2_oclock(current_step), target, path)
    elsif x_axis_difference == 2 && y_axis_difference == -1
      knight_moves(move_4_oclock(current_step), target, path)
    elsif x_axis_difference == -2 && y_axis_difference == 1
      knight_moves(move_10_oclock(current_step), target, path)
    elsif x_axis_difference == -2 && y_axis_difference == -1
      knight_moves(move_8_oclock(current_step), target, path)
    elsif x_axis_difference == 1 && y_axis_difference == 2
      knight_moves(move_1_oclock(current_step), target, path)
    elsif x_axis_difference == 1 && y_axis_difference == -2
      knight_moves(move_5_oclock(current_step), target, path)
    elsif x_axis_difference == -1 && y_axis_difference == 2
      knight_moves(move_11_oclock(current_step), target, path)
    elsif x_axis_difference == -1 && y_axis_difference == -2
      knight_moves(move_7_oclock(current_step), target, path)
    end
  end
  #------------------------------------------------------------ general increment/decrement logic
  if x_axis_difference > 0 && y_axis_difference > 0 
    if y_axis_value + 2 < 7 && x_axis_value + 2 < 7
      knight_moves(move_1_oclock(current_step), target, path)
    else
      knight_moves(move_2_oclock(current_step), target, path)
    end
    
  elsif x_axis_difference < 0 && y_axis_difference < 0
    knight_moves(move_7_oclock(current_step), target, path)
  end

  "end reached"
end

def move_1_oclock(arr)
  arr[0] += 1
  arr[1] += 2
  arr
end

def move_2_oclock(arr)
  arr[0] += 2
  arr[1] += 1
  arr
end

def move_4_oclock(arr)
  arr[0] += 2
  arr[1] -= 1
  arr
end

def move_5_oclock(arr)
  arr[0] += 1
  arr[1] -= 2
  arr
end

def move_7_oclock(arr)
  arr[0] -= 1
  arr[1] -= 2
  arr
end

def move_8_oclock(arr)
  arr[0] -= 2
  arr[1] -= 1
  arr
end

def move_10_oclock(arr)
  arr[0] -= 2
  arr[1] += 1
  arr
end

def move_11_oclock(arr)
  arr[0] -= 1
  arr[1] += 2
  arr
end



# p knight_moves([7,7],[0,0])
p knight_moves([0,0],[7,7])
