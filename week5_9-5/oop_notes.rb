# A Class is like a cake mold. It helps to create a cake, but it is not cake.
# An instance of a class is a cake created from a given cake mold.

word = String.new("Hello World")
# string is the class, word is the instance


# encapsulation => By default, instance variables are not exposed.
# You cannot read their value or change them by calling a method on the object.

# getters => instance methods allowing you to read an object's instance variables values:
# setters => instance methods allowing you to update an object's instance variables values

class Dog
  def initialize(name, breed)
    @name = name
    @breed = breed
  end
  # @name and @breed are the instance variables

  # @name setter:
  def name=(name)
    @name = name
  end

  # is equivalent to
  attr_writer :name

  # @name getter:
  def name
    @name
  end

  # is equivalent to
  attr_reader :name

end

# .new is the constructor method
rex = Dog.new("Rex", "German Sheperd")
# rex is an instance of the Dog class.
# <Dog:0x007f9423a86f10 @name="Rex" @breed="German Sheperd">
# The instance variables @name and @breed take "Rex" and "German Sheperd" values.

rex.name = "Rexie"
# => "Rexie"

# Get color
my_car.color
# => "red"

# Update
my_car.color = "red"
# => "red"




# A class method is a method existing in the context of the class itself, not an instance.
# They never have access to instance variables and methods.
# You must name it like self.my_method, and it can be called directly on the class like ‘MyClass.my_method’.

class Restaurant
  # Class method
  def self.categories
    ['Fast Food', 'Italian', 'Japanese', 'Oriental']
  end
end

Restaurant.categories
# => ['Fast Food', 'Italian', 'Japanese', 'Oriental']



class Student
  def initialize(first_name, last_name)
    # Define default values
    @first_name = first_name
    @last_name = last_name
    @tired = false
  end

  # Instance methods are the methods defined within a Class (without a self. prefix), such as the two below

  # This method ends in a ! because it changes the instances' state
  def went_out_late_last_night!
    @tired = true
  end

  def full_name
    "#{@first_name.capitalize} #{@last_name.capitalize}"
  end

  # This method returns a boolean, so it should end with ?
  def fresh?
    @tired
  end
end



class Car
  # Class method
  def self.start
    "Engine started"
  end

  # Instance method
  def paint_red
    "#{self} is now red"
  end
end

# self refers to the instance the method is called on:

class Toy
  def initialize(name)
    @name = name
  end

  def some_method
    self  # <-- what does this `self` refer to?
  end
end

barbie = Toy.new("Barbie")
gi_joe = Toy.new("GI Joe")

barbie.some_method  # <-- here `self` refers to `barbie`
# => #<Toy:0x00007fc106a48548 @name="Barbie">

gi_joe.some_method  # <-- here `self` refers to `gi_joe`
# => #<Toy:0x00007fc106ad3300 @name="GI Joe">



class Animal
  def initialize(species)
    @species = species
  end

  # Can prepend self to class method
  def self.is_domestic?(species)
    %w(Dog Cat).include?(species)
  end
end

Animal.is_domestic?("Dog")
# => true



# Inheritence is used when you want to share attributes and methods between classes.

class Person
  def initialize(name)
    @name = name
  end

  def say_hello
    "Hello, I'm #{@name}"
  end
end

class Employee < Person
  attr_accessor :salary

  def salary_per_month
    @salary / 12
  end
end

new_employee = Employee.new("Eugene")
# This method inherited from Person class
puts new_employee.say_hello

# Hello, I'm Eugene

new_employee.salary = 32400
puts new_employee.salary_per_month

# Returns => 2700



# super calls the parent’s method which has the same name.

class Employee
  def initialize(name, salary)
    @name, @salary = name, salary
  end

  def salary_per_month
    @salary / 12
  end
end

class Manager < Employee
  def salary_per_month
    super + 300
    # Managers have a $300 bonus
  end
end

# Here Manager inherits from Employee, but overrides the behavior of salary_per_month
# re-uses the parent's method (with super) and adds specific behavior (adding a bonus of $300 each month).
