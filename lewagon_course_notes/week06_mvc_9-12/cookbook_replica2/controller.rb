require_relative 'view'
require_relative 'recipe'
# require_relative 'cookbook'
require_relative 'scraper'


class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
    # @recipe = Recipe.new("name", "description", "done")
  end


  # USER ACTIONS

  def list
    display_recipes
  end

  def create
    # Ask user for a name
    name = @view.ask_for_text("name")
    # Ask for description
    description = @view.ask_for_text("description")
    # Ask user for a rating
    rating = @view.ask_for_text("rating")
    # Ask user for prep time
    prep_time = @view.ask_for_text("preparation time")
    # Create recipe (model)
    recipe = Recipe.new(name: name, description: description, rating: rating, prep_time: prep_time)
    # Add recipe to cookbook (repo)
    @cookbook.add_recipe(recipe)
    # Display
    display_recipes
  end

  def destroy
    # Display
    display_recipes
    # Ask user for index
    index = @view.ask_for_index("to remove")
    # Remove from cookbook
    @cookbook.remove_recipe(index - 1)
  end

  def import
    # Ask user for keyword
    ingredient = @view.ask_for_text("ingredient")
    # Find in online recipes
    results = Scraper.new(ingredient).parse
    # Display results
    @view.display(results)
    # Ask user which one to import - NOTE: Needs to be -1
    imported_recipe_index = @view.ask_for_index("to choose")
    # Add to cookbook
    @cookbook.add_recipe(results[imported_recipe_index])
    # Display
    display_recipes
  end

  def mark_as_done
    # Display
    display_recipes
    # Ask for index
    index = @view.ask_for_index("to mark done")
    # Mark and save in cookbook
    @cookbook.mark_as_done(index - 1)
    # Display
    display_recipes
  end

  private

  def display_recipes
    # 1. Get recipes from repo
    recipes = @cookbook.all
    # 2. Display recipes to user
    @view.display(recipes)
  end




  # def rate
  #   @view.ask_for("rating (out of 5)")
  # end

  # def prep_time
  #   @view.ask_for("prep time")
  # end



end
