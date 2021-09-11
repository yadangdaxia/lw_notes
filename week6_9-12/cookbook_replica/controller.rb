require_relative 'view'
require_relative 'recipe'
require_relative 'cookbook'

class Controller
  def initialize(cookbook)
    @cookbook = cookbook
    @view = View.new
    @recipe = Recipe.new("name", "description")
  end

  def list
    # list = @cookbook.recipes
    # p list
    list = @cookbook.all
    @view.list_all_recipes(list)
  end

  def create
    name = @view.ask_for("name")
    description = @view.ask_for("description")
    new_dish = Recipe.new(name, description)
    @cookbook.add_recipe(new_dish)
  end

  def destroy
    @view.list_all_recipes(list)
    #@view.delete_choice
    number = @view.delete_choice
    # number.to_i
    # recipe_to_kill = Recipe.new(number)
    @cookbook.remove_recipe(number.to_i - 1)
  end
end
