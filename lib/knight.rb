p 'knight file loaded'

def knight_moves(current_step, target, path = [])
  x_axis_difference = target[0] - current_step[0]
  y_axis_difference = target[1] - current_step[1]
  if x_axis_difference == 0 && y_axis_difference == 0 # we've arrived to the target
    return path
  else
    path << current_step
    if x_axis_difference > 0 #x axis is positive
      if y_axis_difference > 0
        # handle y increment. resolve operations here
      elsif y_axis_difference < 0
        # handle y decrement. resolve operations here
      else
        # y is zero
      end
    elsif x_axis_difference < 0 # x axis is negative
      if y_axis_difference > 0
        # handle y increment. resolve operations here
      elsif y_axis_difference < 0
        # handle y decrement. resolve operations here
      else
        #y is zero
      end
    else #x axis is zero
      if y_axis_difference > 0
        # handle y increment. resolve operations here
      elsif y_axis_difference < 0
        # handle y decrement. resolve operations here
      else
        #y is zero
      end
    end
  end
  path
end

def move_one_oclock(arr)
  arr[0] += 1
  arr[1] += 2
  arr
end

def move_two_oclock(arr)
  arr[0] += 2
  arr[1] += 1
  arr
end

def move_four_oclock(arr)
  arr[0] += 2
  arr[1] -= 1
  arr
end

def move_five_oclock(arr)
  arr[0] += 1
  arr[1] -= 2
  arr
end

def move_seven_oclock(arr)
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
