# This method creates random groups based on the names and number of members

def random_pairs(array, group_size)
  # The line below is shorthand for array.collect { |name| name.strip! }
  array.collect(&:strip!)
  array.shuffle.each_slice(group_size).to_a
end

puts "Input the members' names, separated by a comma."
members = gets.chomp.split(',')

puts 'How many members per group?'
number = gets.chomp.to_i

p random_pairs(members, number)
# Should return array of arrays
