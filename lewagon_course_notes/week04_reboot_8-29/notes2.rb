# DEBUGGING

require "pry-byebug"
# type 'gem install pry-byebug' in any directory


def full_name(first, last)
	first_name = first.capitalize
	binding.pry  # 
	last_name = last.capitalize
	# first_name and last_name are local variables
	name = "#{first_name} #{last_name}"
	return name
end

puts full_name("larry", "king")

# use keywords 'next' or 'continue' to continue executing code
# next -> execute next line and STOP
# continue -> execute until ...

# class is like a cake mold
# instance is like one cake

# creating a class
class Car  # UpperCamelCase for class name, lower_snake_case for file name
	def initialize(color, brand)    # initialize must be named this way
		puts "You ran Car.new!"
		@color = color
		@engine_started = false
		@brand = brand
	end

	def start
		power_battery()  #Can call method inside the method
		
		@engine_started = true
	end
	
	
	
	# Methods to access info

	def engine_started?
		return @engine_started
	end

	attr_reader :color, :engine_started   #This line does the same as the below three lines. More commonly used. 
	# def car_color
	#   return @color
	# end
	attr_writer :color
	# def color=(color)
	#   @color = color
	# end
	  
	# attr_reader + attr_writer = attr_accessor
	
	private
	# private methods cannot be called (they are used by other methods internally, see above)
	def power_battery()
		puts "Powering battery"
	end
end


# Can add this into new file: 

require_relative "car"  # don't need the .rb extension


# Instantiate a car. These are instances of the Car class.
my_car = Car.new("blue", "porsche")
your_car = Car.new("red", "datsun")

# can compare class of both variables, and both are car. But they have different ID numbers. 

my_car.start

puts "Is my car started?"
puts your_car.engine_started? ? "Yes" : "No"

puts "What color is the car?"
puts my_car.color

# Uses encapsulation

red_car = Car.new("red", "honda")


# Paint the car - change the state of an object (requires attr_writer)
my_car.color = "black"

	
