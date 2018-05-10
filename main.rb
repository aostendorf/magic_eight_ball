require 'colorize'
require_relative 'git'

# Basic Objectives:

# - User inputs question
# - Computer outputs random answer
# - User inputs "QUIT"
# - Computer outputs a goodbye message and exits
# - ability to add more answers:
# - via easter egg question ("add_answers")
# - do not let them add the same answer if the eight ball already has that answer
# - ability to reset answers back to the original bank (hint: think arr.clone)
# - via easter egg question ("reset_answers")
# - ability to have eight ball print all answers
# - via easter egg question ("print_answers")
# Bonus Objectives:

# -ability to use script arguments when the magic eight ball is started to do bonus functionality above
# - for example ruby magic_eight.RB add_answers
# this would start your script but instead of running the regular way you would be prompted to add answers first

require_relative 'roll'
require 'pry'

def menu
  puts "1. Welcome to the magin eight ball!"
  puts "2. Think really hard about a question"
  puts "3. Hit ENTER to roll the ball"
  roll_ball = gets.strip
end

def questions
  answers = ["Don't count on it", "Hell Yeah!", "Signs point to yes",
  "Not lookin' good", "My sources say no", "Most likely" ]

answers.sample
end






loop do
  case menu
  when 3
    questions
end

























menu
