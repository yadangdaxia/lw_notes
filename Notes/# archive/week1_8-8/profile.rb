require "date"

# Variables

puts "What's your first name?"
first_name = gets.chomp
puts "What's your last name?"
last_name = gets.chomp
puts "What's your age?"
age = gets.chomp.to_i
puts "Where do you live?"
city = gets.chomp

def full_name(first, last)
full_name = "#{first.capitalize} #{last.capitalize}"
return full_name
end
# Method

def tomorrows_date
  tomorrow = Date.today + 1
  #see https://www.foragoodstrftime.com/ for info on this
  return tomorrow.strftime("%A, %b, %d")
end

puts "Name: #{full_name(first_name, last_name)}"
puts "Age next year: #{age + 1}"
puts "City: #{city.capitalize}"
puts "Date: #{(tomorrows_date)}"
