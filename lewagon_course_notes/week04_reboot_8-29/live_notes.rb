require 'open-uri'
require 'json'

url = 'https://api.github.com/users/yadangdaxia'

serialized = URI.open(url).read   # .read makes it readable   # URI is optional
user = JSON.parse(serialized)   # class names in uppercase, URI and JSON is a class
# name
# login
# followers
p user

username = user["login"]
repos = user["public_repos"]
location = user["location"]
p username

message = location.nil? ? "no location" : "location is #{location}"
p message
