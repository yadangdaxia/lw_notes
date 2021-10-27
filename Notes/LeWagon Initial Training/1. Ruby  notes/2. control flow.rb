


print "Integer please: "
user_num = Integer(gets.chomp)

if user_num < 0
  puts "You picked a negative integer!"
elsif user_num > 0
  puts "You picked a positive integer!"
else
  puts "You picked zero!"
end





if 3 > 2
print "that's big"
end


hungry = false

unless hungry
  puts "I'm writing Ruby programs!"
else
  puts "Time to eat!"
end





is_true = 2 == 2
is_false = 2 != 2


test_1 = 17 >= 16
test_2 = 21 < 30
test_3 = 9 <= 9
test_4 = -11 < 4




# BOOLEAN OPERATORS


# boolean_1 = 2**3 != 3**2 || true
boolean_1 = true

# boolean_2 = false || -10 > -9
boolean_2 = false

# boolean_3 = false || false
boolean_3 = false


# boolean_1 = !true
boolean_1 = false 

# boolean_2 = !true && !true
boolean_2 = false

# boolean_3 = !(700 / 10 == 70)
boolean_3 = false


# test_1 should be true
test_1 = ("hello" == "hello") && (1 + 1 == 2) 

# test_2 = should be true
test_2 = (60 <= 70) || (80 >= 50)

# test_3 = should be false
test_3 = !(1000 > 300) && ("hello" == "goodbye") 






safety_hazard = false

print "initiate the launch" unless safety_hazard





print "write your age: "
user_input = gets.chomp
user_input.downcase!

puts "Your age is: #{user_input}"

if user_input < "39"
  puts "you're young"
elsif user_input > "39"
  puts "you're old"
else
  puts "you're 39"
end
  


# THITH MEANTH WAR!


print "Thtring, pleathe!: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  puts "Nothing to do here!"
end
  
puts "Your string is: #{user_input}"





print "Write a letter to your lover: "
user_input = gets.chomp
user_input.downcase!

if user_input.include? "s"
  puts "It's got the letter S!"
  puts user_input.gsub!(/s/, "th").capitalize!
else
  print "No letter S!"
end



# CAN I VOTE?

puts "What's your age?"
age = gets.chomp.to_i

if age >= 18
  puts "You can vote."
else   #no conditions here
  puts "You cannot vote."
end

# OR CREATE VARIABLE

puts "What's your age?"
age = gets.chomp.to_i

condition = age >= 18

if condition
  puts "You can vote."
else   #no conditions here
  puts "You cannot vote."
end



# TERNARY OPERATORS


computer_coin = ["heads", "tails"].sample

puts "Choose heads or tails."
player_coin = gets.chomp

# Ternary operator:
# condition ? code_if_truthy : code_if_false
# Evaluates condition to true or false,
# if true executes code_if_truthy, if false executes code_if_false

outcome = computer_coin == player_coin ? "won" : "lost"

puts "You #{outcome}"



# BEST MOVIE (mine)

best_movie = "Star Wars"

puts "What's the best movie?"
input = gets.chomp

answer = best_movie == input ? "I agree." : "I disagree"

puts answer

# EVEN OR ODD

puts "Pick a number"
num = gets.chomp.to_i
puts (num.even? ? "It's even." : "It's odd.")
# Parentheses added to make the condition more clear.


# WHAT TIME IS IT? 
# Can optimize this - use time class to make it more fun

puts "What time is it?"
hour = gets.chomp.to_i

if hour < 12
  puts "Good morning"
elsif hour >= 19
  puts "Good evening"
elsif hour >= 12
  puts "Good afternoon"
end


# WITH BOOLEANS
puts "What time is it?"
hour = gets.chomp.to_i

if (hour > 9) && (hour <= 12) || (hour >= 14) && (hour <= 18)
  puts "open"
else
  puts "closed"
end




# CASE STATEMENT

case action
when "read" then puts "reading"
when "exit" then puts "exiting"
when "write"then puts "writing"
else puts "Incorrect choice!"
end



#GUESS THE NUMBER

computer_num = rand(5)
user_num = nil
puts "Guess the number."  #Can also put this in the while loop

while user_num != computer_num
  user_num = gets.chomp.to_i
  puts "Try again!"
end

puts "You win!"


# Another way of GUESS THE NUMBER

computer_num = rand(5)
user_num = nil

until user_num == computer_num
  puts "Guess the number." 
  user_num = gets.chomp.to_i
  puts "Try again!"
end

puts "You win!"


# My code for guessing random number and giving multiple responses. Can also nest if statements, but not sure if that's good practice.

computer_num = rand(1..9)
prompt = "Guess the number between 1 and 9."

puts prompt
user_num = gets.chomp.to_i

while user_num != computer_num
  puts "Nope, try again. #{prompt}"
  user_num = gets.chomp.to_i
end

puts "#{user_num} is correct! Good job! Bye!"

