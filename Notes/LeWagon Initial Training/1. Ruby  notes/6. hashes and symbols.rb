#create a hash

new_hash = { "one" => 1 }

#or

new_hash = Hash.new

new_hash = Hash. new("loco") 
#"loco" is default value




matz = { 
  "First name" => "Yukihiro",
  "Last name" => "Matsumoto",
  "Age" => 47,
  "Nationality" => "Japanese",
  "Nickname" => "Matz"
}
#^^ defines the hash

matz.each do |a, b|
puts b
end
#^^ makes it print the results



puts "string".object_id
puts "string".object_id
#these have different ID numbers


puts :symbol.object_id
puts :symbol.object_id
#these have the same ID number



#Convert to symbols

strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]

# Add your code below!
symbols = []

strings.each do |s|
symbols.push(s.to_sym) #can also use .intern
end

print symbols






require 'benchmark'

string_AZ = Hash[("a".."z").to_a.zip((1..26).to_a)]
symbol_AZ = Hash[(:a..:z).to_a.zip((1..26).to_a)]

string_time = Benchmark.realtime do
  100_000.times { string_AZ["r"] }
end

symbol_time = Benchmark.realtime do
  100_000.times { symbol_AZ[:r] }
end

puts "String time: #{string_time} seconds."
puts "Symbol time: #{symbol_time} seconds."




movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
# Add your code below!

good_movies = movie_ratings.select {|name, rating| rating > 3}




#PROJECT
#how to get it to loop back around?


movies = {
  StarWars: 4.8, 
  Divergent: 4.7,
  Cockmobster: 4.5
  }

puts "What would you like to do? "
puts "A: Add"
puts "B: Update"
puts "C: Display"
puts "D: Delete"
choice = gets.chomp

case choice
#Choices reflect CRUD - universal program choices

when "A"
  puts "What movie would you like to add? "
  title = gets.chomp
  if movies[title.to_sym].nil? 
    puts "What rating does the movie have? "
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  else
    puts "That movie already exists! Its rating is #{movies[title.to_sym]}."
  end

when "B"
  puts "What movie would you like to update? "
  title = gets.chomp
  if movies[title.to_sym].nil? 
    puts "That movie does not exist."
  else
    puts "What is the new rating? "
    rating = gets.chomp
    movies[title.to_sym] = rating.to_i
  end

when "C"
  movies.each do |title, rating| 
    puts "#{title}: #{rating}"
  end

when "D"
  puts "Write the movie title to delete."
  title = gets.chomp
  if movies[title.to_sym].nil? 
    puts "That movie does not exist!"
  else
    movies.delete(title.to_sym)
    puts "#{title} has been deleted."
  end

else
  puts "Error!"
end

