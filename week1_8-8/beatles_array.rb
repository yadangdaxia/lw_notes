# Method for making strings title case
def titleize(str)
  str.split(/ |\_/).map(&:capitalize).join(" ")
end

beatles = ["john", "ringo", "adam"]
beatles[2] = "paul" # replaces third member
beatles[3] = "george" # appends george
beatles << "new guy" # different way to append.
beatles [8] = "steve aoki" # adds later (nil assigned for missing elements)
beatles.insert(0, "yoko") # inserts an element
beatles.delete_at(6)
beatles.delete(nil)
beatles.push("kenny g", "nina simone") # also appends, can add multiple

p beatles

p '----LIST MEMBERS----'

beatles.each do |member|
  puts "#{titleize(member)} is in the Beatles."
end

p '----ORDER----'

puts "The first beatle is #{titleize(beatles.first)}."
puts "The last beatle is #{titleize (beatles.last)}."
puts "The new guy is at number #{beatles.index("new guy")}"

p '----CONDITIONS----'

if beatles.include? "paul"
  puts "Paul is still a member."
else
  puts "Paul is no longer in the band."
end
