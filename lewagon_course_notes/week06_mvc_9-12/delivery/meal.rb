class Meal
  def initialize(attributes = {})   # Uses a hash
    @id = attributes[:id]
    @name = attributes[:name]
    @price = attributes[:price]
  end
end

meal = Meal.new(id:1, name:"burger", price:20)
p meal
