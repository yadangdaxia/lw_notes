require 'date'
def allowed_to_vote?(birthday, today)

  today = today.date
  birthday = Date.new(year, month, day)
  allowed = today - birthday > 18
  if allowed
    puts "You may vote!"
  else
    puts "You may not vote."
  end
end
  puts 



puts 'What\'s your year of birth?'
birth_year = gets.chomp.to_i

puts 'What\'s your month of birth?'
birth_month = gets.chomp.to_i

puts 'What\'s your day of birth?'
birth_day = gets.chomp.to_i

puts allowed_to_vote?(birthday, today)
