# frozen_string_literal: true

require_relative 'board'
require_relative 'player'
require_relative 'computer'

computer = Computer.new
player = Player.new
board = Board.new

puts %(
  Welcome to Mastermind!

  Rules: The codebreaker has 12 turns to
  crack the codemaster's secret code.
  Each turn the codebreaker guesses a 4 digit code.
  Each number must be between 1 and 6.
  If a number is an exact match you will receive an X.
  If a number is right but in the wrong position, you will receive an O.

  Good luck!

)

def game_loop(board, player, computer)
  board.code = computer.secret_code
  while board.counter <= 12
    guess = player.get_code
    board.draw_board(guess, computer.compare_code_full(guess.dup), board.code)
  end
end

def game_loop_alt(board, player, _computer)
  while board.counter <= 12
    code = player.get_code
    board.draw_board(make_code, code.dup)
  end
end

game_loop(board, player, computer)
