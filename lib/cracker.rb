# frozen_string_literal: true

# Responsible for cracking the code if player wants to be codemaster
class Cracker
  attr_accessor :p_code

  def initialize
    @p_code = []
  end

  def guess_code(num = 4)
    num.times.map { rand(1..6) }
  end

  def crack_code(last_guess)
    current_guess = []
    last_guess.each_with_index do |e, idx|
      current_guess[idx] = if e == p_code[idx]
                             p_code[idx]
                           else
                             guess_code(1)
                           end
    end
    current_guess.flatten!
  end
end
