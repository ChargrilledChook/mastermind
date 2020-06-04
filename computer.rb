# frozen_string_literal: true

# Responsible for generating, storing and comparing the secret code
class Computer
  attr_reader :secret_code

  def initialize
    @secret_code = make_code
  end

  def compare_code_full(guess, code = secret_code.dup)
    result = []
    guess.each_with_index do |e, idx|
      next unless e == code[idx]

      code[idx] = 'B'
      guess[idx] = 'C'
      result << 'X'
    end
    compare_code_partial(guess, code, result)
  end

  def make_code(num = 4)
    num.times.map { rand(1..6) }
  end

  private

  def compare_code_partial(guess, code, result)
    guess.each do |e|
      i = code.index(e)
      unless i.nil?
        code[i] = 'O'
        result << 'O'
      end
    end
    result
  end
end
