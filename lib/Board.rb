
class Board
  include Instructions
  include CheckWinner

  def initialize(name)
    @name=name
    @row1 = ["_", "_", "_"]
    @row2 = ["_", "_", "_"]
    @row3 = ["_", "_", "_"]
  end
  
  def show
    p @row1
    p @row2
    p @row3   
  end
  def change(row, idx, value)
    case
    when row == 1 then @row1[idx]=value
    when row == 2 then @row2[idx]=value
    when row == 3 then @row3[idx]=value
    end
  end

    def check_empty?(position)
    # Check if the position is empty (thus can play)
    # or if it is already taken (thus ask another input)
    case position
    when "UL" then @row1[0] == "_"
    when "UC" then @row1[1] == "_"
    when "UR" then @row1[2] == "_"
    when "CL" then @row2[0] == "_"
    when "C" then @row2[1] == "_"
    when "CR" then @row2[2] == "_"
    when "BL" then @row3[0] == "_"
    when "BC" then @row3[1] == "_"
    when "BR" then @row3[2] == "_"
    end
  end

    def place_token(position, player)
    # Places the X or O in the correct place

    case position
    when "UL" then @row1[0] = player
    when "UC" then @row1[1] = player
    when "UR" then @row1[2] = player
    when "CL" then @row2[0] = player
    when "C" then @row2[1] = player
    when "CR" then @row2[2] = player
    when "BL" then @row3[0] = player
    when "BC" then @row3[1] = player
    when "BR" then @row3[2] = player
    end
  end
      
  # Checking sideways is fine. But checking vertical or diagonal
  # does not work yet.
  def check_all_outcomes
    p "Row 1 is: #{@row1}"
    p "Row 2 is: #{@row2}"
    p "Row 3 is: #{@row3}"
    
    if (@row1 == ["x", "x", "x"]) || (@row1 == ["o", "o", "o"])
      true
    elsif (@row2 == ["x", "x", "x"]) || (@row2 == ["o", "o", "o"])
      true
    elsif (@row3 == ["x", "x", "x"]) || (@row3 == ["o", "o", "o"])
      true
    elsif (@row1[0] == "x") && (@row2[0] == "x") && (@row3[0] == "x")
      true
    elsif (@row1[0] == "o") && (@row2[0] == "o") && (@row3[0] == "o")
      true 
    elsif (@row1[1] == "x") && (@row2[1] == "x") && (@row3[1] == "x")
      true
    elsif (@row1[1] == "o") && (@row2[1] == "o") && (@row3[1] == "o")
      true
    elsif (@row1[2] == "x") && (@row2[2] == "x") && (@row3[2] == "x")
      true
    elsif (@row1[2] == "o") && (@row2[2] == "o") && (@row3[2] == "o")
      true 
    elsif (@row1[0] == "x") && (@row2[1] == "x") && (@row3[2] == "x")
      true
    elsif (@row1[2] == "x") && (@row2[1] == "x") && (@row3[0] == "x")
      true
    elsif (@row1[0] == "o") && (@row2[1] == "o") && (@row3[2] == "o")
      true
    elsif (@row1[2] == "o") && (@row2[1] == "o") && (@row3[0] == "o")
      true
    end
  end   

  def declare_winner(player)
    if player == "x"
      puts "Player X is the winner!! Congratulations!"
    elsif player == "o"
      puts "Player O is the winner!! Congratulations!"
    end
  end

end



