require "./lib/board.rb"
require "minitest/pride"
require "minitest/autorun"

class BoardTest < Minitest::Test

  def test_it_exist
    board = Board.new

    assert_instance_of Board , board
  end

  def test_it_places_chip
    board = Board.new


    expected = [

    [".",".",".",".",".",".","."],
    [".",".",".",".",".",".","."],
    [".",".",".",".",".",".","."],
    [".",".",".",".",".",".","."],
    [".",".",".",".",".",".","."],
    [".",".",".","X",".",".","."]
    ]
    actual = board.chip_place("D")

    assert_equal expected, actual
  end

# how do make a test for a rand(6)?
  def test_computer_can_play
    skip
      board = Board.new
  end

# The struggle with the testing is real :0

  def test_horizontal_winning_condtion



  end
#HOW DO YOU TEST THISSSSSSS!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# :0 I CANT WITH MY LIFE LOL






end
