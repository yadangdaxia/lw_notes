def coach_answer(your_message)
  if your_message == "I'm going to school."
    return "That's great."
  else
    return "Go to school."
  end
end

puts "Hey slacker."
your_message = gets.chomp
puts coach_answer(your_message)



#######################


def coach_talk(your_message)

  while your_message != "I'm going to work."
    puts "Go to work."
    your_message = gets.chomp
  end

  your_message == "I'm going to work."
    puts "That's great."
end

puts "Morning, minion."
your_message = gets.chomp
puts coach_talk(your_message)



#######################
