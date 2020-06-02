require_relative 'board'
require_relative 'player'
require_relative 'computer'

computer = Computer.new
player = Player.new
board = Board.new

puts %{
                            Welcome to Mastermind!

            Rules: The codebreaker has 12 turns to crack the codemaster's secret code.
    Each turn the codebreaker guesses a 4 digit code. Each number must be between 1 and 6.
    If a number is an exact match (the right digit in the right position) you will receive an X.
    If a number is right but in the wrong position, you will receive an O.

                                Good luck!

}
while board.counter <= 12 do
    guess = player.get_guess
    board.draw_board(guess, computer.compare_code_full(guess.dup))
end


