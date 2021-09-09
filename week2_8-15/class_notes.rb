def tag(name, attributes = nil)

name = yield

if attributes == nil
  "<#{tag_name}><#{name}></#{tag_name}>"
else
  "<#{tag_name}><#{name}></#{tag_name}>"
end
end




students = %w(Peter Mary Paul George)
ages = %w(25 32 40 16)

# students.each_with_index {|student, index| puts "#{student} is at #{index}."}
students.each_with_index do |student, index|
  age = ages[index]
  puts "#{student} is #{age} years old."
end


# CRUD FOR HASHES
# Can think of a hash as an array that you can name the indexes. Keys must be unique.
paris = {
"country" => "France",
"population" => 2211000,
"drink" => "wine"
"leaders" => ["Henry IV", "Napoleon", "Charlemagne"]
}

# read
p paris[2]
p paris.class
p paris.size

# update
paris["monument"] = "Eiffel Tower"
paris["language"] = "French"

p paris["population"]

# delete
paris.delete("country")
p paris

paris.each do |key, value|
  puts "The key #{key} is #{value}."
end

# Is there a 'monument' key in the paris hash?

# This (simple)
p paris.has_key?("monument")

# Is the same as this (compliated)
key_exists = false
paris.each do |key, value|
  if key == "monument"
    key_exists = true
  end
end
puts key_exists

p paris.has_value?("monument")

puts paris.values






cities = [["London", "Tokyo", "Shanghai"], ["New York", "Mexico City", "Lima"]]
puts cities[1][2]






students = ["paul", "rupert", "morty"]
students.each_with_index do |student, index|
  puts "Student at index #{index} is #{student}."
end





leaders ={
  "Obama" => {
    "hair" => "black",
    "tie" => "blue"
},
  "Trump" => {
    "hair" => "blonde",
    "tie" => "red"
  }
}

puts leaders["Trump"]["hair"]





students ={
  "adam" => 40,
  "ruby" => 26,
  "steveo" => 40
}
p students.class
# passes key and value into array

# Method to make key and value
age_checker = students.count do |record|
  name = record[0]  # this is the key
  age = record[1]   # this is the value
  age == 40
end
p age_checker



puts tag("h1", "Hello")
puts tag("div", "", {
:class => 'container',
:id => 'menu'
})








# Use symbols for identifiers.

"companies".to_sym  # Change to symbol

ford = {
  :product => "Cars",
  :hq => "Detroit"
}

p ford




# Symbols

students = {
Adam: "us",
Ashton: "australia",
James: "uk"
}

p students
p students[:Adam]






# Using a hash as a parameter to add flexibility

def tag(tag_name, content, attributes = {})
  # Convert hash attributes to string
  partials = []
  attributes.each do |key, value|
   partials << "#{key}=\"#{value}\""
  end

  html_attributes = partials.join("")

  "<#{tag_name}#{html_attributes}>#{content}</#{tag_name}>"
end

puts tag("h1", "Hello")
puts tag("div", "", {
:class => 'container',
:id => 'menu'
})

puts tag("h2", "Hello")
puts tag("div", "", {
:class => 'bold',
:id => 'menu'
})






# File.csv

require "csv"

CSV.foreach("file.csv") do |row|
  puts row[0]
  puts row[1]
  puts row[2]
end


require "json"
require "open-uri"

puts "Whats your nickname?"
nickname = gets.chomp

# API call  
json = open("https://api.github.com/users#{nickname}").read  # json back in form of string
user = JSON.parse(json)  # json is string from internet, returns user, which is a hash






# Burger hash with CONSTANT

MENU = {
  "Sprite" => 150,
  "McChicken" => 350,
  "Big Mac" => 540,
  "French Fries" => 230,
  "Hamburger" => 250,
  "Salad" => 15
}

# puts burger[:McChicken]
# puts burger[:BigMac]


def poor_calories_counter(a, b, c)
  # TODO: return number of calories for this mcDonald order
  puts MENU[a] + MENU[b] + MENU[c]
end


poor_calories_counter("Sprite", "Salad", "Big Mac")





# All caps makes it a global variable
# The below is not ideal, as hashes are for not caring about ordering. Can update later by making a symbol.

MENU = {
  "drinks" => {
    "Sprite" => 150
  },
  "burgers" => {
  "McChicken" => 350,
  "Big Mac" => 540,
  "Hamburger" => 250
  },
  "sides" => {
  "French Fries" => 230,
  "Salad" => 15
  }
}

def poor_calories_counter(a, b, c)
  # TODO: return number of calories for this mcDonald order
  puts MENU["sides"][a] + MENU["burgers"][b] + MENU["drinks"][c]
end


poor_calories_counter("Salad", "Big Mac", "Sprite")




