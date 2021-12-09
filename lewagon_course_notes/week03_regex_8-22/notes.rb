hash = Hash.new


students = {
Adam: "us",
Ashton: "australia",
James: "uk"
}

p students
p students[:Adam]

### CHALLENGES ###


def valid?(email)
  # TODO: return true if the email is valid, false otherwise
  if email.match?(/\b[\w\.-]+@[\w\.-]+\.\w{2,4}\b/)
    return true
    puts "Email is valid."
  else
    return false
    puts "Email is not valid."
  end
end

puts valid?("matteson211@hotmail.com")




def clean_database(emails)
  # TODO: return an array with the valid emails only
  emails.select do |element|
    valid?(element)
  end
end

list = ["kevin@yahoo.fr", "edward@gmail.fr", "adamsemail", "julien@mdn.fr", "dimitri@berlin.de"]
puts clean_database(list)





# Not quite but close below....

p "---- METHOD 3 ----"


def group_by_tld(emails)
  # TODO: return a Hash with emails grouped by TLD
  # emails.sort_by(/\.([^.\n\s]*)de$/)
  #emails.gsub(/\.([^.\n\s]*)$/)
  hash = Hash.new
  fans = {}
  emails.select do |element|
     if element.match?(/\.([^.\n\s]*)com$/)
      fans[".com"] = element
     elsif element.match?(/\.([^.\n\s]*)fr$/)
      fans[".fr"] = element
  end
  end

  # if (/\.([^.\n\s]*)fr$/)
  # if (/\.([^.\n\s]*)de$/)


  # emails = email.all
  # emails_by_id = emails.map do |email| [email.id, email]

  end

validated = ["kevin@yahoo.fr", "edward@gmail.com", "dimitri@berlin.de"]
puts group_by_tld(validated)



