# This class just talks to the user

class View
  def get_task
    puts "What do you want to do?"
    print ">"
    return gets.chomp
  end

  def print_tasks(tasks)
    #tasks in an array of Task instances
    tasks.each_with_index do |task, index|
      x = task.completed? ? "x" : "0"

      puts "#{index + 1}. [#{x}] #{task.title}"
  end
end

  def ask_for_task_index
    puts "Which task number has been finished?"
    print ">"
    gets.chomp.to_i - 1
  end

end
