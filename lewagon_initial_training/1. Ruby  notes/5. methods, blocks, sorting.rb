def cubertino(n)
  puts n ** 3
end

cubertino(8)
#passes the argument to the parameter



def what_up(greeting, *friends)
  friends.each { |friend| puts "#{greeting}, #{friend}!" }
end

what_up("What up", "Ian", "Zoe", "Zenas", "Eleanor")




def greeter(name)
  return "Hello, #{name}!"
end

def by_three?(number)
  if number % 3 == 0
    return true
  else
    return false
  end
end




# method that capitalizes a word
def capitalize(string) 
  puts "#{string[0].upcase}#{string[1..-1]}"
end

capitalize("ryan") # prints "Ryan"
capitalize("jane") # prints "Jane"

# block that capitalizes each string in the array
["ryan", "jane"].each {|string| puts "#{string[0].upcase}#{string[1..-1]}"}   # prints "Ryan", then "Jane"



#MULTIPLY BLOCKS
my_array = [1, 2, 3, 4, 5]

my_array.each do |num|
  puts num * num
end



#ALPHABETIZER

def alphabetize(arr, rev=false)
  if rev
    arr.sort { |item1, item2| item2 <=> item1 }
  else
    arr.sort { |item1, item2| item1 <=> item2 }
  end
end

books = ["Heart of Darkness", "Code Complete", "The Lorax", "The Prophet", "Absalom, Absalom!"]

puts "A-Z: #{alphabetize(books)}"
puts "Z-A: #{alphabetize(books, true)}"



def alphabetize(arr, rev=false) #second parameter, reverse, defaults to false if user doesn't type in two arguments
arr.sort!
end

numbers = [1, 4, 7, 2, 3]

puts alphabetize(numbers)#alphabetize now a method, call alphabetize on numbers array.



def coach_answer(your_message)
  if your_message == "I'm going to work."
    return "That's great."
  else
    return "Go to work."
  end
end

puts "Say something."
your_message = gets.chomp
puts coach_answer(your_message)



