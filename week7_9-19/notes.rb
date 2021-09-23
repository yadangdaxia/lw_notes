#employee.rb

class Employee
  attr_reader :username, :password
  def initialize(attributes = {})
    @id = attributes[:id]
    @username = attributes[:username]
    @password = attributes[:password]
    @role = attributes[:role]  # manager / delivery_guy
  end

  def manager?
    #Checks if role found in csv is equal to the string "manager"
    @role == "manager"
  #
  #
end




# employee_repository.rb  -  Should inherit from BaseRepository

require_relative '../models/employee'
require_relative 'base_repository'
class EmployeeRepository < BaseRepository
  private
  def build_element(row)
    row[:id] = row[:id].to_i
    Employee.new(row)
  end

  def to_csv_row
   #
  end

  def self.headers
    #
  end
  
  def find_by_username(username)
  	@elements.find { |employee| employee.username == username }
  end

end



#sessions_controller.rb
require_relative 'sessions_view'
class SessionsController
  #@sessions_controller needs to be initialized in Router.
  # Call @sessions_controller.sign_in outside the loop within the run method in Router
  def initialize
    @view = SessionsView.new
    @employee_repository = employee_repository
  end

  def sign_in
    #1. Ask user for username
    username = @view.ask_for(:username)
    #2. Ask user for password
    password = @view.ask_for(:password)
    #3. Find the employee with the username.
    employee = @employee_repository.find_by_username(username)
    #3. Check if username and password match.
    if employee && employee_repository == password
    #4. Logged in
    @view.sign_in_successful(employee)
      # Returns employee. Now the method can be used in router.
      return employee
    else
    #5. If not match, let user try again
      @view.wrong_info
      # sign_in is Recursive call (calling method from inside)
      sign_in

  end
end



# session_view.rb
require_relative 'base_view'
class SessionsView < BaseView
  def
    # Inherit generic ask_for method in BaseView file
  end

  def wrong_info
    puts "Wrong info, try again."
  end

  #Not necessary, but adding the parameter at the end lets you customize the response
  def sign_in_successful(employee)
    if employee.manager?
      puts "Welcome to your manager portal, #{employee.username}."
    else
      puts "Welcome, Grunt #{employee.username}!"
  end
end




# router.rb
# Router needs to change depending on sign in (e.g. delivery guy or manager)

def run
  while @running do
    @employee = @sessions_controller.sign_in
    # Similar to while @running
    while @employee
      if employee.manager?
        print_manager_menu
        action = ask_user_for_action
        route_manager_action(action)
      else
        print_delivery_guy_menu
        action = ask_user_for_action
        route_manager_action(action)
      end
    end
    # Clears the screen
    print `clear`
  end
end


def print_delivery_guy_menu
  puts "1. list my orders"
  puts "2. mark order as delivered"
  #
  puts "5. Sign out"
  puts "9. Exit"
end

def route_delivery_guy_action(action)
end

def route_manager_action(action)
  case action
  when 1 then @meals_controller.add
  when 2 then @meals_controller.list
  #
  #
  when 5 then @employee = nil
  when 0 then
    # Need to implement both of these to completely get out of the loop
    @employee = nil
    @running = false
  else
    puts "Invalid action"
end
