require 'time'
require 'chef'

# Four instance variables
class Restaurant
  attr_reader :name, :city, :chef
  attr_accessor :capacity   # This one uses accessor because it needs to be changed

  def initialize(name, city, capacity, category)
    @name = name
    @city = city
    @capacity = capacity
    @category = category
    @chef = Chef.new(chef_name, self)

    @customers = []
  end

  # defines as a self method
  def self.categories
    [ "french", "italian", "japanese" ]
  end



  def open?
    return Time.now.hour >= 18 && Time.now.hour <= 22   # This is shorthand for if else boolean statement
  end

  def closed?
    return !open?  #returns opposite of open
  end

  def reserve(customer_name)
    @customers << customer_name
  end

  def print_clients
    @customers.each do |customer|
    puts "#{customer}"
    end
  end

  def print_categories
    puts "These are the cetegories:"
    p Restaurant.categories   # ?? cannot write it as class.categories ?
  end

end
