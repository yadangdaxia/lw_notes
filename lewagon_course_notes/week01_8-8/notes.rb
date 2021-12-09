########################
# WHO ARE YOU METHOD

puts "What's your first name?"
first_name = gets.chomp
puts "What's your last name?"
last_name = gets.chomp
puts "Where do you live?"
city = gets.chomp
puts "How old are you? Be honest."
age = gets.chomp

def full_name(first_name, last_name)
  name = "#{first_name.capitalize} #{last_name.capitalize}"
  return name
end

require "date"
def tomorrows_date
  tomorrow = Date.today + 1
  # see https://www.foragoodstrftime.com/ for info on this
  return tomorrow.strftime("%A, %b, %d")
end

puts "Full Name: #{full_name(first_name, last_name)}"
puts "City: #{city.capitalize}"
puts "Age: #{age.to_s}"
puts "Today's Date: #{(tomorrows_date)}"


########################
# WHAT IS YOUR NAME METHOD

def compute_name(first_name, middle_name, last_name)
  name = "#{first_name.capitalize} #{middle_name.capitalize} #{last_name.capitalize}"
  return name
end


# require_relative "compute_name"

puts "What is your first name?"
first_name = gets.chomp

puts "Got a middle name? If not, just press return."
middle_name = gets.chomp

puts "What is your family name?"
last_name = gets.chomp

puts "Why hello there, #{compute_name(first_name, middle_name, last_name)}!"



#########################
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

puts "We have #{days_til_xmas} days until christmas!"


#########################
# DAYS UNTIL YOUR SPECIAL DAY METHOD

def days_until_special(year, month, day)
  today = Date.today
  special = Date.new(year, month, day)
  days_until = special - today
  return days_until.to_i
end

# puts days_until_special(2024,8,12)

# require_relative 'methods'

puts "What is the special year?"
user_year = gets.chomp.to_i
puts "What is the special month?"
user_month = gets.chomp.to_i
puts "What is the special day?"
user_day = gets.chomp.to_i

puts "We have #{days_until_special(user_year, user_month, user_day)} days until your special day."


###############
# AGE IN DAYS VERSION 1 - two files

# FILE 1
# age_in_days.rb

require 'date'

def age_in_days(year, month, day)
  today = Date.today
  birthday = Date.new(year, month, day)
  day_age = today - birthday
  return day_age.to_i
end

# TEST: puts age_in_days(1982, 2, 11)



# FILE 2
#interface.rb

require_relative './age_in_days'

puts 'What\'s your year of birth?'
birth_year = gets.chomp.to_i

puts 'What\'s your month of birth?'
birth_month = gets.chomp.to_i

puts 'What\'s your day of birth?'
birth_day = gets.chomp.to_i

puts 'Computing your age (with the most complicated algorithms)........'

puts "You are #{age_in_days(birth_year, birth_month, birth_day)} days old... phew!"


########################
# AGE IN DAYS VERSION 2
# NOTE: This method is not as accurate as V1.

# require 'date'
require 'time'

time = Time.new

puts 'What\'s your year of birth?'
birth_year = gets.chomp.to_i

puts 'What\'s your month of birth?'
birth_month = gets.chomp.to_i

puts 'What\'s your day of birth?'
birth_day = gets.chomp.to_i

puts 'Computing your age (with the most complicated algorithms)........'

calculated_age = ((time.year - birth_year) * 365.25) + ((time.month - birth_month) * 30) + (time.day - birth_day)

puts "You are #{calculated_age} days old... phew!"











