class View

  def intro
    puts "Welcome to Ruby Flash Cards. To play, just enter the correct term for each definition. To exit, enter exit. Ready?  Go!"
    puts ""
  end

  def get_file
    ARGV
  end

  def display(output)
    puts output
  end

  def input
    puts "Enter your answer..."
    $stdin.gets.chomp
  end

  def wrong_guess
    puts "That is incorrect, please try again."
    puts ""
  end

  def right_guess
    puts "Correct! Next question..."
    puts ""
  end

  def goodbye
    puts "Thank you for studying!"
  end
end
