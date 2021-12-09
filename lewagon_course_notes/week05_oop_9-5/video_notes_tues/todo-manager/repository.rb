# This class only deals with the storage - it's a database

class Repository
  attr_reader :tasks
  def initialize
    @tasks = []   # **This is an array of task instances**
  end

  # Behavior => CRUD
  def add(task)
    @tasks << task
  end

  def find(index)
    return @tasks[index]
  end

end
