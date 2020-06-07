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

  def draw_board(guess, clues, code, mode)
    puts "Guess #{counter.to_s.rjust(2, '0')}: " \
    "#{guess.join('')} => #{clues.join('')}\n\n"
    self.counter += 1
    check_win(clues, mode, code)
  end

  def check_win(clues, mode, code)
    if clues.join('') == 'XXXX'
      puts mode.win
      self.counter = 100
    elsif self.counter > max_turns
      puts mode.lose + " The correct code was #{code.join('')}."
    end
  end
end
