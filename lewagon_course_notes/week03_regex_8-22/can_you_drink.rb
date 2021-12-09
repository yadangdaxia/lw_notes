require 'date'

puts "Write your birthday (dd-mm-yyyy)"
birthday = gets.chomp
new_birthday = birthday.split("-").reverse

today = Date.today
new_today = today.to_s.split("-")

def alcohol_buyer (today, birthday)

  if birthday[0].to_i > today[0].to_i
    puts "Your birth year seems suspicious"
  elsif birthday[1].to_i  > 12 || birthday[1].to_i  < 0
    puts "Your birth month seems suspicious."
  elsif birthday[2].to_i  > 31 || birthday[2].to_i  < 0
    puts "Your birth day seems suspicious."
  else
    puts "Your age seems legit . . . "
  end

  years = today[0].to_i - birthday[0].to_i
  months = today[1].to_i - birthday[1].to_i
  days = today[2].to_i - birthday[2].to_i

  if months.negative?
    years = years + (months/12)
    months = 12 - months*(-1)
  end

  if days.negative?
    years = years + (months/12)
    months = 12 - months*(-1)
    days = 30 - days*(-1)
  end

  puts "You are #{years.to_f} years, #{months.to_f} months, and #{days.to_f} days old."

  if years >= 21
    puts "You can buy alcohol!"
  else
    puts "You are too young to drink."
  end
end

alcohol_buyer(new_today, new_birthday)
