#Shortcut for defining strings:
# students %w(adam james laura etc)

students = %w(adam james laura huiting sue cheng mokoma ashton vee anthony rami yuxuan ding christian eddie roxanne steve )

i = 0
while i < students.length
    if students[i].start_with?("a")
      students[i] = ":) #{students[i]}"
    end
    i = i + 1
end

puts students
