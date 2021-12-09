require 'json'
require 'open-uri'   # Opens website 

p "What's the username?"
username = gets.chomp

url = "https://api.github.com/users/#{username}"
user_serialized = open(url).read   # Gets string that is JSON formatted
user = JSON.parse(user_serialized)   # Gets hash back -> user. Can access keys now.
# p user
# Can search for information this way

p "#{user["login"].capitalize} has #{user["public_repos"]} repositories."
# p "#{user["name"]} - #{user["bio"]}"  #user is a hash (check url in browser - has curly brace)
