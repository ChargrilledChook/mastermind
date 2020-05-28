class Computer

  attr_reader :secret_code

  def initialize()
    @secret_code = make_code()
  end

  def make_code()
    empty_code = %w[0 0 0 0]
    empty_code.map {|num| num = rand(1..6)}
  end
end

comp = Computer.new

p comp.secret_code


