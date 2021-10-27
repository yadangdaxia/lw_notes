
###  REGULAR EXPRESSIONS ###


# use https://rubular.com/


/../ # slashes are delimiters


[0-9]{3}\s?[0-9]{4}\s?[0-9]{4}

15618107734
156 1810 7734
(156) 1810 7734



(\+86 )?(0086 )?\d{3}\-?\d{4}-?\d{4}
(\+86 )?(0086 )?\d{3}.?\d{4}.?\d{4}


# Test string:

15618107734
+86 15618107734
156-1810-7734
0086 15618107734
156 1810 7734


# Matching

\w+\s\w+
(\w+)\s(\w+)


John Doe
John Smith
Bob Carlington


# Try the two solutions below and see what they return

t..
\bt..\

"let's play tic tac toe"




"hello" =~ /l/
# Returns 2, the position in the string where l starts

"hello" =~ /l{4}/
# Returns nil, because it does not match the position

/hello/.class


# Modifiers

/hello/i          # Insensitive; will match hello, Hello, HeLlO, HELLO, ...
/hello.world/m    # Make dot match newlines; will match hello\nworld



# Define a range in Regex

/./           # any character
/[aB9]/       # a OR B OR 9
/[0-9]/       # any numeric character
/[a-zA-Z]/    # any alphabetical character
/[^a-c]/      # any char BUT a, b OR c


# Using gsub (global substitute) with Regex

"Casanova".gsub(/[aeiou]/, "i")
# =>  "Cisinivi"
# replaces all vowels by the letter "i"


# gsub on a block

"dog".gsub(/\w+/) { |animal| animal == "dog" ? "cat" : "dog" }
# 	finds the animal with \w+ (one or more characters), 
# 	if animal is "dog", replace with "cat", else replace with "dog"



# gsub and Regex on a hash

colors = {
  "B" => "blue",
  "G" => "green",
  "R" => "red"
}

"BBBGR".gsub(/\w/, colors)
# Expected result is => "bluebluebluegreenred"





# You can pass a Regexp as an argument and call .match(pattern) on a string.

match_data = "John Doe".match(/^(\w+) (\w+)$/)
# returns => #<MatchData "John Doe" 1:"John" 2:"Doe">
puts "Firstname: #{match_data[1]}"
puts "Lastname: #{match_data[2]}"
# returns => Firstname: John
# returns => Lastname: Doe


# Use .scan with RegExp. It returns an array of matching sequences, while =~ returns info about he first match only.

"Let's play tic tac toe".scan(/t../)
# Returns => ["t's", "tic", "tac", "toe"]

"Let's play tic tac toe".scan(/\bt../)
# Returns => ["tic", "tac", "toe"]





# Define group patterns with parentheses

/(abc)+/      # 1..∞ abc
/(a|b)c/      # ac OR bc



###########

a = "This is a lazy dog"
a =~ /is/
# Expected result is 2

a =~ / is/
# Expected result is 4 because of space

a =~ /.laz/
# Expected result is 9 because the . represents a space

a =~ /.his/
# Expected result is 0 because . represents T

a += "."
# Added period to string

a =~\.




###########

# A single period matches any one character. Use =~ to get position in string.

d = "Find a fox#cave"
d =~ /fox./
# Expected result is 7. 

d =~ /fox\./
# Expected result is nil. \ means treat this like a real character. There is no period.



###########

#      ^   matches the beginning of a line
#      $   matches the end of a line
#      \A   matches the start of a string
#      \Z   matches the end of a string

g = "Can I have some more, please?"
g =~/\Acan/
# Expected return is nil, because Can is capitalized in the string. 

g=~ /\ACan/
# Expected return is 0...?

g =~ /please?\Z/
# Expected return is 22. Note the syntax. Needs to check after the end of the string.
# Also note the ? - may need to be preceded by \

g.length =? /\Z/
# Expected return is true


###########

#      \w   matches any letter, digit or underscore
#      \W   matches anything that \w doesn't match
#      \d   matches any digit
#      \D   matches anthing that \d doesn't match
#      \s   matches any whitespace (spaces, tabs, newlines, etc.)
#      \S   matches any non-whitespace
#      a|b   or operator
#      /\b/  word boundary (start or end of word)


g =~ /\wp/
# Expected return is nil, because it can't find the letter p preceded by another charcter 

g=~ /\Wplease/
#Expected result is 21, since it finds the space before p in please. 

t = "I need 10 million dollars."
t =~ /\d/
# Expected return is 7, since it matches the digit.

t =~ /\d\d/ 
# Expected return is 7, since it still matches - there are two digits. 


t =~ /m|d/
# Expected return is 10. The first one it will find is the m. 



###########

# Quantifiers

*   matches 0 or more occurences of the preceding character; is "greedy" (will find as many as it can)
+   matches 1 or more occurences of the preceding character; will take as many as given


m = "It went from 30 to 729 in a matter of days."

m =~ /\d*/
# matches lots of "nothing" values, because 0 or more digits

m =~ /\d+/
# Expected to match both 30 and 729

m =~ /m+/
# Expected to return two m

m =~ /m?/


phone = 555-5555

# Ways to match:

phone =~ /555-5555/
phone =~ /\d/
phone =~ /\d\d\d-\d\d\d\d/
phone =~ /\d\d\d\S\d\d\d\d/
phone =~ /\d+\d+/
phone =~ /\d..-\d.../
phone =~ /\d{3}-\d{4}/
phone =~ /\d{3}.\d{4}/
phone =~ /\D/   # Note, this finds all non-digits. 
#Can potentially use .scan(/\d/).join as well
phone =~ phone.scan(/\d/).join



foxsent = "The 10 quick brown foxes jumped over the 12 lazy dogs."

p foxsent =~ /j/
p foxsent =~ /quick/
# returns index value


p foxsent =~ /z/ ? "valid" : "Invalid"
# returns "valid" because z is included in the string


p foxsent.to_enum(:scan, /\d+/).map { Regexp.last_match}
# Finds with matches are integers using scan method: /d+
# Returns match data

# Method 

def jfinder(sentence)
p sentence =~ /j/i
end

jfinder(foxsent)
# Finds the capital J because i was used (case insensitive)






str = "Their ages are 34, 50, and 75. So many ages."
str.scan(/\d+/)
#=> ["34", "50", "75"]
str.scan(/h/).count

str.gsub(/\w+/) { |word| word.capitalize }  # every word







