# frozen_string_literal: true

# responsible for game loop
class Game
  attr_accessor :computer, :player, :board

  def initialize
    @computer = Computer.new
    @player = Player.new
    @board = Board.new
  end

  def rules
    puts %(

  Rules: The codebreaker has 12 turns to
  crack the codemaster's secret code.
  Each turn the codebreaker guesses a 4 digit code.
  Each number must be between 1 and 6.
  If a number is an exact match you will receive an X.
  If a number is right but in the wrong position, you will receive an O.

  )
  end

  def game_start
    puts '  Welcome to Mastermind!'
    rules
    game_mode
  end

  def game_mode
    menu = [1, 2]

    puts %( Would you like to set the code or crack it?

      1. Set the code
      2. Crack the code
    )
    user_choice = gets.chomp.to_i

    until menu.include?(user_choice)
      puts 'Invalid selection. Enter 1 or 2.'
      user_choice = gets.chomp.to_i
    end
  end

  def game_loop
    board.code = computer.secret_code
    while board.counter <= 12
      guess = player.grab_code
      board.draw_board(guess, computer.compare_code_full(guess.dup), board.code)
    end
  end

  def game_loop_alt
    code = player.grab_code
    while board.counter <= 12
      guess = computer.make_code
      board.draw_board(guess, computer.compare_code_full(guess.dup), code)
      sleep(1)
    end
  end
end
