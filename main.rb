# This is the main file for assembling and running
# files for tic tac toe (console game).
# Declare any required gems (I think none for this project)
require 'pry-byebug'
# First, require all the files that we need.

require_relative 'lib/check_winner'
require_relative 'lib/instructions'
require_relative 'lib/reset_game'
require_relative 'lib/Board'


# Puts initial game instructions on the screen:
board = Board.new("board_one")
player = board.choose_player
puts "The first player is #{player}."

#Start game. Run loop until CheckWinner returns true
round_count = 1
game_finished = false

while round_count <= 9 && game_finished != true
    # Puts next game instructions
  move_complete = false
  until move_complete == true
    puts "Player #{player} choose your position:"
    position = board.choose_position
    # Check empty and place it on the board

    if board.check_empty?(position) == true
      board.place_token(position, player)
      move_complete = true
    else
        puts "The position is taken. Please choose another position."
    end
  end
  # Show the new token in the new position
  puts "The board now looks like this:"
  board.show

    binding.pry
  if round_count > 4  

    game_finished = board.check_all_outcomes
  end

  if (player == "x") && (game_finished == false) 
    player = "o"
  elsif (player == "o") && (game_finished == false)
    player = "x" 
  end
round_count += 1
end

# Declare a winner for the finished game
board.declare_winner(player)