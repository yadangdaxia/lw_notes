require_relative 'view'
require_relative 'repository'
require_relative 'animal'

class Controller

  def initialize(repository)
    @repository = repository
    @view = View.new
  end

  def list
    # get animals from repo
    @repository.all

    #display the animals to user in good-looking way
    @view.display(animals)
  end

  def add_animal
    # ask user for name and species
    # get name and species
    name = @view.ask_user_for("name")  # This calls the method from View
    species = @view.ask_user_for("species")
    # turn into instance
    animal = Animal.new(name, species)
    # add to repo
    @repository.add(animal)
  end



end

# Initialize new instances
repository = Repository.new

controller = Controller.new(repository)
