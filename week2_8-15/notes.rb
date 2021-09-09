# RANGES


range1 = %w(happy sad angry nervous bored)
p range1

range2 = (1...10)
p range2.to_a


# Ranges are useful in for loops

for number in (1..10)
print number
end


# NOTE: .each is used more commonly than for loops in ruby

band = %w(carlos frank david freddie syd)
for index in (0...(band.length))  #Uses .length or .size to avoid giving end of array (e.g. if member is added later)
  puts " - #{members[index]}"
end



# Looping through indices

band = %w(carlos frank david freddie syd)
for index in 0...(band.size)
  member = band[index]
  puts "#{index + 1} - #{member}"
end


# Incrementation with .each

band.each do |member|
  puts  "#{member} is part of the band."
end
 
# Incrementation with .each_with_index - This shows the index of each element as well

band.each_with_index do |member, index|
  puts  "#{index + 1} - #{member} is part of the band."
end


# .map to transform one array to another. Store in new variable.

up_band = band.map do |member|
puts member.upcase
end

puts up_band
puts band  # unchanged


# Another way to do it, but more "clunky"

cap_band =[]
band.each do |member|
cap_band << member.capitalize
end

puts cap_band


# Gets first names

band = ["carlos santana", "frank zappa", "david bowie", "freddie mercury", "syd fucking barret"]


first_names = band.map do |member|
  member.split().first   # using .first instead of [0] is more rubyish
end
puts first_names


# .count method

f_counter = band.count do |member|
member.start_with?("f")  # Condition
end

puts "Members whos names start with F: #{f_counter}"


f_include = band.count do |member|
member.include?("f")  # Condition
end

puts "Members whos names include letter F: #{f_include}"



# .select method

fz_members = band.select do |member|
  member.start_with?("f") && member.split().last.start_with?("z")
end

puts fz_members


musicians = ['Jimmy Page', 'Robert Plant', 'John Paul Jones', 'John Bonham']
musicians.select do |musician|
  musician[0] == "J" # select only the elements that start with a "J"
end


[1, 2, 3, 4].select { |i| i.even? }
# Returns => [2, 4]


# .find method

musicians = ['Jimmy Page', 'Robert Plant', 'John Paul Jones', 'John Bonham']

musicians.find { |musician| musician.split(' ').first == 'John' }


# .sort_by method

['apple', 'pear', 'fig'].sort_by { |word| word.length }


# .each_slice method. This returns pairs # => [[1, 2], [3, 4], [5, 6], [7, 8], [9]]

numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9]
numbers.each_slice(2).to_a



# .reject method
musicians = ['Jimmy Page', 'Robert Plant', 'John Paul Jones', 'John Bonham']

musicians.reject do |musician|
  musician.start_with? "J" # reject only the elements that start with a "J"
end

# => ['Robert Plant']








