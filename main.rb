# main.rb

# Require all the other class files
require_relative 'player'
require_relative 'game'
require_relative 'turn'
require_relative 'math_question'

# Your main application code will go here
game = Game.new
game.start_game