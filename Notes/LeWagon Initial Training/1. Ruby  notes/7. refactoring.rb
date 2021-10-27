
puts true ? "True" : "False"

#same as:

rb if true puts "True!" else puts "False!" end



#Conditional setting

favorite_book = nil
puts favorite_book

favorite_book ||= "Cat's Cradle"
puts favorite_book

favorite_book ||= "Why's (Poignant) Guide to Ruby"
puts favorite_book
#Still remains Cat's Cradle

favorite_book = "Why's (Poignant) Guide to Ruby"
puts favorite_book




favorite_things = ["Ruby", "espresso", "candy"]

puts "A few of my favorite things:"

favorite_things.each do |thing|
  puts "I love #{thing}!"
end

#prints even numbers

my_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

my_array.each { |x| puts x unless x % 2 !=0 }




puts "One is less than two!" if 1 < 2


#version 1:

if 1 < 2
  puts "One is less than two!"
else
  puts "One is not less than two."
end

#refactored (simplified) version 2:

puts 1 < 2 ? "One is less than two!" : "One is not less than two."

