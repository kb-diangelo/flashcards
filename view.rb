class View

  def intro
    puts "Welcome to Ruby Flash Cards. To play, just enter the correct term for each definition. To exit, enter exit. Ready?  Go!"
    puts ""
  end

  def display(output)
    puts output
  end

  def input
    puts "Enter your answer..."
    gets.chomp
  end

  def wrong_guess(attempts)
    puts "That is incorrect, please try again. Attempts: #{attempts}"
    puts ""
  end

  def right_guess
    puts "Correct!"
    puts ""
  end

  def next_question
    puts "Next question..."
  end

  def goodbye
    puts "Thank you for studying!"
  end
end
