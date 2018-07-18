require "pry"
require './lib/board.rb'

puts "Hello and Welcome to best game of Connect 4!"

board = Board.new
board.display_board



loop do
  board.master_method
end






#classes
