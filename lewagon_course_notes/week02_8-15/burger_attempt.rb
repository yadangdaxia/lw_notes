# METHOD

def burger(patty, sauce, topping)
  if block_given?
    new_patty = yield(patty)
  else
    # puts "no block"
    new_patty = patty
  end
  puts ["bread", new_patty, sauce, topping, "bread"]
end

p "---ORDER 1---"

burger("steak", "ketchup", "onions") do |patty|
  "grilled #{patty}"
end

p "---ORDER 2---"

bigger_burger = burger("fish", "mayo", "salad") do |patty|
  patty.upcase
end


p "---ORDER 3---"

juicy_burger = burger("juicy steak", "barbecue", "cheddar") do |initial_string, old_letter, new_letter|
  initial_string.to_s.gsub("e", "~")
end


# puts "I'd like a spicy chicken with ketchup and cheddar please."
# TODO: to make a spicy portion, add the sign "*" before and after the string

spicy_burger = burger("spicy chicken", "ketchup", "cheddar") do |string|
  "* #{string} *"
end


=begin

bigger_burger = burger("fish", "mayo", "salad") do |patty|
  " order is #{patty}".upcase
end


p "--------"


puts "I'd like a burger with a bigger portion of fish, plus mayo and salad please."
# TODO: to upgrade a portion to a bigger one, transform the fish to uppercase

bigger_burger = burger("fish", "mayo", "salad") do |patty|
  " order is #{patty}".upcase
end

p "--------"




p "--------"



=end
