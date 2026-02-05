# This file will hold the module for the moves
# that can be done during tic tac toe.
module Move
  def check_empty?(board, position)
    # Check if the position is empty (thus can play)
    # or if it is already taken (thus ask another input)
    case position
    when "UL" then board[@row1][0] == "_"
    when "UC" then board[@row1][1] == "_"
    when "UR" then board[@row1][2] == "_"
    when "CL" then board[@row2][0] == "_"
    when "C" then board[@row2][1] == "_"
    when "CR" then board[@row2][2] == "_"
    when "BL" then board[@row3][0] == "_"
    when "BC" then board[@row3][1] == "_"
    when "BR" then board[@row3][2] == "_"
    end
  end

  # Run the place_token if check_empty is true.
  # Ensure the value of player is correct before running
  def place_token(board, position)
    # Places the X or O in the correct place

    case position
    when "UL" then board[@row1][0] = player
    when "UC" then board[@row1][1] = player
    when "UR" then board[@row1][2] = player
    when "CL" then board[@row2][0] = player
    when "C" then board[@row2][1] = player
    when "CR" then board[@row2][2] = player
    when "BL" then board[@row3][0] = player
    when "BC" then board[@row3][1] = player
    when "BR" then board[@row3][2] = player
    end
  end
end