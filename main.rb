# frozen_string_literal: true
require 'pry'

require_relative 'board'
require_relative 'player'
require_relative 'computer'
require_relative 'game'
require_relative 'cracker'

game = Game.new

game.game_start
