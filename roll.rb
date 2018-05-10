class Roll
  attr_accessor :roll :roll_array :add_answer

  def initialize(roll)
    @roll = roll
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
    puts @roll.sample
  end

  def add_answer(input)
    @input = input
    @roll << @input
    puts "Your answer: #{@input}"
  end
end
