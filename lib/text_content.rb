module TextContent
  def welcome
    '  Welcome to Mastermind!'
  end

  def win
    'Congratulations! You cracked the code!'
  end

  def lose
    "Bad luck! You didn't crack the code in time! "
  end

  def comp_win
    'Compubot-5000 has outsmarted you and cracked your ' \
    'code with its advanced algorithims.' \
    ' The AI singularity has begun. Better luck next time!'
  end

  def comp_lose
    'Compubot-5000 could not crack your code. ' \
    'You have halted the AI singularity. ' \
    'Good job! '
  end

  def rules
    %(

  Rules: The codebreaker has 12 turns to
  crack the codemaster's secret code.
  Each turn the codebreaker guesses a 4 digit code.
  Each number must be between 1 and 6.
  If a number is an exact match you will receive an X.
  If a number is right but in the wrong position, you will receive an O.

  )
  end

  def menu_text
    %( Would you like to set the code or crack it?

      1. Set the code
      2. Crack the code
    )
  end
end
