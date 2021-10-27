require_relative "restaurant"

baker = Restaurant.new("The Baker", "London", 50, "brithish")
p baker


p "#{baker.name} is in #{baker.city}."
p "It can host #{baker.capacity} people."

baker.capacity = 65
p "After renovation, if will host #{baker.capacity} people."

p "#{baker.name} is currently #{baker.open? ? "open" : "closed"} "

baker.reserve("adam")
p baker
