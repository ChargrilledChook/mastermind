# frozen_string_literal: true

# not sure if i need this class
class Cracker
  def guess_code
    4.times.map { rand(1..6) }
  end
end

cracker = Cracker.new

puts cracker.guess_code
