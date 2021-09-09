# class methods are methods we call on an instance

class Pokemon
  attr_accessor :name, :type
  def initialize(name, type, health)
    @name = name   # use @ for instance variablew
    @type = type
    health = health  # value of health not stored the instance variable
  end

  def name_upcase
    @name.upcase
  end

  # some have elements that can be found in the private section

  def who_is_teacher?(adam)
    is_teacher = name == secret_teacher
    p "Welcome to the secret class." if is_teacher
  end

  def attack
    puts "Prepare for battle!"
    skill   # found in the private section
    puts "Carpe Diem!"
  end

  private

  def secret_teacher
    "adam"
  end

  def skill
    puts "KNIVES"
  end
end


pika = Pokemon.new("Pikachu", "fire", 150)   # this is the instance, .new calls the initialize part
p pika.name

# Can reassign, thanks to attr_writer / attr_accessor

p pika.name = "ditto"
p pika

# cannot call the method on the class (e.g. Pokemon.name_upcase).
p pika.name_upcase
p pika.attack
# p pika.skill



