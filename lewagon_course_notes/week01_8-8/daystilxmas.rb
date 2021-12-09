# DAYS UNTIL CHRISTMAS METHOD
# gets todays date
# gets date of next xmas
# subtracts
# returns value as integer
# concatenates in a string

require 'date'

def days_til_xmas
  today = Date.today
  xmas = Date.new(2021,12,25)
  days_until = xmas - today
  return days_until.to_i
end

puts "There are #{days_til_xmas} days until christmas!"


# DAYS UNTIL YOUR SPECIAL DAY METHOD

# require_relative 'methods'

def days_until_special(year, month, day)
  today = Date.today
  special = Date.new(year, month, day)
  days_until = special - today
  return days_until.to_i
end

puts 'What is the special year?'
user_year = gets.chomp.to_i
puts 'What is the special month?'
user_month = gets.chomp.to_i
puts 'What is the special day?'
user_day = gets.chomp.to_i

puts "There are #{days_until_special(user_year, user_month, user_day)} days until your special day."

# puts days_until_special(2024,8,12)
