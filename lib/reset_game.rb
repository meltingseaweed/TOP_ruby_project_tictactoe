# This module/method will hold methods to reset the game
# if there is a winner of if a tie occurs.
module ResetGame
  def check_game_end(round_count, game_finished)
    if round_count > 4  then game_finished = board.check_all_outcomes
    end
    round_count += 1
  end
  
  def player_switch(player, game_finished)
  #switch player from x->o or o-> x
  if (player == "x") && (game_finished == false) 
    player = "o"
  elsif (player == "o") && (game_finished == false)
    player = "x" 
  end
  end
end
