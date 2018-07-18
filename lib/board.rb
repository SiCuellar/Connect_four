require "pry"

class Board

  attr :board

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



  def display_board
    puts @keys.join(" ")
    

    @board.transpose.map do |line|
      puts line.join(" ")
    end
  end


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

  def master_method
    @board
    user_input = gets.chomp
    chip_place(user_input)

    comp_chip_place
    display_board

  end

end
