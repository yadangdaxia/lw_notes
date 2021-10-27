#NOTES


my_name_length = "adam".length
puts my_name_length


rap = "doing donuts in my mom's minivan'".reverse
print rap


name = "adam".upcase
puts name


bigName = "Benjamin Franklin".downcase
puts bigName


=begin
This is a comment!
It doesn't 'need any # symbols. See?
var = 2 + 2
print var
Nothing.
=end


name = "Abraham Lincoln".reverse.upcase
print name


first_name = gets.chomp
print first_name



first_name = gets.chomp
last_name = gets.chomp
city = gets.chomp
state = gets.chomp

print first_name
print last_name
print city
print state


monkey = "Curious George".downcase
first_name = "Adam".reverse.downcase
puts "I took #{monkey} to the zoo"
puts "Your backwards name is #{first_name}"




print "What's your first name? "
first_name = gets.chomp
first_name.capitalize!.reverse

print "What's your last name? "
last_name = gets.chomp
last_name.capitalize!

print "What city are you from? "
city = gets.chomp
city.capitalize!

print "What state are you from? "
state = gets.chomp
state.capitalize!.upcase!

name_length = first_name.length + last_name.length

puts "Your name is #{first_name} #{last_name} and you're from #{city}, #{state}!"
puts "Your full name is #{name_length} characters long!"












