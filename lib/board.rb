require "pry"

class Board

  attr :board
#made board that is oposite before being transposed
  def initialize


    @keys = ["A","B","C","D","E","F","G"]
    @board = [
    [".",".",".",".",".","."],
    [".",".",".",".",".","."],
    [".",".",".",".",".","."],
    [".",".",".",".",".","."],
    [".",".",".",".",".","."],
    [".",".",".",".",".","."],
    [".",".",".",".",".","."],
    ]

    @endgame = false
  end

#displays the board with spaces
  def display_board
    puts @keys.join(" ")

    @board.transpose.map do |line|
      puts line.join(" ")
    end
  end


#Adds the token to the desired position on the board
  def chip_place(letter)
    chip_col = @keys.index(letter)
    last_occ = @board[chip_col].find_index do |position|

                                position != "."
                              end
        if last_occ
          @board[chip_col][last_occ -1] = "X"
        else
          @board[chip_col][5] = "X"
        end
  end

# makes the computer plays its tocken
  def comp_chip_place
    chip_col = rand(6)
    last_occ = @board[chip_col].find_index do |position|
                                position != "."
                              end

      if last_occ
        @board[chip_col][last_occ -1] = "O"
      else
        @board[chip_col][5] = "O"
      end
  end
!
#calls all other methods
  def master_method
    until @endgame == true
      @board
      puts"It is your Turn!!!!!"
      user_input = gets.chomp
      chip_place(user_input)
      win?
      display_board
      puts"Computer Thinking on how to dominate the world!"
      comp_chip_place
      sleep(0.5)
      win?
      display_board
    end
  end

#

# fix this to make it break the loop before it prints out the other boardd
  def win?
    vertical_win
    horizontal_win

  end




# Maybe clean this up more and place all the puts statements within the
# the win?
  def vertical_win
    @board.map do |array|
      r = array.join
      if r.include?("XXXX")
        @endgame = true
        puts "You are Victorious!"
        return true
      elsif array.join.include?("OOOO")
        @endgame = true
        puts "Skynet has taken over the world!"
        puts "You have failed mankind"
        return true
      else
        false
      end
    end
  end
# I can also check if the index in position 3 is filled if its not i don't
# have to run the horizantal_win method.  Food For thought!

def horizontal_win
  @board.transpose.map do |array|
    r = array.join
    if r.include?("XXXX")
      @endgame = true
      puts "You are Victorious!"
      return true
    elsif array.join.include?("OOOO")
      @endgame = true
      puts "Skynet has taken over the world!"
      puts "You have failed mankind"
      return true
    else
      false
    end
  end
end





end
