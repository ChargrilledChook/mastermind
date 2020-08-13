# frozen_string_literal: true
require_relative 'text_content'
# responsible for game loop
class Game
  include TextContent

  attr_reader :computer, :player, :board, :cracker

  def initialize
    @computer = Computer.new
    @player = Player.new
    @board = Board.new
    @cracker = Cracker.new
  end

  def game_start
    puts welcome
    puts rules
    game_menu
  end

  private

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
      guess = grab_code
      clues = computer.compare_code(guess, board.code)
      board.draw_board(guess, draw_code_matches(clues), board.code, player)
    end
  end

  def draw_code_matches(match_array)
    'X' * match_array.first + 'O' * match_array.last
  end

  def grab_code
    print 'Enter your code: '
    gets.chomp
  end
end
