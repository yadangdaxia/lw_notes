require_relative 'controller'

class View
  def list_all_recipes(list)
    puts "Here are your recipes."
    list.each_with_index do |recipe, index|
      puts "#{index + 1} : #{recipe.name} - #{recipe.description}  "
    end
  end

  # def create_recipe
  #   puts "let's create a new recipe! Please input the name and a description."
  #   puts "What's the name?"
  #   name = gets.chomp
  #   puts "What's the description?"
  #   description = gets.chomp
  #   puts "Got it!"
  # end

  def ask_for(attribute)
    puts "What is the recipe #{attribute}?"
    return gets.chomp
  end

  # def ask_for_number(attribute)
  #   puts "What is the recipe #{attribute}?"
  #   return gets.chomp.to_i
  # end

  def delete_choice
    puts "Which recipe would you like to delete?"
    gets.chomp.to_i
  end

end
