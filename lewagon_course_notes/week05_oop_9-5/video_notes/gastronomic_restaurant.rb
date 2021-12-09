  # Children inherit from only one parent.
  # Parents don't know their children; children know their parents.

  require_relative 'restaurant'

  class GastronomicRestaurant < Restaurant   # inherits from Restaurant class
  def initialize(name, city, capacity, category, stars)
    # call parent
    super(name, city, capacity, category)
    @stars = stars
    #  @customers = []
  end

  def print_clients    #Child takes precedence
    puts "you don't have access to this fine dining list"
  end
end
