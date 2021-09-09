class View
  # no need for initialize or attributes in View because it doesn't store data.
  # It only retrieves
  def display(animals)
    animals.each do |animal|
      # species = animal.species == "cat" ? ""
      puts "#{animal.name} | #{animal.species} "
  end
end
end
