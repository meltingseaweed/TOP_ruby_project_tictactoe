require 'pry-byebug'

require_relative 'lib/check_winner'
require_relative 'lib/instructions'
require_relative 'lib/reset_game'
require_relative 'lib/Board'

board = Board.new("board_one")
player = board.choose_player
puts "The first player is #{player}."

round_count = 1
game_finished = false

while round_count <= 9 && game_finished != true
  move_complete = false
  until move_complete == true
    puts "Player #{player} choose your position:"
    position = board.choose_position

    if board.check_empty?(position) == true
      board.place_token(position, player)
      move_complete = true
    else
      puts "The position is taken. Please choose another position."
    end
  end

  puts "The board now looks like this:"
  board.show

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

board.declare_winner(player)