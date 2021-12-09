class Router
  def initialize(controller)
    @controller = controller
  end
  def run
    # Infinite loop
    loop do
      puts "What do you want to do next? "
      puts "1 = add task"
      puts "2 = list tasks"
      puts "3 = mark as complete"
      choice = gets.chomp.to_i
      if choice == 1
        @controller.add_task
      elsif choice == 2
        @controller.list_tasks
      elsif choice == 3
        @controller.mark_as_complete
      else
        puts "invalid input"
      end

    end
  end


end
