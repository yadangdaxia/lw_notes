class View
  # no need for initialize or attributes in View because it doesn't store data.
  # It only retrieves
  def display(animals)
    animals.each do |animal|
      # species = animal.species == "cat" ? ""
      puts "#{animal.name} | #{animal.species} "
  end

# need a method to ask user for question and gets input
def ask_user_for_name
  puts "What's the animal name?"
  name = gets.chomp
  return name
end

def ask_user_for(attribute)
  puts "What's the #{attribute}?"
  name = gets.chomp
  return name
end


end
end
