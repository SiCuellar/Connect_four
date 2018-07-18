require "pry"
require './lib/board.rb'

puts "Hello and Welcome to best game of Connect 4!"

board = Board.new
board.display_board


#plays master_method that calls all other methods
loop do
  board.master_method
end

#now how do I create winnign methods?
