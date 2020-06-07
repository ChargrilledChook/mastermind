# frozen_string_literal: true

# responsible for game loop
class Game
  attr_accessor :computer, :player, :board, :cracker

  def initialize
    @computer = Computer.new
    @player = Player.new
    @board = Board.new
    @cracker = Cracker.new
  end

  def game_start
    puts '  Welcome to Mastermind!'
    rules
    game_menu
  end

  private

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

  def game_menu
    menu = [1, 2]
    puts menu_text
    user_choice = gets.chomp.to_i
    until menu.include?(user_choice)
      puts 'Invalid selection. Enter 1 or 2.'
      user_choice = gets.chomp.to_i
    end
    game_mode(user_choice)
  end

  def menu_text
    %( Would you like to set the code or crack it?

      1. Set the code
      2. Crack the code
    )
  end

  def game_mode(choice)
    if choice == 2
      game_code_cracker
    else
      game_code_master
    end
  end

  def game_code_cracker
    board.code = computer.secret_code
    while board.counter <= 12
      guess = player.grab_code
      board.draw_board(guess, computer.compare_code_full(guess.dup), board.code, player)
    end
  end

  def game_code_master
    code = player.grab_code
    cracker.p_code = code
    last_guess = [7, 7, 7, 7]
    while board.counter <= 12
      guess = cracker.crack_code(last_guess)
      last_guess = guess
      board.draw_board(guess, computer.compare_code_full(guess.dup, code.dup), code, computer)
      sleep(1)
    end
  end
end

