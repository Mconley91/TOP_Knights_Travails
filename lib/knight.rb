p 'knight file loaded'

def knight_moves(current_step, target, path = [])
  x_axis_difference = target[0] - current_step[0]
  y_axis_difference = target[1] - current_step[1]
  x_axis_value = current_step[0]
  y_axis_value = current_step[1]
  if x_axis_difference == 0 && y_axis_difference == 0 # we've arrived to the target
    path << [x_axis_value,y_axis_value]
    return path
  else
    path << [x_axis_value,y_axis_value]
    p path
    #finishing moves
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

    if x_axis_difference > 0
      if y_axis_difference > 0
        # handle x & y increment.
        if x_axis_difference >= 2
          knight_moves(move_2_oclock(current_step), target, path)
        else
          p "#{current_step}'s X Difference is less than 2"
          knight_moves(move_1_oclock(current_step), target, path)
        end
      elsif y_axis_difference < 0
        # handle x increment & y decrement.
        if x_axis_difference >= 2
          knight_moves(move_4_oclock(current_step), target, path)
        else
          knight_moves(move_5_oclock(current_step), target, path)
        end
      else
        # handle y is zero
        # p "#{current_step}'s Y is zero"
        if x_axis_difference >= 2
          knight_moves(move_5_oclock(current_step), target, path)
        else
          knight_moves(move_7_oclock(current_step), target, path)
        end
      end
      #--------------------------------------------------------------------------
    elsif x_axis_difference < 0 
      if y_axis_difference > 0
        # handle x decrement & y increment.
        if x_axis_difference <= -2
          knight_moves(move_10_oclock(current_step), target, path)
        else
          knight_moves(move_11_oclock(current_step), target, path)
        end
      elsif y_axis_difference < 0
        # handle x & y decrement.
        if x_axis_difference <= -2
          knight_moves(move_8_oclock(current_step), target, path)
        else
          knight_moves(move_7_oclock(current_step), target, path)
        end
      else
        #y is zero
        if x_axis_difference <= -2
          knight_moves(move_7_oclock(current_step), target, path)
        else
          knight_moves(move_8_oclock(current_step), target, path)
        end
      end
      #--------------------------------------------------------------------------
    else #x is zero
      if y_axis_difference > 0
        # handle y increment. 
        if y_axis_difference >= 2
          knight_moves(move_11_oclock(current_step), target, path)
        else
          knight_moves(move_10_oclock(current_step), target, path)
        end
      else #y_axis_difference is negative
        # handle y decrement. 
        if y_axis_difference >= 2
          knight_moves(move_5_oclock(current_step), target, path)
        else
          knight_moves(move_4_oclock(current_step), target, path)
        end
      end
    end
  end
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
