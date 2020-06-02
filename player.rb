# Responsible for getting user input
class Player

  def initialize(name='Player')
      @name = name
  end

  def get_guess
      print "Enter your guess: " 
      guess = gets.chomp.split('')
      guess.map(&:to_i)
  end

end

