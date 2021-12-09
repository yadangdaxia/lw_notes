require_relative 'controller'

class View
  def display(recipes)
    puts "Here are your recipes."
    recipes.each_with_index do |recipe, index|
      status = recipe.done? ? "[X]" : "[ ]"
      puts "#{index + 1} #{status}: #{recipe.name} - #{recipe.description} - #{recipe.done} - #{recipe.rating}/5 points - #{recipe.prep_time}"
    end
  end

  def ask_for_text(attribute)
    puts "Type the recipe #{attribute}?"
    gets.chomp
  end

  def ask_for_index(attribute)
    puts "Type the recipe number #{attribute}."
    gets.chomp.to_i
  end

  # May not need this method
  def show_online_recipes(recipes)
    recipes.each_with_index do |recipe, index|
      puts " #{index + 1} #{recipe}"
    end
  end
end
