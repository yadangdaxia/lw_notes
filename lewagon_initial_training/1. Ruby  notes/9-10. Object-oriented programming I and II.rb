#VARIABLES CAN BE GLOBAL, LOCAL, CLASS, OR INSTANCE
#Instance variables start with @
#Class variables start with @@
#Global variables start with $; or defined outside of method or class


class Computer
  $manufacturer = "Mango Computer, Inc."
  @@files = {hello: "Hello, world!"}
  
  def initialize(username, password)
    @username = username
    @password = password
  end
  
  def current_user
    @username
  end
  
  def self.display_files
    @@files
  end
end

# Make a new Computer instance:
hal = Computer.new("Dave", 12345)

puts "Current user: #{hal.current_user}"
# @username belongs to the hal instance.

puts "Manufacturer: #{$manufacturer}"
# $manufacturer is global! We can get it directly.

puts "Files: #{Computer.display_files}"
# @@files belongs to the Computer class.






class Person
  # Set your class variable to 0 on line 3
  @@people_count = 0
  
  def initialize(name)
    @name = name
    # Increment your class variable on line 8
    @@people_count += 1
  end
  
  def self.number_of_instances
    # Return your class variable on line 13
    return @@people_count
  end
end

matz = Person.new("Yukihiro")
dhh = Person.new("David")

puts "Number of Person instances: #{Person.number_of_instances}"





class Creature
  def initialize(name)
    @name = name
  end
  
  def fight
    return "Punch to the chops!"
  end
end

# Add your code below!
class Dragon < Creature #inherits from Creature
  def fight
    return "Breathes fire!" #overrides inherited fight
  end
end



class Message
  def initialize(from, to)
    @from = from
    @to = to
    @@messages_sent += 1
  end
  @@messages_sent = 0
end

my_message = Message.new(2,7)

class Email < Message
  def initialize(from, to) 
  super 
  end
end






#VIRTUAL COMPUTER

class Machine
  @@users = {} 
  
  def initialize(username, password)
    @username = username
    @password = password
    @@users[username] = password
    @files = {} #empty hash
  end
  
  def create(filename)
    time = Time.now
    @files[filename] = time   #not sure what this part is doing
    puts "#{filename} was created by #{@username} at #{time}."
  end
  
  def Machine.get_users
    @@users
  end
end

my_machine = Machine.new("eric", 01234)
your_machine = Machine.new("you", 56789)

my_machine.create("groceries.txt")
your_machine.create("todo.txt")

puts "Users: #{Machine.get_users}"





#MINE:

class Computer
  @@users = {} #empty hash
  def initialize(username, password)
    @username = username
    @password = password
    @files = {}
    @@users[username] = password
  end

  def create(filename)
    time = Time.now #gets current time and date
    @files[filename] = time #not sure what this part is doing
    puts "The #{filename} was created by #{@username} at #{time}."
    end

  def Computer.get_users()
    @@users
  end

end

my_computer = Computer.new("lover", "modern")








#PUBLIC AND PRIVATE METHODS

class Application
  attr_accessor :status
  def initialize; end
  # Add your method here!
  public
  def print_status
    puts  "All systems go!"
  end
  private
  def password
    return 12345
  end
end




#MODULES AND CLASSES


module Action
  def jump
    @distance = rand(4) + 2
    puts "I jumped forward #{@distance} feet!"
  end
end

class Rabbit
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

class Cricket
  include Action
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

peter = Rabbit.new("Peter")
jiminy = Cricket.new("Jiminy")

peter.jump
jiminy.jump





module Languages
  FAVE = "Ruby"  

class Master
include Languages
  def initialize; end
  def victory
    puts FAVE
  end
end

total = Master.new
total.victory






#BANKING APP EXAMPLE

class Account
  attr_reader :name, :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  def display_balance(pin_number)
    puts pin_number == pin ? "Balance: $#{@balance}." : pin_error
  end
  
  def withdraw(pin_number, amount)
    if pin_number == pin
      @balance -= amount
      puts "Withdrew #{amount}. New balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  
  private
  
  def pin
    @pin = 1234
  end
  
  def pin_error
    "Access denied: incorrect PIN."
  end
end

my_account = Account.new("Eric", 1_000_000)
my_account.withdraw(11, 500_000)
my_account.display_balance(1234)
my_account.withdraw(1234, 500_000)
my_account.display_balance(1234)





#APP2

class Account
  attr_reader :name
  attr_reader :balance
  def initialize(name, balance=100)
    @name = name
    @balance = balance
  end
  
  public
  def display_balance(pin_number)
    if pin_number == @pin
      puts "Balance: $#{@balance}."
    else
      puts pin_error
    end
  end
  
  def withdraw(pin_number,amount)
    if pin_number == @pin
      @balance -= amount
      puts "Withdrew #{amount}."
    else
      puts pin_error
    end
  end

  private
  def pin
    @pin = 1234
  end
  def pin_error
    return "Access denied: incorrect PIN."
  end 
end

checking_account = Account.new("A-dawg", 1_000_000)






