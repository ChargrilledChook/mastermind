# frozen_string_literal: true

# Responsible for generating, storing and comparing the secret code
class Computer
  attr_reader :secret_code

  def initialize
    @secret_code = make_code
  end

  def make_code(num = 4)
    num.times.map { rand(1..6) }.join.to_s
  end

  # Original partial calculation includes exact matches. We subtract exact from partial to get true partial
  # in the result array.
  def compare_code(guess, code)
    exact = guess.chars.zip(code.chars).map { |a, b| a == b }.count(true)
    partial = guess.chars.reduce(code) { |check, char| check.include?(char) ? check.sub(char, '*') : check }.count('*')
    [exact, partial - exact]
  end

  def win
    'Compubot-5000 has outsmarted you and cracked your ' \
    'code with its advanced algorithims.' \
    ' The AI singularity has begun. Better luck next time!'
  end

  def lose
    'Compubot-5000 could not crack your code. ' \
    'You have halted the AI singularity. ' \
    'Good job! '
  end
end
