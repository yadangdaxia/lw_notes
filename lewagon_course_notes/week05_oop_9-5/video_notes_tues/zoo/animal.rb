class Animal
  attr_reader :species
  attr_accessor :name

  def initialize(name, species)
    @name = name
    @species = species
  end
end

a = Animal.new("Sunny", "monkey")
p a

# list animals
