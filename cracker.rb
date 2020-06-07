# frozen_string_literal: true

# not sure if i need this class
class Cracker
  attr_accessor :guess_log

  def initialize
    @guess_log = [[0, 0, 0, 0]]
  end

  def guess_code(num = 4)
    num.times.map { rand(1..6) }
  end

  def crack_code(last_guess)
    current_guess = []
    last_guess.each_with_index do |e, idx|
      if e == 'C'
        current_guess[idx] = guess_log[-1][idx]
      else
        current_guess[idx] = guess_code(1)
      end
    end
    guess_log << current_guess
    current_guess
  end
end

