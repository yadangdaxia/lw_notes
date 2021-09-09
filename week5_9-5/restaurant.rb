class Restaurant
  def initialize(name, category, price)
    @name = name
    @category = category
    @price = price
  end

  def book_table
    puts "table booked"
  end
end

charlies = Restaurant.new("Charlies", "Fast food", 80)

# p charlies   # this helps you see the instance variables
