Time.now   # now is a class method

require "json"
JSON.parse("{}")  # parse is a class method of json

require_relative "restaurant"
fuddruckers = Restaurant.new("Fuddruckers", "Asheville", 500, "burgers")
fuddruckers.name   # name is an instance method

Restaurant.categories  # categories is a class method
