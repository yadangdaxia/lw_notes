# db/seeds.rb
10.times do |i|
  Post.create(name: "This is post #{i}")
end
