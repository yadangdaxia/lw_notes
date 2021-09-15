class Recipe
  attr_accessor :name, :description, :done, :rating, :prep_time

  def initialize(attributes = {})
    @name = attributes[:name]
    @description = attributes[:description]
    @rating = attributes[:rating]
    @prep_time = attributes[:prep_time]
    @done = attributes[:done] || false
  end

  def done?
    @done
  end

  def mark_done!
    @done = true
  end
end
