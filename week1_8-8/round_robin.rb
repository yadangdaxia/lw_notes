require 'set'

def round_robin(names, rounds)
  # names = array.dup
  names << "Teacher" if names.size.odd?
  fixed_name = names.shuffle!.pop
  rounds.times do |i|
    puts "Round #{i+1}"
    two_rows = [[fixed_name] + names[0..names.size/2-1], names[names.size/2..-1].reverse]
    puts "Players for this round: #{two_rows.flatten(1)}"
    pairs = two_rows.transpose.shuffle
    pairs.each {|col| p col}

    names.rotate!
    puts "----"
  end
end




puts "How many rounds will you play?"
number_of_rounds = gets.chomp.to_i

puts "Input the players' names, separated by a comma."
participants = gets.chomp.split(',')

puts round_robin(participants, number_of_rounds)


array = %w(Alberto Bruce Carlita Dorothy Enrique)
p "Number of players: #{array.count}"











# loop do
#   round1 = array.shuffle.each_slice(2).map { |group| Set.new(group) }
#   p "Round 1"
#   p round1
#   round2 = array.shuffle.each_slice(2).map { |group| Set.new(group) }
#   p "Round 2"
#   p round2
#   p "--------"
#   break if (round1 & round2).any?
# end
