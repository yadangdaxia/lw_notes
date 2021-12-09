# Creating your own Coffee data type

class Coffee
  attr_accessor :country, :flavor, :strength
end

cuppa1 = Coffee.new()
cuppa1.country = "Indonesia"
cuppa1.flavor = "Arabica"
cuppa1.strength = 4


cuppa2 = Coffee.new
cuppa2.country = "China"
cuppa2.flavor = "Puer"

puts cuppa1.country
# Expected output => Indonesia
