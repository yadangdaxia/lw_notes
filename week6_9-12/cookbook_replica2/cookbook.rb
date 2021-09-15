# This is like the repo. It stores all recipe instances.

require 'csv'
require_relative 'recipe'

class Cookbook
  attr_reader :recipe

  def initialize(csv_file)
    @recipes = []  # <--  <Recipe> instances
    @csv_file = csv_file
    load_csv
  end

  def all
    @recipes
  end

  def add_recipe(recipe)
    # Push array into instance
    @recipes << recipe
    save_to_csv
  end

  def remove_recipe(index)
    @recipes.delete_at(index)
    save_to_csv
  end

  def mark_as_done(index)
    recipe = @recipes[index]
    recipe.mark_done!   # Needs comment
    save_to_csv
  end

  private

  def save_to_csv
    csv_options = { col_sep: ',', quote_char: '"', headers: :first_row }
    CSV.open(@csv_file, "wb") do |csv|
      csv << ["name", "description", "rating", "prep_time", "done"]
      @recipes.each do |recipe|
        csv << [recipe.name, recipe.description, recipe.rating, recipe.prep_time, recipe.done?]
      end
    end
  end

  def load_csv
    CSV.foreach(@csv_file, headers: :first_row, header_converters: :symbol) do |row|
      # p row[2]
      row[:done] = row[:done] == "true"   # This needs comment
      @recipes << Recipe.new(row)
    end
  end
end
