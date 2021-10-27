

demo_array = [100, 200, 300, 400, 500]
print demo_array[2]
# prints 300



# MANIPULATING ARRAYS(CRUD)

# Method for making strings title case
def titleize(str)
  str.split(/ |\_/).map(&:capitalize).join(" ")
end

beatles = ["john", "ringo", "adam"]
beatles[2] = "paul" # replaces/reassigns third member
beatles[3] = "george" # appends george
beatles << "new guy" # different way to append.
beatles [8] = "steve aoki" # adds later (nil assigned for missing elements)
beatles.insert(0, "yoko") # inserts an element
beatles.delete_at(6)
beatles.delete(nil)
beatles.push("kenny g", "nina simone") # also appends, can add multiple
beatles.delete_at(beatles.length-1)

print beatles

beatles.each do |member|
  puts "#{titleize(member)} is in the Beatles."
end

puts "The first beatle is #{titleize(beatles.first)}."
puts "The last beatle is #{titleize (beatles.last)}."
puts "The new guy is at number #{beatles.index("new guy")}"

if beatles.include? "paul"
  puts "Paul is still a member."
else
  puts "Paul is no longer in the band."
end





multi_d_array = [[0,0,0,0],[0,0,0,0],[0,0,0,0]]
multi_d_array.each { |x| puts "#{x}\n" }



hash = {
  key1 => value1,
  key2 => value2,
  key3 => value3
}



my_hash = { 
  "name" => "Eric",
  "age" => 26,
  "hungry?" => true
}

puts my_hash["name"]
puts my_hash["age"]
puts my_hash["hungry?"]




friends = ["Milhouse", "Ralph", "Nelson", "Otto"]

family = { 
  "Homer" => "dad",
  "Marge" => "mom",
  "Lisa" => "sister",
  "Maggie" => "sister",
  "Abe" => "grandpa",
  "Santa's Little Helper" => "dog"
}

friends.each { |x| puts "#{x}" }
family.each { |x, y| puts "#{x}: #{y}" }



# ITERATE OVER ARRAY OF ARRAYS

s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]

s.each { |sub_array| sub_array.each { |element| puts element }}




secret_identities = {
  "The Batman" => "Bruce Wayne",
  "Superman" => "Clark Kent",
  "Wonder Woman" => "Diana Prince",
  "Freakazoid" => "Dexter Douglas"
}
  
secret_identities.each do |hero, name|
puts "#{hero}: #{name}" 
end




lunch_order = {
  "Ryan" => "wonton soup",
  "Eric" => "hamburger",
  "Jimmy" => "sandwich",
  "Sasha" => "salad",
  "Cole" => "taco"
}

lunch_order.each {|x,y| puts y}



# HISTOGRAM

# gets user input
puts "Type your sentence."
text = gets.chomp

words = text.split # new variable; using split transforms the inputted text into an array

# assign default value of new hash
frequencies = Hash.new(0)


# iterate over words to add words to hash
words.each { |word| frequencies[word] +=1}
# hash is invisible?


# reassign hash to sorted version
frequencies = frequencies.sort_by {|word, number| number}
frequencies.reverse!


frequencies.each do|word, number|
puts " #{word} #{number} "
# puts word + " " + number.to_s
end
frequencies.each { |word, frequency| puts word + " " + frequency.to_s }






