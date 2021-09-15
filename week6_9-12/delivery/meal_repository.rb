require 'csv'
require_relative '../models/meal'
#  require_relative 'meal'

class MealRepository
  attr_reader :meals

  def initialize(csv_file_path)
    @csv_file_path = csv_file_path
    @next_id = 1
    @meals = []
    load_csv_file
    # load_csv_file if File.exist?(@csv_file_path)
  end

  def load_csv_file
    csv_options = { headers: :first_row, header_converters: :symbol }
    CSV.foreach(@csv_file_path, csv_options) do |row|
      p row
      p row[:id]
      # patients << Patient.new(row)
      # Meal.new
      @meals << Meal.new(row)
    end
    # @csv_file_path
  end

  def create_meal
    @meals << meal
  end

  def list_meals
  end

  def find_meal
  end




end

repo = MealRepository.new('meals.csv')
# repo = MealRepository.new('data/meals.csv')
p repo.meals
