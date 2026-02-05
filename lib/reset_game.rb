# This module/method will hold methods to reset the game
# if there is a winner of if a tie occurs.
module ResetGame
  def player_switch
    if player == "x"
      player = "o"
    elsif player == "o"
      player = "x"
    end
  end

  def reset_board
    nested_array = Array.new(3) { Array.new(3) }
    board = nested_array.map do |row| 
      row.map do |value|
        value = "_"
      end
    end
    p board
  end
end