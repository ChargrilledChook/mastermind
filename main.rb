# frozen_string_literal: true

require_relative 'board'
require_relative 'player'
require_relative 'computer'
require_relative 'game'

game = Game.new

game.game_start
game.game_loop_alt
