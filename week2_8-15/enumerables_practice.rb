def sum_odd_indexed(array)
  sum = 0
  array.each_with_index do |element, index|
    if index.odd?
      sum += element
    end
  end
  return sum
end

puts "----EXAMPLE----"

minions = [1, 7, 3, 9]
puts sum_odd_indexed(minions)
