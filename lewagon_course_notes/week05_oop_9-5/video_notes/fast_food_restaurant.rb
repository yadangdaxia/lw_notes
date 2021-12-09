  require_relative 'restaurant'

  class FastFoodRestaurant < Restaurant
    def initialize(name, city, capacity, category, prep_time)
      super(name, city, capacity, category)
      @prep_time = prep_time
    end

    def self.categories
      ["burgers", "hot dogs", "tacos"]
    end

    def open?   # super calls the method open? from the parent class Restaurant
      super || (Time.now.hour >= 11 && Time.now.hour <= 13)
    end
  end
