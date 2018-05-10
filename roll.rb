class Roll
  attr_accessor :roll

  def initialize(roll)
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
    ].sample

    puts @roll.sample
  end
end
