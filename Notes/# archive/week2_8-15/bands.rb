beatles = ["john", "ringo", "adam", "leonard"]

beatles.push ("enrique iglesias")  #note the parentheses

puts beatles

beatles.delete_at(1)
puts "------"


beatles.each_with_index do |beatle, index|
  puts "#{index + 1}. #{beatle}"
end

superbeatles = beatles.map { |beatle| beatle.upcase }

p superbeatles

count_superplayers = superbeatles.count do |player|
  player.start_with?"A"
end

puts count_superplayers
