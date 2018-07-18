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

#calls all other methods
  def master_method
    @board
    puts"It is your Turn!!!!!"
    user_input = gets.chomp
    chip_place(user_input)
    display_board
    sleep(1)
    puts"Computer Thinking on how to dominate the world!"
    comp_chip_place
    sleep(1)
    display_board
  end





end
