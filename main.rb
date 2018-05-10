# Basic Objectives:

# - User inputs question - Amber
# - Computer outputs random answer - Michael
# - User inputs "QUIT" - Bianca
# - Computer outputs a goodbye message and exits - Bianca
# - ability to add more answers: - Bianca - maybe :)
# - via easter egg question ("add_answers") - Come back
# - do not let them add the same answer if the eight ball already has that answer - Michael
# - ability to reset answers back to the original bank (hint: think arr.clone)
# - via easter egg question ("reset_answers")
# - ability to have eight ball print all answers - Robin
# - via easter egg question ("print_answers") - 
# Bonus Objectives:

# -ability to use script arguments when the magic eight ball is started to do bonus functionality above
# - for example ruby magic_eight.RB add_answers
# this would start your script but instead of running the regular way you would be prompted to add answers first

require_relative 'roll'
require 'pry'
require 'colorize'

# BIANCA WORKING ON MENU
def menu
  puts "1. Welcome to the magic eight ball!"
  puts "2. Roll the magic ball to see your future"
  puts "3. Don't like your answer? Choose your own"
  puts "4. Would you like a list of your answers?"
  puts "3. Quit"
  roll_ball = gets.strip
end

#AMBER: THIS IS WHERE THE USER INPUTS QUESTION
def questions

end

# MICHAEL; THIS IS WHERE THE ANSWERS WILL OUTPUT
def answers
  puts ""
end
answers.sample
end

#


loop do
  case menu
  when 2

    questions
end

























menu
