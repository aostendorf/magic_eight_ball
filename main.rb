require 'colorize'
require 'pry'

class Roll
  attr_accessor :roll, :roll_array, :roll_answers

  def initialize
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
    @roll_answers = Array.new(@roll)
    instructions
  end
end


  def easter_egg
    puts "You found the secret portal!".colorize(:red)
    puts "Add your own answer, those ones were lame anyway.".colorize(:yellow)
    user_input = gets.strip
    puts "You added: #{user_input}"
    puts "Your answer has been added to the Magic Eight Ball."
    @roll_answers << user_input
    secret_instructions
  end
    # binding.pry

  def secret_instructions
    puts "Select an option:"
    puts "\t1) Re-roll the Magic Eight Ball"
    puts "\t2) Print a list of current answers"
    puts "\t3) Main menu"
    puts "\t4) Exit"
    secret_menu
  end

  def secret_menu
    secret_list = gets.strip.to_i
    case secret_list
    when 1
      puts "Your answer: #{@roll_answers.sample}"
      secret_instructions
    when 2
      puts "The new list is below:"
      secret_array = @roll_answers.map { |answer| answer }
      puts secret_array
      secret_instructions
    when 3
      instructions
    when 4
      puts "Goodbye"
      exit
    end
  end

  def instructions
    puts ""
    puts "*" * 60
    puts "Welcome to the magic eight ball!"
    puts "\t1. Roll the magic ball to see your future"
    puts "\t2. Would you like a list of all possible answers?"
    puts "\t3. Quit"
    puts "*" * 60
    menu
  end

  def answers
    puts "Enter you question below and hit ENTER for an answer.".colorize(:red)
    puts "> "
    user_question = gets.strip
    puts "Your answer: #{@roll.sample}"
    instructions
  end

  def print_answers
    puts "Here is a list of the answers:"
    puts "-" * 60
    @new_arr = @roll.map { |answer| answer }
    puts @new_arr
    instructions
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
      easter_egg #change to secret portal
    else
      puts "Invalid entry, try again"
      instructions
    end
  end

Roll.new



# :add_answer :new_answers :easter_egg
