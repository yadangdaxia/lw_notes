require_relative 'animal'
require_relative 'repository'
require_relative 'controller'

repository = Repository.new('animals.csv')

controller = Controller.new(repository)
controller.list

controller.add_animal
controller.list

controller.add_animal
controller.list
