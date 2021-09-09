p "----FIRST GAME----"

computer_coin = ["heads", "tails"].sample   # returns random element

puts "Choose 'heads' or 'tails'."
player_coin = gets.chomp

if computer_coin == player_coin
  outcome = "won"
else
  outcome = "lost"
end

puts "You #{outcome}."

p "----NEXT GAME----"

puts "Pick a number."
num = gets.chomp.to_i

if num.even?
  puts "it's even."
else
  puts "it's odd"
end

# Could do it ternary style as well:
# result = num.even? ? "It's even." : "It's odd."
# puts result
