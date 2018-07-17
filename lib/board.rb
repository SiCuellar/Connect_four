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
    @board[chip_col] << "X"
    @board[chip_col].shift
    @board.transpose
  end

















end
