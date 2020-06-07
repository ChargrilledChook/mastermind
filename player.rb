# frozen_string_literal: true

# Responsible for getting user input
class Player
  def initialize(name = 'Player')
    @name = name
  end

  def grab_code
    print 'Enter your code: '
    guess = gets.chomp.split('')
    guess.map(&:to_i)
  end

  def win
    'Congratulations! You cracked the code!'
  end

  def lose
    "Bad luck! You didn't crack the code in time! " \
    "The correct code was #{code.join('')}."
  end
end
