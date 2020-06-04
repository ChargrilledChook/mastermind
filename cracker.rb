# frozen_string_literal: true

# not sure if i need this class
class Cracker
  def guess_code(num = 4)
    num.times.map { rand(1..6) }
  end
end

cracker = Cracker.new

print cracker.guess_code
