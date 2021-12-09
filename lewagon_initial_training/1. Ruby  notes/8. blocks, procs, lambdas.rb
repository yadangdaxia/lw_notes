5.times do 
  puts "I'm a block!"
end



fibs = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55]

# collect method returns a copy (doesn't mutate the original array)
# collect! mutates original array
doubled_fibs = fibs.collect { |num| num * 2}
puts doubled_fibs
puts fibs


#YEILDS

def yeild_name(name) #method
  puts "In the method! Let's yield."
  yield("KIM")
  puts "In between the yields!"
  yield(name)
  puts "Block complete! Back in the method."
end

yeild_name("THOM") { |n| puts "My name is #{n}." }
yeild_name("ADAM") { |n| puts "My name is #{n}." }


#PROCS - don't repeat yourself

multiples_of_3 = Proc.new do |n|
  n % 3 == 0
end

print (1..100).to_a.select(&multiples_of_3)



floats = [1.2, 3.45, 0.91, 7.727, 11.42, 482.911]
# Write your code below this line!

round_down = Proc.new { |x| x.floor }

# Write your code above this line!
ints = floats.collect(&round_down)
print ints




def greeter()
  yield 
end

phrase = Proc.new { puts "Hello there!" }

greeter(&phrase)



hi = Proc.new do
  puts "Hello!" 
  end
hi.call


#Converting integers to strings
#Can do the opposite by using (&:to_i)

numbers_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
strings_array = numbers_array.map(&:to_s)


#Symbolize lambda

strings = ["leonardo", "donatello", "raphael", "michaelangelo"]

symbolize = lambda { |parma| parma.to_sym}

# They become symbols
symbols = strings.collect(&symbolize)
print symbols



#LAMBDA vs PROC

def batman_ironman_proc
  victor = Proc.new { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_proc
#Proc returns "Batman will win!"

def batman_ironman_lambda
  victor = lambda { return "Batman will win!" }
  victor.call
  "Iron Man will win!"
end

puts batman_ironman_lambda\
#Lambda retuns "Iron Man will win!"





ages = [23, 101, 7, 104, 11, 94, 100, 121, 101, 70, 44]

# Add your code below!
under_100 = Proc.new { |x| x < 100 } #checks if integer is under 100
youngsters = ages.select(&under_100)
#converts block to proc
puts youngsters






crew = {
  captain: "Picard",
  first_officer: "Riker",
  lt_cdr: "Data",
  lt: "Worf",
  ensign: "Ro",
  counselor: "Troi",
  chief_engineer: "LaForge",
  doctor: "Crusher"
}
# Add your code below!
first_half = lambda { |x,y| y < "M" }

a_to_m = crew.select(&first_half)
puts a_to_m
