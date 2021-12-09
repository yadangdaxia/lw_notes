
# Very reusable method
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
