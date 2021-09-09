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
