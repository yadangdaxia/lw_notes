require_relative "task"
require_relative "repository"
require_relative "view"
require_relative "controller"
require_relative "router"

repository = Repository.new
view = View.new

# task1 = Task.new("Grocery shopping")
# repository.add(task1)
# task2 = Task.new("Do laundry")
# repository.add(task2)

# p task1
# p task2


# p "--------"

controller = Controller.new(repository, view)
# controller.add_task
# controller.add_task
# controller.list_tasks
# controller.mark_as_complete
# controller.list_tasks

# p repository

router = Router.new(controller)
router.run
