require_relative "restaurant"

bubbas = Restaurant.new("Bubbas", "hendo", 50, "bbq", 2, "Jamie")

p "The chef of #{bubbas.name} is #{bubbas.chef.name}"
