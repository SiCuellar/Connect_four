require "pry"

class Board

  attr :board

  def initialize


    @keys = ["A","B","C","D","E","F","G"]
    @board = [

    [".",".",".",".",".",".","."],
    [".",".",".",".",".",".","."],
    [".",".",".",".",".",".","."],
    [".",".",".",".",".",".","."],
    [".",".",".",".",".",".","."],
    [".",".",".",".",".",".","."]
    ]
  end



  def display_board
    puts @keys.join(" ")

    @board.map do |line|
      puts line.join(" ")
    end
  end

  def chip_place(letter)
    chip_col = @keys.index(letter)
    flip_board[chip_col] << x_or_o
    flip_board[chip_col].shift
    binding.pry
    @board
  end

  def flip_board
    @board.transpose
  end















end
