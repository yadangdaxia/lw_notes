# Arrays are types of enumerables

beatles = ["john", "ringo", "adam", "leonard"]

beatles.push("enrique iglesias") # Note the parentheses

puts beatles

beatles.delete_at(1)  # Ringo replaced
puts "------"

beatles.each_with_index do |beatle, index|
  puts "#{index + 1}. #{beatle}"
end

# Applying .map on an array returns a new array
# where each element is the result of evaluating
# the block with the element as an argument.

superbeatles = beatles.map { |beatle| beatle.upcase }
p superbeatles

count_superplayers = superbeatles.count do |player|
  player.start_with?"A"
end

puts count_superplayers

# Map and Each

p "----EACH----"

toppings = ["pepperoni", "bacon", "chicken"]

 def pizza(toppings)
  my_statements = []
  toppings.each do |topping|
    my_statements << "I love #{topping}"
   end
   puts my_statements
 end

pizza(toppings)


p "----MAP----"

 ingredients = ["beans", "rice", "guacamole"]
def burrito(ingredients)
  ingredients.map do |ingredient|
    puts "I love #{ingredient} in my burrito."
  end
end

burrito(ingredients)
