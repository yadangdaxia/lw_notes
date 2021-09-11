# This is the Model; it holds information for one given instance of a recipe.
# It includes two instance variables: name and description

class Recipe
  attr_accessor :name, :description

  def initialize(name, description)
    @name = name
    @description = description
  end
end

# creating new instance of a Recipe
#  pasta = Recipe.new("spaghetti", "italian food")
#  p pasta.description
