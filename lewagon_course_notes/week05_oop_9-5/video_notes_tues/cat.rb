class Cat
  attr_reader :color
  def initialize(name, color)
    @name = name
    @color = color
  end

  def dye(new_color)
    @color = new_color
  end

  def self.branch
    return "Mammals"
  end
end

felix = Cat.new("felix", "black")
garfield = Cat.new("garfield", "orange")

garfield.dye('green')   # instance method (only updates specific instance)

puts garfield.color
puts felix.color

puts Cat.branch   # class method
