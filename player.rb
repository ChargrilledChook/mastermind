# frozen_string_literal: true

# Responsible for getting user input
class Player
  def initialize(name = 'Player')
    @name = name
  end

  def get_code
    print 'Enter your code: '
    guess = gets.chomp.split('')
    guess.map(&:to_i)
  end
end
