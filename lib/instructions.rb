#This module contains the instruction messages.
module Instructions
  def choose_player
    correct = false
    until correct == true
    puts "Choose which player goes first, x or o:"
    player = gets.chomp
    if player == "o" || player == "x"
      correct = true
    end

    end
    player
  end


  def choose_position
    correct = false
    until correct == true
      puts "Enter the position you wish to place your token."
      puts "[ UL, UC, UR ]"
      puts "[ CL,  C, CR ]"
      puts "[ BL, BC, BR ]"
      position = gets.chomp
      if position == "UL" || position == "UC" || position == "UR" || position == "CL"|| position == "C"|| position == "CR"|| position == "BL"|| position == "BC"|| position == "BR"
      correct = true
      end
    end
    position
  end
end