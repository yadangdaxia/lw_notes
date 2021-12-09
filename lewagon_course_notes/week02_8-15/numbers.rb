
veggies = ["spinach", "carrot", "kale", "asparagus", "radish", "garlic", "arugula"]

puts veggies.each_slice(3).to_a
 p "veggies is a #{veggies.class}"

 veggies.each_slice(2) { |array| p array}
