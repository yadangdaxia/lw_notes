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


json = open("https://api.github.com/users#{nickname}").read  # API call  #json back in form of string
user = JSON.parse(json)  # user is hash
