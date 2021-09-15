class Router
  def initialize(controller)
    @controller = controller
    @running = true
  end

  def run
    puts "Hello Waimai Ge! Welcome to your order book!"
    puts "           --           "

    while @running
      display_choices
      action = gets.chomp.to_i
      print `clear`
      route_action(action)
    end
  end

  private

  def route_action(action)
    case action
    when 1 then @controller.add_new_meal
    when 2 then @controller.list_meals
    when 3 then @controller.add_new_customer
    when 4 then @controller.list_customers
    when 5 then stop
    else
      puts "Please press a number."
    end
  end

  def stop
    @running = false
  end

  def display_choices
    puts ""
    puts "What do you want to do?"
    puts "1 - add new meal"
    puts "2 - list meals"
    puts "3 - add new customer"
    puts "4 - list cusomter"
    puts "5 - Stop and exit the program"
    print "> "
  end
end
