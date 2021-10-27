# Counts to 10

counter = 1
while counter < 11
  puts counter
  counter = counter + 1
end

# If you don't add the + 1, you will get an infinite loop because 1 is always less than 11. This may crash the program. Be careful.




# SAME FUNCTIONALITY, DIFFERENT WAYS TO EXPRESS THEM


counter = 1
until counter > 10
  puts counter
  counter = counter + 1
end


counter = 1
while counter < 11
  puts counter
  counter += 1
end


# While loops are useful when you don't know how many times you'll need to loop. Otherwise, use a for loop (e.g. over an array)

for num in 1..10
  puts num
end




# In Ruby, curly braces ({}) are generally interchangeable with the keywords do (to open the block) and end (to close it).

# counts down

i = 20
loop {
  i = i-1
  print "#{i}"
  break if i <= 0
}


# skips odd numbers

i = 20
loop do
  i -= 1
  next if i % 2 != 0   
  puts "#{i}"
  break if i <= 1
end


# skips odd numbers, same as above

i = 20
loop do
  i -= 1
  next if i.odd?   
  puts "#{i}"
  break if i <= 1
end




# Counts up to 50. Seems like the do is optional

i = 1
while i <= 50 do
print "#{i} "
i = i+1
end


i = 1
until i == 51
  print i
  i += 1
end


for num in 1..50
print num
end




# Prints 11, 12, 13, 14, 15
# iterates over array

array = [1,2,3,4,5]

array.each do |x|
  x += 10
  print "#{x}, "
end


# Prints double of each item in array

odds = [1,3,5,7,9]

odds.each do |thing|
  thing *= 2
  print "#{thing}"
end



odds = [1,3,5,7,9]

odds.each do
  |num| print "#{num * 2}, "
  end


# Do one thing a set number of times

17.times {puts "blah"}

30.times do print "Ruby!" end


# Looping with a string

counter = 0
loop do
  counter = counter + 1
  print "Ruby! "
  break if counter == 30
end



# Censored / redacted

puts "Enter some text: "
text = gets.chomp

puts "Enter words to censor: "
redact = gets.chomp

words = text.split(" ")
words.each { |word|
  if word == redact 
  print "CENSORED "
  else print word + " "
  end
}



#WHILE LOOP WITH ARRAY


students = %w(adam james laura huiting sue cheng mokoma ashton vee anthony rami yuxuan ding christian eddie roxanne steve )

i = 0
while i < students.length
    if students[i].start_with?("a")
      students[i] = ":) #{students[i]}"
    end
    i = i + 1
end

puts students






# LOOPING - Adding minimum and maximum numbers

def sum_with_sum(min, max)
  array = (min..max).to_a
  return array.sum
end

def sum_with_for(min, max)
  array = (min..max).to_a
  sum = 0
    for min in array
      sum = min + sum
      min += 1
    end
  return sum
end

def sum_with_while(min, max)
  sum = 0
  while min <= max
    sum = sum + min
    min = min + 1
   # p sum
   # p min
   # puts "------------"
  end
  return sum
end


puts "What is the minimum number?"
min = gets.chomp.to_i
puts "What is the maximum number?"
max = gets.chomp.to_i


puts "SUM: The sum of your range is #{sum_with_sum(min, max)}."
puts "FOR: The sum of your range is #{sum_with_for(min, max)}."
puts "WHILE: The sum of your range is #{sum_with_while(min, max)}."




# LEWAGON STUDENTS

require_relative "wagon_sort"

# TODO: Ask the user about students to add to the Wagon.
#       Remember, to read an input from the command line, use:
#       - `gets`:  http://www.ruby-doc.org/core-2.5.3/Kernel.html#method-i-gets
#       - `chomp`: http://www.ruby-doc.org/core-2.5.3/String.html#method-i-chomp


# TODO: Then call `wagon_sort` method defined in the wagon_sort.rb
#       file and display the sorted student list

students = []

loop do
  puts "Write a name or press enter to finish."
  new_student = gets.chomp
  students.push(new_student.capitalize)
  break if new_student == ""
end

puts wagon_sort(students)

puts "Congratulations! Your Wagon has #{students.count} students."

























def pick_bank_score
  # TODO: Use Random to get a new random score
  rand(16..21)
end

def pick_player_card
  # TODO: Use Random to get a new random card
  rand(1..11)
end



require_relative 'black_jack'

def state_of_the_game(player_score, bank_score)
  # TODO: return (not print!) a message containing the player's score and bank's score
  puts "Your score is: #{player_score}. Bank score is: #{bank_score}."
end

def end_game_message(player_score, bank_score)
  # TODO: return (not print!) a message telling if the user won or lost.
  if player_score < bank_score || player_score > 21
    puts "You lose!"
  elsif player_score == 21
    puts "Black Jack"
  elsif player_score == bank_score
    puts "Push"
  else
    puts "You win!"
  end
end




require_relative "croupier"

# TODO: make the user play from terminal in a while loop that will stop
#       when the user will not be asking for  a new card

player_score = 0
bank_score = pick_bank_score
running = true

puts state_of_the_game(player_score, bank_score)

while running && player_score < 21
  puts "Card? [ y / n ]"
  user_input = gets.chomp
  case user_input
  when "y"
    card = pick_player_card
    player_score += card
    puts state_of_the_game(player_score, bank_score)
    running = false if player_score > 21
  when "n"
    # end_game_message(player_score, bank_score)
    running = false    #kicks you out of the while loop
  else
    puts "invalid message"
  end
end

puts end_game_message(player_score, bank_score)

