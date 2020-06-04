# frozen_string_literal: true

# responsible for game loop
class Game
  attr_accessor :computer, :player, :board

  def initialize
    @computer = Computer.new
    @player = Player.new
    @board = Board.new
  end

  def welcome
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
  end

  def game_loop
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
end

