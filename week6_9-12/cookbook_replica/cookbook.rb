# This is the repo. It stores all recipe instances.

require 'csv'
require_relative 'recipe'

class Cookbook
  attr_reader :recipe

  def initialize(csv_file_path)
    # @csv_file_path = 'recipes.csv'
    @recipes = []
    @csv_file_path = csv_file_path

    # Temporary solution (remove it later):
    # pasta = Recipe.new("spaghetti", "italian food")
    # add_recipe(pasta)

    CSV.foreach(csv_file_path) do |row|
      name = row[0]
      description = row[1]
      recipe = Recipe.new(name, description)
      @recipes << recipe
    end
  end

  def all
    @recipes
  end

  def add_recipe(recipe)
    # push array into instance
    @recipes << recipe
    save_to_csv
  end

  def remove_recipe(recipe)
    @recipes.delete_at(recipe)
    save_to_csv
  end

  def save_to_csv
    csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
    CSV.open(@csv_file_path, 'wb', csv_options) do |csv|
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description]
      end
    end
  end

end
