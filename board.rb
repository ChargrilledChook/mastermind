require 'pry'
# Responsible for writing information to the console 
class Board
attr_accessor :counter
attr_reader :MAX_TURNS

  def initialize
    @counter = 1
    @MAX_TURNS = 12
  end

  def draw_board(guess, clues)
    puts "Guess #{@counter}: #{guess.join("")} => #{clues.join("")}\n\n" 
    @counter += 1
    if clues.join("") == "XXXX"
      puts 'Congratulations! You cracked the code!'
      @counter = 100
    elsif @counter > @MAX_TURNS
      puts 'Bad luck! You didn\'t crack the code in time!'
    end
  end
end
