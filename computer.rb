# Responsible for generating, storing and comparing the secret code
class Computer
  attr_reader :secret_code

  def initialize
    @secret_code = make_code
  end

  def compare_code_full(guess, code=secret_code.dup)
    result = []
    guess.each_with_index do |e, idx|
      if e == code[idx]
        code[idx] = 'B'
        guess[idx] = 'C'
        result << 'X'
      end
    end
    compare_code_partial(guess, code, result)
  end

private
  def make_code
    empty_code = %w[0 0 0 0]
    empty_code.map {|num| num = rand(1..6)}
  end

  def compare_code_partial(guess, code, result)
    guess.each do |e|
      i = code.index(e)
      #binding.pry
      if i != nil
        code[i] = 'O'
        result << 'O'
      end
    end
    result
  end
end

