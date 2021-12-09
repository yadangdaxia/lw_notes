# USING YIELD - accepts block with dynamic parameters

# More reusable method

def timer
  start_time = Time.now
  yield  #Jumps into the block of code
  end_time = Time.now
  puts "Total elapsed time: #{end_time - start_time}"
end

# Call timer method with a block
timer() do
  puts "Starting task 1"
  sleep(0.6)
  puts "Starting task 2"
  sleep(0.6)
end






# Using yield in a method

def greet(name)
  capitalized_name = name.capitalize
  message = yield(capitalized_name)
  puts message
end

greet("john") do |name|
  "Hello, #{name}"
end

greet("roberto") do |name|
  "Hola, #{name}"
end






food = [2, 4, 6]

food_triple = food.map {|item| item * 3}
puts food_triple
print food_triple





def triple
  puts "We're in the method."
  yield
  puts "We're back in the method."
end

triple {puts "--Excuse me, block coming through!--"}






def introduction (name)
  name = name.upcase
  yield (name)
  yield ("mork")
  yield (name)
  yield ("mindy")
end

introduction("adam") {|n| puts "Hello, my name is #{n}"}




def yielder
  p "Hello"
  yield("Love you!")
  yield("Hate you.") # Can yield multiple times in the method
  p "Goodbye"
end

i = 0
while i < 3
yielder do |argument|
  p "I'm and inside the block. #{argument}"
end

yielder do |argument|
  p "I'm and inside the block. #{argument}"
end
i = i + 1
end

# puts three times



# Assigns yielded stuff to variable

def honey
  if block_given?
    from_block = yield
    p from_block
  end
end

honey {"Bees are nice."}



# With arguments

def ghost(a, b)
  if block_given?
    from_block = yield("first", "second")
    p from_block
  end
end

ghost("a", "b") do |a, b|
  "le wagg"
  puts a, b
end





def number_count
  puts "What's the limit? Choose 1-10"
  limit = gets.chomp.to_i
  i = 0
  puts "The number choices are..."
  while i <= limit
    yield i
    i += 1
  end
end

number_count do |num|
  p num
  num *= 2  # Only modified inside the block
end

def nicemeet
  p "What's your name?"
  name = gets.chomp
  yield name
  puts "Hey #{name.capitalize}, nice to meet you."
end

nicemeet { |person| puts person }






def upgrade
  if block_given?
    yield
else
  puts "no block"
end
end

upgrade {puts "some code here"}
upgrade







# METHOD

def burger(patty, sauce, topping)
  if block_given?
    new_patty = yield(patty)
  else
    # puts "no block"
    new_patty = patty
  end
  return ["bread", new_patty, sauce, topping, "bread"]
end

# ALTERNATE METHOD
def burger(patty, sauce, topping)
  if block_given?
    puts ["bread", yield(patty, sauce, topping), "bread"]
  else
    puts "no block"
  end
end



p "---ORDER 1---"

burger("steak", "ketchup", "onions") do |patty|
  "grilled #{patty}"
end






def tag(name, attributes = nil)

name = yield
  
if attributes == nil
  "<#{tag_name}><#{name}></#{tag_name}>"
else
  "<#{tag_name}><#{name}></#{tag_name}>"
end
end








