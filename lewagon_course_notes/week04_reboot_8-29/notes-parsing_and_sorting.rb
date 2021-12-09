# PARSING AND SORTING

# Can open csv (Comma-Separated Values)and other weird files with sublime text
# Comma separated

# XML evolved to-> JSON

p "----PARSING CSV----"


require 'csv'

filepath = 'beers.csv'

CSV.foreach(filepath) do |row|
  # if row == 0 # row is an Array
  name = row[0]
  appearance = row[1]
  origin = row[2]
  puts name
end

p "---- ----"


i = 0
CSV.foreach(filepath) do |row|
  # p row  # row is an Array
  if i > 0
    name = row[0]
    appearance = row[1]
    origin = row[2]
    puts name
  end
  i += 0
end

# But i variable not very nice

p "---- ----"

# If file has headers

csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
filepath    = 'beers.csv'

CSV.foreach(filepath, csv_options) do |beer|
  p beer["Name"]
  puts "#{beer[0]} is a #{beer[1]} beer from #{beer[2]}."
end


p "----STORING CSV----"

# This code creates a new file in the folder
csv_options = { col_sep: ',', force_quotes: true, quote_char: '"' }
filepath    = 'newbeers.csv'

# Append new lines

# beers is an array of hashes
beers = [
  {name: 'Asahi', appearance: 'Pale', origin: 'Japan'},
  {name: 'Kingfisher', appearance: 'Pale', origin: 'India'},
  {name: 'Guinness', appearance: 'Stout', origin: 'Ireland'}

]
# Puts beers in CSV
CSV.open(filepath, 'wb', csv_options) do |csv|   #wb = write binary
  csv << ['Name', 'Appearance', 'Origin']
  beers.each do |beer|
    csv << [beer[:name], beer[:appearance], beer[:origin]]  #Now beers is a Hash
  end
  p "CSV file created. Check folder."
end

# CSV.open(filepath, 'wb', csv_options) do |csv|   #wb = write binary
#   csv << ['Name', 'Appearance', 'Origin']
#   csv << ['Asahi', 'Pale Lager', 'Japan']
#   csv << ['Guinness', 'Stout', 'Ireland']
# end




p "----PARSING JSON----"

require 'json'

filepath = 'beers.json'

serialized_beers = File.read(filepath)
# p serialized_beers

json_file = JSON.parse(serialized_beers)
# Get data from the hash: read the keys
p json_file["beers"][1]["name"]
#       Hash    Array   Hash

puts "These are the unique origins:"
origins = []
json_file["beers"].each do |beer|
  origins << beer["origin"]
end

p origins.uniq.sort

p "----STORING JSON----"

# if needed require 'json'
filepath = 'newbeers.json'

beers = { beers: [
  {
    name:       'Edelweiss',
    appearance: 'White',
    origin:     'Austria'
  },
  {
    name:       'Guinness',
    appearance: 'Stout',
    origin:     'Ireland'
  },
  # etc...
]}

File.open(filepath, 'wb') do |file|
  file.write(JSON.generate(beers))
end

p "JSON file created. Check folder."

p "----APIs----"

# require 'json'
require 'open-uri'

url = "https://api.github.com/users/yadangdaxia"

user_serialized = open(url).read

user = JSON.parse(user_serialized)

p "#{user["name"]} - #{user["bio"]}"  #user is a hash (check url in browser - has curly brace)
