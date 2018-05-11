require 'colorize'
require 'pry'

class Roll
  attr_accessor :roll, :roll_array

  def initialize
    roll_array
    instructions
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
    instructions
  end
end

  def instructions
    puts ""
    puts "*" * 60
    puts "Welcome to the magic eight ball!"
    puts "\t1. Roll the magic ball to see your future"
    puts "\t2. Would you like a list of your answers?"
    puts "\t3. Quit"
    puts "*" * 60
    menu
  end

  def answers
    puts "Enter you question below and hit ENTER for an answer.".colorize(:red)
    puts "> "
    user_question = gets.strip
    puts "Your answer: #{@roll.sample}"
  end

  def print_answers
    puts "Here is a list of the answers:"
    puts "#{@answers}"
    instructions
  end

  def easter_egg
    puts "You found the secret portal!".colorize(:pink)
    puts "Add your own answer, those ones were lame anyway.".colorize(:yellow)
    puts "> "
    user_input = gets.strip
    @answers << user_input
    instructions
    puts
  end

  def menu
    selection = gets.strip.to_i
    case selection
    when 1
      answers
    when 2
      print_answers
    when 3
      puts "Goodbye"
      exit
    when 4
      easter_egg
    else
      puts "Invalid entry, try again"
      instructions
    end
  end


Roll.new

# :add_answer :new_answers :easter_egg
