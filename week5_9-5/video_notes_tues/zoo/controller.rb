require_relative 'view'
require_relative 'repository'

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

end

# Initialize new instances
repository = Repository.new

controller = Controller.new(repository)
