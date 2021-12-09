require_relative "task"    # every time you use a class (e.g. Task), needs to be required.

# This class manages everyone - it distributes tasks.

class Controller
  def initialize(repository, view)
    @view = view
    @repository = repository
  end
  def add_task
    # get info from user
    title = @view.get_task
    # create task
    task = Task.new(title)
    # Add task to repo
    @repository.add(task)
  end

  def list_tasks
    # Ask repo for task list
    task_list = @repository.tasks
    # Ask the view to print tasks
    @view.print_tasks(task_list)
  end

    # Ask view to print information

  def mark_as_complete
    # Ask user which task index
    index = @view.ask_for_task_index
    # Ask repo for Task instance at index
    task = @repository.find(index)
    # Mark task as complete on task instance
    task.mark_as_complete

  end

end
