require_relative 'restaurant'

class CheapRestaurant < Restaurant
  p"---SELF---"
  p self   # self within the class is the class
  def initialize(name, category, price, calories)  # if not changing anything, no need to initialize methods in children
    super(name, category, price)
    @calories = calories
  end

  def self.categories   # same as CheapRestaurant.categories
    p"---SELF---"
    p self
    return ["chinese", "mexican", "american"]

  end

  def book_table   # This method overrides restaurant.rb method
    p"---SELF---"
    p self   # self within the method is the instance
    super    # calls method
    puts "no need to book table"
  end
end

kfc = CheapRestaurant.new("kfc", "chicken", 20, 2000)

kfc.book_table

p CheapRestaurant.categories
