require 'date'
months = Date::MONTHNAMES  # Accesses a module/library inside of date

# first digit is 1 or 2 (man or woman)
# second digit is last two birth years (e.g. '82)
# last nine digits are "random"

ssn_regex = /(?<gender>[12])(?<year>\d{2})(?<month>0[1-9]|1[0-2])\d{9}/

p "18412764510894".match?(ssn_regex)

match_data = "18412764510894".match(ssn_regex)

p match_data

# Can also assign variables, eg.:  male_female = match_data[:gender]

if match_data[:gender] == "1"
  puts "A Frenchman."
else
  puts "Femme"
end

# match data like an object functioning as a hash

month = months[match_data[:month].to_i]

puts "This is a #{gender}, born in #{month}, #{year}"
