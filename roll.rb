require 'colorize'
require 'pry'

class Roll
  # attr_accessor :roll, :roll_array, :add_answer

  def initialize
    roll_array
    instructions
  end

  def instructions
    puts "1. Welcome to the magic eight ball!"
    puts "2. Roll the magic ball to see your future"
    puts "3. Don't like your answer? Choose your own"
    puts "4. Would you like a list of your answers?"
    puts "3. Quit"
    menu
  end


  def questions
  end


  def answers
    puts "Hit the Enter button to see your future!".colorize(:red)
    Roll.new = magic_answer
    magic_answer = @answers.roll_array
    puts "Your answer #{@input} "
  end

  def roll_array
    @roll = [
      "Don't count on it".colorize(:green),
      "Hell Yeah!".colorize(:green),
      "Signs point to yes".colorize(:green),
      "Not lookin' good".colorize(:green),
      "My sources say no".colorize(:green),
      "Most likely".colorize(:green),
      "It is certain".colorize(:green),
      "It is decidely so".colorize(:green),
      "You may rely on it".colorize(:green),
      "Reply hazy, try again".colorize(:yellow),
      "Ask again later".colorize(:yellow),
      "Better not tell you now".colorize(:yellow),
      "Cannot predict now".colorize(:yellow),
      "Concentrate and ask again".colorize(:yellow),
      "Don't count on it".colorize(:red),
      "My reply is no".colorize(:red),
      "My sources say no".colorize(:red),
      "Outlook not so good".colorize(:red),
      "Very doubtful".colorize(:red),
      "Hell nah".colorize(:red),
    ]
    # puts @roll.sample
  end

  def menu
    selection = gets.strip.to_i
    case selection
    when 2
      answers
    else
      puts "Invalid entry"
    end
  end

  def add_answer(input)
    @input = input
    @roll << @input
    puts "Your answer: #{@input}"
  end
end

Roll.new
