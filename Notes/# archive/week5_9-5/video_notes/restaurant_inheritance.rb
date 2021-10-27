# inheritence to share properties

require_relative "fast_food_restaurant"
require_relative "gastronomic_restaurant"
require_relative "chef"

burger_king = FastFoodRestaurant.new("Burger King", "SHanghai", 100, "burgers", 3)

le_baron = GastronomicRestaurant.new("Le Baron", "London", 50, "french", 2)

p burger_king
p le_baron

# Who is going?
burger_king.reserve("adam")
burger_king.reserve("yumeng")
le_baron.reserve("yumeng")

p "BK list: #{burger_king.print_clients}"
p "LeBaron list: #{le_baron.print_clients}"


p FastFoodRestaurant.categories
p Restaurant.categories

le_baron.print_categories
