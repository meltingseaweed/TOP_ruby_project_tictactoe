# This code will check if there is a winner yet
# By testing all possible solutions..?

module CheckWinner

  def declare_winner(player)
    if player == "x"
      puts "Player X is the winner!! Congratulations"
    elsif player == "o"
      puts "Player O is the winner!! Congratulations"
    end
  end
end