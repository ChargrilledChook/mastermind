# frozen_string_literal: true

# Responsible for writing information to the console
class Board
  attr_accessor :code, :counter
  attr_reader :max_turns

  def initialize
    @counter = 1
    @max_turns = 12
    @code = []
  end

  def draw_board(guess, clues, code)
    puts "Guess #{counter.to_s.rjust(2, '0')}: " \
    "#{guess.join('')} => #{clues.join('')}\n\n"
    self.counter += 1
    if clues.join('') == 'XXXX'
      puts 'Congratulations! You cracked the code!'
      self.counter = 100
    elsif self.counter > max_turns
      puts "Bad luck! You didn't crack the code in time! " \
      "The correct code was #{code.join('')}."
    end
  end
end
